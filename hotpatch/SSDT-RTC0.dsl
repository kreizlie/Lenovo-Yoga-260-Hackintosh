// SSDT Fix RTC
DefinitionBlock ("", "SSDT", 2, "ACDT", "_RTC0", 0)
{
    External (_SB.PCI0.LPC, DeviceObj)
    External (_SB.PCI0.LPC.RTC, DeviceObj)
    
    // Disable RTC
    Scope (_SB.PCI0.LPC.RTC)
    {
        Method (_STA, 0, NotSerialized)
        {
            Return (Zero)
        }
    }
    
    Scope (_SB.PCI0.LPC)
    {
        // Fake RTC0
        Device (RTC0)
        {
            Name (_HID, EisaId ("PNP0B00"))
            Name (_CRS, ResourceTemplate ()
            {
                IO (Decode16,
                    0x0070, 
                    0x0070, 
                    0x01, 
                    0x02,
                    )
            })
            
            Method (_STA, 0, NotSerialized)
            {
                Return (0x0F)
            }
        }
    }
}
