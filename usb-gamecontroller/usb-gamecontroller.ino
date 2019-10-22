const int ledPin = 13;

// joystick colour mappings
// g  l
// y  r
// o  d
// r  u

// player 1 bank
const int P1_A = 2;
const int P1_B = 3;
const int P1_LEFT = 4;
const int P1_RIGHT = 5;
const int P1_DOWN = 6;
const int P1_UP = 7;

const int START_BUTTON = 8;

// player 2 bank
const int P2_UP = 15;
const int P2_DOWN = 14;
const int P2_RIGHT = 17;
const int P2_LEFT = 16;
const int P2_B = 18;
const int P2_A = 19;

boolean ledOn = false;
unsigned long lastTime = 0;

void setup()
{
    pinMode(ledPin, OUTPUT);

    pinMode(P1_A, INPUT_PULLUP);
    pinMode(P1_B, INPUT_PULLUP);
    pinMode(P1_LEFT, INPUT_PULLUP);
    pinMode(P1_RIGHT, INPUT_PULLUP);
    pinMode(P1_DOWN, INPUT_PULLUP);
    pinMode(P1_UP, INPUT_PULLUP);
    pinMode(START_BUTTON, INPUT_PULLUP);
    pinMode(P2_A, INPUT_PULLUP);
    pinMode(P2_B, INPUT_PULLUP);
    pinMode(P2_LEFT, INPUT_PULLUP);
    pinMode(P2_RIGHT, INPUT_PULLUP);
    pinMode(P2_DOWN, INPUT_PULLUP);
    pinMode(P2_UP, INPUT_PULLUP);

    // read the entire joystick at once instead of per event
    Arcade.setAutoSend(false);

    lastTime = millis();
}

void loop()
{
    unsigned long time = millis();
    // run at 50 Hz
    if(time - lastTime >= 20)
    {
        lastTime = time;

        // read the data of all our buttons
        // our buttons
        Arcade.button(1, 1 - digitalRead(P1_A));
        Arcade.button(2, 1 - digitalRead(P1_B));
        Arcade.button(3, 1 - digitalRead(P2_A));
        Arcade.button(4, 1 - digitalRead(P2_B));

        Arcade.button(5, 1 - digitalRead(START_BUTTON));

        // now our axes
        Arcade.axis(0, digitalRead(P1_LEFT) == 0 ? -1 : (digitalRead(P1_RIGHT) == 0 ? 1 : 0));
        Arcade.axis(1, digitalRead(P1_UP) == 0 ? -1 : (digitalRead(P1_DOWN) == 0 ? 1 : 0));
        Arcade.axis(2, digitalRead(P2_LEFT) == 0 ? -1 : (digitalRead(P2_RIGHT) == 0 ? 1 : 0));
        Arcade.axis(3, digitalRead(P2_UP) == 0 ? -1 : (digitalRead(P2_DOWN) == 0 ? 1 : 0));

        // also use buttons for the axes cuz unity is a derp
        Arcade.button(6, 1 - digitalRead(P1_UP));
        Arcade.button(7, 1 - digitalRead(P1_RIGHT));
        Arcade.button(8, 1 - digitalRead(P1_DOWN));
        Arcade.button(9, 1 - digitalRead(P1_LEFT));
        Arcade.button(10, 1 - digitalRead(P2_UP));
        Arcade.button(11, 1 - digitalRead(P2_RIGHT));
        Arcade.button(12, 1 - digitalRead(P2_DOWN));
        Arcade.button(13, 1 - digitalRead(P2_LEFT));

        // send a packet now
        Arcade.send();

        // toggle our led
        ledOn = !ledOn;
        digitalWrite(ledPin, ledOn);
    }
}
