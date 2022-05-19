/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-1.aml, Thu May 19 16:03:04 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000004C3 (1219)
 *     Revision         0x02
 *     Checksum         0xAB
 *     OEM ID           "QUANTA"
 *     OEM Table ID     "COMPUTER"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160527 (538314023)
 */
DefinitionBlock ("", "SSDT", 2, "QUANTA", "COMPUTER", 0x00001000)
{
    External (PTTB, UnknownObj)

    Scope (\_SB)
    {
        Device (TPM)
        {
            Name (_HID, "MSFT0101" /* TPM 2.0 Security Device */)  // _HID: Hardware ID
            Name (_STR, Unicode ("TPM 2.0 Device"))  // _STR: Description String
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                If (LNotEqual (PTTB, 0xFED40040))
                {
                    Name (CRS0, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0x00000000,         // Address Base
                            0x00001000,         // Address Length
                            _Y38)
                        Memory32Fixed (ReadOnly,
                            0xFED40000,         // Address Base
                            0x00001000,         // Address Length
                            )
                    })
                    CreateDWordField (CRS0, \_SB.TPM._CRS._Y38._BAS, CBAS)  // _BAS: Base Address
                    Store (PTTB, CBAS) /* \_SB_.TPM_._CRS.CBAS */
                    Return (CRS0) /* \_SB_.TPM_._CRS.CRS0 */
                }
                Else
                {
                    Name (CRS1, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0xFED40000,         // Address Base
                            0x00001000,         // Address Length
                            )
                    })
                    Return (CRS1) /* \_SB_.TPM_._CRS.CRS1 */
                }
            }

            OperationRegion (SMIP, SystemIO, 0xB2, One)
            Field (SMIP, ByteAcc, NoLock, Preserve)
            {
                IOB2,   8
            }

            OperationRegion (FHCI, SystemMemory, 0xFED40000, 0x1000)
            Field (FHCI, AnyAcc, NoLock, Preserve)
            {
                Offset (0x04), 
                HERR,   32, 
                Offset (0x40), 
                CREQ,   32, 
                CSTS,   32, 
                Offset (0x4C), 
                HCMD,   32
            }

            OperationRegion (TNVS, SystemMemory, 0x9BDB2000, 0x26)
            Field (TNVS, AnyAcc, NoLock, Preserve)
            {
                PPIN,   8, 
                PPIP,   32, 
                PPRP,   32, 
                PPRQ,   32, 
                PPRM,   32, 
                LPPR,   32, 
                FRET,   32, 
                MCIN,   8, 
                MCIP,   32, 
                MORD,   32, 
                MRET,   32
            }

            Method (PTS, 1, Serialized)
            {
                If (LAnd (LLess (Arg0, 0x06), LGreater (Arg0, 0x03)))
                {
                    If (LNot (And (MORD, 0x10)))
                    {
                        Store (0x02, MCIP) /* \_SB_.TPM_.MCIP */
                        Store (MCIN, IOB2) /* \_SB_.TPM_.IOB2 */
                    }
                }

                Return (Zero)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (HINF, 3, Serialized)
            {
                Switch (ToInteger (Arg1))
                {
                    Case (Zero)
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }
                    Case (One)
                    {
                        Name (TPMV, Package (0x02)
                        {
                            One, 
                            Package (0x02)
                            {
                                One, 
                                0x20
                            }
                        })
                        If (LEqual (_STA (), Zero))
                        {
                            Return (Package (0x01)
                            {
                                Zero
                            })
                        }

                        Return (TPMV) /* \_SB_.TPM_.HINF.TPMV */
                    }
                    Default
                    {
                        BreakPoint
                    }

                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }

            Name (TPM2, Package (0x02)
            {
                Zero, 
                Zero
            })
            Name (TPM3, Package (0x03)
            {
                Zero, 
                Zero, 
                Zero
            })
            Method (TPPI, 3, Serialized)
            {
                Switch (ToInteger (Arg1))
                {
                    Case (Zero)
                    {
                        Return (Buffer (0x02)
                        {
                             0xFF, 0x01                                       // ..
                        })
                    }
                    Case (One)
                    {
                        Return ("1.3")
                    }
                    Case (0x02)
                    {
                        Store (DerefOf (Index (Arg2, Zero)), PPRQ) /* \_SB_.TPM_.PPRQ */
                        Store (0x02, PPIP) /* \_SB_.TPM_.PPIP */
                        Store (PPIN, IOB2) /* \_SB_.TPM_.IOB2 */
                        Return (FRET) /* \_SB_.TPM_.FRET */
                    }
                    Case (0x03)
                    {
                        Store (PPRQ, Index (TPM2, One))
                        Return (TPM2) /* \_SB_.TPM_.TPM2 */
                    }
                    Case (0x04)
                    {
                        Return (0x02)
                    }
                    Case (0x05)
                    {
                        Store (0x05, PPIP) /* \_SB_.TPM_.PPIP */
                        Store (PPIN, IOB2) /* \_SB_.TPM_.IOB2 */
                        Store (LPPR, Index (TPM3, One))
                        Store (PPRP, Index (TPM3, 0x02))
                        Return (TPM3) /* \_SB_.TPM_.TPM3 */
                    }
                    Case (0x06)
                    {
                        Return (0x03)
                    }
                    Case (0x07)
                    {
                        Store (0x07, PPIP) /* \_SB_.TPM_.PPIP */
                        Store (DerefOf (Index (Arg2, Zero)), PPRQ) /* \_SB_.TPM_.PPRQ */
                        Store (Zero, PPRM) /* \_SB_.TPM_.PPRM */
                        If (LEqual (PPRQ, 0x17))
                        {
                            Store (DerefOf (Index (Arg2, One)), PPRM) /* \_SB_.TPM_.PPRM */
                        }

                        Store (PPIN, IOB2) /* \_SB_.TPM_.IOB2 */
                        Return (FRET) /* \_SB_.TPM_.FRET */
                    }
                    Case (0x08)
                    {
                        Store (0x08, PPIP) /* \_SB_.TPM_.PPIP */
                        Store (DerefOf (Index (Arg2, Zero)), PPRQ) /* \_SB_.TPM_.PPRQ */
                        Store (PPIN, IOB2) /* \_SB_.TPM_.IOB2 */
                        Store (Zero, PPRQ) /* \_SB_.TPM_.PPRQ */
                        Return (FRET) /* \_SB_.TPM_.FRET */
                    }
                    Default
                    {
                        BreakPoint
                    }

                }

                Return (One)
            }

            Method (TMCI, 3, Serialized)
            {
                Switch (ToInteger (Arg1))
                {
                    Case (Zero)
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }
                    Case (One)
                    {
                        Store (DerefOf (Index (Arg2, Zero)), MORD) /* \_SB_.TPM_.MORD */
                        Store (One, MCIP) /* \_SB_.TPM_.MCIP */
                        Store (MCIN, IOB2) /* \_SB_.TPM_.IOB2 */
                        Return (MRET) /* \_SB_.TPM_.MRET */
                    }
                    Default
                    {
                        BreakPoint
                    }

                }

                Return (One)
            }

            Method (TSMI, 3, Serialized)
            {
                Name (WTME, Zero)
                Switch (ToInteger (Arg1))
                {
                    Case (Zero)
                    {
                        Return (Buffer (One)
                        {
                             0x03                                             // .
                        })
                    }
                    Case (One)
                    {
                        Store (One, CREQ) /* \_SB_.TPM_.CREQ */
                        While (LAnd (LLessEqual (WTME, 0xC8), LNotEqual (And (CREQ, One), 
                            Zero)))
                        {
                            Sleep (One)
                            Increment (WTME)
                        }

                        Store (0x02, HCMD) /* \_SB_.TPM_.HCMD */
                        Return (Zero)
                    }
                    Default
                    {
                        BreakPoint
                    }

                }

                Return (One)
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (LEqual (Arg0, ToUUID ("cf8e16a5-c1e8-4e25-b712-4f54a96702c8") /* Unknown UUID */))
                {
                    Return (HINF (Arg1, Arg2, Arg3))
                }

                If (LEqual (Arg0, ToUUID ("3dddfaa6-361b-4eb4-a424-8d10089d1653") /* Physical Presence Interface */))
                {
                    Return (TPPI (Arg1, Arg2, Arg3))
                }

                If (LEqual (Arg0, ToUUID ("376054ed-cc13-4675-901c-4756d7f2d45d") /* Unknown UUID */))
                {
                    Return (TMCI (Arg1, Arg2, Arg3))
                }

                If (LEqual (Arg0, ToUUID ("6bbf6cab-5463-4714-b7cd-f0203c0368d4") /* Unknown UUID */))
                {
                    Return (TSMI (Arg1, Arg2, Arg3))
                }

                Return (Buffer (One)
                {
                     0x00                                             // .
                })
            }
        }
    }
}

