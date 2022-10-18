/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of SSDT-RP12_STA.aml, Tue Oct 18 13:53:18 2022
 *
 * Original Table Header:
 *     Signature        "SSDT"
 *     Length           0x000000A0 (160)
 *     Revision         0x02
 *     Checksum         0x19
 *     OEM ID           "OCLT"
 *     OEM Table ID     "RP12_Off"
 *     OEM Revision     0x00000000 (0)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20180427 (538444839)
 */
DefinitionBlock ("", "SSDT", 2, "OCLT", "RP12_Off", 0x00000000)
{
    External (_SB_.PCI0.RP12, DeviceObj)

    Scope (_SB.PCI0.RP12)
    {
        OperationRegion (DE01, PCI_Config, 0x50, One)
        Field (DE01, AnyAcc, NoLock, Preserve)
        {
                ,   4, 
            DDDD,   1
        }

        Method (_STA, 0, Serialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (Zero)
            }
        }
    }

    Scope (\)
    {
        If (_OSI ("Darwin"))
        {
            \_SB.PCI0.RP12.DDDD = One
        }
    }
}

