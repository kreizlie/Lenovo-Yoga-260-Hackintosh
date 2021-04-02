// SSDT-PRW
DefinitionBlock ("", "SSDT", 2, "ACDT", "PRW", 0x00000000)
{
    External (_SB.LID, DeviceObj)
    External (_SB.LID.XPRW, MethodObj)
    External (_SB.PCI0.EXP2, DeviceObj)
    External (_SB.PCI0.EXP2.XPRW, MethodObj)
    External (_SB.PCI0.IGBE, DeviceObj)
    External (_SB.PCI0.IGBE.XPRW, MethodObj)
    External (_SB.PCI0.LPC.EC.PUBS, UnknownObj)
    External (_SB.PCI0.RP09, DeviceObj)
    External (_SB.PCI0.RP09.XPRW, MethodObj)
    External (_SB.PCI0.XHCI, DeviceObj)
    External (_SB.PCI0.XHCI.XPRW, MethodObj)
    External (_SB.SLPB, DeviceObj)
    External (_SB.SLPB.XPRW, MethodObj)

    Scope (_SB.LID)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            If (_OSI ("Darwin"))
            {
                Return (Package (0x02)
                {
                    0x17, 
                    Zero
                })
            }
            Else
            {
                Return (\_SB.LID.XPRW ())
            }
        }
    }

    Scope (_SB.SLPB)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            If (_OSI ("Darwin"))
            {
                Return (Package (0x02)
                {
                    0x17, 
                    Zero
                })
            }
            Else
            {
                Return (\_SB.SLPB.XPRW ())
            }
        }
    }

    Scope (_SB.PCI0.IGBE)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            If (_OSI ("Darwin"))
            {
                Return (Package (0x02)
                {
                    0x6D, 
                    Zero
                })
            }
            Else
            {
                Return (\_SB.PCI0.IGBE.XPRW ())
            }
        }
    }

    Scope (_SB.PCI0.EXP2)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            If (_OSI ("Darwin"))
            {
                Return (Package (0x02)
                {
                    0x69, 
                    Zero
                })
            }
            Else
            {
                Return (\_SB.PCI0.EXP2.XPRW ())
            }
        }
    }

    Scope (_SB.PCI0.RP09)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            If (_OSI ("Darwin"))
            {
                Return (Package (0x02)
                {
                    0x69, 
                    Zero
                })
            }
            Else
            {
                Return (\_SB.PCI0.RP09.XPRW ())
            }
        }
    }

    Scope (_SB.PCI0.XHCI)
    {
        Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
        {
            If (_OSI ("Darwin"))
            {
                Return (Package (0x03)
                {
                    0x6D, 
                    Zero, 
                    \_SB.PCI0.LPC.EC.PUBS
                })
            }
            Else
            {
                Return (\_SB.PCI0.XHCI.XPRW ())
            }
        }
    }
}

