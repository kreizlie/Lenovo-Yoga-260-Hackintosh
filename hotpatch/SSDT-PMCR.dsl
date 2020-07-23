// SSDT PMCR
DefinitionBlock ("", "SSDT", 2, "ACDT", "PMCR", 0)
{
    External (_SB.PCI0.LPC, DeviceObj)
    
    Scope (_SB.PCI0.LPC)
    {
        Device (PMCR)
        {
            Name (_HID, EisaId ("APP9876"))
            Name (_CRS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0xFE000000,
                    0x00010000 
                    )
            })
            
            Method (_STA, 0, NotSerialized)
            {
                Return (0x0F)
            }
        }
    }
}
