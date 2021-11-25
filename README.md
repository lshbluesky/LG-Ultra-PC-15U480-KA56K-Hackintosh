# 🍭 LG-Ultra-PC-15U480-KA56K-Hackintosh 🍬

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
| BIOS | Phoenix SecureCore UEFI BIOS (Version GP219) |

## 🍃 macOS & OpenCore Versions
- macOS Monterey 12.0.1
- OpenCore r0.7.5

## ❄️ ACPI SSDT Hot Patches
| No. | SSDT Name | ACPI Rename Required | ACPI Patch Type | OEM DSDT Override |
|:-:|:-:|:-:|:-:|:-:|
| 1 | SSDT-ALS0.aml | X | Injection | X |
| 2 | SSDT-BATT.aml | O | Hot Patch & Override | O |
| 3 | SSDT-DMAC.aml | X | Injection | X |
| 4 | SSDT-EC-USBX.aml | X | Injection | X |
| 5 | SSDT-FNBL.aml | O | Hot Patch & Override | O |
| 6 | SSDT-HBTN_STA.aml | O | Hot Patch & Override | O |
| 7 | SSDT-HPET.aml | X | Preset Variable Method | O |
| 8 | SSDT-MATHLDR2_STA.aml | O | Hot Patch & Override | O |
| 9 | SSDT-MCHC.aml | X | Injection | X |
| 10 | SSDT-MEM2.aml | X | Injection | X |
| 11 | SSDT-NVOF.aml | X | Injection | X |
| 12 | SSDT-OSYS.aml | X | Assign & Injection | O |
| 13 | SSDT-PLUG.aml | X | Injection | X |
| 14 | SSDT-PMCR.aml | X | Injection | X |
| 15 | SSDT-PNLF.aml | X | Injection | X |
| 16 | SSDT-RP12_STA.aml | X | Injection | X |

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
  - WLAN slot is disabled by SSDT-RP12_STA.aml

## ✅ Working
- Intel UHD Graphics 620 QE/CI
- Intel UHD Graphics 620 AGPM
- Intel UHD Graphics 620 External HDMI Display Output
- Realtek ALC 255
- Speed Step & Power Management (Speed Shift + XCPM)
- Realtek Wired Network
- USB 3.0
- USB HD Webcam
- Night Shift
- Battery Health Management
- Battery Percentage Indication
- Synaptics SMBus TouchPad
- Brightness Control
- Fn Keys (Brightness & Sound Volume Control)
- Realtek RTS522A PCI Express Card Reader
- Sleep & Wake
- Sleep by Closing Lid

## ❌ Not Working
- Qualcomm Atheros QCA6174a Wireless Network & Bluetooth
