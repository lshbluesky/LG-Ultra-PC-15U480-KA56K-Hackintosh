/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-OSYS.aml, Thu Feb 11 23:42:29 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x0000007A (122)
 *     Revision         0x02
 *     Checksum         0x91
 *     OEM ID           "ACDT"
 *     OEM Table ID     "OSYS"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "ACDT", "OSYS", 0x00000000)
{
    External (OSYS, FieldUnitObj)    // (from opcode)

    Scope (\_SB)
    {
        Device (PCI1)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                If (CondRefOf (\OSYS))
                {
                    OSYS = 0x07DF
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (_OSI ("Darwin"))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (Zero)
                }
            }
        }
    }
}

