// SSDT-BAT
DefinitionBlock ("", "SSDT", 2, "ACDT", "BAT", 0x00000000)
{
    External (_SB.PCI0.LPC.EC, DeviceObj)
    External (_SB.PCI0.LPC.EC.AC._PSR, MethodObj)
    External (_SB.PCI0.LPC.EC.B0I0, IntObj)
    External (_SB.PCI0.LPC.EC.B0I1, IntObj)
    External (_SB.PCI0.LPC.EC.B0I2, IntObj)
    External (_SB.PCI0.LPC.EC.B0I3, IntObj)
    External (_SB.PCI0.LPC.EC.B1I0, IntObj)
    External (_SB.PCI0.LPC.EC.B1I1, IntObj)
    External (_SB.PCI0.LPC.EC.B1I2, IntObj)
    External (_SB.PCI0.LPC.EC.B1I3, IntObj)
    External (_SB.PCI0.LPC.EC.BATM, MutexObj)
    External (_SB.PCI0.LPC.EC.BSWA, IntObj)
    External (_SB.PCI0.LPC.EC.BSWR, IntObj)
    External (_SB.PCI0.LPC.EC.HIID, FieldUnitObj)
    External (B0I0, IntObj)
    External (B0I1, IntObj)
    External (B0I2, IntObj)
    External (B0I3, IntObj)
    External (B1I0, IntObj)
    External (B1I1, IntObj)
    External (B1I2, IntObj)
    External (B1I3, IntObj)

    Scope (_SB.PCI0.LPC.EC)
    {
        OperationRegion (ECRR, EmbeddedControl, Zero, 0x0100)
        Field (ECRR, ByteAcc, NoLock, Preserve)
        {
            Offset (0xA0), 
            BBM1,   8, 
            BBM2,   8, 
            Offset (0xA4), 
            Offset (0xA6)
        }

        Field (ECRR, ByteAcc, NoLock, Preserve)
        {
            Offset (0xA0), 
            BRC1,   8, 
            BRC2,   8, 
            BFC1,   8, 
            BFC2,   8, 
            Offset (0xA6), 
            Offset (0xA8), 
            BAC1,   8, 
            BAC2,   8, 
            BVO1,   8, 
            BVO2,   8, 
            Offset (0xAE), 
            Offset (0xB0)
        }

        Field (ECRR, ByteAcc, NoLock, Preserve)
        {
            Offset (0xA0), 
            BDC1,   8, 
            BDC2,   8, 
            BDV1,   8, 
            BDV2,   8, 
            Offset (0xA6), 
            Offset (0xA8), 
            Offset (0xAA), 
            BSN1,   8, 
            BSN2,   8
        }

        Field (ECRR, ByteAcc, NoLock, Preserve)
        {
            Offset (0xA0), 
            DN00,   8, 
            DN01,   8, 
            DN02,   8, 
            DN03,   8, 
            DN04,   8, 
            DN05,   8, 
            DN06,   8, 
            DN07,   8, 
            DN08,   8, 
            DN09,   8, 
            DN10,   8, 
            DN11,   8, 
            DN12,   8, 
            DN13,   8, 
            DN14,   8, 
            DN15,   8
        }

        Field (ECRR, ByteAcc, NoLock, Preserve)
        {
            Offset (0xA0), 
            CH00,   8, 
            CH01,   8, 
            CH02,   8, 
            CH03,   8
        }

        Field (ECRR, ByteAcc, NoLock, Preserve)
        {
            Offset (0xA0), 
            MN00,   8, 
            MN01,   8, 
            MN02,   8, 
            MN03,   8, 
            MN04,   8, 
            MN05,   8, 
            MN06,   8, 
            MN07,   8, 
            MN08,   8, 
            MN09,   8, 
            MN10,   8, 
            MN11,   8, 
            MN12,   8, 
            MN13,   8, 
            MN14,   8, 
            MN15,   8
        }

        Method (GBIF, 3, NotSerialized)
        {
            Acquire (BATM, 0xFFFF)
            If (Arg2)
            {
                HIID = (Arg0 | One)
                Local7 = B1B2 (BBM1, BBM2)
                Local7 >>= 0x0F
                Arg1 [Zero] = (Local7 ^ One)
                HIID = Arg0
                If (Local7)
                {
                    Local1 = (B1B2 (BFC1, BFC2) * 0x0A)
                }
                Else
                {
                    Local1 = B1B2 (BFC1, BFC2)
                }

                Arg1 [0x02] = Local1
                HIID = (Arg0 | 0x02)
                If (Local7)
                {
                    Local0 = (B1B2 (BDC1, BDC2) * 0x0A)
                }
                Else
                {
                    Local0 = B1B2 (BDC1, BDC2)
                }

                Arg1 [One] = Local0
                Divide (Local1, 0x14, Local2, Arg1 [0x05])
                If (Local7)
                {
                    Arg1 [0x06] = 0xC8
                }
                ElseIf (B1B2 (BDV1, BDV2))
                {
                    Divide (0x00030D40, B1B2 (BDV1, BDV2), Local2, Arg1 [0x06])
                }
                Else
                {
                    Arg1 [0x06] = Zero
                }

                Arg1 [0x04] = B1B2 (BDV1, BDV2)
                Local0 = B1B2 (BSN1, BSN2)
                Name (SERN, Buffer (0x06)
                {
                    "     "
                })
                Local2 = 0x04
                While (Local0)
                {
                    Divide (Local0, 0x0A, Local1, Local0)
                    SERN [Local2] = (Local1 + 0x30)
                    Local2--
                }

                Arg1 [0x0A] = SERN /* \_SB.PCI0.LPC.EC.GBIF.SERN */
                HIID = (Arg0 | 0x06)
                Arg1 [0x09] = B1B2 (B1B2 (B1B2 (B1B2 (DN00, DN01), B1B2 (
                    DN02, DN03)), B1B2 (B1B2 (DN04, DN05), B1B2 (DN06, DN07))), B1B2 (B1B2 (B1B2 (DN08, 
                    DN09), B1B2 (DN10, DN11)), B1B2 (B1B2 (DN12, DN13), B1B2 (DN14, DN15))))
                HIID = (Arg0 | 0x04)
                Name (BTYP, Buffer (0x05)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00                     // .....
                })
                BTYP = B1B2 (B1B2 (CH00, CH01), B1B2 (CH02, CH03))
                Arg1 [0x0B] = BTYP /* \_SB.PCI0.LPC.EC.GBIF.BTYP */
                HIID = (Arg0 | 0x05)
                Arg1 [0x0C] = B1B2 (B1B2 (B1B2 (B1B2 (MN00, MN01), B1B2 (
                    MN02, MN03)), B1B2 (B1B2 (MN04, MN05), B1B2 (MN06, MN07))), B1B2 (B1B2 (B1B2 (MN08, 
                    MN09), B1B2 (MN10, MN11)), B1B2 (B1B2 (MN12, MN13), B1B2 (MN14, MN15))))
            }
            Else
            {
                Arg1 [One] = 0xFFFFFFFF
                Arg1 [0x05] = Zero
                Arg1 [0x06] = Zero
                Arg1 [0x02] = 0xFFFFFFFF
            }

            Release (BATM)
            Return (Arg1)
        }

        Method (GBST, 4, NotSerialized)
        {
            Acquire (BATM, 0xFFFF)
            If ((Arg1 & 0x20))
            {
                Local0 = 0x02
            }
            ElseIf ((Arg1 & 0x40))
            {
                Local0 = One
            }
            Else
            {
                Local0 = Zero
            }

            If ((Arg1 & 0x07)){}
            Else
            {
                Local0 |= 0x04
            }

            If (((Arg1 & 0x07) == 0x07))
            {
                Local0 = 0x04
                Local1 = Zero
                Local2 = Zero
                Local3 = Zero
            }
            Else
            {
                HIID = Arg0
                Local3 = B1B2 (BVO1, BVO2)
                If (Arg2)
                {
                    Local2 = (B1B2 (BRC1, BRC2) * 0x0A)
                }
                Else
                {
                    Local2 = B1B2 (BRC1, BRC2)
                }

                Local1 = B1B2 (BAC1, BAC2)
                If ((Local1 >= 0x8000))
                {
                    If ((Local0 & One))
                    {
                        Local1 = (0x00010000 - Local1)
                    }
                    Else
                    {
                        Local1 = Zero
                    }
                }
                ElseIf (!(Local0 & 0x02))
                {
                    Local1 = Zero
                }

                If (Arg2)
                {
                    Local1 *= Local3
                    Local1 /= 0x03E8
                }
            }

            Local5 = (One << (Arg0 >> 0x04))
            BSWA |= BSWR /* External reference */
            If (((\_SB.PCI0.LPC.EC.BSWA & Local5) == Zero))
            {
                Arg3 [Zero] = Local0
                Arg3 [One] = Local1
                Arg3 [0x02] = Local2
                Arg3 [0x03] = Local3
                If ((Arg0 == Zero))
                {
                    B0I0 = Local0
                    B0I1 = Local1
                    B0I2 = Local2
                    B0I3 = Local3
                }
                Else
                {
                    B1I0 = Local0
                    B1I1 = Local1
                    B1I2 = Local2
                    B1I3 = Local3
                }
            }
            Else
            {
                If (\_SB.PCI0.LPC.EC.AC._PSR ())
                {
                    If ((Arg0 == Zero))
                    {
                        Arg3 [Zero] = B0I0 /* External reference */
                        Arg3 [One] = B0I1 /* External reference */
                        Arg3 [0x02] = B0I2 /* External reference */
                        Arg3 [0x03] = B0I3 /* External reference */
                    }
                    Else
                    {
                        Arg3 [Zero] = B1I0 /* External reference */
                        Arg3 [One] = B1I1 /* External reference */
                        Arg3 [0x02] = B1I2 /* External reference */
                        Arg3 [0x03] = B1I3 /* External reference */
                    }
                }
                Else
                {
                    Arg3 [Zero] = Local0
                    Arg3 [One] = Local1
                    Arg3 [0x02] = Local2
                    Arg3 [0x03] = Local3
                }

                If ((((Local0 & 0x04) == Zero) && ((Local2 > Zero) && 
                    (Local3 > Zero))))
                {
                    BSWA &= ~Local5
                    Arg3 [Zero] = Local0
                    Arg3 [One] = Local1
                    Arg3 [0x02] = Local2
                    Arg3 [0x03] = Local3
                }
            }

            Release (BATM)
            Return (Arg3)
        }

        Method (B1B2, 2, NotSerialized)
        {
            Local0 = (Arg1 << 0x08)
            Local0 |= Arg0
            Return (Local0)
        }
    }
}

