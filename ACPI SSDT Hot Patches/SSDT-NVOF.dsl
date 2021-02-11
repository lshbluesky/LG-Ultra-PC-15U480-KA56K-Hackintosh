/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-NVOF.aml, Thu Feb 11 23:42:29 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000BE (190)
 *     Revision         0x02
 *     Checksum         0xDE
 *     OEM ID           "DRTNIA"
 *     OEM Table ID     "DGOF"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "DRTNIA", "DGOF", 0x00000000)
{
    External (_SB_.PCI0.RP01.PEGP._OFF, MethodObj)    // 0 Arguments (from opcode)

    Device (RMD1)
    {
        Name (_HID, "RMD10000")  // _HID: Hardware ID
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

        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (_OSI ("Darwin"))
            {
                If (CondRefOf (\_SB.PCI0.RP01.PEGP._OFF))
                {
                    \_SB.PCI0.RP01.PEGP._OFF ()
                }
            }
        }
    }
}

