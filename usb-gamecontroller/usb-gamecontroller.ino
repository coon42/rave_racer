// Pins:
const int buttonPin = 2;
const int ledPin = 13;
const int joy1_pin = 14;

// Vars:
boolean ledOn = false;
unsigned long lastTime = 0;

void setup() {
  Serial1.begin(115200);
    
  pinMode(ledPin, OUTPUT);
  pinMode(joy1_pin, INPUT_PULLUP);
  pinMode(buttonPin, INPUT_PULLUP);
   
  // read the entire joystick at once instead of per event:
  Arcade.setAutoSend(false);

  lastTime = millis();  
}

void loop() {
  unsigned long time = millis();
    
  // Run at 50 Hz:
  if (time - lastTime >= 20) {
    lastTime = time;
    
    // read the data of all our buttons
    // Arcade.button(0, 1 - digitalRead(buttonPin));

    // now our axes:
    int16_t val = analogRead(joy1_pin) * 256 / 893;
    Serial1.println(val);
    Arcade.axis(2, val - 127);    
    Arcade.send(); // send a packet now

    ledOn = !ledOn; // toggle our led
    digitalWrite(ledPin, ledOn);
  }
}
