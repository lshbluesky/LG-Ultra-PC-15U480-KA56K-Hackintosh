# 🍭 LG-Ultra-PC-15U480-KA56K-Hackintosh 🍬

## ❄️ System Specification
| Name | Description |
| - | - |
| CPU | Intel 8th Gen Kaby Lake Refresh Core i5 - 8250U 3.40 GHz |
| Chipsets | Intel Sunrise Point - LP |
| Graphics | Intel UHD Graphics 620 (NVidia GeForce MX150 is Disabled) |
| Memory | DDR4 PC4-19200 2400 MHz 8GB |
| Sound | Realtek HD Audio ALC 255 |
| Ethernet | Realtek PCIe GBE Family Controller |
| Wi-Fi / Bluetooth | Qualcomm Atheros QCA6174a Wireless Network & Bluetooth |
| TouchPad | Synaptics SMBus TouchPad (SYN105A) |
| BIOS | Phoenix SecureCore UEFI BIOS (Version GP219) |

## 🍃 macOS & OpenCore Versions
- macOS Big Sur 11.2.1
- OpenCore r0.6.6

## 🍁 BIOS Settings
- Advanced
  - USB BIOS Legacy Support : Enabled
  - SATA Mode Selection : AHCI
  - AC Mode Fan Always On : Enabled
  - DC Mode Fan Always On : Enabled
- Security
  - Secure Boot Configuration
    - Secure Boot Option : Disabled
- Boot
  - Legacy Mode : Disabled

## ⚠️ Issues
- Qualcomm Atheros QCA6174a Wireless Network and Bluetooth do not work.

## ✅ Working
- Intel UHD Graphics 620 QE/CI
- Intel UHD Graphics 620 AGPM
- Intel UHD Graphics 620 External HDMI Display Output
- Realtek ALC 255
- Speed Step (Speed Shift + XCPM)
- Realtek Wired Network
- USB 3.0
- USB HD Webcam
- Night Shift
- Battery Percentage Indication
- Synaptics SMBus TouchPad
- Brightness Control
- Fn Keys (Brightness & Sound Volume Control)
- Realtek SD Card Reader
- Sleep & Wake
- Sleep by Closing Lid

## ❌ Not Working
- Qualcomm Atheros QCA6174a Wireless Network & Bluetooth
