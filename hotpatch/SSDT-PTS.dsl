// SSDT-PTS
DefinitionBlock ("", "SSDT", 2, "ACDT", "PTS", 0x00000000)
{
    External (_SB.PCI0.XHCI.PMEE, FieldUnitObj)
    External (ZPTS, MethodObj)

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        ZPTS (Arg0)
        If (_OSI ("Darwin"))
        {
            If ((0x05 == Arg0))
            {
                \_SB.PCI0.XHCI.PMEE = Zero
            }
        }
    }
}
