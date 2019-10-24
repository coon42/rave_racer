// usb_arcade.c
#include "usb_dev.h"
#include "usb_arcade.h"
#include "core_pins.h" // for yield()
#include "HardwareSerial.h"
#include <string.h> // for memcpy()

#ifdef USB_ARCADE // defined by usb_dev.h -> usb_desc.h

uint8_t pUsbArcadeData[6];

// Maximum number of transmit packets to queue so we don't starve other endpoints for memory
#define TX_PACKET_LIMIT 3

static uint8_t transmitPreviousTimeout = 0;

// When the PC isn't listening, how long do we wait before discarding data?
#define TX_TIMEOUT_MSEC 30

#if F_CPU == 96000000
  #define TX_TIMEOUT (TX_TIMEOUT_MSEC * 596)
#elif F_CPU == 48000000
  #define TX_TIMEOUT (TX_TIMEOUT_MSEC * 428)
#elif F_CPU == 24000000
  #define TX_TIMEOUT (TX_TIMEOUT_MSEC * 262)
#endif

int usbArcadeSend(void) {
  uint32_t waitCount = 0;
  usb_packet_t* pTxPacket;

  while (1) {
    if (!usb_configuration)
      return -1;

    if (usb_tx_packet_count(ARCADE_ENDPOINT) < TX_PACKET_LIMIT) {
      pTxPacket = usb_malloc();

      if (pTxPacket)
        break;
    }

    if (++waitCount > TX_TIMEOUT || transmitPreviousTimeout) {
      transmitPreviousTimeout = 1;
      return -1;
    }

    yield();
  }

  transmitPreviousTimeout = 0;
  memcpy(pTxPacket->buf, pUsbArcadeData, 6);
  pTxPacket->len = 6;
  usb_tx(ARCADE_ENDPOINT, pTxPacket);

  return 0;
}

#endif // USB_ARCADE