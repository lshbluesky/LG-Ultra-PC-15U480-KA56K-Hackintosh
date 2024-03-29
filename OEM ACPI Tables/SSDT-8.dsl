/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of SSDT-8.aml, Thu May 19 16:03:04 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000141 (321)
 *     Revision         0x02
 *     Checksum         0x3C
 *     OEM ID           "QUANTA"
 *     OEM Table ID     "COMPUTER"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20160527 (538314023)
 */
DefinitionBlock ("", "SSDT", 2, "QUANTA", "COMPUTER", 0x00000000)
{
    External (_SB_.PCI0.HDAS, DeviceObj)
    External (ADPM, IntObj)
    External (AG1H, IntObj)
    External (AG1L, IntObj)
    External (AG2H, IntObj)
    External (AG2L, IntObj)
    External (AG3H, IntObj)
    External (AG3L, IntObj)

    Scope (\_SB.PCI0.HDAS)
    {
        Method (PPMS, 1, Serialized)
        {
            If (LEqual (Arg0, ToUUID ("7c708106-3aff-40fe-88be-8c999b3f7445") /* Unknown UUID */))
            {
                Return (And (ADPM, 0x04))
            }

            If (LEqual (Arg0, ToUUID ("ec774fa9-28d3-424a-90e4-69f984f1eeb7") /* Unknown UUID */))
            {
                Return (And (ADPM, 0x0100))
            }

            If (LEqual (Arg0, ACCG (AG1L, AG1H)))
            {
                Return (And (ADPM, 0x20000000))
            }

            If (LEqual (Arg0, ACCG (AG2L, AG2H)))
            {
                Return (And (ADPM, 0x40000000))
            }

            If (LEqual (Arg0, ACCG (AG3L, AG3H)))
            {
                Return (And (ADPM, 0x80000000))
            }

            Return (Zero)
        }

        Method (ACCG, 2, NotSerialized)
        {
            Name (GBUF, Buffer (0x10){})
            Concatenate (Arg0, Arg1, GBUF) /* \_SB_.PCI0.HDAS.ACCG.GBUF */
            Return (GBUF) /* \_SB_.PCI0.HDAS.ACCG.GBUF */
        }
    }
}

