/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-HBTN_STA.aml, Tue Oct 18 13:53:18 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000073 (115)
 *     Revision         0x02
 *     Checksum         0x7B
 *     OEM ID           "shl"
 *     OEM Table ID     "HBTN_STA"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20200925 (538970405)
 */
DefinitionBlock ("", "SSDT", 2, "shl", "HBTN_STA", 0x00000000)
{
    External (_SB_.PCI0.LPCB.EC0_.CUDD, FieldUnitObj)

    Scope (\)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (_OSI ("Darwin"))
            {
                \_SB.PCI0.LPCB.EC0.CUDD = Zero
            }
        }
    }
}

