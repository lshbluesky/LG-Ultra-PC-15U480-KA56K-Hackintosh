/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-FNBL.aml, Tue Oct 18 13:53:18 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000003F9 (1017)
 *     Revision         0x02
 *     Checksum         0xE2
 *     OEM ID           "shl"
 *     OEM Table ID     "BrightFn"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "shl", "BrightFn", 0x00000000)
{
    External (_SB_.FL07, FieldUnitObj)
    External (_SB_.PCI0.GFX0.DD1F, DeviceObj)
    External (_SB_.PCI0.LPCB.EC0_, DeviceObj)
    External (_SB_.PCI0.LPCB.EC0_.HBTN, DeviceObj)
    External (_SB_.PCI0.LPCB.EC0_.STBT, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.LPCB.EC0_.STRF, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.LPCB.EC0_.SWBT, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.EC0_.SWRF, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.EC0_.WHOK, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.XQ6E, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.MAP1, DeviceObj)
    External (_SB_.PCI0.LPCB.MAP1.CA82, IntObj)
    External (_SB_.PCI0.LPCB.MAP1.CAUS, IntObj)
    External (_SB_.PCI0.LPCB.MAP1.OSDP, IntObj)
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)
    External (_SB_.PCI0.RP01, DeviceObj)
    External (BTST, FieldUnitObj)
    External (OSYS, FieldUnitObj)
    External (WLST, FieldUnitObj)

    Scope (\_SB.PCI0.LPCB.EC0)
    {
        Method (_Q6E, 0, Serialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            If (_OSI ("Darwin"))
            {
                Switch (ToInteger (WHOK))
                {
                    Case (0x21)
                    {
                        Local0 = One
                    }
                    Case (0x22)
                    {
                        Local0 = One
                    }
                    Case (0x23)
                    {
                        Local0 = One
                    }
                    Case (0x24)
                    {
                        Local0 = One
                    }
                    Case (0x25)
                    {
                        Local0 = One
                    }
                    Case (0x27)
                    {
                        Local0 = 0x0A
                    }
                    Case (0x28)
                    {
                        Local0 = One
                    }
                    Case (0x29)
                    {
                        Local0 = One
                    }
                    Case (0x2A)
                    {
                        Local0 = One
                    }
                    Case (0x2C)
                    {
                        Local0 = One
                    }
                    Case (0x2B)
                    {
                        Local0 = 0x013B
                    }
                    Case (0x26)
                    {
                        Local0 = 0x0136
                        If ((OSYS >= 0x07DC))
                        {
                            Notify (HBTN, 0x80) // Status Change
                            Return (Zero)
                        }
                        Else
                        {
                            If ((FL07 == One))
                            {
                                SWRF (Zero)
                                STRF (One, Zero)
                                WLST = Zero
                                Sleep (0x32)
                                SWBT (Zero)
                                STBT (One, Zero)
                                BTST = Zero
                            }
                            Else
                            {
                                SWRF (One)
                                STRF (One, One)
                                WLST = One
                                Sleep (0x32)
                                SWBT (One)
                                STBT (One, One)
                                BTST = One
                            }

                            Sleep (0x32)
                            Notify (RP01, One) // Device Check
                        }
                    }
                    Case (0x33)
                    {
                        Notify (PS2K, 0x0405)
                        Notify (^^^GFX0.DD1F, 0x87) // Device-Specific
                        If ((^^MAP1.OSDP & One))
                        {
                            Sleep (0x0A)
                            ^^MAP1.CA82 = 0x09000087
                            Notify (MAP1, 0x82) // Device-Specific Change
                        }
                    }
                    Case (0x34)
                    {
                        Notify (PS2K, 0x0406)
                        Notify (^^^GFX0.DD1F, 0x86) // Device-Specific
                        If ((^^MAP1.OSDP & One))
                        {
                            Sleep (0x0A)
                            ^^MAP1.CA82 = 0x09000086
                            Notify (MAP1, 0x82) // Device-Specific Change
                        }
                    }

                }

                ^^MAP1.CAUS = Local0
                Notify (MAP1, 0x80) // Status Change
            }
            Else
            {
                \_SB.PCI0.LPCB.EC0.XQ6E ()
            }
        }
    }
}

