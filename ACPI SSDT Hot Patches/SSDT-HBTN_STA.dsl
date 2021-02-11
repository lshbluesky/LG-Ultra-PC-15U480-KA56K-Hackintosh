/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-HBTN_STA.aml, Thu Feb 11 23:42:29 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000AE (174)
 *     Revision         0x02
 *     Checksum         0x7C
 *     OEM ID           "shl"
 *     OEM Table ID     "HBTN_STA"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "shl", "HBTN_STA", 0x00000000)
{
    External (_SB_.PCI0.LPCB.EC0_.HBTN, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.EC0_.HBTN.XSTA, MethodObj)    // 0 Arguments (from opcode)

    Scope (\_SB.PCI0.LPCB.EC0.HBTN)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (Zero)
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.EC0.HBTN.XSTA ())
            }
        }
    }
}

