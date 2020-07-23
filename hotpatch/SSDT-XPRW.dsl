// SSDT Fix PRW
DefinitionBlock("", "SSDT", 2, "ACDT", "XPRW", 0)
{
    External (_SB.LID, DeviceObj)
    External (_SB.SLPB, DeviceObj)
    External (_SB.PCI0.IGBE, DeviceObj)
    External (_SB.PCI0.EXP2, DeviceObj)
    External (_SB.PCI0.RP09, DeviceObj)
    External (_SB.PCI0.XHCI, DeviceObj)
    External (_SB.PCI0.LPC.EC.PUBS, UnknownObj)
    
    Scope (_SB.LID)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (Package ()
            {
                0x17, 
                0x00
            })
        }
    }

    Scope (_SB.SLPB)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (Package ()
            {
                0x17, 
                0x00
            })
        }
    }

    Scope (_SB.PCI0.IGBE)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (Package ()
            {
                0x6D,
                0x00
            })
        }
    }

    Scope (_SB.PCI0.EXP2)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (Package ()
            {
                0x69, 
                0x00
            })
        }
    }

    Scope (_SB.PCI0.RP09)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (Package ()
            {
                0x69, 
                0x00
            })
        }
    }

    Scope (_SB.PCI0.XHCI)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            Return (Package ()
            {
                0x6D, 
                0x00,
                \_SB.PCI0.LPC.EC.PUBS
            })
        }
    }
}
