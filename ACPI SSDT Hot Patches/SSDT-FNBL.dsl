/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-FNBL.aml, Thu Feb 11 23:42:29 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000003FA (1018)
 *     Revision         0x02
 *     Checksum         0x7C
 *     OEM ID           "shl"
 *     OEM Table ID     "BrightFn"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "shl", "BrightFn", 0x00000000)
{
    External (_SB_.FL07, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.GFX0.DD1F, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.HBTN, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.STBT, MethodObj)    // 2 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.STRF, MethodObj)    // 2 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.SWBT, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.SWRF, MethodObj)    // 1 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.WHOK, FieldUnitObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.XQ6E, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.MAP1, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.MAP1.CA82, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.MAP1.CAUS, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.MAP1.OSDP, IntObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.PS2K, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.RP01, DeviceObj)    // (from opcode)
    External (BTST, FieldUnitObj)    // (from opcode)
    External (OSYS, FieldUnitObj)    // (from opcode)
    External (WLST, FieldUnitObj)    // (from opcode)

    Scope (\_SB.PCI0.LPCB.EC0)
    {
        Method (_Q6E, 0, Serialized)  // _Qxx: EC Query
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
                            Notify (HBTN, 0x80)
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
                            Notify (RP01, One)
                        }
                    }
                    Case (0x33)
                    {
                        Notify (PS2K, 0x0365)
                        Notify (^^^GFX0.DD1F, 0x87)
                        If ((^^MAP1.OSDP & One))
                        {
                            Sleep (0x0A)
                            ^^MAP1.CA82 = 0x09000087
                            Notify (MAP1, 0x82)
                        }
                    }
                    Case (0x34)
                    {
                        Notify (PS2K, 0x0366)
                        Notify (^^^GFX0.DD1F, 0x86)
                        If ((^^MAP1.OSDP & One))
                        {
                            Sleep (0x0A)
                            ^^MAP1.CA82 = 0x09000086
                            Notify (MAP1, 0x82)
                        }
                    }

                }

                ^^MAP1.CAUS = Local0
                Notify (MAP1, 0x80)
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.EC0.XQ6E ())
            }
        }
    }
}

