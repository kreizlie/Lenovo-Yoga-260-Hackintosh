// SSDT KBD
DefinitionBlock("", "SSDT", 2, "ACDT", "_KBD", 0)
{
    External (_SB.PCI0.LPC.KBD, DeviceObj)
    External (_SB.PCI0.LPC.EC, DeviceObj)

    Scope (_SB.PCI0.LPC.EC)
    {
        Method (_Q14, 0, NotSerialized)  // Brightness Up
        {
            Notify (KBD, 0x0406)
        }

        Method (_Q15, 0, NotSerialized)  // Brightness Down
        {
            Notify (KBD, 0x0405)
        }
    }
}
