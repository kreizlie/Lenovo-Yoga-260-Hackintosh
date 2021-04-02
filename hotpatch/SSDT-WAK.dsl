// SSDT-WAK
DefinitionBlock ("", "SSDT", 2, "ACDT", "WAK", 0x00000000)
{
    External (_SB.LID._LID, MethodObj)
    External (_SB.PCI0.GFX0.CLID, UnknownObj)
    External (_SB.PCI0.LPC.EC.AC._PSR, MethodObj)
    External (_SB.PCI0.LPC.EC.ATMC, MethodObj)
    External (_SB.PCI0.LPC.EC.BATW, MethodObj)
    External (_SB.PCI0.LPC.EC.BRNS, MethodObj)
    External (_SB.PCI0.LPC.EC.CMMD, FieldUnitObj)
    External (_SB.PCI0.LPC.EC.EVNT, MethodObj)
    External (_SB.PCI0.LPC.EC.FNST, MethodObj)
    External (_SB.PCI0.LPC.EC.HCMU, FieldUnitObj)
    External (_SB.PCI0.LPC.EC.HFNI, FieldUnitObj)
    External (_SB.PCI0.LPC.EC.HFSP, FieldUnitObj)
    External (_SB.PCI0.LPC.EC.HKEY.ANGN, IntObj)
    External (_SB.PCI0.LPC.EC.HKEY.DHKC, IntObj)
    External (_SB.PCI0.LPC.EC.HKEY.DYTC, MethodObj)
    External (_SB.PCI0.LPC.EC.HKEY.MHKE, MethodObj)
    External (_SB.PCI0.LPC.EC.HKEY.MHKQ, MethodObj)
    External (_SB.PCI0.LPC.EC.HKEY.WGWK, MethodObj)
    External (_SB.PCI0.LPC.EC.HSPA, FieldUnitObj)
    External (_SB.PCI0.LPC.EC.HWAC, FieldUnitObj)
    External (_SB.SLPB, DeviceObj)
    External (_SI._SST, MethodObj)
    External (_TZ.THM0, UnknownObj)
    External (ACST, IntObj)
    External (ADBG, MethodObj)
    External (AWON, MethodObj)
    External (BRLV, FieldUnitObj)
    External (CHKC, FieldUnitObj)
    External (CHKE, FieldUnitObj)
    External (CMPR, FieldUnitObj)
    External (CSUM, MethodObj)
    External (FNID, IntObj)
    External (H8DR, FieldUnitObj)
    External (IOEN, FieldUnitObj)
    External (IOST, FieldUnitObj)
    External (ISWK, FieldUnitObj)
    External (LIDB, FieldUnitObj)
    External (LVMD, FieldUnitObj)
    External (NBCF, IntObj)
    External (NVSS, MethodObj)
    External (OSC4, FieldUnitObj)
    External (PMMD, FieldUnitObj)
    External (SPS, IntObj)
    External (PNTF, MethodObj)
    External (PWRS, FieldUnitObj)
    External (RRBF, IntObj)
    External (SCRM, FieldUnitObj)
    External (UCMS, MethodObj)
    External (VBRC, MethodObj)
    External (VBTD, MethodObj)
    External (VCMS, MethodObj)
    External (VIGD, FieldUnitObj)
    External (VSLD, MethodObj)
    External (WAKI, PkgObj)
    External (WVIS, IntObj)
    External (ZWAK, MethodObj)

    Method (\_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        If (_OSI ("Darwin"))
        {
            ADBG ("_WAK")
            If (((Arg0 == Zero) || (Arg0 >= 0x05)))
            {
                Return (WAKI) /* External reference */
            }

            \SPS = Zero
            \_SB.PCI0.LPC.EC.HCMU = Zero
            \_SB.PCI0.LPC.EC.EVNT (One)
            \_SB.PCI0.LPC.EC.HKEY.MHKE (One)
            \_SB.PCI0.LPC.EC.FNST ()
            \UCMS (0x0D)
            \LIDB = Zero
            \PMMD = \_SB.PCI0.LPC.EC.CMMD /* External reference */
            If ((\PMMD >= 0x07))
            {
                \PMMD = Zero
            }

            \LVMD = \_SB.PCI0.LPC.EC.CMMD /* External reference */
            If (((\LVMD == Zero) || (\LVMD >= 0x07)))
            {
                \LVMD = One
            }
            ElseIf (((\LVMD == 0x02) || (\LVMD == 0x03)))
            {
                \LVMD = 0x02
            }
            Else
            {
                \LVMD = 0x03
            }

            If ((Arg0 == One))
            {
                \FNID = \_SB.PCI0.LPC.EC.HFNI /* External reference */
            }

            If ((Arg0 == 0x03))
            {
                \NVSS (Zero)
                \_SI._SST (One)
                \PWRS = \_SB.PCI0.LPC.EC.AC._PSR ()
                If (\OSC4)
                {
                    \PNTF (0x81)
                }

                If ((\ACST != \_SB.PCI0.LPC.EC.AC._PSR ()))
                {
                    \_SB.PCI0.LPC.EC.ATMC ()
                }

                If (\SCRM)
                {
                    \_SB.PCI0.LPC.EC.HFSP = 0x07
                }

                \IOEN = Zero
                \IOST = Zero
                If ((\ISWK == One))
                {
                    If (\_SB.PCI0.LPC.EC.HKEY.DHKC)
                    {
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6070)
                    }
                }

                If (\VIGD)
                {
                    \_SB.PCI0.GFX0.CLID = \_SB.LID._LID ()
                    If (\WVIS)
                    {
                        \VBTD ()
                    }
                }
                ElseIf (\WVIS)
                {
                    \_SB.PCI0.GFX0.CLID = \_SB.LID._LID ()
                    \VBTD ()
                }

                \VCMS (One, \_SB.LID._LID ())
                \AWON (Zero)
                If (\CMPR)
                {
                    Notify (\_SB.SLPB, 0x02) // Device Wake
                    \CMPR = Zero
                }
            }

            If ((Arg0 == 0x04))
            {
                \NVSS (Zero)
                \_SI._SST (One)
                \_SB.PCI0.LPC.EC.HSPA = Zero
                \PWRS = \_SB.PCI0.LPC.EC.AC._PSR ()
                If (\OSC4)
                {
                    \PNTF (0x81)
                }

                \_SB.PCI0.LPC.EC.ATMC ()
                If (\SCRM)
                {
                    \_SB.PCI0.LPC.EC.HFSP = 0x07
                }

                If (!\NBCF)
                {
                    If (\VIGD)
                    {
                        \_SB.PCI0.LPC.EC.BRNS ()
                    }
                    Else
                    {
                        \VBRC (\BRLV)
                    }
                }

                \IOEN = Zero
                \IOST = Zero
                If ((\ISWK == 0x02))
                {
                    If (\_SB.PCI0.LPC.EC.HKEY.DHKC)
                    {
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6080)
                    }
                }

                If (\H8DR)
                {
                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x60C0)
                }
            }

            \_SB.PCI0.LPC.EC.BATW (Arg0)
            \_SB.PCI0.LPC.EC.HKEY.WGWK (Arg0)
            Notify (\_TZ.THM0, 0x80) // Status Change
            \VSLD (\_SB.LID._LID ())
            If (\VIGD)
            {
                \_SB.PCI0.GFX0.CLID = \_SB.LID._LID ()
            }
            ElseIf (\WVIS)
            {
                \_SB.PCI0.GFX0.CLID = \_SB.LID._LID ()
            }

            If ((Arg0 < 0x04))
            {
                If (((\RRBF & 0x02) || (\_SB.PCI0.LPC.EC.HWAC & 0x02)))
                {
                    Local0 = (Arg0 << 0x08)
                    Local0 |= 0x2013
                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (Local0)
                }
            }

            If ((Arg0 == 0x04))
            {
                Local0 = Zero
                Local1 = \CSUM (Zero)
                If ((Local1 != \CHKC))
                {
                    Local0 = One
                    \CHKC = Local1
                }

                Local1 = \CSUM (One)
                If ((Local1 != \CHKE))
                {
                    Local0 = One
                    \CHKE = Local1
                }

                If (Local0)
                {
                    Notify (\_SB, Zero) // Bus Check
                }
            }

            If (((Arg0 == 0x03) || (Arg0 == 0x04)))
            {
                ADBG ("_WAK0")
                \_SB.PCI0.LPC.EC.HKEY.ANGN = Zero
                If (((\_SB.LID._LID () == One) || (\_SB.PCI0.LPC.EC.AC._PSR () == One)))
                {
                    \_SB.PCI0.LPC.EC.HKEY.DYTC (0x000F4001)
                }
                Else
                {
                    \_SB.PCI0.LPC.EC.HKEY.DYTC (0x000F0001)
                }

                ADBG ("_WAK1")
            }

            \RRBF = Zero
            Return (WAKI) /* External reference */
        }
        Else
        {
            Return (ZWAK (Arg0))
        }
    }
}

