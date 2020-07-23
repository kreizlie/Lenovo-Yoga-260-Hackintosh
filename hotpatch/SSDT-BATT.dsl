// SSDT BAT
DefinitionBlock ("", "SSDT", 2, "ACDT", "BATT", 0x00003000)
{
    External (_SB.PCI0.LPC.EC, DeviceObj)
    External (_SB.PCI0.LPC.EC.BATM, MutexObj)
    External (_SB.PCI0.LPC.EC.BSWA, UnknownObj)
    External (_SB.PCI0.LPC.EC.BSWR, UnknownObj)
    External (_SB.PCI0.LPC.EC.B0I0, UnknownObj)
    External (_SB.PCI0.LPC.EC.B0I1, UnknownObj)
    External (_SB.PCI0.LPC.EC.B0I2, UnknownObj)
    External (_SB.PCI0.LPC.EC.B0I3, UnknownObj)
    External (_SB.PCI0.LPC.EC.B1I0, UnknownObj)
    External (_SB.PCI0.LPC.EC.B1I1, UnknownObj)
    External (_SB.PCI0.LPC.EC.B1I2, UnknownObj)
    External (_SB.PCI0.LPC.EC.B1I3, UnknownObj)
    External (_SB.PCI0.LPC.EC.HIID, FieldUnitObj)
    External (_SB.PCI0.LPC.EC.AC._PSR, MethodObj)
    
    Scope (_SB.PCI0.LPC.EC)
    {
        OperationRegion (FCOR, EmbeddedControl, 0x00, 0x0100)
        Field (FCOR, ByteAcc, NoLock, Preserve)
        {
            /* HDBM */,   1, 
                      ,   1, 
                      ,   1, 
            /* HFNE */,   1, 
                      ,   1, 
                      ,   1, 
            /* HLDM */,   1, 
            Offset (0x01), 
            /* BBLS */,   1, 
            /* BTCM */,   1, 
                      ,   1, 
                      ,   1, 
                      ,   1, 
            /* HBPR */,   1, 
            /* BTPC */,   1, 
            Offset (0x02), 
            /* HDUE */,   1, 
                      ,   4, 
            /* SNLK */,   1, 
            Offset (0x03), 
                      ,   5, 
            /* HAUM */,   2, 
            Offset (0x05), 
            /* HSPA */,   1, 
            Offset (0x06), 
            /* HSUN */,   8, 
            /* HSRP */,   8, 
            Offset (0x0C), 
            /* HLCL */,   8, 
                      ,   4, 
            /* CALM */,   1, 
            Offset (0x0E), 
            /* HFNS */,   2, 
            Offset (0x0F), 
                      ,   6, 
            /* NULS */,   1, 
            Offset (0x10), 
            /* HAM0 */,   8, 
            /* HAM1 */,   8, 
            /* HAM2 */,   8, 
            /* HAM3 */,   8, 
            /* HAM4 */,   8, 
            /* HAM5 */,   8, 
            /* HAM6 */,   8, 
            /* HAM7 */,   8, 
            /* HAM8 */,   8, 
            /* HAM9 */,   8, 
            /* HAMA */,   8, 
            /* HAMB */,   8, 
            /* HAMC */,   8, 
            /* HAMD */,   8, 
            /* HAME */,   8, 
            /* HAMF */,   8, 
            Offset (0x23), 
            /* HANT */,   8, 
            Offset (0x26), 
                      ,   2, 
            /* HANA */,   2, 
            Offset (0x27), 
            Offset (0x28), 
                      ,   1, 
            /* SKEM */,   1, 
            Offset (0x29), 
            Offset (0x2A), 
            /* HATR */,   8, 
            /* HT0H */,   8, 
            /* HT0L */,   8, 
            /* HT1H */,   8, 
            /* HT1L */,   8, 
            /* HFSP */,   8, 
                      ,   6, 
            /* HMUT */,   1, 
            Offset (0x31), 
                      ,   2, 
            /* HUWB */,   1, 
                      ,   3, 
            /* VPON */,   1, 
            /* VRST */,   1, 
            /* HWPM */,   1, 
            /* HWLB */,   1, 
            /* HWLO */,   1, 
            /* HWDK */,   1, 
            /* HWFN */,   1, 
            /* HWBT */,   1, 
            /* HWRI */,   1, 
            /* HWBU */,   1, 
            /* HWLU */,   1, 
            Offset (0x34), 
                      ,   3, 
            /* PIBS */,   1, 
                      ,   3, 
            /* HPLO */,   1, 
            Offset (0x36), 
            /* HWAC */,   16, 
            /* HB0S */,   7, 
            /* HB0A */,   1, 
            /* HB1S */,   7, 
            /* HB1A */,   1, 
            /* HCMU */,   1, 
                      ,   2, 
            /* OVRQ */,   1, 
            /* DCBD */,   1, 
            /* DCWL */,   1, 
            /* DCWW */,   1, 
            /* HB1I */,   1, 
                      ,   1, 
            /* KBLT */,   1, 
            /* BTPW */,   1, 
            /* FNKC */,   1, 
            /* HUBS */,   1, 
            /* BDPW */,   1, 
            /* BDDT */,   1, 
            /* HUBB */,   1, 
            Offset (0x46), 
                      ,   1, 
            /* BTWK */,   1, 
            /* HPLD */,   1, 
                      ,   1, 
            /* HPAC */,   1, 
            /* BTST */,   1, 
            Offset (0x47), 
            /* HPBU */,   1, 
                      ,   1, 
            /* HBID */,   1, 
                      ,   3, 
            /* HBCS */,   1, 
            /* HPNF */,   1, 
                      ,   1, 
            /* GSTS */,   1, 
                      ,   2, 
            /* HLBU */,   1, 
            /* DOCD */,   1, 
            /* HCBL */,   1, 
            Offset (0x49), 
            /* SLUL */,   1, 
            Offset (0x4C), 
            /* HTMH */,   8, 
            /* HTML */,   8, 
            /* HWAK */,   16, 
            /* HMPR */,   8, 
                      ,   7, 
            /* HMDN */,   1, 
            Offset (0x78), 
            /* TMP0 */,   8, 
            Offset (0x80), 
            Offset (0x81), 
            /* HIID */,   8, 
            Offset (0x83), 
            /* HFNI */,   8, 
            /* HSPD */,   16, 
            Offset (0x88), 
            /* TSL0 */,   7, 
            /* TSR0 */,   1, 
            /* TSL1 */,   7, 
            /* TSR1 */,   1, 
            /* TSL2 */,   7, 
            /* TSR2 */,   1, 
            /* TSL3 */,   7, 
            /* TSR3 */,   1, 
            Offset (0x8D), 
            /* HDAA */,   3, 
            /* HDAB */,   3, 
            /* HDAC */,   2, 
            Offset (0xB0), 
            /* HDEN */,   32, 
            /* HDEP */,   32, 
            /* HDEM */,   8, 
            /* HDES */,   8, 
            Offset (0xC1), 
            /* CMMD */,   8, 
            Offset (0xC8), 
            /* ATMX */,   8, 
            /* HWAT */,   8, 
            Offset (0xCC), 
            /* PWMH */,   8, 
            /* PWML */,   8, 
            Offset (0xDE), 
            /* DCID */,   8, 
            /* PTRG */,   1, 
            /* DKAC */,   1, 
            Offset (0xED), 
                      ,   4, 
            /* HDDD */,   1, 
            Offset (0xFE), 
            /* DIST */,   1
        }
        
        Field (FCOR, ByteAcc, NoLock, Preserve)
        {
            Offset (0xA0), 
            /* SBRC,   16, */ YBRC, 8, ZBRC, 8,
            /* SBFC,   16, */ YBFC, 8, ZBFC, 8,
            /* SBAE */,   16, 
            /* SBRS */,   16, 
            /* SBAC,   16, */ YBAC, 8, ZBAC, 8,
            /* SBVO,   16, */ YBVO, 8, ZBVO, 8,
            /* SBAF */,   16, 
            /* SBBS */,   16
        }

        Field (FCOR, ByteAcc, NoLock, Preserve)
        {
            Offset (0xA0), 
            /* SBBM,   16, */ YBBM, 8, ZBBM, 8,
            /* SBMD */,   16, 
            /* SBCC */,   16
        }

        Field (FCOR, ByteAcc, NoLock, Preserve)
        {
            Offset (0xA0), 
            /* SBDC,   16, */ YBDC, 8, ZBDC, 8,
            /* SBDV,   16, */ YBDV, 8, ZBDV, 8,
            /* SBOM */,   16, 
            /* SBSI */,   16, 
            /* SBDT */,   16, 
            /* SBSN,   16 */ YBSN, 8, ZBSN, 8
        }

        Field (FCOR, ByteAcc, NoLock, Preserve)
        {
            Offset (0xA0), 
            /* SBCH,   32 */
            WBCH, 8,
            XBCH, 8,
            YBCH, 8,
            ZBCH, 8
        }

        Field (FCOR, ByteAcc, NoLock, Preserve)
        {
            Offset (0xA0), 
            /* SBMN,   128 */
            BM00, 8,
            BM01, 8,
            BM02, 8,
            BM03, 8,
            BM04, 8,
            BM05, 8,
            BM06, 8,
            BM07, 8,
            BM08, 8,
            BM09, 8,
            BM10, 8,
            BM11, 8,
            BM12, 8,
            BM13, 8,
            BM14, 8,
            BM15, 8
        }

        Field (FCOR, ByteAcc, NoLock, Preserve)
        {
            Offset (0xA0), 
            /* SBDN */,   128
        }

        Method (GBIF, 3, NotSerialized)
        {
            Acquire (BATM, 0xFFFF)
            If (Arg2)
            {
                Or (Arg0, 0x01, HIID)
                Store (B1B2 (YBBM, ZBBM), Local7)
                ShiftRight (Local7, 0x0F, Local7)
                XOr (Local7, 0x01, Index (Arg1, 0x00))
                Store (Arg0, HIID)
                If (Local7)
                {
                    Multiply (B1B2 (YBFC, ZBFC), 0x0A, Local1)
                }
                Else
                {
                    Store (B1B2 (YBFC, ZBFC), Local1)
                }

                Store (Local1, Index (Arg1, 0x02))
                Or (Arg0, 0x02, HIID)
                If (Local7)
                {
                    Multiply (B1B2 (YBDC, ZBDC), 0x0A, Local0)
                }
                Else
                {
                    Store (B1B2 (YBDC, ZBDC), Local0)
                }

                Store (Local0, Index (Arg1, 0x01))
                Divide (Local1, 0x14, Local2, Index (Arg1, 0x05))
                If (Local7)
                {
                    Store (0xC8, Index (Arg1, 0x06))
                }
                ElseIf (B1B2 (YBDV, ZBDV))
                {
                    Divide (0x00030D40, B1B2 (YBDV, ZBDV), Local2, Index (Arg1, 0x06))
                }
                Else
                {
                    Store (0x00, Index (Arg1, 0x06))
                }

                Store (B1B2 (YBDV, ZBDV), Index (Arg1, 0x04))
                Store (B1B2 (YBSN, ZBSN), Local0)
                Name (SERN, Buffer (0x06)
                {
                    "     "
                })
                Store (0x04, Local2)
                While (Local0)
                {
                    Divide (Local0, 0x0A, Local1, Local0)
                    Add (Local1, 0x30, Index (SERN, Local2))
                    Decrement (Local2)
                }

                Store (SERN, Index (Arg1, 0x0A))
                Or (Arg0, 0x06, HIID)
                Store (B1B2 (YBSN, ZBSN), Index (Arg1, 0x09))
                Or (Arg0, 0x04, HIID)
                Name (BTYP, Buffer (0x05)
                {
                     0x00, 0x00, 0x00, 0x00, 0x00                   
                })
                Store (B1B4 (WBCH, XBCH, YBCH, ZBCH), BTYP)
                Store (BTYP, Index (Arg1, 0x0B))
                Or (Arg0, 0x05, HIID)
                Store (B1B4 (B1B4 (BM00, BM01, BM02, BM03), B1B4 (BM04, BM05, BM06, BM07), B1B4 (BM08, BM09, BM10, BM11), B1B4 (BM12, BM13, BM14, BM15)), Index (Arg1, 0x0C))
            }
            Else
            {
                Store (0xFFFFFFFF, Index (Arg1, 0x01))
                Store (0x00, Index (Arg1, 0x05))
                Store (0x00, Index (Arg1, 0x06))
                Store (0xFFFFFFFF, Index (Arg1, 0x02))
            }

            Release (BATM)
            Return (Arg1)
        }

        Method (GBST, 4, NotSerialized)
        {
            Acquire (BATM, 0xFFFF)
            If (And (Arg1, 0x20))
            {
                Store (0x02, Local0)
            }
            ElseIf (And (Arg1, 0x40))
            {
                Store (0x01, Local0)
            }
            Else
            {
                Store (0x00, Local0)
            }

            If (And (Arg1, 0x07)){}
            Else
            {
                Or (Local0, 0x04, Local0)
            }

            If (LEqual (And (Arg1, 0x07), 0x07))
            {
                Store (0x04, Local0)
                Store (0x00, Local1)
                Store (0x00, Local2)
                Store (0x00, Local3)
            }
            Else
            {
                Store (Arg0, HIID)
                Store (B1B2 (YBVO, ZBVO), Local3)
                If (Arg2)
                {
                    Multiply (B1B2 (YBRC, ZBRC), 0x0A, Local2)
                }
                Else
                {
                    Store (B1B2 (YBRC, ZBRC), Local2)
                }

                Store (B1B2 (YBAC, ZBAC), Local1)
                If (LGreaterEqual (Local1, 0x8000))
                {
                    If (And (Local0, 0x01))
                    {
                        Subtract (0x00010000, Local1, Local1)
                    }
                    Else
                    {
                        Store (0x00, Local1)
                    }
                }
                ElseIf (LNot (And (Local0, 0x02)))
                {
                    Store (0x00, Local1)
                }

                If (Arg2)
                {
                    Multiply (Local3, Local1, Local1)
                    Divide (Local1, 0x03E8, Local7, Local1)
                }
            }

            Store (ShiftLeft (0x01, ShiftRight (Arg0, 0x04)), Local5)
            Or (BSWA, BSWR, BSWA)
            If (LEqual (And (\_SB.PCI0.LPC.EC.BSWA, Local5), 0x00))
            {
                Store (Local0, Index (Arg3, 0x00))
                Store (Local1, Index (Arg3, 0x01))
                Store (Local2, Index (Arg3, 0x02))
                Store (Local3, Index (Arg3, 0x03))
                If (LEqual (Arg0, 0x00))
                {
                    Store (Local0, B0I0)
                    Store (Local1, B0I1)
                    Store (Local2, B0I2)
                    Store (Local3, B0I3)
                }
                Else
                {
                    Store (Local0, B1I0)
                    Store (Local1, B1I1)
                    Store (Local2, B1I2)
                    Store (Local3, B1I3)
                }
            }
            Else
            {
                If (\_SB.PCI0.LPC.EC.AC._PSR ())
                {
                    If (LEqual (Arg0, 0x00))
                    {
                        Store (B0I0, Index (Arg3, 0x00))
                        Store (B0I1, Index (Arg3, 0x01))
                        Store (B0I2, Index (Arg3, 0x02))
                        Store (B0I3, Index (Arg3, 0x03))
                    }
                    Else
                    {
                        Store (B1I0, Index (Arg3, 0x00))
                        Store (B1I1, Index (Arg3, 0x01))
                        Store (B1I2, Index (Arg3, 0x02))
                        Store (B1I3, Index (Arg3, 0x03))
                    }
                }
                Else
                {
                    Store (Local0, Index (Arg3, 0x00))
                    Store (Local1, Index (Arg3, 0x01))
                    Store (Local2, Index (Arg3, 0x02))
                    Store (Local3, Index (Arg3, 0x03))
                }

                If (LAnd (LEqual (And (Local0, 0x04), 0x00), LAnd (LGreater (Local2, 0x00), LGreater (Local3, 0x00))))
                {
                    And (BSWA, Not (Local5), BSWA)
                    Store (Local0, Index (Arg3, 0x00))
                    Store (Local1, Index (Arg3, 0x01))
                    Store (Local2, Index (Arg3, 0x02))
                    Store (Local3, Index (Arg3, 0x03))
                }
            }

            Release (BATM)
            Return (Arg3)
        }
    }

    Method (B1B2, 2, NotSerialized)
    {
        ShiftLeft (Arg1, 8, Local0)
        Or (Arg0, Local0, Local0)
        Return (Local0)
    }

    Method (B1B4, 4, NotSerialized)
    {
        Store (Arg3, Local0)
        Or (Arg2, ShiftLeft (Local0, 8), Local0)
        Or (Arg1, ShiftLeft (Local0, 8), Local0)
        Or (Arg0, ShiftLeft (Local0, 8), Local0)
        Return (Local0)
    }
}
