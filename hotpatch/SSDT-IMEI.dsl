// SSDT IMEI
DefinitionBlock ("", "SSDT", 2, "ACDT", "IMEI", 0x00000000)
{
    External (_SB.PCI0, DeviceObj)

    Scope (_SB.PCI0)
    {
        Device (IMEI)
        {
            Name (_ADR, 0x00160000)  // _ADR: Address
        }
    }
}
