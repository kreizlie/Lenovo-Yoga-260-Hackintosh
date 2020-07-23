// SSDT KBD
DefinitionBlock("", "SSDT", 2, "ACDT", "_KBD", 0)
{
    External (_SB.PCI0.LPC.KBD, DeviceObj)
    External (_SB.PCI0.LPC.EC, DeviceObj)
    External (_SB.PCI0.LPC.EC.XQ14, MethodObj)
    External (_SB.PCI0.LPC.EC.XQ15, MethodObj)

    Scope (_SB.PCI0.LPC.EC)
    {
        Method (_Q14, 0, NotSerialized)  // Brightness Up
        {
            If (_OSI ("Darwin"))
            {
                Notify (KBD, 0x0406)
            }
            Else
            {
                XQ14()
            }
            Return (Zero)
        }

        Method (_Q15, 0, NotSerialized)  // Brightness Down
        {
            If (_OSI ("Darwin"))
            {
                Notify (KBD, 0x0405)
            }
            Else
            {
                XQ15()
            }
            Return (Zero)
        }
    }
}
