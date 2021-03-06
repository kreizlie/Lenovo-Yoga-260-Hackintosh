# Lenovo-Yoga-260-Hackintosh
Lenovo Yoga 260 Hackintosh machine using OpenCore bootloader, with multi-gesture trackpad (SMBus) and touchscreen (I2C)

#### Introduction
This laptop is an excellent Hackintosh machine, although it's more difficult to build as it's ACPI naming is uncommon and there are not so many guides available to help.
Trackpad, touchscreen, and trackpoint are working well together, I made a custom VoodooSMBus.kext to avoid conflicts with VoodooI2C.kext, you can contact me if you need the source code.

#### Laptop Specifications:
- Intel Core i5-6200U 2.3GHz CPU
- Intel HD 520 Graphics
- 8GB DDR4 2133MHz RAM
- SAMSUNG EVO M.2 SSD (upgraded)
- 12.5in Full HD IPS Display
- ELAN SMBus TouchPad
- Trackpoint
- BCM94360CS2 Wi-Fi and Bluetooth Card (upgraded)

#### BIOS Setup:
- BIOS 1.82
- Disable Wake on LAN
- Enable USB UEFI Support
- Disable Always-On USB
- Enable Trackpoint
- Enable Trackpad
- Enable Intel SpeedStep
- Enable CPU Power Management
- Disable Power On with AC Attach
- Enable Intel Hyper Threading
- Enable VT-x
- Disable VT-d
- Enable Wireless LAN
- Enable Bluetooth
- Disable Secure Boot
- Disable Intel SGX
- Enable Quick Boot Mode

#### What works:
- Intel HD Graphics QE/CI
- External HDMI Monitor
- HiDPI Scaled Resolution (1440 x 810)
- USB 3.0 Ports
- AirPort
- Bluetooth and AirDrop
- Sleep and Wake
- Battery Status
- CPU Power Management
- Brightness Control Hotkey
- Audio Control Hotkey
- Volume Button
- Dimmable Keyboard Backlight
- Integrated Camera
- Multi-gesture Trackpad
- Multi-gesture Touchscreen
- Trackpoint
