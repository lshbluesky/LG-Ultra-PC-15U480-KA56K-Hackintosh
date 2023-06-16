# 🍭 LG Ultra PC 15U480-KA56K Hackintosh 🍬

![Screenshot](https://user-images.githubusercontent.com/61459016/201507810-9b8f0cef-00d3-4b53-b1fc-9b89c3850f53.png)

![Sonoma](https://github.com/lshbluesky/LG-Ultra-PC-15U480-KA56K-Hackintosh/assets/61459016/a573638b-bb82-4bb4-bd43-1242e1332526)

## 🌿 System Specification
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
| BIOS | Phoenix SecureCore UEFI BIOS (Version GP233) |

## 🍃 Supported macOS & OpenCore Versions
- macOS High Sierra 10.13.x
- macOS Mojave 10.14.x
- macOS Catalina 10.15.x
- macOS Big Sur 11.x
- macOS Monterey 12.x
- macOS Ventura 13.x
- macOS Sonoma 14 Beta
- OpenCore r0.9.3

## 🌾 macOS Sonoma 14.0 Beta
1. Change SMBIOS to `MacBookPro15,2` model in Config.plist
2. Modify SMBIOS to `MacBookPro15,2` model in Info.plist of USBMap.kext

## ❄️ ACPI SSDT Hot Patches
| No. | SSDT Name | ACPI Rename Required | ACPI Patch Type | OEM DSDT Override |
|:-:|:-:|:-:|:-:|:-:|
| 1 | SSDT-ALS0.aml | X | Injection | X |
| 2 | SSDT-BATT.aml | O | Hot Patch & Override | O |
| 3 | SSDT-DMAC.aml | X | Injection | X |
| 4 | SSDT-EC-USBX.aml | X | Injection | X |
| 5 | SSDT-FNBL.aml | O | Hot Patch & Override | O |
| 6 | SSDT-HBTN_STA.aml | X | Preset Variable Method | O |
| 7 | SSDT-HPET.aml | X | Preset Variable Method | O |
| 8 | SSDT-MCHC.aml | X | Injection | X |
| 9 | SSDT-MEM2.aml | X | Injection | X |
| 10 | SSDT-NVOF.aml | X | Injection | X |
| 11 | SSDT-OSYS.aml | X | Assign & Injection | O |
| 12 | SSDT-PLUG.aml | X | Injection | X |
| 13 | SSDT-PNLF.aml | X | Injection | X |
| 14 | SSDT-RP12_STA.aml | X | Injection | X |

## 🍁 BIOS Settings
- Advanced
  - USB BIOS Legacy Support : `Enabled`
  - SATA Mode Selection : `AHCI`
  - AC Mode Fan Always On : `Enabled`
  - DC Mode Fan Always On : `Enabled`
- Security
  - Secure Boot Configuration
    - Secure Boot Option : `Disabled`
- Boot
  - Legacy Mode : `Disabled`

## ⚠️ Issues
- Qualcomm Atheros QCA6174a Wireless Network and Bluetooth do not work.
  - WLAN slot is disabled by SSDT-RP12_STA.aml

## ✅ Working
- [X] Intel UHD Graphics 620 QE/CI
- [X] Intel UHD Graphics 620 AGPM
- [X] Intel UHD Graphics 620 External HDMI Display Output
- [X] Realtek ALC 255
- [X] Speed Step & Power Management (Speed Shift + XCPM)
- [X] Realtek Wired Network
- [X] USB 3.0
- [X] Integrated Webcam
- [X] Night Shift
- [X] Battery Health Management
- [X] Battery Percentage Indication
- [X] Synaptics SMBus TouchPad
- [X] Brightness Control
- [X] Fn Keys (Brightness & Sound Volume Control)
- [X] Realtek RTS522A PCI Express Card Reader
- [X] iCloud & App Store
- [X] iMessage & FaceTime
- [X] Sleep & Wake
- [X] Sleep by Closing Lid

## ❌ Not Working
- [ ] Qualcomm Atheros QCA6174a Wireless Network & Bluetooth
