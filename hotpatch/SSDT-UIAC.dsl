// SSDT UIAC
DefinitionBlock ("", "SSDT", 2, "ACDT", "_UIAC", 0)
{
    Device(UIAC)
    {
        Name(_HID, "UIA00000")
        Name(RMCF, Package()
        {
            // XHCI (8086_9d2f)
            "XHCI", Package()
            {
                "port-count", Buffer() { 0x0F, 0x00, 0x00, 0x00 },
                "ports", Package()
                {
                    "HS01", Package()
                    {
                        "name", Buffer() { "HS01" },
                        "UsbConnector", 0,
                        "port", Buffer() { 0x01, 0x00, 0x00, 0x00 },
                    },

                    "HS03", Package()
                    {
                        "name", Buffer() { "HS03" },
                        "UsbConnector", 0,
                        "port", Buffer() { 0x03, 0x00, 0x00, 0x00 },
                    },

                    "HS07", Package()
                    {
                        "name", Buffer() { "HS07" },
                        "UsbConnector", 255,
                        "port", Buffer() { 0x07, 0x00, 0x00, 0x00 },
                    },

                    "HS08", Package()
                    {
                        "name", Buffer() { "HS08" },
                        "UsbConnector", 255,
                        "port", Buffer() { 0x08, 0x00, 0x00, 0x00 },
                    },

                    "HS10", Package()
                    {
                        "name", Buffer() { "HS10" },
                        "UsbConnector", 255,
                        "port", Buffer() { 0x0A, 0x00, 0x00, 0x00 },
                    },

                    "SS01", Package()
                    {
                        "name", Buffer() { "SS01" },
                        "UsbConnector", 3,
                        "port", Buffer() { 0x0D, 0x00, 0x00, 0x00 },
                    },

                    "SS03", Package()
                    {
                        "name", Buffer() { "SS03" },
                        "UsbConnector", 3,
                        "port", Buffer() { 0x0F, 0x00, 0x00, 0x00 },
                    },
                },
            },
        })

        Method (_STA, 0, NotSerialized)  // _STA: Status
        {
            If (_OSI ("Darwin"))
            {
                Return (0x0F)
            }
            Else
            {
                Return (Zero)
            }
        }
    }
}
