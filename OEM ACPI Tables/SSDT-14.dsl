/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-14.aml, Thu May 19 16:03:04 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00001A7E (6782)
 *     Revision         0x01
 *     Checksum         0x44
 *     OEM ID           "QUANTA"
 *     OEM Table ID     "COMPUTER"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160527 (538314023)
 */
DefinitionBlock ("", "SSDT", 1, "QUANTA", "COMPUTER", 0x00001000)
{
    External (_PR_.CPPC, FieldUnitObj)
    External (_PR_.HWPV, IntObj)
    External (_PR_.PR00, ProcessorObj)
    External (_PR_.PR00._PSS, MethodObj)    // 0 Arguments
    External (_PR_.PR00._TSS, MethodObj)    // 0 Arguments
    External (_SB_.GGOV, MethodObj)    // 1 Arguments
    External (_SB_.PCI0, DeviceObj)
    External (_SB_.PCI0.LPCB.EC0_.G6AC, UnknownObj)
    External (_SB_.PCI0.LPCB.EC0_.G6RE, UnknownObj)
    External (_SB_.PCI0.LPCB.EC0_.GFXT, UnknownObj)
    External (_SB_.PCI0.RP01, DeviceObj)
    External (_SB_.PCI0.RP01._ADR, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP01.PEGP.DGOF, MethodObj)    // 0 Arguments
    External (_SB_.PCI0.RP01.PEGP.DGON, MethodObj)    // 0 Arguments
    External (_SB_.SGOV, MethodObj)    // 2 Arguments
    External (DLHR, UnknownObj)
    External (DLPW, UnknownObj)
    External (EECP, UnknownObj)
    External (GBAS, UnknownObj)
    External (GPRW, MethodObj)    // 2 Arguments
    External (HRA0, UnknownObj)
    External (HRE0, UnknownObj)
    External (HRG0, UnknownObj)
    External (NVHA, UnknownObj)
    External (OSYS, UnknownObj)
    External (P8XH, MethodObj)    // 2 Arguments
    External (PNOT, MethodObj)    // 0 Arguments
    External (PWA0, UnknownObj)
    External (PWE0, UnknownObj)
    External (PWG0, UnknownObj)
    External (RPA1, UnknownObj)
    External (SGGP, UnknownObj)
    External (SGMD, UnknownObj)
    External (XBAS, UnknownObj)

    Scope (\_SB.PCI0.RP01)
    {
        OperationRegion (RPCX, SystemMemory, Add (Add (\XBAS, ShiftLeft (ShiftRight (And (\_SB.PCI0.RP01._ADR (), 0x00FF0000), 0x10), 
            0x0F)), ShiftLeft (And (\RPA1, 0x0F), 0x0C)), 0x1000)
        Field (RPCX, DWordAcc, NoLock, Preserve)
        {
            PVID,   16, 
            PDID,   16, 
            Offset (0x19), 
            PRBN,   8, 
            SCBN,   8, 
            Offset (0x4A), 
            CEDR,   1, 
            Offset (0x50), 
            ASPM,   2, 
                ,   2, 
            LNKD,   1, 
            Offset (0x69), 
                ,   2, 
            LREN,   1, 
            Offset (0xA4), 
            D0ST,   2, 
            Offset (0x328), 
                ,   19, 
            LNKS,   4
        }

        Name (MSD3, Zero)
        PowerResource (PC01, 0x00, 0x0000)
        {
            Name (_STA, One)  // _STA: Status
            Method (_ON, 0, Serialized)  // _ON_: Power On
            {
                If (LEqual (MSD3, 0x03))
                {
                    If (LEqual (\_SB.PCI0.RP01.PEGP.TDGC, One))
                    {
                        If (LEqual (\_SB.PCI0.RP01.PEGP.DGCX, 0x03))
                        {
                            Store (One, _STA) /* \_SB_.PCI0.RP01.PC01._STA */
                            \_SB.PCI0.RP01.PEGP.GC6O ()
                        }
                        ElseIf (LEqual (\_SB.PCI0.RP01.PEGP.DGCX, 0x04))
                        {
                            Store (One, _STA) /* \_SB_.PCI0.RP01.PC01._STA */
                            \_SB.PCI0.RP01.PEGP.GC6O ()
                        }

                        Store (Zero, \_SB.PCI0.RP01.PEGP.TDGC)
                        Store (Zero, \_SB.PCI0.RP01.PEGP.DGCX)
                    }
                    Else
                    {
                        \_SB.PCI0.RP01.PEGP.DGON ()
                        \_SB.PCI0.RP01.PEGP.HGON ()
                        Store (One, _STA) /* \_SB_.PCI0.RP01.PC01._STA */
                        Store (Zero, MSD3) /* \_SB_.PCI0.RP01.MSD3 */
                    }
                }
            }

            Method (_OFF, 0, Serialized)  // _OFF: Power Off
            {
                If (LEqual (\_SB.PCI0.RP01.PEGP.TDGC, One))
                {
                    CreateField (\_SB.PCI0.RP01.PEGP.TGPC, Zero, 0x03, GUPC)
                    If (LEqual (ToInteger (GUPC), One))
                    {
                        \_SB.PCI0.RP01.PEGP.GC6I ()
                        Store (Zero, _STA) /* \_SB_.PCI0.RP01.PC01._STA */
                    }
                    ElseIf (LEqual (ToInteger (GUPC), 0x02))
                    {
                        \_SB.PCI0.RP01.PEGP.GC6I ()
                        Store (Zero, _STA) /* \_SB_.PCI0.RP01.PC01._STA */
                    }
                }
                ElseIf (LEqual (MSD3, Zero))
                {
                    \_SB.PCI0.RP01.PEGP.DGOF ()
                    \_SB.PCI0.RP01.PEGP.HGOF ()
                    Store (Zero, _STA) /* \_SB_.PCI0.RP01.PC01._STA */
                    Store (0x03, MSD3) /* \_SB_.PCI0.RP01.MSD3 */
                }

                Store (0x03, MSD3) /* \_SB_.PCI0.RP01.MSD3 */
            }
        }

        Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
        {
            PC01
        })
        Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
        {
            PC01
        })
        Name (_PR3, Package (0x01)  // _PR3: Power Resources for D3hot
        {
            PC01
        })
        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
        {
            Return (0x04)
        }

        Device (PEGP)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }
        }

        Device (PEGA)
        {
            Name (_ADR, One)  // _ADR: Address
            OperationRegion (ACAP, PCI_Config, \EECP, 0x14)
            Field (ACAP, DWordAcc, NoLock, Preserve)
            {
                Offset (0x10), 
                LCT1,   16
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (GPRW (0x69, 0x04))
            }
        }
    }

    Scope (\_SB.PCI0.RP01.PEGP)
    {
        Name (IVID, 0xFFFF)
        Name (ELCT, Zero)
        Name (HVID, Zero)
        Name (HDID, Zero)
        Name (TCNT, Zero)
        Name (LDLY, 0x64)
        Name (SLTR, Zero)
        Name (LTRE, Zero)
        OperationRegion (GPIO, SystemMemory, 0xFDAE0500, 0x0100)
        Field (GPIO, ByteAcc, NoLock, Preserve)
        {
            Offset (0xA0), 
                ,   1, 
            DGE4,   1, 
            Offset (0xA8), 
                ,   1, 
            DGE5,   1, 
            Offset (0xC8), 
            DGRS,   1, 
            Offset (0xD8), 
            DGPW,   1, 
            Offset (0xE0), 
                ,   1, 
            DGPG,   1
        }

        OperationRegion (PCIS, SystemMemory, Add (\XBAS, ShiftLeft (PRBN, 0x14)), 0x0500)
        Field (PCIS, AnyAcc, NoLock, Preserve)
        {
            DVID,   16, 
            Offset (0x0B), 
            CBCC,   8, 
            Offset (0x2C), 
            SVID,   16, 
            SDID,   16, 
            Offset (0x48B), 
                ,   1, 
            HDAE,   1
        }

        OperationRegion (PCAP, SystemMemory, Add (Add (\XBAS, ShiftLeft (PRBN, 0x14)), \EECP), 0x14)
        Field (PCAP, DWordAcc, NoLock, Preserve)
        {
            Offset (0x10), 
            LCTL,   16
        }

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            Store (Zero, \_SB.PCI0.RP01.PEGP._ADR)
        }

        Method (HGON, 0, Serialized)
        {
            If (LEqual (CCHK (One), Zero))
            {
                Return (Zero)
            }

            P8XH (Zero, 0xD0)
            SGPO (Zero, 0x02040009, Zero, One)
            P8XH (Zero, 0xD1)
            Sleep (0x03)
            SGPO (Zero, 0x0204000B, One, One)
            P8XH (Zero, 0xD2)
            While (LNotEqual (DGPG, One))
            {
                Sleep (One)
            }

            P8XH (Zero, 0xD3)
            Sleep (One)
            SGPO (Zero, 0x02040009, Zero, Zero)
            P8XH (Zero, 0xD4)
            Store (Zero, LNKD) /* \_SB_.PCI0.RP01.LNKD */
            P8XH (Zero, 0xD5)
            While (LLess (LNKS, 0x07))
            {
                Sleep (0x10)
            }

            Store (\_SB.PCI0.RP01.PEGP.SLTR, \_SB.PCI0.RP01.LREN)
            Store (One, \_SB.PCI0.RP01.CEDR)
            Store (HVID, SVID) /* \_SB_.PCI0.RP01.PEGP.SVID */
            Store (HDID, SDID) /* \_SB_.PCI0.RP01.PEGP.SDID */
            Or (And (ELCT, 0x43), And (LCTL, 0xFFBC), LCTL) /* \_SB_.PCI0.RP01.PEGP.LCTL */
            Or (And (ELCT, 0x43), And (\_SB.PCI0.RP01.PEGA.LCT1, 0xFFBC), \_SB.PCI0.RP01.PEGA.LCT1)
            Store (One, \_SB.PCI0.LPCB.EC0.GFXT) /* External reference */
            P8XH (Zero, 0xD6)
            Return (Zero)
        }

        Method (_ON, 0, Serialized)  // _ON_: Power On
        {
            HGON ()
            Return (Zero)
        }

        Method (HGOF, 0, Serialized)
        {
            If (LEqual (CCHK (Zero), Zero))
            {
                Return (Zero)
            }

            Store (LCTL, ELCT) /* \_SB_.PCI0.RP01.PEGP.ELCT */
            Store (SVID, HVID) /* \_SB_.PCI0.RP01.PEGP.HVID */
            Store (SDID, HDID) /* \_SB_.PCI0.RP01.PEGP.HDID */
            Store (\_SB.PCI0.RP01.LREN, \_SB.PCI0.RP01.PEGP.SLTR)
            Store (One, LNKD) /* \_SB_.PCI0.RP01.LNKD */
            Store (Zero, TCNT) /* \_SB_.PCI0.RP01.PEGP.TCNT */
            While (LLess (TCNT, LDLY))
            {
                If (LEqual (LNKS, Zero))
                {
                    Break
                }

                Sleep (0x10)
                Add (TCNT, 0x10, TCNT) /* \_SB_.PCI0.RP01.PEGP.TCNT */
            }

            P8XH (Zero, 0xDA)
            SGPO (Zero, 0x02040009, Zero, One)
            P8XH (Zero, 0xDB)
            SGPO (Zero, 0x0204000B, One, Zero)
            P8XH (Zero, 0xDC)
            Store (Zero, \_SB.PCI0.LPCB.EC0.GFXT) /* External reference */
            P8XH (Zero, 0xDD)
            Return (Zero)
        }

        Method (_OFF, 0, Serialized)  // _OFF: Power Off
        {
            HGOF ()
            Return (Zero)
        }

        Name (TGPC, Buffer (0x04)
        {
             0x00                                             // .
        })
        Name (TDGC, Zero)
        Name (DGCX, Zero)
        Name (TRPC, Zero)
        Name (G6IF, Zero)
        Method (OGC6, 4, Serialized)
        {
            If (LEqual (PDID, 0x1140))
            {
                Return (0x80000002)
            }

            If (LLess (Arg1, 0x0100))
            {
                Return (0x80000001)
            }

            Switch (ToInteger (Arg2))
            {
                Case (Zero)
                {
                    Return (Buffer (0x04)
                    {
                         0x1B, 0x00, 0x00, 0x00                           // ....
                    })
                }
                Case (One)
                {
                    Name (JTB1, Buffer (0x04)
                    {
                         0x00                                             // .
                    })
                    CreateField (JTB1, Zero, One, JTEN)
                    CreateField (JTB1, One, 0x02, SREN)
                    CreateField (JTB1, 0x03, 0x03, PLPR)
                    CreateField (JTB1, 0x06, 0x02, FBPR)
                    CreateField (JTB1, 0x08, 0x02, GUPR)
                    CreateField (JTB1, 0x0A, One, GC6R)
                    CreateField (JTB1, 0x0B, One, PTRH)
                    CreateField (JTB1, 0x0D, One, MHYB)
                    CreateField (JTB1, 0x0E, One, RPCL)
                    CreateField (JTB1, 0x0F, 0x02, GC6V)
                    CreateField (JTB1, 0x14, 0x0C, JTRV)
                    Store (One, JTEN) /* \_SB_.PCI0.RP01.PEGP.OGC6.JTEN */
                    Store (One, GC6R) /* \_SB_.PCI0.RP01.PEGP.OGC6.GC6R */
                    Store (One, MHYB) /* \_SB_.PCI0.RP01.PEGP.OGC6.MHYB */
                    Store (One, RPCL) /* \_SB_.PCI0.RP01.PEGP.OGC6.RPCL */
                    If (LEqual (ToInteger (RPCL), One))
                    {
                        Store (One, TRPC) /* \_SB_.PCI0.RP01.PEGP.TRPC */
                    }

                    Store (One, GC6V) /* \_SB_.PCI0.RP01.PEGP.OGC6.GC6V */
                    Store (Zero, GC6V) /* \_SB_.PCI0.RP01.PEGP.OGC6.GC6V */
                    Store (0x02, G6IF) /* \_SB_.PCI0.RP01.PEGP.G6IF */
                    Store (One, PTRH) /* \_SB_.PCI0.RP01.PEGP.OGC6.PTRH */
                    Store (One, SREN) /* \_SB_.PCI0.RP01.PEGP.OGC6.SREN */
                    Store (0x0103, JTRV) /* \_SB_.PCI0.RP01.PEGP.OGC6.JTRV */
                    Return (JTB1) /* \_SB_.PCI0.RP01.PEGP.OGC6.JTB1 */
                }
                Case (0x02)
                {
                    Return (Arg3)
                }
                Case (0x03)
                {
                    CreateField (Arg3, Zero, 0x03, GUPC)
                    CreateField (Arg3, 0x04, One, PLPC)
                    CreateField (Arg3, 0x0E, 0x02, DFGC)
                    CreateField (Arg3, 0x10, 0x03, GPCX)
                    Store (Arg3, TGPC) /* \_SB_.PCI0.RP01.PEGP.TGPC */
                    If (LOr (LNotEqual (ToInteger (GUPC), Zero), LNotEqual (ToInteger (DFGC
                        ), Zero)))
                    {
                        Store (ToInteger (DFGC), TDGC) /* \_SB_.PCI0.RP01.PEGP.TDGC */
                        Store (ToInteger (GPCX), DGCX) /* \_SB_.PCI0.RP01.PEGP.DGCX */
                    }

                    Name (JTB3, Buffer (0x04)
                    {
                         0x00                                             // .
                    })
                    CreateField (JTB3, Zero, 0x03, GUPS)
                    CreateField (JTB3, 0x03, One, GPGS)
                    CreateField (JTB3, 0x07, One, PLST)
                    If (LNotEqual (ToInteger (DFGC), Zero))
                    {
                        Store (One, GPGS) /* \_SB_.PCI0.RP01.PEGP.OGC6.GPGS */
                        Store (One, GUPS) /* \_SB_.PCI0.RP01.PEGP.OGC6.GUPS */
                        Return (JTB3) /* \_SB_.PCI0.RP01.PEGP.OGC6.JTB3 */
                    }

                    If (LEqual (ToInteger (GUPC), One))
                    {
                        GC6I ()
                        Store (One, PLST) /* \_SB_.PCI0.RP01.PEGP.OGC6.PLST */
                        Store (Zero, GUPS) /* \_SB_.PCI0.RP01.PEGP.OGC6.GUPS */
                    }
                    ElseIf (LEqual (ToInteger (GUPC), 0x02))
                    {
                        GC6I ()
                        If (LEqual (ToInteger (PLPC), Zero))
                        {
                            Store (Zero, PLST) /* \_SB_.PCI0.RP01.PEGP.OGC6.PLST */
                        }

                        Store (Zero, GUPS) /* \_SB_.PCI0.RP01.PEGP.OGC6.GUPS */
                    }
                    ElseIf (LEqual (ToInteger (GUPC), 0x03))
                    {
                        GC6O ()
                        If (LNotEqual (ToInteger (PLPC), Zero))
                        {
                            Store (Zero, PLST) /* \_SB_.PCI0.RP01.PEGP.OGC6.PLST */
                        }

                        Store (One, GPGS) /* \_SB_.PCI0.RP01.PEGP.OGC6.GPGS */
                        Store (Zero, GUPS) /* \_SB_.PCI0.RP01.PEGP.OGC6.GUPS */
                    }
                    ElseIf (LEqual (ToInteger (GUPC), 0x04))
                    {
                        GC6O ()
                        If (LNotEqual (ToInteger (PLPC), Zero))
                        {
                            Store (Zero, PLST) /* \_SB_.PCI0.RP01.PEGP.OGC6.PLST */
                        }

                        Store (One, GPGS) /* \_SB_.PCI0.RP01.PEGP.OGC6.GPGS */
                        Store (Zero, GUPS) /* \_SB_.PCI0.RP01.PEGP.OGC6.GUPS */
                    }
                    ElseIf (LEqual (ToInteger (GUPC), Zero))
                    {
                        Store (GETS (), GUPS) /* \_SB_.PCI0.RP01.PEGP.OGC6.GUPS */
                        If (LEqual (ToInteger (GUPS), One))
                        {
                            Store (One, GPGS) /* \_SB_.PCI0.RP01.PEGP.OGC6.GPGS */
                        }
                        Else
                        {
                            Store (Zero, GPGS) /* \_SB_.PCI0.RP01.PEGP.OGC6.GPGS */
                        }
                    }
                    ElseIf (LEqual (ToInteger (GUPC), 0x06)){}
                    Return (JTB3) /* \_SB_.PCI0.RP01.PEGP.OGC6.JTB3 */
                }
                Case (0x04)
                {
                    Return (0x80000002)
                }

            }

            Return (0x80000002)
        }

        Method (GC6I, 0, Serialized)
        {
            Store ("<<< GC6I >>>", Debug)
            Store (One, \_SB.PCI0.LPCB.EC0.G6RE) /* External reference */
            While (LNotEqual (\_SB.PCI0.LPCB.EC0.G6AC, One))
            {
                Sleep (0x0A)
            }

            Store (LREN, LTRE) /* \_SB_.PCI0.RP01.PEGP.LTRE */
            Store (One, LNKD) /* \_SB_.PCI0.RP01.LNKD */
        }

        Method (GC6O, 0, Serialized)
        {
            Store ("<<< GC6O >>>", Debug)
            While (LNotEqual (DGE5, One))
            {
                Sleep (One)
            }

            Store (Zero, LNKD) /* \_SB_.PCI0.RP01.LNKD */
            SGPO (Zero, 0x0204000A, Zero, One)
            While (LNotEqual (DGE5, Zero))
            {
                Sleep (One)
            }

            SGPO (Zero, 0x0204000A, Zero, Zero)
            While (LLess (LNKS, 0x07))
            {
                Stall (0x64)
            }

            Store (LTRE, LREN) /* \_SB_.PCI0.RP01.LREN */
            Store (One, CEDR) /* \_SB_.PCI0.RP01.CEDR */
            Store (Zero, \_SB.PCI0.LPCB.EC0.G6RE) /* External reference */
        }

        Method (GETS, 0, Serialized)
        {
            If (LEqual (DGE5, One))
            {
                Store ("<<< GETS() return 0x3 >>>", Debug)
                Return (0x03)
            }
            Else
            {
                Store ("<<< GETS() return 0x1 >>>", Debug)
                Return (One)
            }
        }

        Method (SGPO, 4, Serialized)
        {
            If (LEqual (Arg2, Zero))
            {
                Not (Arg3, Arg3)
                And (Arg3, One, Arg3)
            }

            If (LEqual (SGGP, One))
            {
                If (CondRefOf (\_SB.SGOV))
                {
                    \_SB.SGOV (Arg1, Arg3)
                }
            }
        }

        Method (SGPI, 4, Serialized)
        {
            If (LEqual (Arg0, One))
            {
                If (CondRefOf (\_SB.GGOV))
                {
                    Store (\_SB.GGOV (Arg2), Local0)
                }
            }

            If (LEqual (Arg3, Zero))
            {
                Not (Local0, Local0)
                And (Local0, One, Local0)
            }

            Return (Local0)
        }

        Method (CCHK, 1, NotSerialized)
        {
            If (LEqual (PVID, IVID))
            {
                Return (Zero)
            }

            If (LEqual (Arg0, Zero))
            {
                If (LEqual (SGPI (SGGP, Zero, 0x0204000B, One), Zero))
                {
                    Return (Zero)
                }
            }
            ElseIf (LEqual (Arg0, One))
            {
                If (LEqual (SGPI (SGGP, Zero, 0x0204000B, One), One))
                {
                    Return (Zero)
                }
            }

            Return (One)
        }
    }

    Scope (\_SB.PCI0)
    {
        Name (OTM, "OTMACPI 2010-Mar-09 12:08:26")
    }

    Scope (\_SB.PCI0.RP01.PEGP)
    {
        Name (CMDS, Zero)
        Name (DBUF, Zero)
        OperationRegion (PG0R, SystemMemory, Add (\XBAS, 0x8000), 0x90)
        Field (PG0R, DWordAcc, NoLock, Preserve)
        {
            Offset (0x84), 
            PWRS,   8
        }

        OperationRegion (PG0X, SystemMemory, Add (\XBAS, 0x00100000), 0x0500)
        Field (PG0X, DWordAcc, Lock, Preserve)
        {
            Offset (0x04), 
            CMDR,   8, 
            Offset (0x40), 
            NIDR,   32, 
            Offset (0x488), 
                ,   25, 
            MLTR,   1
        }

        Method (MSOF, 0, NotSerialized)
        {
            Store (0x08, PWRS) /* \_SB_.PCI0.RP01.PEGP.PWRS */
            Sleep (0x10)
            Store (NIDR, DBUF) /* \_SB_.PCI0.RP01.PEGP.DBUF */
            Store (CMDR, CMDS) /* \_SB_.PCI0.RP01.PEGP.CMDS */
            Store (0x0B, PWRS) /* \_SB_.PCI0.RP01.PEGP.PWRS */
            Sleep (0x10)
        }

        Method (MSON, 0, NotSerialized)
        {
            Store (0x08, PWRS) /* \_SB_.PCI0.RP01.PEGP.PWRS */
            Sleep (0x10)
            Store (DBUF, NIDR) /* \_SB_.PCI0.RP01.PEGP.NIDR */
            Store (CMDS, CMDR) /* \_SB_.PCI0.RP01.PEGP.CMDR */
            Store (Zero, MLTR) /* \_SB_.PCI0.RP01.PEGP.MLTR */
            Store (0x0B, PWRS) /* \_SB_.PCI0.RP01.PEGP.PWRS */
            Sleep (0x10)
        }

        Method (DGOF, 0, NotSerialized)
        {
            Store (NIDR, DBUF) /* \_SB_.PCI0.RP01.PEGP.DBUF */
            Store (CMDR, CMDS) /* \_SB_.PCI0.RP01.PEGP.CMDS */
        }

        Method (DGON, 0, NotSerialized)
        {
            Store (DBUF, NIDR) /* \_SB_.PCI0.RP01.PEGP.NIDR */
            Store (CMDS, CMDR) /* \_SB_.PCI0.RP01.PEGP.CMDR */
        }
    }

    Scope (\)
    {
    }

    Scope (\_SB.PCI0.RP01.PEGP)
    {
        OperationRegion (NVHM, SystemMemory, NVHA, 0x00040420)
        Field (NVHM, AnyAcc, NoLock, Preserve)
        {
            Offset (0x100), 
            NVHO,   32, 
            RVBS,   32, 
            Offset (0x400), 
            VBS1,   262144, 
            VBS2,   262144, 
            VBS3,   262144, 
            VBS4,   262144, 
            VBS5,   262144, 
            VBS6,   262144, 
            VBS7,   262144, 
            VBS8,   262144
        }
    }

    Scope (\_SB.PCI0)
    {
        OperationRegion (RTCO, SystemIO, 0x72, 0x02)
        Field (RTCO, ByteAcc, NoLock, Preserve)
        {
            CIND,   8, 
            CDAT,   8
        }

        IndexField (CIND, CDAT, ByteAcc, NoLock, Preserve)
        {
            Offset (0x70), 
            OPTF,   1
        }
    }

    Scope (\_SB.PCI0.RP01.PEGP)
    {
        Method (_ROM, 2, Serialized)  // _ROM: Read-Only Memory
        {
            Store (Arg0, Local0)
            Store (Arg1, Local1)
            Name (VROM, Buffer (Local1)
            {
                 0x00                                             // .
            })
            If (LGreater (Local1, 0x1000))
            {
                Store (0x1000, Local1)
            }

            If (LGreater (Arg0, RVBS))
            {
                Return (VROM) /* \_SB_.PCI0.RP01.PEGP._ROM.VROM */
            }

            Add (Arg0, Arg1, Local2)
            If (LGreater (Local2, RVBS))
            {
                Subtract (RVBS, Local0, Local1)
            }

            Divide (Local0, 0x8000, Local3, Local4)
            Switch (Local4)
            {
                Case (Zero)
                {
                    Store (\_SB.PCI0.RP01.PEGP.VBS1, Local5)
                }
                Case (One)
                {
                    Store (\_SB.PCI0.RP01.PEGP.VBS2, Local5)
                }
                Case (0x02)
                {
                    Store (\_SB.PCI0.RP01.PEGP.VBS3, Local5)
                }
                Case (0x03)
                {
                    Store (\_SB.PCI0.RP01.PEGP.VBS4, Local5)
                }
                Case (0x04)
                {
                    Store (\_SB.PCI0.RP01.PEGP.VBS5, Local5)
                }
                Case (0x05)
                {
                    Store (\_SB.PCI0.RP01.PEGP.VBS6, Local5)
                }
                Case (0x06)
                {
                    Store (\_SB.PCI0.RP01.PEGP.VBS7, Local5)
                }
                Case (0x07)
                {
                    Store (\_SB.PCI0.RP01.PEGP.VBS8, Local5)
                }

            }

            Multiply (0x8000, Local4, Local4)
            Subtract (Local0, Local4, Local0)
            Mid (Local5, Local0, Local1, VROM) /* \_SB_.PCI0.RP01.PEGP._ROM.VROM */
            Return (VROM) /* \_SB_.PCI0.RP01.PEGP._ROM.VROM */
        }
    }

    Scope (\_SB.PCI0.RP01.PEGP)
    {
        Method (GOBT, 1, NotSerialized)
        {
            Name (OPVK, Buffer (0xE2)
            {
                /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0010 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0018 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0020 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0028 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0030 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0038 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0040 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0048 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0050 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0058 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0060 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0068 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0070 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0078 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0080 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0088 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0090 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 0098 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00A0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00A8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00B0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00B8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00C0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00C8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00D0 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00D8 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                /* 00E0 */  0x00, 0x00                                       // ..
            })
            CreateWordField (Arg0, 0x02, USRG)
            If (LEqual (USRG, 0x564B))
            {
                Return (OPVK) /* \_SB_.PCI0.RP01.PEGP.GOBT.OPVK */
            }

            Return (Zero)
        }
    }

    Scope (\_SB.PCI0.RP01.PEGP)
    {
        Name (OMPR, 0x02)
        Method (NVOP, 4, Serialized)
        {
            Store ("------- NV OPTIMUS DSM --------", Debug)
            If (LNotEqual (Arg1, 0x0100))
            {
                Return (0x80000001)
            }

            Switch (ToInteger (Arg2))
            {
                Case (Zero)
                {
                    Store (Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }, Local0)
                    Divide (Zero, 0x08, Local2, Local1)
                    ShiftLeft (One, Local2, Local2)
                    Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1))
                    Divide (0x1A, 0x08, Local2, Local1)
                    ShiftLeft (One, Local2, Local2)
                    Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1))
                    Divide (0x10, 0x08, Local2, Local1)
                    ShiftLeft (One, Local2, Local2)
                    Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1))
                    Divide (0x1B, 0x08, Local2, Local1)
                    ShiftLeft (One, Local2, Local2)
                    Or (DerefOf (Index (Local0, Local1)), Local2, Index (Local0, Local1))
                    Return (Local0)
                }
                Case (0x1A)
                {
                    CreateField (Arg3, 0x18, 0x02, OPCE)
                    CreateField (Arg3, Zero, One, FLCH)
                    If (ToInteger (FLCH))
                    {
                        Store (OPCE, OMPR) /* \_SB_.PCI0.RP01.PEGP.OMPR */
                    }

                    Store (Buffer (0x04)
                        {
                             0x00, 0x00, 0x00, 0x00                           // ....
                        }, Local0)
                    CreateField (Local0, Zero, One, OPEN)
                    CreateField (Local0, 0x03, 0x02, CGCS)
                    CreateField (Local0, 0x06, One, SHPC)
                    CreateField (Local0, 0x18, 0x03, DGPC)
                    CreateField (Local0, 0x1B, 0x02, HDAC)
                    Store (One, OPEN) /* \_SB_.PCI0.RP01.PEGP.NVOP.OPEN */
                    Store (One, SHPC) /* \_SB_.PCI0.RP01.PEGP.NVOP.SHPC */
                    Store (0x02, HDAC) /* \_SB_.PCI0.RP01.PEGP.NVOP.HDAC */
                    Store (One, DGPC) /* \_SB_.PCI0.RP01.PEGP.NVOP.DGPC */
                    If (\_SB.PCI0.RP01.PEGP._STA ())
                    {
                        Store (0x03, CGCS) /* \_SB_.PCI0.RP01.PEGP.NVOP.CGCS */
                    }

                    Return (Local0)
                }
                Case (0x1B)
                {
                    Store (Zero, MLTF) /* \_SB_.PCI0.RP01.PEGP.MLTF */
                }
                Case (0x10)
                {
                    Return (\_SB.PCI0.RP01.PEGP.GOBT (Arg3))
                }

            }

            Return (0x80000002)
        }
    }

    Scope (\_SB.PCI0.RP01.PEGP)
    {
        Name (DGOS, Zero)
        OperationRegion (PCNV, PCI_Config, 0x0488, 0x04)
        Field (PCNV, AnyAcc, NoLock, Preserve)
        {
                ,   25, 
            MLTF,   1
        }

        Method (_PS0, 0, NotSerialized)  // _PS0: Power State 0
        {
            If (DGOS)
            {
                \_SB.PCI0.RP01.PEGP._ON ()
                Store (Zero, DGOS) /* \_SB_.PCI0.RP01.PEGP.DGOS */
                Store (Zero, MLTF) /* \_SB_.PCI0.RP01.PEGP.MLTF */
            }

            Store (Zero, MLTF) /* \_SB_.PCI0.RP01.PEGP.MLTF */
        }

        Method (_PS3, 0, NotSerialized)  // _PS3: Power State 3
        {
            If (LEqual (\_SB.PCI0.RP01.PEGP.OMPR, 0x03))
            {
                \_SB.PCI0.RP01.PEGP._OFF ()
                Store (One, DGOS) /* \_SB_.PCI0.RP01.PEGP.DGOS */
                Store (0x02, \_SB.PCI0.RP01.PEGP.OMPR)
            }
        }

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            Return (0x0F)
        }
    }

    Scope (\_SB.PCI0.RP01.PEGP)
    {
        Name (GPSP, Buffer (0x24){})
        CreateDWordField (GPSP, Zero, RETN)
        CreateDWordField (GPSP, 0x04, VRV1)
        CreateDWordField (GPSP, 0x08, TGPU)
        CreateDWordField (GPSP, 0x0C, PDTS)
        CreateDWordField (GPSP, 0x10, SFAN)
        CreateDWordField (GPSP, 0x14, SKNT)
        CreateDWordField (GPSP, 0x18, CPUE)
        CreateDWordField (GPSP, 0x1C, TMP1)
        CreateDWordField (GPSP, 0x20, TMP2)
        Name (SUBF, Zero)
        Name (PSAP, Zero)
        Method (CMPB, 2, NotSerialized)
        {
            Store (SizeOf (Arg0), Local1)
            If (LNotEqual (Local1, SizeOf (Arg1)))
            {
                Return (Zero)
            }

            Store (Zero, Local0)
            While (LLess (Local0, Local1))
            {
                If (LNotEqual (DerefOf (Index (Arg0, Local0)), DerefOf (Index (Arg1, Local0
                    ))))
                {
                    Return (Zero)
                }

                Increment (Local0)
            }

            Return (One)
        }

        Method (NVGS, 4, Serialized)
        {
            Store ("<<< GPS >>>", Debug)
            Store (Zero, Local0)
            Store (ShiftLeft (DerefOf (Index (Arg3, 0x03)), 0x18), Local0)
            Add (ShiftLeft (DerefOf (Index (Arg3, 0x02)), 0x10), Local0, Local0)
            Add (ShiftLeft (DerefOf (Index (Arg3, One)), 0x08), Local0, Local0)
            Add (ShiftLeft (DerefOf (Index (Arg3, Zero)), Zero), Local0, Local0)
            If (LNotEqual (Arg1, 0x0100))
            {
                Return (Buffer (0x04)
                {
                     0x02, 0x00, 0x00, 0x80                           // ....
                })
            }

            Store (Arg2, SUBF) /* \_SB_.PCI0.RP01.PEGP.SUBF */
            If (LEqual (SUBF, Zero))
            {
                Store ("GPS fun 0", Debug)
                Return (Buffer (0x08)
                {
                     0x01, 0x00, 0x08, 0x00, 0x0F, 0x04, 0x00, 0x00   // ........
                })
            }
            ElseIf (LEqual (SUBF, 0x2A))
            {
                Store ("GPS fun 2a", Debug)
                CreateByteField (Arg3, Zero, PSH0)
                CreateByteField (Arg3, One, PSH1)
                CreateBitField (Arg3, 0x08, GPUT)
                CreateBitField (Arg3, 0x09, CPUT)
                CreateBitField (Arg3, 0x0A, FANS)
                CreateBitField (Arg3, 0x0B, SKIN)
                CreateBitField (Arg3, 0x0C, ENGR)
                CreateBitField (Arg3, 0x0D, SEN1)
                CreateBitField (Arg3, 0x0E, SEN2)
                Switch (PSH0)
                {
                    Case (Zero)
                    {
                        If (CPUT)
                        {
                            Store (0x0200, RETN) /* \_SB_.PCI0.RP01.PEGP.RETN */
                            Or (RETN, PSH0, RETN) /* \_SB_.PCI0.RP01.PEGP.RETN */
                        }

                        Return (GPSP) /* \_SB_.PCI0.RP01.PEGP.GPSP */
                    }
                    Case (One)
                    {
                        Store (0x0300, RETN) /* \_SB_.PCI0.RP01.PEGP.RETN */
                        Or (RETN, PSH0, RETN) /* \_SB_.PCI0.RP01.PEGP.RETN */
                        Store (0x03E8, PDTS) /* \_SB_.PCI0.RP01.PEGP.PDTS */
                        Return (GPSP) /* \_SB_.PCI0.RP01.PEGP.GPSP */
                    }
                    Case (0x02)
                    {
                        Store (0x0102, RETN) /* \_SB_.PCI0.RP01.PEGP.RETN */
                        Store (0x5C, TGPU) /* \_SB_.PCI0.RP01.PEGP.TGPU */
                        Store (Zero, PDTS) /* \_SB_.PCI0.RP01.PEGP.PDTS */
                        Store (Zero, SFAN) /* \_SB_.PCI0.RP01.PEGP.SFAN */
                        Store (Zero, CPUE) /* \_SB_.PCI0.RP01.PEGP.CPUE */
                        Store (Zero, SKNT) /* \_SB_.PCI0.RP01.PEGP.SKNT */
                        Store (Zero, TMP1) /* \_SB_.PCI0.RP01.PEGP.TMP1 */
                        Store (Zero, TMP2) /* \_SB_.PCI0.RP01.PEGP.TMP2 */
                        Return (GPSP) /* \_SB_.PCI0.RP01.PEGP.GPSP */
                    }

                }
            }
            ElseIf (LEqual (SUBF, 0x20))
            {
                Store ("GPS fun 20", Debug)
                Name (RET1, Zero)
                CreateBitField (Arg3, 0x18, NRIT)
                CreateBitField (Arg3, 0x19, NRIS)
                If (NRIS)
                {
                    If (NRIT)
                    {
                        Or (RET1, 0x01000000, RET1) /* \_SB_.PCI0.RP01.PEGP.NVGS.RET1 */
                    }
                    Else
                    {
                        And (RET1, 0xFEFFFFFF, RET1) /* \_SB_.PCI0.RP01.PEGP.NVGS.RET1 */
                    }
                }

                Or (RET1, 0x40000000, RET1) /* \_SB_.PCI0.RP01.PEGP.NVGS.RET1 */
                Store ("== GPS: HWPV ==", Debug)
                Store (\_PR.HWPV, Debug)
                If (LNotEqual (\_PR.HWPV, Zero))
                {
                    Or (RET1, 0x00800000, RET1) /* \_SB_.PCI0.RP01.PEGP.NVGS.RET1 */
                }

                Return (RET1) /* \_SB_.PCI0.RP01.PEGP.NVGS.RET1 */
            }
            ElseIf (LEqual (SUBF, 0x21))
            {
                Store ("GPS fun 21", Debug)
                Return (\_PR.PR00._PSS ())
            }
            ElseIf (LEqual (SUBF, 0x22))
            {
                Store ("GPS fun 22", Debug)
                CreateDWordField (Arg3, Zero, PCAP)
                Store (PCAP, \_PR.CPPC) /* External reference */
                PNOT ()
                Store (PCAP, PSAP) /* \_SB_.PCI0.RP01.PEGP.PSAP */
                Return (PCAP) /* \_SB_.PCI0.RP01.PEGP.NVGS.PCAP */
            }
            ElseIf (LEqual (SUBF, 0x23))
            {
                Store ("GPS fun 23", Debug)
                Return (PSAP) /* \_SB_.PCI0.RP01.PEGP.PSAP */
            }
            ElseIf (LEqual (SUBF, 0x25))
            {
                Store ("GPS fun 25", Debug)
                Return (\_PR.PR00._TSS ())
            }
            ElseIf (LEqual (SUBF, 0x26))
            {
                Store ("GPS fun 26", Debug)
                CreateDWordField (Arg3, Zero, TCAP)
                Notify (\_PR.PR00, 0x80) // Performance Capability Change
                Return (TCAP) /* \_SB_.PCI0.RP01.PEGP.NVGS.TCAP */
            }
            Else
            {
                Return (0x80000002)
            }

            Return (Zero)
        }
    }

    Scope (\)
    {
        Method (CMPB, 2, NotSerialized)
        {
            Store (SizeOf (Arg0), Local1)
            If (LNotEqual (Local1, SizeOf (Arg1)))
            {
                Return (Zero)
            }

            Store (Zero, Local0)
            While (LLess (Local0, Local1))
            {
                If (LNotEqual (DerefOf (Index (Arg0, Local0)), DerefOf (Index (Arg1, Local0
                    ))))
                {
                    Return (Zero)
                }

                Increment (Local0)
            }

            Return (One)
        }
    }

    Scope (\_SB.PCI0.RP01.PEGP)
    {
        Name (MXM3, Buffer (0x66)
        {
            /* 0000 */  0x4D, 0x58, 0x4D, 0x5F, 0x03, 0x00, 0x5D, 0x00,  // MXM_..].
            /* 0008 */  0x30, 0x11, 0xB8, 0xFF, 0xF9, 0x3E, 0x00, 0x00,  // 0....>..
            /* 0010 */  0x00, 0x00, 0x0A, 0xF0, 0xF9, 0x3E, 0x00, 0x00,  // .....>..
            /* 0018 */  0x60, 0xE9, 0xD0, 0xFE, 0xF9, 0x3E, 0x00, 0x00,  // `....>..
            /* 0020 */  0x60, 0x6A, 0xDA, 0xFE, 0xF9, 0x3E, 0x00, 0x00,  // `j...>..
            /* 0028 */  0x20, 0x2B, 0xE2, 0xFE, 0xF9, 0x3E, 0x00, 0x00,  //  +...>..
            /* 0030 */  0x60, 0x6C, 0xEA, 0xFE, 0xF9, 0x3E, 0x00, 0x00,  // `l...>..
            /* 0038 */  0x20, 0x6A, 0xDA, 0xFE, 0xF9, 0x3E, 0x00, 0x00,  //  j...>..
            /* 0040 */  0x20, 0x6C, 0xEA, 0xFE, 0xF9, 0x3E, 0x00, 0x00,  //  l...>..
            /* 0048 */  0x01, 0x90, 0x01, 0x00, 0x03, 0x00, 0x90, 0x01,  // ........
            /* 0050 */  0x13, 0x00, 0x90, 0x01, 0xE5, 0x0D, 0x01, 0x01,  // ........
            /* 0058 */  0x01, 0x00, 0x00, 0x00, 0xE5, 0x0D, 0x01, 0x03,  // ........
            /* 0060 */  0x00, 0x90, 0xD8, 0x09, 0x11, 0x0A               // ......
        })
        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If (LEqual (Arg0, ToUUID ("cbeca351-067b-4924-9cbd-b46b00b86f34") /* Unknown UUID */))
            {
                Return (OGC6 (Arg0, Arg1, Arg2, Arg3))
            }

            If (LEqual (Arg0, ToUUID ("a486d8f8-0bda-471b-a72b-6042a6b5bee0") /* Unknown UUID */))
            {
                Return (\_SB.PCI0.RP01.PEGP.NVOP (Arg0, Arg1, Arg2, Arg3))
            }

            Store ("<<< _DSM - Perf >>>", Debug)
            Store (Arg0, Debug)
            Store (Arg1, Debug)
            Store (Arg2, Debug)
            Store (Arg3, Debug)
            If (CMPB (Arg0, ToUUID ("a3132d01-8cda-49ba-a52e-bc9d46df6b81") /* Unknown UUID */))
            {
                Return (NVGS (Arg0, Arg1, Arg2, Arg3))
            }

            If (LEqual (Arg0, ToUUID ("4004a400-917d-4cf2-b89c-79b62fd55665") /* Unknown UUID */))
            {
                Store (ToInteger (Arg2), Local0)
                If (LEqual (Local0, Zero))
                {
                    Return (Buffer (0x04)
                    {
                         0x01, 0x00, 0x01, 0x01                           // ....
                    })
                }

                If (LEqual (Local0, 0x18))
                {
                    Return (Unicode ("0"))
                }

                If (LEqual (Local0, 0x10))
                {
                    If (LEqual (Arg1, 0x0300))
                    {
                        Return (MXM3) /* \_SB_.PCI0.RP01.PEGP.MXM3 */
                    }
                }

                Return (0x80000002)
            }

            Return (0x80000001)
        }
    }
}

