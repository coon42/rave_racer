// usb_arcade.h
#ifndef _USB_ARCADE_H_
#define _USB_ARCADE_H_

#if defined(USB_ARCADE)

#include <inttypes.h>

// C language implementation
#ifdef __cplusplus
extern "C" {
#endif
int usbArcadeSend(void);
#ifdef __cplusplus
}
#endif

// C++ interface
#ifdef __cplusplus
class UsbArcadeClass {
public:
  void button(uint8_t button, bool val);
  void axis(uint8_t axisId, int8_t val);
  void axisDigital(uint8_t axisId, int8_t val);
  void setAutoSend(bool send) { autoSend_ = send ? 1 : 0; }
  void send()                 { usbArcadeSend(); }
  
private:
  static uint8_t autoSend_;
};

extern UsbArcadeClass Arcade;

#endif // __cplusplus
#endif // USB_ARCADE
#endif // _USB_ARCADE_H_