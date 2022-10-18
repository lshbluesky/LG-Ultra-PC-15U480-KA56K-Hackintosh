/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-BATT.aml, Tue Oct 18 13:53:18 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00002137 (8503)
 *     Revision         0x02
 *     Checksum         0xBA
 *     OEM ID           "shl"
 *     OEM Table ID     "Battery"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "shl", "Battery", 0x00000000)
{
    External (_SB_.BAT0, DeviceObj)
    External (_SB_.BAT0.BTUR, IntObj)
    External (_SB_.BAT0.PBIF, PkgObj)
    External (_SB_.BAT0.PBST, PkgObj)
    External (_SB_.BAT0.XPBI, MethodObj)    // 0 Arguments
    External (_SB_.BAT0.XPBS, MethodObj)    // 0 Arguments
    External (_SB_.BAT0.XVBI, MethodObj)    // 0 Arguments
    External (_SB_.FL06, FieldUnitObj)
    External (_SB_.PCI0.GFX0.DD1F, DeviceObj)
    External (_SB_.PCI0.GFX0.QBCM, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.GFX0.QBQC, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.LPCB.EC0_, DeviceObj)
    External (_SB_.PCI0.LPCB.EC0_.BACR, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.BERR, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.BLEX, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.BTLW, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.CBLW, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.DCBR, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.FPRP, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.HDMI, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.LOSD, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.MBST, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.MUTA, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.MUTS, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.NTEC, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.OWNR, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.SLMO, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.STBT, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.LPCB.EC0_.STRF, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.LPCB.EC0_.SW2S, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.SWBT, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.EC0_.SWRF, MethodObj)    // 1 Arguments
    External (_SB_.PCI0.LPCB.EC0_.TDEN, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.UCSP, FieldUnitObj)
    External (_SB_.PCI0.LPCB.EC0_.VOVA, FieldUnitObj)
    External (_SB_.PCI0.LPCB.MAP1, DeviceObj)
    External (_SB_.PCI0.LPCB.MAP1.FRED, IntObj)
    External (_SB_.PCI0.LPCB.MAP1.GETB, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.LPCB.MAP1.GETW, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.LPCB.MAP1.MAR0, IntObj)
    External (_SB_.PCI0.LPCB.MAP1.MAR1, IntObj)
    External (_SB_.PCI0.LPCB.MAP1.MAR2, IntObj)
    External (_SB_.PCI0.LPCB.MAP1.OSDP, IntObj)
    External (_SB_.PCI0.LPCB.MAP1.OWSP, IntObj)
    External (_SB_.PCI0.LPCB.MAP1.SETB, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.LPCB.MAP1.SETD, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.LPCB.MAP1.SETW, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.LPCB.MAP1.XMAB, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.LPCB.MAP1.XMBB, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.LPCB.MAP1.Z00I, MethodObj)    // 3 Arguments
    External (_SB_.PCI0.LPCB.MAP1.Z00J, MethodObj)    // 2 Arguments
    External (_SB_.PCI0.LPCB.MAP1.Z01E, MethodObj)    // 2 Arguments
    External (_SB_.POSW, MethodObj)    // 1 Arguments
    External (_SB_.SLPB, DeviceObj)
    External (CMSR, MethodObj)    // 1 Arguments
    External (CMSW, MethodObj)    // 2 Arguments
    External (ECMS, FieldUnitObj)
    External (ECOK, IntObj)
    External (ECOM, FieldUnitObj)
    External (ECON, FieldUnitObj)
    External (IGDS, FieldUnitObj)
    External (MUTX, MutexObj)
    External (OSYS, FieldUnitObj)
    External (QSMI, MethodObj)    // 5 Arguments

    If (_OSI ("Darwin"))
    {
        Method (B1B2, 2, NotSerialized)
        {
            Return ((Arg0 | (Arg1 << 0x08)))
        }

        Method (B1B4, 4, NotSerialized)
        {
            Local0 = Arg3
            Local0 = (Arg2 | (Local0 << 0x08))
            Local0 = (Arg1 | (Local0 << 0x08))
            Local0 = (Arg0 | (Local0 << 0x08))
            Return (Local0)
        }
    }

    Scope (\_SB.PCI0.LPCB.EC0)
    {
        If (_OSI ("Darwin"))
        {
            OperationRegion (XRAM, EmbeddedControl, Zero, 0xFF)
            Field (XRAM, ByteAcc, NoLock, Preserve)
            {
                Offset (0x5C), 
                SPD0,   8, 
                SPD1,   8, 
                Offset (0x70), 
                SCP0,   8, 
                SCP1,   8, 
                ACP0,   8, 
                ACP1,   8, 
                SVG0,   8, 
                SVG1,   8, 
                Offset (0x77), 
                BANX,   64, 
                Offset (0x83), 
                CUR0,   8, 
                CUR1,   8, 
                BRM0,   8, 
                BRM1,   8, 
                BCV0,   8, 
                BCV1,   8, 
                Offset (0xFA), 
                ERN0,   8, 
                ERN1,   8, 
                ERN2,   8, 
                ERN3,   8
            }

            Method (WE1B, 2, NotSerialized)
            {
                OperationRegion (ERAM, EmbeddedControl, Arg0, One)
                Field (ERAM, ByteAcc, NoLock, Preserve)
                {
                    BYTE,   8
                }

                BYTE = Arg1
            }

            Method (WECB, 3, Serialized)
            {
                Arg1 >>= 0x03
                Name (TEMP, Buffer (Arg1){})
                TEMP = Arg2
                Arg1 += Arg0
                Local0 = Zero
                While ((Arg0 < Arg1))
                {
                    WE1B (Arg0, DerefOf (TEMP [Local0]))
                    Arg0++
                    Local0++
                }
            }
        }
    }

    Scope (\_SB.PCI0.LPCB.MAP1)
    {
        Method (WMAB, 3, Serialized)
        {
            If (_OSI ("Darwin"))
            {
                \_SB.PCI0.LPCB.MAP1.MAR0 = Arg0
                MAR1 = Arg1
                \_SB.PCI0.LPCB.MAP1.MAR2 = Arg2
                If (((\_SB.PCI0.LPCB.MAP1.MAR0 >= Zero) && (\_SB.PCI0.LPCB.MAP1.MAR0 <= 0x2F)))
                {
                    If ((\_SB.PCI0.LPCB.MAP1.MAR0 == Zero))
                    {
                        Return (0x0303)
                    }

                    If ((\_SB.PCI0.LPCB.MAP1.MAR0 == One))
                    {
                        Return (One)
                    }

                    If ((\_SB.PCI0.LPCB.MAP1.MAR0 == 0x02))
                    {
                        Return (ECOK) /* External reference */
                    }

                    If ((\_SB.PCI0.LPCB.MAP1.MAR0 == 0x03))
                    {
                        If ((MAR1 == One))
                        {
                            Local0 = B1B4 (^^EC0.ERN0, ^^EC0.ERN1, ^^EC0.ERN2, ^^EC0.ERN3)
                            Local1 = Local0
                            Local2 = Local0
                            Local3 = Local0
                            Local0 &= 0x0F
                            Local1 &= 0x0F00
                            Local2 &= 0x000F0000
                            Local3 &= 0x0F000000
                            Local0 <<= 0x04
                            Local1 >>= 0x08
                            Local1 += 0x09
                            Local2 >>= 0x04
                            Local3 >>= 0x10
                            Local0 |= Local1
                            Local0 |= Local2
                            Local0 |= Local3
                            Return (Local0)
                        }

                        Return (0x80000002)
                    }

                    If ((\_SB.PCI0.LPCB.MAP1.MAR0 == 0x0E))
                    {
                        If ((MAR1 == One))
                        {
                            If ((OSYS >= 0x07DC))
                            {
                                Local0 = 0x04080101
                            }
                            Else
                            {
                                Local0 = 0x04000101
                            }

                            Return (Local0)
                        }

                        Return (0x80000002)
                    }

                    If ((\_SB.PCI0.LPCB.MAP1.MAR0 == 0x0F))
                    {
                        If ((MAR1 == One))
                        {
                            Local0 = Zero
                            Local0 |= One
                            Local0 |= 0x08
                            Local0 |= 0x0100
                            Local0 &= 0xFFFFFFFFFFFFF7FF
                            Local0 |= 0x0200
                            Return (Local0)
                        }

                        Return (0x80000002)
                    }

                    Return (0x80000001)
                }

                If (((\_SB.PCI0.LPCB.MAP1.MAR0 >= 0x30) && (\_SB.PCI0.LPCB.MAP1.MAR0 <= 0x5F)))
                {
                    If ((\_SB.PCI0.LPCB.MAP1.MAR0 == 0x30))
                    {
                        Return (Z01E (MAR1, \_SB.PCI0.LPCB.MAP1.MAR2))
                    }

                    If ((\_SB.PCI0.LPCB.MAP1.MAR0 == 0x31))
                    {
                        If ((MAR1 == One))
                        {
                            Local0 = ^^EC0.STBT (Zero, Zero)
                            Local0 <<= One
                            Local0 |= ^^EC0.STRF (Zero, Zero)
                            Return (Local0)
                        }
                        ElseIf ((MAR1 == 0x02))
                        {
                            Local0 = (\_SB.PCI0.LPCB.MAP1.MAR2 & 0x03)
                            If ((Local0 == Zero))
                            {
                                ^^EC0.SWRF (Zero)
                                ^^EC0.SWBT (Zero)
                            }
                            ElseIf ((Local0 == 0x03))
                            {
                                ^^EC0.SWRF (One)
                                ^^EC0.SWBT (One)
                            }

                            Local1 = (Local0 & One)
                            ^^EC0.STRF (One, Local1)
                            Local1 = (Local0 & 0x02)
                            Local1 >>= One
                            ^^EC0.STBT (One, Local1)
                            ^^EC0.NTEC = One
                            Sleep (0x012C)
                            Return (Zero)
                        }

                        Return (0x80000002)
                    }

                    If ((\_SB.PCI0.LPCB.MAP1.MAR0 == 0x32))
                    {
                        Return (0x80000002)
                    }

                    If ((\_SB.PCI0.LPCB.MAP1.MAR0 == 0x33))
                    {
                        If ((MAR1 == One))
                        {
                            Local1 = CMSR (0x65)
                            Local2 = (Local1 & 0x11)
                            Return (Local2)
                        }
                        ElseIf ((MAR1 == 0x02))
                        {
                            CMSW (0x65, (\_SB.PCI0.LPCB.MAP1.MAR2 & 0x11))
                            If (^^EC0.SW2S)
                            {
                                If ((\_SB.PCI0.LPCB.MAP1.MAR2 == 0x10))
                                {
                                    ^^EC0.SLMO = One
                                }
                                Else
                                {
                                    ^^EC0.SLMO = Zero
                                }
                            }
                            ElseIf ((\_SB.PCI0.LPCB.MAP1.MAR2 == One))
                            {
                                ^^EC0.SLMO = One
                            }
                            Else
                            {
                                ^^EC0.SLMO = Zero
                            }
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Return (0x80000002)
                    }

                    If ((\_SB.PCI0.LPCB.MAP1.MAR0 == 0x34))
                    {
                        If ((MAR1 == One))
                        {
                            Return (\_SB.PCI0.LPCB.MAP1.OWSP) /* External reference */
                        }
                        ElseIf ((MAR1 == 0x02))
                        {
                            \_SB.PCI0.LPCB.MAP1.OWSP = \_SB.PCI0.LPCB.MAP1.MAR2 /* External reference */
                            Local0 = (\_SB.PCI0.LPCB.MAP1.MAR2 & 0x03)
                            ^^EC0.OWNR = Local0
                            Return (Zero)
                        }

                        Return (0x80000002)
                    }

                    If ((\_SB.PCI0.LPCB.MAP1.MAR0 == 0x3C))
                    {
                        If ((MAR1 == One))
                        {
                            Local0 = CMSR (0x69)
                            Local2 = \_SB.FL06 /* External reference */
                            Local2 &= One
                            If ((Local2 == One))
                            {
                                Local0 |= 0x03
                            }
                            Else
                            {
                                Local0 = Zero
                            }

                            Return (Local0)
                        }
                        ElseIf ((MAR1 == 0x02))
                        {
                            Local0 = (\_SB.PCI0.LPCB.MAP1.MAR2 & 0x03)
                            Local1 = (Local0 & One)
                            ^^EC0.STRF (One, Local1)
                            Local1 = (Local0 & 0x02)
                            Local1 >>= One
                            ^^EC0.STBT (One, Local1)
                            Return (Zero)
                        }

                        Return (0x80000002)
                    }

                    If ((\_SB.PCI0.LPCB.MAP1.MAR0 == 0x3D))
                    {
                        Return (Zero)
                    }

                    If ((\_SB.PCI0.LPCB.MAP1.MAR0 == 0x3E))
                    {
                        If ((MAR1 == One))
                        {
                            Local0 = (^^EC0.MUTS << 0x02)
                            Local1 = (^^EC0.LOSD << One)
                            Local2 = (Local0 | Local1)
                            Local0 = (Local2 | ^^EC0.MUTA) /* External reference */
                            Return (Local0)
                        }
                        ElseIf ((MAR1 == 0x02))
                        {
                            Local0 = (\_SB.PCI0.LPCB.MAP1.MAR2 & 0x07)
                            Local1 = (Local0 & One)
                            ^^EC0.MUTA = Local1
                            Local1 = ((Local0 & 0x02) >> One)
                            ^^EC0.LOSD = Local1
                            Local1 = ((Local0 & 0x04) >> 0x02)
                            ^^EC0.MUTS = Local1
                            Return (Zero)
                        }

                        Return (0x80000002)
                    }

                    Return (0x80000001)
                }

                If (((\_SB.PCI0.LPCB.MAP1.MAR0 >= 0x60) && (\_SB.PCI0.LPCB.MAP1.MAR0 <= 0x8F)))
                {
                    If ((\_SB.PCI0.LPCB.MAP1.MAR0 == 0x60))
                    {
                        If ((MAR1 == One))
                        {
                            If (IGDS)
                            {
                                Local0 = ^^^GFX0.QBQC ()
                            }

                            Return (Local0)
                        }
                        ElseIf ((MAR1 == 0x02))
                        {
                            If ((OSYS == 0x07D6))
                            {
                                Return (Zero)
                            }

                            If (IGDS)
                            {
                                ^^^GFX0.QBCM (\_SB.PCI0.LPCB.MAP1.MAR2)
                            }
                        }
                        Else
                        {
                            Return (Zero)
                        }

                        Return (0x80000002)
                    }

                    Name (LD00, 0x1E140A00)
                    Name (LD01, 0x50413228)
                    Name (LD02, 0x645A)
                    Name (LD10, 0x170F0800)
                    Name (LD11, 0x4131271E)
                    Name (LD12, 0x644F)
                    Name (LD20, 0x130F0B00)
                    Name (LD21, 0x3A2E201A)
                    Name (LD22, 0x5346)
                    Name (LD30, 0x16100C00)
                    Name (LD31, 0x4034251E)
                    Name (LD32, 0x5F4E)
                    Name (LD40, 0x18130E00)
                    Name (LD41, 0x3B2E251F)
                    Name (LD42, 0x6449)
                    Name (LD50, 0x1C151000)
                    Name (LD51, 0x43372A23)
                    Name (LD52, 0x6450)
                    Name (LD60, 0x17120D00)
                    Name (LD61, 0x3A2D241E)
                    Name (LD62, 0x6446)
                    OperationRegion (EDID, SystemMemory, 0x000F0040, 0x40)
                    Field (EDID, DWordAcc, Lock, Preserve)
                    {
                        PVID,   32
                    }

                    If (((\_SB.PCI0.LPCB.MAP1.MAR0 >= 0x61) && (\_SB.PCI0.LPCB.MAP1.MAR0 <= 0x6F)))
                    {
                        If ((MAR1 == One))
                        {
                            Switch (PVID)
                            {
                                Case (0x02C6E430)
                                {
                                    If ((CMSR (0x6C) & 0xC0))
                                    {
                                        Switch (\_SB.PCI0.LPCB.MAP1.MAR0)
                                        {
                                            Case (0x6A)
                                            {
                                                Return (LD40) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD40 */
                                            }
                                            Case (0x6B)
                                            {
                                                Return (LD41) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD41 */
                                            }
                                            Case (0x6C)
                                            {
                                                Return (LD42) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD42 */
                                            }
                                            Case (0x6D)
                                            {
                                                Return (LD40) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD40 */
                                            }
                                            Case (0x6E)
                                            {
                                                Return (LD41) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD41 */
                                            }
                                            Case (0x6F)
                                            {
                                                Return (LD42) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD42 */
                                            }

                                        }
                                    }
                                    Else
                                    {
                                        Switch (\_SB.PCI0.LPCB.MAP1.MAR0)
                                        {
                                            Case (0x6A)
                                            {
                                                Return (LD20) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD20 */
                                            }
                                            Case (0x6B)
                                            {
                                                Return (LD21) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD21 */
                                            }
                                            Case (0x6C)
                                            {
                                                Return (LD22) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD22 */
                                            }
                                            Case (0x6D)
                                            {
                                                Return (LD20) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD20 */
                                            }
                                            Case (0x6E)
                                            {
                                                Return (LD21) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD21 */
                                            }
                                            Case (0x6F)
                                            {
                                                Return (LD22) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD22 */
                                            }

                                        }
                                    }
                                }
                                Case (0x020CE430)
                                {
                                    If ((CMSR (0x6C) & 0xC0))
                                    {
                                        Switch (\_SB.PCI0.LPCB.MAP1.MAR0)
                                        {
                                            Case (0x6A)
                                            {
                                                Return (LD60) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD60 */
                                            }
                                            Case (0x6B)
                                            {
                                                Return (LD61) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD61 */
                                            }
                                            Case (0x6C)
                                            {
                                                Return (LD62) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD62 */
                                            }
                                            Case (0x6D)
                                            {
                                                Return (LD60) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD60 */
                                            }
                                            Case (0x6E)
                                            {
                                                Return (LD61) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD61 */
                                            }
                                            Case (0x6F)
                                            {
                                                Return (LD62) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD62 */
                                            }

                                        }
                                    }
                                    Else
                                    {
                                        Switch (\_SB.PCI0.LPCB.MAP1.MAR0)
                                        {
                                            Case (0x6A)
                                            {
                                                Return (LD30) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD30 */
                                            }
                                            Case (0x6B)
                                            {
                                                Return (LD31) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD31 */
                                            }
                                            Case (0x6C)
                                            {
                                                Return (LD32) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD32 */
                                            }
                                            Case (0x6D)
                                            {
                                                Return (LD30) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD30 */
                                            }
                                            Case (0x6E)
                                            {
                                                Return (LD31) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD31 */
                                            }
                                            Case (0x6F)
                                            {
                                                Return (LD32) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD32 */
                                            }

                                        }
                                    }
                                }
                                Case (0x0318E430)
                                {
                                    Switch (\_SB.PCI0.LPCB.MAP1.MAR0)
                                    {
                                        Case (0x6A)
                                        {
                                            Return (LD40) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD40 */
                                        }
                                        Case (0x6B)
                                        {
                                            Return (LD41) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD41 */
                                        }
                                        Case (0x6C)
                                        {
                                            Return (LD42) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD42 */
                                        }
                                        Case (0x6D)
                                        {
                                            Return (LD40) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD40 */
                                        }
                                        Case (0x6E)
                                        {
                                            Return (LD41) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD41 */
                                        }
                                        Case (0x6F)
                                        {
                                            Return (LD42) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD42 */
                                        }

                                    }
                                }
                                Case (0x0304E430)
                                {
                                    Switch (\_SB.PCI0.LPCB.MAP1.MAR0)
                                    {
                                        Case (0x6A)
                                        {
                                            Return (LD10) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD10 */
                                        }
                                        Case (0x6B)
                                        {
                                            Return (LD11) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD11 */
                                        }
                                        Case (0x6C)
                                        {
                                            Return (LD12) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD12 */
                                        }
                                        Case (0x6D)
                                        {
                                            Return (LD10) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD10 */
                                        }
                                        Case (0x6E)
                                        {
                                            Return (LD11) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD11 */
                                        }
                                        Case (0x6F)
                                        {
                                            Return (LD12) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD12 */
                                        }

                                    }
                                }
                                Default
                                {
                                    Switch (\_SB.PCI0.LPCB.MAP1.MAR0)
                                    {
                                        Case (0x6A)
                                        {
                                            Return (LD10) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD10 */
                                        }
                                        Case (0x6B)
                                        {
                                            Return (LD11) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD11 */
                                        }
                                        Case (0x6C)
                                        {
                                            Return (LD12) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD12 */
                                        }
                                        Case (0x6D)
                                        {
                                            Return (LD10) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD10 */
                                        }
                                        Case (0x6E)
                                        {
                                            Return (LD11) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD11 */
                                        }
                                        Case (0x6F)
                                        {
                                            Return (LD12) /* \_SB_.PCI0.LPCB.MAP1.WMAB.LD12 */
                                        }

                                    }
                                }

                            }
                        }
                    }

                    If ((\_SB.PCI0.LPCB.MAP1.MAR0 == 0x62))
                    {
                        Return (0x80000002)
                    }

                    If ((\_SB.PCI0.LPCB.MAP1.MAR0 == One))
                    {
                        Return (ECOK) /* External reference */
                    }

                    If ((\_SB.PCI0.LPCB.MAP1.MAR0 == 0x67))
                    {
                        If ((MAR1 == One))
                        {
                            Local0 = Zero
                            If (ECON)
                            {
                                Local2 = CMSR (0x67)
                                Local2 &= 0xFF
                                Local0 = Local2
                            }

                            Return (Local0)
                        }
                        ElseIf ((MAR1 == 0x02))
                        {
                            If (ECON)
                            {
                                Local2 = (\_SB.PCI0.LPCB.MAP1.MAR2 & 0xFF)
                                CMSW (0x67, Local2)
                                ^^EC0.BTLW = Local2
                            }

                            Return (Zero)
                        }

                        Return (0x80000002)
                    }

                    If ((\_SB.PCI0.LPCB.MAP1.MAR0 == 0x68))
                    {
                        If ((MAR1 == One))
                        {
                            Local0 = Zero
                            If (ECON)
                            {
                                Local1 = CMSR (0x68)
                                Local2 = (0xFF & Local1)
                                Acquire (MUTX, 0xFFFF)
                                Local0 = Local2
                                Release (MUTX)
                            }

                            Return (Local0)
                        }
                        ElseIf ((MAR1 == 0x02))
                        {
                            If (ECON)
                            {
                                Local2 = (\_SB.PCI0.LPCB.MAP1.MAR2 & 0xFF)
                                CMSW (0x68, Local2)
                                ^^EC0.CBLW = Local2
                                ^^EC0.DCBR = Local2
                            }

                            Return (Zero)
                        }

                        Return (0x80000002)
                    }

                    If ((\_SB.PCI0.LPCB.MAP1.MAR0 == 0x81))
                    {
                        If ((MAR1 == One))
                        {
                            Return (\_SB.PCI0.LPCB.MAP1.OSDP) /* External reference */
                        }
                        ElseIf ((MAR1 == 0x02))
                        {
                            \_SB.PCI0.LPCB.MAP1.OSDP = \_SB.PCI0.LPCB.MAP1.MAR2 /* External reference */
                            Return (Zero)
                        }

                        Return (0x80000002)
                    }

                    If ((\_SB.PCI0.LPCB.MAP1.MAR0 == 0x82))
                    {
                        If ((MAR1 == One))
                        {
                            Return (\_SB.PCI0.LPCB.MAP1.FRED) /* External reference */
                        }
                        ElseIf ((MAR1 == 0x02))
                        {
                            \_SB.PCI0.LPCB.MAP1.FRED = \_SB.PCI0.LPCB.MAP1.MAR2 /* External reference */
                            If ((\_SB.PCI0.LPCB.MAP1.MAR2 == 0x185455AA))
                            {
                                Notify (SLPB, 0x80) // Status Change
                            }

                            If ((\_SB.PCI0.LPCB.MAP1.MAR2 == 0x09000086))
                            {
                                Notify (^^^GFX0.DD1F, 0x86) // Device-Specific
                            }

                            If ((\_SB.PCI0.LPCB.MAP1.MAR2 == 0x09000087))
                            {
                                Notify (^^^GFX0.DD1F, 0x87) // Device-Specific
                            }

                            Return (Zero)
                        }

                        Return (0x80000002)
                    }

                    Return (0x80000001)
                }

                If ((\_SB.PCI0.LPCB.MAP1.MAR0 == 0xE9))
                {
                    If ((MAR1 == One))
                    {
                        Local0 = ^^EC0.HDMI /* External reference */
                        Return (Local0)
                    }

                    Return (0x80000002)
                }

                If ((\_SB.PCI0.LPCB.MAP1.MAR0 == 0xEF))
                {
                    If ((ECMS != 0xA5))
                    {
                        Return (0x80000001)
                    }

                    If ((MAR1 == One))
                    {
                        Return (ECOM) /* External reference */
                    }
                    ElseIf ((MAR1 == 0x02))
                    {
                        Local0 = (\_SB.PCI0.LPCB.MAP1.MAR2 & 0xFF)
                        ECOM = Local0
                        QSMI (0x03, One, Zero, Zero, Zero)
                    }

                    Return (0x80000002)
                }

                Return (0x80000001)
            }
            Else
            {
                Return (XMAB (Arg0, Arg1, Arg2))
            }
        }

        Method (WMBB, 3, Serialized)
        {
            If (_OSI ("Darwin"))
            {
                Local0 = Arg2
                Z00I (Local0, 0x08, 0x80000001)
                If (((Arg1 == One) || (Arg1 == 0x02)))
                {
                    Switch (Z00J (Local0, Zero))
                    {
                        Case (0x0109)
                        {
                            If ((GETW (Local0, 0x04) == One))
                            {
                                SETW (Local0, 0x08, Zero)
                                Local1 = B1B4 (^^EC0.ERN0, ^^EC0.ERN1, ^^EC0.ERN2, ^^EC0.ERN3)
                                Local2 = Local1
                                Local3 = Local1
                                Local4 = Local1
                                Local1 &= 0xFF
                                Local2 &= 0xFF00
                                Local3 &= 0x00FF0000
                                Local4 &= 0xFF000000
                                Local2 >>= 0x08
                                Local3 >>= 0x10
                                Local4 >>= 0x18
                                SETB (Local0, 0x10, Local1)
                                SETB (Local0, 0x11, Local2)
                                SETB (Local0, 0x12, Local3)
                                SETB (Local0, 0x13, Local4)
                                SETB (Local0, 0x14, 0x20)
                                SETB (Local0, 0x15, 0x20)
                                SETB (Local0, 0x16, 0x20)
                                SETB (Local0, 0x17, 0x20)
                                SETB (Local0, 0x18, 0x20)
                                SETB (Local0, 0x19, 0x20)
                                SETB (Local0, 0x1A, 0x20)
                                SETB (Local0, 0x1B, Zero)
                                SETD (Local0, 0x1C, Zero)
                            }
                        }
                        Case (0x010A)
                        {
                            If ((GETW (Local0, 0x04) == One))
                            {
                                SETW (Local0, 0x08, Zero)
                                SETW (Local0, 0x10, 0x1854)
                                SETW (Local0, 0x12, Zero)
                                SETW (Local0, 0x14, Zero)
                                SETW (Local0, 0x18, Zero)
                                SETW (Local0, 0x1C, Zero)
                            }
                        }
                        Case (0x010B)
                        {
                            If ((GETW (Local0, 0x04) == One))
                            {
                                SETW (Local0, 0x08, Zero)
                                If (^^EC0.UCSP)
                                {
                                    SETB (Local0, 0x10, One)
                                }
                                Else
                                {
                                    SETB (Local0, 0x10, Zero)
                                }

                                SETB (Local0, 0x1E, One)
                                Local1 = One
                                SETB (Local0, 0x1F, Local1)
                            }

                            If ((GETW (Local0, 0x04) == 0x02))
                            {
                                SETW (Local0, 0x08, Zero)
                                Local1 = (GETB (Local0, 0x10) & One)
                                ^^EC0.UCSP = Local1
                                Local5 = CMSR (0x60)
                                If (^^EC0.UCSP)
                                {
                                    Local5 |= One
                                }
                                Else
                                {
                                    Local5 &= 0xFFFFFFFFFFFFFFFE
                                }

                                CMSW (0x60, Local5)
                            }
                        }
                        Case (0x010C)
                        {
                            If ((GETW (Local0, 0x04) == One))
                            {
                                SETW (Local0, 0x08, Zero)
                                If ((^^EC0.BLEX == Zero))
                                {
                                    SETB (Local0, 0x10, 0x64)
                                }
                                Else
                                {
                                    SETB (Local0, 0x10, 0x50)
                                }

                                SETB (Local0, 0x11, Zero)
                                SETB (Local0, 0x12, One)
                                SETB (Local0, 0x13, 0x50)
                                SETB (Local0, 0x14, Zero)
                                SETB (Local0, 0x15, Zero)
                                SETB (Local0, 0x16, Zero)
                                SETB (Local0, 0x17, Zero)
                                SETB (Local0, 0x18, Zero)
                                SETB (Local0, 0x19, Zero)
                                SETB (Local0, 0x1A, Zero)
                                SETB (Local0, 0x1B, Zero)
                                SETB (Local0, 0x1C, Zero)
                                SETB (Local0, 0x1D, Zero)
                                SETB (Local0, 0x1E, Zero)
                                SETB (Local0, 0x1F, Zero)
                            }

                            If ((GETW (Local0, 0x04) == 0x02))
                            {
                                SETW (Local0, 0x08, Zero)
                                Local1 = GETB (Local0, 0x10)
                                Local5 = CMSR (0x60)
                                If ((Local1 == 0x64))
                                {
                                    ^^EC0.BLEX = Zero
                                    Local5 &= 0xFFFFFFFFFFFFFFFD
                                }
                                Else
                                {
                                    ^^EC0.BLEX = One
                                    Local5 |= 0x02
                                }

                                CMSW (0x60, Local5)
                            }
                        }
                        Case (0x010E)
                        {
                            If ((GETW (Local0, 0x04) == One))
                            {
                                SETW (Local0, 0x08, Zero)
                                SETB (Local0, 0x10, 0x05)
                                SETB (Local0, 0x11, Zero)
                                SETB (Local0, 0x12, Zero)
                                SETB (Local0, 0x13, Zero)
                                SETB (Local0, 0x14, Zero)
                                SETB (Local0, 0x15, Zero)
                                SETB (Local0, 0x16, Zero)
                                SETB (Local0, 0x17, Zero)
                                SETB (Local0, 0x18, Zero)
                                SETB (Local0, 0x19, Zero)
                                SETB (Local0, 0x1A, Zero)
                                SETB (Local0, 0x1B, Zero)
                                SETB (Local0, 0x1C, Zero)
                                SETB (Local0, 0x1D, Zero)
                                SETB (Local0, 0x1E, Zero)
                                SETB (Local0, 0x1F, Zero)
                            }

                            If ((GETW (Local0, 0x04) == 0x02))
                            {
                                SETW (Local0, 0x08, Zero)
                                Local0 = GETB (Local0, 0x10)
                                ^^EC0.VOVA = Local0
                            }
                        }
                        Case (0x0110)
                        {
                            If ((GETW (Local0, 0x04) == One))
                            {
                                SETW (Local0, 0x08, Zero)
                                SETB (Local0, 0x10, Zero)
                                If ((^^EC0.FPRP == One))
                                {
                                    SETB (Local0, 0x10, One)
                                }

                                If ((^^EC0.BERR == One))
                                {
                                    SETB (Local0, 0x10, 0x02)
                                }

                                If ((^^EC0.TDEN & One))
                                {
                                    SETB (Local0, 0x12, One)
                                }
                                Else
                                {
                                    SETB (Local0, 0x12, Zero)
                                }

                                SETB (Local0, 0x11, Zero)
                                SETB (Local0, 0x13, Zero)
                                SETB (Local0, 0x14, Zero)
                                SETB (Local0, 0x15, Zero)
                                SETB (Local0, 0x16, Zero)
                                SETB (Local0, 0x17, Zero)
                                SETB (Local0, 0x18, Zero)
                                SETB (Local0, 0x19, Zero)
                                SETB (Local0, 0x1A, Zero)
                                SETB (Local0, 0x1B, Zero)
                                SETB (Local0, 0x1C, Zero)
                                SETB (Local0, 0x1D, Zero)
                                SETB (Local0, 0x1E, Zero)
                                SETB (Local0, 0x1F, Zero)
                            }

                            If ((GETW (Local0, 0x04) == 0x02))
                            {
                                SETW (Local0, 0x08, Zero)
                                Local1 = GETB (Local0, 0x10)
                                Local2 = GETB (Local0, 0x12)
                                Local2 &= One
                                If (Local2)
                                {
                                    ^^EC0.TDEN = One
                                }
                                Else
                                {
                                    ^^EC0.TDEN = Zero
                                }
                            }
                        }
                        Default
                        {
                            Z00I (Local0, 0x08, 0x80000002)
                        }

                    }

                    Return (Local0)
                }
            }
            Else
            {
                Return (XMBB (Arg0, Arg1, Arg2))
            }
        }
    }

    Scope (\_SB.BAT0)
    {
        Method (UPBI, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                PBIF [One] = B1B2 (^^PCI0.LPCB.EC0.SCP0, ^^PCI0.LPCB.EC0.SCP1)
                PBIF [0x02] = B1B2 (^^PCI0.LPCB.EC0.ACP0, ^^PCI0.LPCB.EC0.ACP1)
                PBIF [0x04] = B1B2 (^^PCI0.LPCB.EC0.SVG0, ^^PCI0.LPCB.EC0.SVG1)
                PBIF [0x05] = (B1B2 (^^PCI0.LPCB.EC0.SCP0, ^^PCI0.LPCB.EC0.SCP1) / 0x0A)
                PBIF [0x06] = (B1B2 (^^PCI0.LPCB.EC0.SCP0, ^^PCI0.LPCB.EC0.SCP1) / 0x64)
                PBIF [0x09] = "MWL32b"
                If ((B1B2 (^^PCI0.LPCB.EC0.SCP0, ^^PCI0.LPCB.EC0.SCP1) < 0x1770))
                {
                    PBIF [0x09] = "MWL32b"
                }

                If ((B1B2 (^^PCI0.LPCB.EC0.SCP0, ^^PCI0.LPCB.EC0.SCP1) < 0x0BB8))
                {
                    PBIF [0x09] = "MWL31b"
                }
            }
            Else
            {
                XPBI ()
            }
        }

        Method (UPBS, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                If ((B1B2 (^^PCI0.LPCB.EC0.BRM0, ^^PCI0.LPCB.EC0.BRM1) == Zero))
                {
                    BTUR = One
                }
                ElseIf ((BTUR == One))
                {
                    Notify (BAT0, 0x81) // Information Change
                    Notify (BAT0, 0x80) // Status Change
                    BTUR = Zero
                }

                Local5 = B1B2 (^^PCI0.LPCB.EC0.CUR0, ^^PCI0.LPCB.EC0.CUR1)
                PBST [One] = POSW (Local5)
                Local5 = B1B2 (^^PCI0.LPCB.EC0.BRM0, ^^PCI0.LPCB.EC0.BRM1)
                If ((^^PCI0.LPCB.EC0.BACR == One))
                {
                    Local5 = ((B1B2 (^^PCI0.LPCB.EC0.SCP0, ^^PCI0.LPCB.EC0.SCP1) / 0x32) + B1B2 (^^PCI0.LPCB.EC0.BRM0, ^^PCI0.LPCB.EC0.BRM1))
                }

                Local5 = B1B2 (^^PCI0.LPCB.EC0.BRM0, ^^PCI0.LPCB.EC0.BRM1)
                If (!(Local5 & 0x8000))
                {
                    If ((Local5 != DerefOf (PBST [0x02])))
                    {
                        PBST [0x02] = Local5
                    }
                }

                PBST [0x03] = B1B2 (^^PCI0.LPCB.EC0.BCV0, ^^PCI0.LPCB.EC0.BCV1)
                PBST [Zero] = ^^PCI0.LPCB.EC0.MBST /* External reference */
            }
            Else
            {
                XPBS ()
            }
        }

        Method (IVBI, 0, NotSerialized)
        {
            If (_OSI ("Darwin"))
            {
                PBIF [One] = 0xFFFFFFFF
                PBIF [0x02] = 0xFFFFFFFF
                PBIF [0x04] = 0xFFFFFFFF
                PBIF [0x09] = "Bad"
                PBIF [0x0A] = "Bad"
                PBIF [0x0B] = "Bad"
                PBIF [0x0C] = "Bad"
                ^^PCI0.LPCB.EC0.WECB (0x77, 0x40, Zero)
            }
            Else
            {
                XVBI ()
            }
        }
    }
}

