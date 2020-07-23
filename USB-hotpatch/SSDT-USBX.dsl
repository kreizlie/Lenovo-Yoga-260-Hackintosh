// SSDT USBX
DefinitionBlock ("", "SSDT", 2, "ACDT", "_USBX", 0)
{
    External (_SB.PCI0.LPC, DeviceObj)

    Scope (_SB)
    {
        Device (USBX)
        {
            Name (_ADR, Zero)  // _ADR: Address
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                If ((Arg2 == Zero))
                {
                    Return (Buffer (One) { 0x03 })
                }

                Return (Package (0x08)
                {
                    "kUSBSleepPowerSupply",
                    0x0A28, // 2600
                    "kUSBSleepPortCurrentLimit",
                    0x0834, // 2100
                    "kUSBWakePowerSupply",
                    0x0C80, // 3200
                    "kUSBWakePortCurrentLimit",
                    0x0834  // 2100
                })
            }
        }
    }
}
