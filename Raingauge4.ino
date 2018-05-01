/*
 Arduino Tipping Bucket Rain Gauge
 2018-02-15
 
 Arduino Tipping Bucket Rain Gauge
 Utilizing a tipping bucket sensor, your home automation controller and the MySensors.org
 gateway you can measure and sense local rain.  This sketch transmits the rain accumulated
 every SENDPERIOD minutes. Any aggregation, statistics etc. will be done by the controller.
 
 
 
 * Should run on any Arduino
 * Adapted for battery operation
 
 by @bgunnarb for free public use
 
 Change Log
 4.0   First version
 4.1   Introduced dual color LED for bucket tip and timing pulse.
 4.1.1 Corrected battery measurement 
 */

//#define MY_DEBUG // Enable MySensors debug prints to serial monitor

// Enable and select radio type attached
#define MY_RADIO_NRF24
//#define MY_RADIO_RFM69

//#define MY_RF24_PA_LEVEL RF24_PA_MAX //Options: RF24_PA_MIN, RF24_PA_LOW, RF24_PA_HIGH, RF24_PA_MAX

#define MY_NODE_ID 43  //uncomment this line to assign a static ID

// #include <math.h>
#include <MySensors.h>

#define SKETCH_NAME "Rain Gauge  18-02-20"
#define SKETCH_VERSION "4.1.1"

#define DWELL_TIME 40  // this allows for radio to come back to power after a transmission, ideally 0 

#define DEBUG_ON  // Rain gauge specific debug messages. 


#define TIP_SENSOR_PIN 3 // Pin the tipping bucket is connected to. Causes interrupt 1
#define TIMER_PIN 2   // Causes interrupt 0
#define LED_PIN 6
#define CALIBRATE_FACTOR 35 // amount of rain per rain bucket tip e.g. 5 is .05mm
#define SENDPERIOD 5  // number of external timer interrupts before sending data to controller


#define CHILD_ID_RAIN_LOG 1  // Keeps track of rainfall

#ifdef  DEBUG_ON
  #define DEBUG_PRINT(x)   Serial.print(x)
  #define DEBUG_PRINTLN(x) Serial.println(x)
  #define SERIAL_START(x)  Serial.begin(x)
  #else
  #define DEBUG_PRINT(x)
  #define DEBUG_PRINTLN(x)
  #define SERIAL_START(x)
#endif

#define BATTERY_SENSE_PIN A0  // Input pin for battery sense
#define VMIN 1.0  // (Min input voltage to regulator according to datasheet or guessing. (?) )
#define VMAX 3.22 // (Known or desired voltage of full batteries. If not, set to Vlim.)
#define BLINK_TIME 500 // Time the LED is lit in mS
//
volatile unsigned int rainBucket=0;
uint8_t whoInterrupted = 2;  // What caused the interrupt? 0 = external timer, 1 = Bucket tipped
uint8_t periodCounter = 0;  // Number of timer interrupts counted


MyMessage msgRain(CHILD_ID_RAIN_LOG, V_RAIN);
//
//
void presentation()  {
  // Register the sensor to gw (it will be created as child device)
  sendSketchInfo(SKETCH_NAME, SKETCH_VERSION);
  wait(DWELL_TIME);
  present(CHILD_ID_RAIN_LOG, S_RAIN);

  DEBUG_PRINTLN(F("Sensor Presentation Complete"));
}

void before()
{
  // use the 1.1 V internal reference
  #if defined(__AVR_ATmega2560__)
    analogReference(INTERNAL1V1);
  #else
    analogReference(INTERNAL);
  #endif
  
}
void setup()
{
  #ifndef MY_DEBUG
  SERIAL_START(115200);  //Start serial if MySensors debugging isn't enabled
  #endif
  //
  // Set up the IO
  pinMode(TIP_SENSOR_PIN, INPUT);
  pinMode(TIMER_PIN, INPUT);
  pinMode(LED_PIN, OUTPUT);
  digitalWrite(LED_PIN, HIGH); 
  digitalWrite(LED_PIN, LOW); // Low indicates that bucket has tipped. This is just for test at setup.
  wait(BLINK_TIME);
  digitalWrite(LED_PIN, HIGH);
  
}

void loop()
{
  
  whoInterrupted = sleep(TIMER_PIN - 2, FALLING, TIP_SENSOR_PIN - 2, RISING, 0);
  DEBUG_PRINTLN(whoInterrupted);
  if (whoInterrupted == 0) {
    sendRain();
  }
  if (whoInterrupted == 1) {
    incrementRain();
  }
  
}
   
void sendRain() {   
  DEBUG_PRINTLN(F("One period started."));
  periodCounter++;

  if (periodCounter >= SENDPERIOD) {
     send(msgRain.set((float)rainBucket / 100., 1));
     DEBUG_PRINTLN(F("SENDPERIOD elapsed."));
     DEBUG_PRINTLN(rainBucket);
     // get the battery voltage
     int sensorValue = analogRead(BATTERY_SENSE_PIN);    // Battery monitoring reading
     float Vbat  = sensorValue * 0.003363;
     int batteryPcnt = static_cast<int>(((Vbat-VMIN)/(VMAX-VMIN))*100.);   
     sendBatteryLevel(batteryPcnt);  
     DEBUG_PRINTLN(F("Battery Percent:"));
     DEBUG_PRINTLN(batteryPcnt);
     rainBucket = 0;
     periodCounter = 0;
  
  }
}
   
void incrementRain() {
  DEBUG_PRINTLN(F("Bucket tipped."));
  rainBucket += CALIBRATE_FACTOR; // adds CALIBRATE_FACTOR hundredths of unit each tip
  digitalWrite(LED_PIN, LOW);
  delayMicroseconds(BLINK_TIME * 20);
  digitalWrite(LED_PIN, HIGH);
  
}
//


