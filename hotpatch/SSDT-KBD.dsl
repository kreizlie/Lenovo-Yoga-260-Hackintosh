// SSDT-KBD
DefinitionBlock ("", "SSDT", 2, "ACDT", "KBD", 0x00000000)
{
    External (_SB.PCI0.LPC.KBD, DeviceObj)

    Name (_SB.PCI0.LPC.KBD.RMCF, Package (0x02)
    {
        "Keyboard", 
        Package (0x02)
        {
            "Swap command and option", 
            ">y"
        }
    })
}
