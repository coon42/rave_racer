// usb_arcade.cpp
#include "usb_arcade.h"

#ifdef USB_ARCADE // defined by usb_dev.h -> usb_desc.h

extern "C" uint8_t pUsbArcadeData[6];

void UsbArcadeClass::button(uint8_t button, bool val) {
  if (button > 15)
    return;
  
  if (val)
    pUsbArcadeData[button >= 8 ? 5 : 4] |= (1 << (button >= 8 ? (button - 8) : button));
  else
    pUsbArcadeData[button >= 8 ? 5 : 4] &= ~(1 << (button >= 8 ? (button - 8) : button));

  if (autoSend_)
    usbArcadeSend();
}

void UsbArcadeClass::axis(uint8_t axisId, int8_t val) {
  if (axisId > 3)
    return;
  
  pUsbArcadeData[axisId] = static_cast<uint8_t>(val);
  
  if (autoSend_)
    usbArcadeSend();
}

void UsbArcadeClass::axisDigital(uint8_t axisId, int8_t val) {
  if (val > 0)
    val = 127;
  else if (val < 0)
    val = -127;
  else
    val = 0;

  axis(axisId, val);
}

#endif // USB_ARCADE
