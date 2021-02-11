/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20180427 (64-bit version)(RM)
 * Copyright (c) 2000 - 2018 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-MATHLDR2_STA.aml, Thu Feb 11 23:42:29 2021
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x00000120 (288)
 *     Revision         0x02
 *     Checksum         0xB1
 *     OEM ID           "what"
 *     OEM Table ID     "MATHLDR2"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "what", "MATHLDR2", 0x00000000)
{
    External (_SB_.PCI0.LPCB.LDR2, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.LDR2.XSTA, MethodObj)    // 0 Arguments (from opcode)
    External (_SB_.PCI0.LPCB.MATH, DeviceObj)    // (from opcode)
    External (_SB_.PCI0.LPCB.MATH.XSTA, MethodObj)    // 0 Arguments (from opcode)
    External (SPTH, IntObj)    // (from opcode)

    Scope (\_SB.PCI0.LPCB.MATH)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (0x0F)
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.MATH.XSTA ())
            }
        }
    }

    Scope (\_SB.PCI0.LPCB.LDR2)
    {
        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (0x0F)
            }
            Else
            {
                Return (\_SB.PCI0.LPCB.LDR2.XSTA ())
            }
        }
    }
}

