void setup() {
  pinMode(0,INPUT);     // Set pin 0 to be an input
  Serial.begin(9600);   // Start up serial communication at 9600 speed
}

void loop() {
  int reading = analogRead(0);    // Read the current value of the potentiometer
  Serial.println(reading);        // Send the value just read down the serial cable
  delay(50);                      // Wait for a short time, just to slow things a little
}
