// SSDT Fix WAK
DefinitionBlock ("", "SSDT", 2, "ACDT", "_WAK", 0)
{
    External (WAKI, PkgObj)
    External (SPS, IntObj)
    External (UCMS, MethodObj)
    External (LIDB, FieldUnitObj)
    External (PMMD, FieldUnitObj)
    External (LVMD, FieldUnitObj)
    External (FNID, IntObj)
    External (NVSS, MethodObj)
    External (OSC4, FieldUnitObj)
    External (ACST, IntObj)
    External (PWRS, FieldUnitObj)
    External (PNTF, MethodObj)
    External (SCRM, FieldUnitObj)
    External (IOEN, FieldUnitObj)
    External (IOST, FieldUnitObj)
    External (ISWK, FieldUnitObj)
    External (VIGD, FieldUnitObj)
    External (WVIS, IntObj)
    External (VBTD, MethodObj)
    External (VCMS, MethodObj)
    External (AWON, MethodObj)
    External (CMPR, FieldUnitObj)
    External (NBCF, IntObj)
    External (VBRC, MethodObj)
    External (BRLV, FieldUnitObj)
    External (H8DR, IntObj)
    External (VSLD, MethodObj)
    External (RRBF, IntObj)
    External (CSUM, MethodObj)
    External (ZWAK, MethodObj)
    External (CHKC, FieldUnitObj)
    External (CHKE, FieldUnitObj)
    External (_SB.SLPB, DeviceObj)
    External (_SI._SST, MethodObj)
    External (_SB.LID._LID, MethodObj)
    External (_SB.PCI0.GFX0.CLID, UnknownObj)
    External (_TZ.THM0, ThermalZoneObj)
    External (_SB.PCI0.LPC.EC.HCMU, FieldUnitObj)
    External (_SB.PCI0.LPC.EC.EVNT, MethodObj)
    External (_SB.PCI0.LPC.EC.HKEY.MHKE, MethodObj)
    External (_SB.PCI0.LPC.EC.FNST, MethodObj)
    External (_SB.PCI0.LPC.EC.CMMD, FieldUnitObj)
    External (_SB.PCI0.LPC.EC.HFNI, FieldUnitObj)
    External (_SB.PCI0.LPC.EC.AC._PSR, MethodObj)
    External (_SB.PCI0.LPC.EC.ATMC, MethodObj)
    External (_SB.PCI0.LPC.EC.HFSP, FieldUnitObj)
    External (_SB.PCI0.LPC.EC.HKEY.DHKC, IntObj)
    External (_SB.PCI0.LPC.EC.HKEY.MHKQ, MethodObj)
    External (_SB.PCI0.LPC.EC.HSPA, FieldUnitObj)
    External (_SB.PCI0.LPC.EC.BRNS, MethodObj)
    External (_SB.PCI0.LPC.EC.BATW, MethodObj)
    External (_SB.PCI0.LPC.EC.HWAC, FieldUnitObj)
    External (_SB.PCI0.LPC.EC.HKEY.ANGN, IntObj)
    External (_SB.PCI0.LPC.EC.HKEY.DYTC, MethodObj)
    
    Scope (\)
    {
        Method (_WAK, 1, NotSerialized)  // _WAK: Wake
        {
            If (_OSI ("Darwin"))
            {
                If (LOr (LEqual (Arg0, 0x00), LGreaterEqual (Arg0, 0x05)))
                {
                    Return (WAKI)
                }

                Store (0x00, SPS)
                Store (0x00, \_SB.PCI0.LPC.EC.HCMU)
                
                \_SB.PCI0.LPC.EC.EVNT (0x01)
                \_SB.PCI0.LPC.EC.HKEY.MHKE (0x01)
                \_SB.PCI0.LPC.EC.FNST ()
                
                UCMS (0x0D)
                
                Store (0x00, LIDB)
                Store (\_SB.PCI0.LPC.EC.CMMD, PMMD)
                
                If (LGreaterEqual (PMMD, 0x07))
                {
                    Store (0x00, PMMD)
                }

                Store (\_SB.PCI0.LPC.EC.CMMD, LVMD)
                
                If (LOr (LEqual (LVMD, 0x00), LGreaterEqual (LVMD, 0x07)))
                {
                    Store (0x01, LVMD)
                }
                ElseIf (LOr (LEqual (LVMD, 0x02), LEqual (LVMD, 0x03)))
                {
                    Store (0x02, LVMD)
                }
                Else
                {
                    Store (0x03, LVMD)
                }

                If (LEqual (Arg0, 0x01))
                {
                    Store (\_SB.PCI0.LPC.EC.HFNI, FNID)
                }

                If (LEqual (Arg0, 0x03))
                {
                    NVSS (0x00)
                    
                    // Fixes here
                    \_SI._SST (One)  // Stop breathing LED
                    
                    Store (\_SB.PCI0.LPC.EC.AC._PSR (), PWRS)
                    
                    If (OSC4)
                    {
                        PNTF (0x81)
                    }

                    If (LNotEqual (ACST, \_SB.PCI0.LPC.EC.AC._PSR ()))
                    {
                        \_SB.PCI0.LPC.EC.ATMC ()
                    }

                    If (SCRM)
                    {
                        Store (0x07, \_SB.PCI0.LPC.EC.HFSP)
                    }

                    Store (0x00, IOEN)
                    Store (0x00, IOST)
                    
                    If (LEqual (ISWK, 0x01))
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.DHKC)
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6070)
                        }
                    }

                    If (VIGD)
                    {
                        Store (\_SB.LID._LID (), \_SB.PCI0.GFX0.CLID)
                        If (WVIS)
                        {
                            VBTD ()
                        }
                    }
                    ElseIf (WVIS)
                    {
                        Store (\_SB.LID._LID (), \_SB.PCI0.GFX0.CLID)
                        VBTD ()
                    }

                    VCMS (0x01, \_SB.LID._LID ())
                    AWON (0x00)
                    
                    If (CMPR)
                    {
                        Notify (\_SB.SLPB, 0x02)
                        Store (0x00, CMPR)
                    }
                }

                If (LEqual (Arg0, 0x04))
                {
                    NVSS (0x00)
                    
                    // Fixes here
                    \_SI._SST (One)  // Stop breathing LED
                    
                    Store (0x00, \_SB.PCI0.LPC.EC.HSPA)
                    Store (\_SB.PCI0.LPC.EC.AC._PSR (), PWRS)
                    
                    If (OSC4)
                    {
                        PNTF (0x81)
                    }

                    \_SB.PCI0.LPC.EC.ATMC ()
                    
                    If (SCRM)
                    {
                        Store (0x07, \_SB.PCI0.LPC.EC.HFSP)
                    }

                    If (LNot (NBCF))
                    {
                        If (VIGD)
                        {
                            \_SB.PCI0.LPC.EC.BRNS ()
                        }
                        Else
                        {
                            VBRC (BRLV)
                        }
                    }

                    Store (0x00, IOEN)
                    Store (0x00, IOST)
                    
                    If (LEqual (ISWK, 0x02))
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.DHKC)
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6080)
                        }
                    }

                    If (H8DR)
                    {
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x60C0)
                    }
                }

                \_SB.PCI0.LPC.EC.BATW (Arg0)

                Notify (\_TZ.THM0, 0x80)
                VSLD (\_SB.LID._LID ())
                
                If (VIGD)
                {
                    Store (\_SB.LID._LID (), \_SB.PCI0.GFX0.CLID)
                }
                ElseIf (WVIS)
                {
                    Store (\_SB.LID._LID (), \_SB.PCI0.GFX0.CLID)
                }

                If (LLess (Arg0, 0x04))
                {
                    If (LOr (And (RRBF, 0x02), And (\_SB.PCI0.LPC.EC.HWAC, 0x02)))
                    {
                        ShiftLeft (Arg0, 0x08, Local0)
                        Store (Or (0x2013, Local0), Local0)
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (Local0)
                    }
                }

                If (LEqual (Arg0, 0x04))
                {
                    Store (0x00, Local0)
                    Store (CSUM (0x00), Local1)
                    If (LNotEqual (Local1, CHKC))
                    {
                        Store (0x01, Local0)
                        Store (Local1, CHKC)
                    }

                    Store (CSUM (0x01), Local1)
                    If (LNotEqual (Local1, CHKE))
                    {
                        Store (0x01, Local0)
                        Store (Local1, CHKE)
                    }

                    If (Local0)
                    {
                        Notify (\_SB, 0x00)
                    }
                }

                If (LOr (LEqual (Arg0, 0x03), LEqual (Arg0, 0x04)))
                {
                    Store (0x00, \_SB.PCI0.LPC.EC.HKEY.ANGN)
                    
                    If (LOr (LEqual (\_SB.LID._LID (), 0x01), LEqual (\_SB.PCI0.LPC.EC.AC._PSR (), 0x01)))
                    {
                        \_SB.PCI0.LPC.EC.HKEY.DYTC (0x000F4001)
                    }
                    Else
                    {
                        \_SB.PCI0.LPC.EC.HKEY.DYTC (0x000F0001)
                    }
                }

                Store (Zero, RRBF)
                Return (WAKI)
            }
            Else
            {
                Return (ZWAK (Arg0))
            }
        }
    }
}
