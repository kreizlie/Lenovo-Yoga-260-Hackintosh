/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembling to symbolic ASL+ operators
 *
 * Disassembly of iASLprRomB.aml, Wed Mar 31 21:20:04 2021
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x0001343F (78911)
 *     Revision         0x02
 *     Checksum         0x13
 *     OEM ID           "LENOVO"
 *     OEM Table ID     "TP-N1G  "
 *     OEM Revision     0x00001820 (6176)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20141107 (538185991)
 */
DefinitionBlock ("", "DSDT", 2, "LENOVO", "TP-N1G  ", 0x00001820)
{
    /*
     * iASL Warning: There were 12 external control methods found during
     * disassembly, but only 0 were resolved (12 unresolved). Additional
     * ACPI tables may be required to properly disassemble the code. This
     * resulting disassembler output file may not compile because the
     * disassembler did not know how many arguments to assign to the
     * unresolved methods. Note: SSDTs can be dynamically loaded at
     * runtime and may or may not be available via the host OS.
     *
     * To specify the tables needed to resolve external control method
     * references, the -e option can be used to specify the filenames.
     * Example iASL invocations:
     *     iasl -e ssdt1.aml ssdt2.aml ssdt3.aml -d dsdt.aml
     *     iasl -e dsdt.aml ssdt2.aml -d ssdt1.aml
     *     iasl -e ssdt*.aml -d dsdt.aml
     *
     * In addition, the -fe option can be used to specify a file containing
     * control method external declarations with the associated method
     * argument counts. Each line of the file must be of the form:
     *     External (<method pathname>, MethodObj, <argument count>)
     * Invocation:
     *     iasl -fe refs.txt -d dsdt.aml
     *
     * The following methods were unresolved and many not compile properly
     * because the disassembler had to guess at the number of arguments
     * required for each:
     */
    External (_PR_.CFGD, UnknownObj)
    External (_PR_.CLVL, IntObj)
    External (_PR_.ELNG, IntObj)
    External (_PR_.EMNA, IntObj)
    External (_PR_.EPCS, UnknownObj)
    External (_SB_.PCI0.CTCD, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.PCI0.CTCN, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.PCI0.CTCU, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.PCI0.CTNL, UnknownObj)
    External (_SB_.PCI0.GFX0.AINT, MethodObj)    // Warning: Unknown method, guessing 2 arguments
    External (_SB_.PCI0.GFX0.CLID, UnknownObj)
    External (_SB_.PCI0.GFX0.DD1F, UnknownObj)
    External (_SB_.PCI0.GFX0.DRDY, IntObj)
    External (_SB_.PCI0.GFX0.GSCI, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.PCI0.GFX0.GSSE, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (_SB_.PCI0.GFX0.VLOC, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (_SB_.PCI0.PTDP, UnknownObj)
    External (_SB_.PCI0.RP09.PEGP.NVST, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.PCI0.SAT1.PRIM.GTME, UnknownObj)
    External (_SB_.PCI0.SAT1.PRT1, UnknownObj)
    External (_SB_.PCI0.SAT1.SCND.GTME, UnknownObj)
    External (_SB_.PCI0.SAT1.SCND.MSTR, UnknownObj)
    External (_SB_.PCI0.XHCI.PS0X, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.PCI0.XHCI.PS3X, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.PCI0.XHCI.URTH.INIR, MethodObj)    // Warning: Unknown method, guessing 0 arguments
    External (_SB_.TPM_.PTS_, MethodObj)    // Warning: Unknown method, guessing 1 arguments
    External (PDC0, UnknownObj)
    External (PDC1, UnknownObj)
    External (PDC2, UnknownObj)
    External (PDC3, UnknownObj)
    External (PDC4, UnknownObj)
    External (PDC5, UnknownObj)
    External (PDC6, UnknownObj)
    External (PDC7, UnknownObj)

    OperationRegion (PRTD, SystemIO, 0x1608, 0x04)
    Field (PRTD, DWordAcc, NoLock, Preserve)
    {
        P80H,   32
    }

    Field (PRTD, ByteAcc, NoLock, Preserve)
    {
        P80P,   8
    }

    Method (P8XH, 2, Serialized)
    {
        Name (P80B, Buffer (0x04){})
        CreateDWordField (P80B, 0x00, P80D)
        If ((Arg0 == 0x00))
        {
            P80D = ((P80D & 0xFFFFFF00) | Arg1)
        }

        If ((Arg0 == 0x01))
        {
            P80D = ((P80D & 0xFFFF00FF) | (Arg1 << 0x08))
        }

        If ((Arg0 == 0x02))
        {
            P80D = ((P80D & 0xFF00FFFF) | (Arg1 << 0x10))
        }

        If ((Arg0 == 0x03))
        {
            P80D = ((P80D & 0x00FFFFFF) | (Arg1 << 0x18))
        }

        P80H = P80D /* \P8XH.P80D */
    }

    Method (ADBG, 1, Serialized)
    {
        Return (0x00)
    }

    Scope (\_PR)
    {
        Processor (CPU0, 0x01, 0x00001810, 0x06){}
        Processor (CPU1, 0x02, 0x00001810, 0x06){}
        Processor (CPU2, 0x03, 0x00001810, 0x06){}
        Processor (CPU3, 0x04, 0x00001810, 0x06){}
        Processor (CPU4, 0x05, 0x00001810, 0x06){}
        Processor (CPU5, 0x06, 0x00001810, 0x06){}
        Processor (CPU6, 0x07, 0x00001810, 0x06){}
        Processor (CPU7, 0x08, 0x00001810, 0x06){}
    }

    Scope (\)
    {
        Method (PNTF, 1, NotSerialized)
        {
            If ((\_PR.CFGD & 0x0200))
            {
                If ((((PDC0 & 0x08) && ((Arg0 == 0x80) || (
                    Arg0 == 0x82))) || ((PDC0 & 0x10) && (Arg0 == 0x81))))
                {
                    Notify (\_PR.CPU0, Arg0)
                }

                If ((((PDC1 & 0x08) && ((Arg0 == 0x80) || (
                    Arg0 == 0x82))) || ((PDC1 & 0x10) && (Arg0 == 0x81))))
                {
                    Notify (\_PR.CPU1, Arg0)
                }

                If ((((PDC2 & 0x08) && ((Arg0 == 0x80) || (
                    Arg0 == 0x82))) || ((PDC2 & 0x10) && (Arg0 == 0x81))))
                {
                    Notify (\_PR.CPU2, Arg0)
                }

                If ((((PDC3 & 0x08) && ((Arg0 == 0x80) || (
                    Arg0 == 0x82))) || ((PDC3 & 0x10) && (Arg0 == 0x81))))
                {
                    Notify (\_PR.CPU3, Arg0)
                }

                If ((((PDC4 & 0x08) && ((Arg0 == 0x80) || (
                    Arg0 == 0x82))) || ((PDC4 & 0x10) && (Arg0 == 0x81))))
                {
                    Notify (\_PR.CPU4, Arg0)
                }

                If ((((PDC5 & 0x08) && ((Arg0 == 0x80) || (
                    Arg0 == 0x82))) || ((PDC5 & 0x10) && (Arg0 == 0x81))))
                {
                    Notify (\_PR.CPU5, Arg0)
                }

                If ((((PDC6 & 0x08) && ((Arg0 == 0x80) || (
                    Arg0 == 0x82))) || ((PDC6 & 0x10) && (Arg0 == 0x81))))
                {
                    Notify (\_PR.CPU6, Arg0)
                }

                If ((((PDC7 & 0x08) && ((Arg0 == 0x80) || (
                    Arg0 == 0x82))) || ((PDC7 & 0x10) && (Arg0 == 0x81))))
                {
                    Notify (\_PR.CPU7, Arg0)
                }
            }
            ElseIf (((Arg0 == 0x80) || ((Arg0 == 0x81) || (Arg0 == 
                0x82))))
            {
                Notify (\_PR.CPU0, Arg0)
            }
        }
    }

    Scope (\_PR.CPU0)
    {
        Name (CPC1, Package (0x11)
        {
            0x11, 
            0x01, 
            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x08,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000771, // Address
                    0x04,               // Access Size
                    )
            }, 

            0x10, 
            0x00, 
            0x00, 
            ResourceTemplate ()
            {
                Register (SystemIO, 
                    0x08,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000001234, // Address
                    0x02,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x08,               // Bit Width
                    0x10,               // Bit Offset
                    0x0000000000000774, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x08,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000774, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x08,               // Bit Width
                    0x08,               // Bit Offset
                    0x0000000000000774, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (SystemMemory, 
                    0x00,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000000, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (SystemMemory, 
                    0x00,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000000, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (SystemMemory, 
                    0x00,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000000, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E7, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E8, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x01,               // Bit Width
                    0x01,               // Bit Offset
                    0x0000000000000777, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x01,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000770, // Address
                    0x04,               // Access Size
                    )
            }
        })
        Name (CPC2, Package (0x15)
        {
            0x15, 
            0x02, 
            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x08,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000771, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x08,               // Bit Width
                    0x08,               // Bit Offset
                    0x00000000000000CE, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x08,               // Bit Width
                    0x10,               // Bit Offset
                    0x0000000000000771, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x08,               // Bit Width
                    0x18,               // Bit Offset
                    0x0000000000000771, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x08,               // Bit Width
                    0x08,               // Bit Offset
                    0x0000000000000771, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x08,               // Bit Width
                    0x10,               // Bit Offset
                    0x0000000000000774, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x08,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000774, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x08,               // Bit Width
                    0x08,               // Bit Offset
                    0x0000000000000774, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (SystemMemory, 
                    0x00,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000000, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (SystemMemory, 
                    0x00,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000000, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (SystemMemory, 
                    0x00,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000000, // Address
                    ,)
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E7, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x40,               // Bit Width
                    0x00,               // Bit Offset
                    0x00000000000000E8, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x02,               // Bit Width
                    0x01,               // Bit Offset
                    0x0000000000000777, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x01,               // Bit Width
                    0x00,               // Bit Offset
                    0x0000000000000770, // Address
                    0x04,               // Access Size
                    )
            }, 

            0x01, 
            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x0A,               // Bit Width
                    0x20,               // Bit Offset
                    0x0000000000000774, // Address
                    0x04,               // Access Size
                    )
            }, 

            ResourceTemplate ()
            {
                Register (FFixedHW, 
                    0x08,               // Bit Width
                    0x18,               // Bit Offset
                    0x0000000000000774, // Address
                    0x04,               // Access Size
                    )
            }, 

            0x00
        })
    }

    OperationRegion (MNVS, SystemMemory, 0xB7FCA018, 0x1000)
    Field (MNVS, DWordAcc, NoLock, Preserve)
    {
        Offset (0xD00), 
        GAPA,   32, 
        GAPL,   32, 
        DCKI,   32, 
        DCKS,   32, 
        VCDL,   1, 
        VCDC,   1, 
        VCDT,   1, 
        VCDD,   1, 
            ,   1, 
        VCSS,   1, 
        VCDB,   1, 
        VCIN,   1, 
        VVPO,   8, 
        BRTN,   8, 
        BRLV,   8, 
        CDFL,   8, 
        CDAH,   8, 
        PMOD,   2, 
        PDIR,   1, 
        PDMA,   1, 
        Offset (0xD17), 
        LFDC,   1, 
        Offset (0xD18), 
        C2NA,   1, 
        C3NA,   1, 
        C4NA,   1, 
        C6NA,   1, 
        C7NA,   1, 
        Offset (0xD19), 
        Offset (0xD1A), 
            ,   2, 
            ,   1, 
        NHPS,   1, 
        NPME,   1, 
        Offset (0xD1B), 
        UOPT,   8, 
        BTID,   32, 
        DPP0,   1, 
        DPP1,   1, 
        DPP2,   1, 
        DPP3,   1, 
        DPP4,   1, 
        DPP5,   1, 
        Offset (0xD21), 
        Offset (0xD22), 
        TCRT,   16, 
        TPSV,   16, 
        TTC1,   16, 
        TTC2,   16, 
        TTSP,   16, 
        SRAH,   8, 
        SRHE,   8, 
        SRE1,   8, 
        SRE2,   8, 
        SRE3,   8, 
        SRE4,   8, 
        SRE5,   8, 
        SRE6,   8, 
        SRU1,   8, 
        SRU2,   8, 
        SRU3,   8, 
        SRU7,   8, 
        SRU4,   8, 
        SRU5,   8, 
        SRU8,   8, 
        SRPB,   8, 
        SRLP,   8, 
        SRSA,   8, 
        SRSM,   8, 
        CWAC,   1, 
        CWAS,   1, 
        CWUE,   1, 
        CWUS,   1, 
        Offset (0xD40), 
        CWAP,   16, 
        CWAT,   16, 
        DBGC,   1, 
        Offset (0xD45), 
        FS1L,   16, 
        FS1M,   16, 
        FS1H,   16, 
        FS2L,   16, 
        FS2M,   16, 
        FS2H,   16, 
        FS3L,   16, 
        FS3M,   16, 
        FS3H,   16, 
        TATC,   1, 
            ,   6, 
        TATL,   1, 
        TATW,   8, 
        TNFT,   4, 
        TNTT,   4, 
        TDFA,   4, 
        TDTA,   4, 
        TDFD,   4, 
        TDTD,   4, 
        TCFA,   4, 
        TCTA,   4, 
        TCFD,   4, 
        TCTD,   4, 
        TSFT,   4, 
        TSTT,   4, 
        TIT0,   8, 
        TCR0,   16, 
        TPS0,   16, 
        TIT1,   8, 
        TCR1,   16, 
        TPS1,   16, 
        TIT2,   8, 
        TCR2,   16, 
        TPS2,   16, 
        TIF0,   8, 
        TIF1,   8, 
        TIF2,   8, 
        Offset (0xD78), 
        BTHI,   1, 
        Offset (0xD79), 
        HDIR,   1, 
        HDEH,   1, 
        HDSP,   1, 
        HDPP,   1, 
        HDUB,   1, 
        HDMC,   1, 
        NFCF,   1, 
        Offset (0xD7A), 
        TPME,   8, 
        BIDE,   4, 
        IDET,   4, 
            ,   1, 
            ,   1, 
        Offset (0xD7D), 
        DTS0,   8, 
        Offset (0xD7F), 
        DT00,   1, 
        DT01,   1, 
        DT02,   1, 
        DT03,   1, 
        Offset (0xD80), 
        LIDB,   1, 
        C4WR,   1, 
        C4AC,   1, 
        ODDX,   1, 
        CMPR,   1, 
        ILNF,   1, 
        PLUX,   1, 
        Offset (0xD81), 
        Offset (0xD8B), 
        WGON,   1, 
        Offset (0xD8C), 
            ,   4, 
            ,   1, 
        IDMM,   1, 
        Offset (0xD8D), 
            ,   3, 
            ,   1, 
            ,   1, 
            ,   1, 
        Offset (0xD8E), 
        Offset (0xD8F), 
            ,   4, 
        Offset (0xD90), 
        Offset (0xD91), 
        SWGP,   8, 
        IPMS,   8, 
        IPMB,   120, 
        IPMR,   24, 
        IPMO,   24, 
        IPMA,   8, 
        VIGD,   1, 
        VDSC,   1, 
        VMSH,   1, 
            ,   1, 
        VDSP,   1, 
        Offset (0xDAA), 
        Offset (0xDAD), 
        ASFT,   8, 
        PL1L,   8, 
        PL1M,   8, 
        CHKC,   32, 
        CHKE,   32, 
        ATRB,   32, 
        Offset (0xDBD), 
        PPCR,   8, 
        TPCR,   5, 
        Offset (0xDBF), 
        Offset (0xDCE), 
        CTPR,   8, 
        PPCA,   8, 
        TPCA,   5, 
        Offset (0xDD1), 
        BFWB,   296, 
        OSPX,   1, 
        OSC4,   1, 
        CPPX,   1, 
        Offset (0xDF7), 
        SPEN,   1, 
        SCRM,   1, 
            ,   1, 
        ETAU,   1, 
        IHBC,   1, 
        APMD,   1, 
        APMF,   1, 
        Offset (0xDF8), 
        FTPS,   8, 
        HIST,   8, 
        LPST,   8, 
        LWST,   8, 
        Offset (0xDFF), 
        PMMD,   8, 
        Offset (0xE20), 
        HPET,   32, 
        PKLI,   16, 
        VLCX,   16, 
        VNIT,   8, 
        VBD0,   8, 
        VBDT,   128, 
        VBPL,   16, 
        VBPH,   16, 
        VBML,   8, 
        VBMH,   8, 
        VEDI,   1024, 
        PDCI,   16, 
        ISCG,   32, 
        ISSP,   1, 
        ISWK,   2, 
        ISFS,   3, 
        Offset (0xEC7), 
        SHA1,   160, 
        LVMD,   8, 
        LWCP,   1, 
        LWEN,   1, 
        IOCP,   1, 
        IOEN,   1, 
        IOST,   1, 
        Offset (0xEDD), 
        USBR,   1, 
        Offset (0xEDE), 
        Offset (0xEDF), 
        Offset (0xEE1), 
        BT2T,   1, 
        Offset (0xEE2), 
        TPPP,   8, 
        TPPC,   8, 
        CTPC,   8, 
        FNWK,   8, 
        Offset (0xEE7), 
        XHCC,   8, 
        FCAP,   16, 
        VSTD,   1, 
        VCQL,   1, 
        VTIO,   1, 
        VMYH,   1, 
        VSTP,   1, 
        VCQH,   1, 
        VDCC,   1, 
        VSFN,   1, 
        VDMC,   1, 
        Offset (0xEEC), 
        CICF,   4, 
        CICM,   4, 
        MCAP,   16, 
        PT1D,   15, 
        Offset (0xEF1), 
        PT2D,   15, 
        Offset (0xEF3)
    }

    Field (MNVS, ByteAcc, NoLock, Preserve)
    {
        Offset (0xB00), 
        WITM,   8, 
        WSEL,   8, 
        WLS0,   8, 
        WLS1,   8, 
        WLS2,   8, 
        WLS3,   8, 
        WLS4,   8, 
        WLS5,   8, 
        WLS6,   8, 
        WLS7,   8, 
        WLS8,   8, 
        WLS9,   8, 
        WLSA,   8, 
        WLSB,   8, 
        WLSC,   8, 
        WLSD,   8, 
        WENC,   8, 
        WKBD,   8, 
        WPTY,   8, 
        WPAS,   1032, 
        WPNW,   1032, 
        WSPM,   8, 
        WSPS,   8, 
        WSMN,   8, 
        WSMX,   8, 
        WSEN,   8, 
        WSKB,   8, 
        WASB,   8, 
        WASI,   16, 
        WASD,   8, 
        WASS,   32
    }

    Field (MNVS, ByteAcc, NoLock, Preserve)
    {
        Offset (0xA00), 
        DBGB,   1024
    }

    OperationRegion (GNVS, SystemMemory, 0xB7FBA000, 0x0600)
    Field (GNVS, AnyAcc, Lock, Preserve)
    {
        OSYS,   16, 
        SMIF,   8, 
        PRM0,   8, 
        PRM1,   8, 
        SCIF,   8, 
        PRM2,   8, 
        PRM3,   8, 
        LCKF,   8, 
        PRM4,   8, 
        PRM5,   8, 
        P80D,   32, 
        PWRS,   8, 
        DBGS,   8, 
        THOF,   8, 
        ACT1,   8, 
        ACTT,   8, 
        PSVT,   8, 
        TC1V,   8, 
        TC2V,   8, 
        TSPV,   8, 
        CRTT,   8, 
        DTSE,   8, 
        DTS1,   8, 
        DTS2,   8, 
        DTSF,   8, 
        Offset (0x1E), 
        Offset (0x1F), 
        Offset (0x20), 
        Offset (0x21), 
        Offset (0x22), 
        Offset (0x23), 
        Offset (0x24), 
        Offset (0x25), 
        REVN,   8, 
        APIC,   8, 
        TCNT,   8, 
        PCP0,   8, 
        PCP1,   8, 
        PPCM,   8, 
        PPMF,   32, 
        C67L,   8, 
        NATP,   8, 
        CMAP,   8, 
        CMBP,   8, 
        LPTP,   8, 
        FDCP,   8, 
        CMCP,   8, 
        CIRP,   8, 
        SMSC,   8, 
        W381,   8, 
        SMC1,   8, 
        EMAE,   8, 
        EMAP,   16, 
        EMAL,   16, 
        MEFE,   8, 
        DSTS,   8, 
        MORD,   8, 
        TCGP,   8, 
        PPRP,   32, 
        PPRQ,   8, 
        LPPR,   8, 
        IDEM,   8, 
        BID,    16, 
        PLID,   8, 
        BTYP,   8, 
        OSCC,   8, 
        NEXP,   8, 
        SBV1,   8, 
        SBV2,   8, 
        ECON,   8, 
        DSEN,   8, 
        GPIC,   8, 
        CTYP,   8, 
        L01C,   8, 
        VFN0,   8, 
        VFN1,   8, 
        VFN2,   8, 
        VFN3,   8, 
        VFN4,   8, 
        VFN5,   8, 
        VFN6,   8, 
        VFN7,   8, 
        VFN8,   8, 
        VFN9,   8, 
        ATMC,   8, 
        PTMC,   8, 
        PNHM,   32, 
        TBAL,   32, 
        TBAH,   32, 
        RTIP,   8, 
        TSOD,   8, 
        PFLV,   8, 
        BREV,   8, 
        BBID,   8, 
        PDTS,   8, 
        PKGA,   8, 
        PAMT,   8, 
        AC0F,   8, 
        AC1F,   8, 
        DTS3,   8, 
        DTS4,   8, 
        LTR1,   8, 
        LTR2,   8, 
        LTR3,   8, 
        LTR4,   8, 
        LTR5,   8, 
        LTR6,   8, 
        LTR7,   8, 
        LTR8,   8, 
        LTR9,   8, 
        LTRA,   8, 
        LTRB,   8, 
        LTRC,   8, 
        LTRD,   8, 
        LTRE,   8, 
        LTRF,   8, 
        LTRG,   8, 
        LTRH,   8, 
        LTRI,   8, 
        LTRJ,   8, 
        LTRK,   8, 
        OBF1,   8, 
        OBF2,   8, 
        OBF3,   8, 
        OBF4,   8, 
        OBF5,   8, 
        OBF6,   8, 
        OBF7,   8, 
        OBF8,   8, 
        OBF9,   8, 
        OBFA,   8, 
        OBFB,   8, 
        OBFC,   8, 
        OBFD,   8, 
        OBFE,   8, 
        OBFF,   8, 
        OBFG,   8, 
        OBFH,   8, 
        OBFI,   8, 
        OBFJ,   8, 
        OBFK,   8, 
        XTUB,   32, 
        XTUS,   32, 
        XMPB,   32, 
        DDRF,   8, 
        RTD3,   8, 
        PEP0,   8, 
        PEP3,   8, 
        DPTF,   8, 
        SADE,   8, 
        SACR,   8, 
        SAHT,   8, 
        CTDP,   8, 
        LPMP,   8, 
        LPMV,   8, 
        ECEU,   8, 
        TGFG,   16, 
        MEMD,   8, 
        ATRA,   8, 
        PTRA,   8, 
        MEMC,   8, 
        MEMH,   8, 
        FND1,   8, 
        FND2,   8, 
        AMBD,   8, 
        AMAT,   8, 
        AMPT,   8, 
        AMCT,   8, 
        AMHT,   8, 
        SKDE,   8, 
        SKAT,   8, 
        SKPT,   8, 
        SKCT,   8, 
        SKHT,   8, 
        EFDE,   8, 
        EFAT,   8, 
        EFPT,   8, 
        EFCT,   8, 
        EFHT,   8, 
        VRDE,   8, 
        VRAT,   8, 
        VRPT,   8, 
        VRCT,   8, 
        VRHT,   8, 
        DPAP,   8, 
        DPPP,   8, 
        DPCP,   8, 
        DCMP,   8, 
        TRTV,   8, 
        LPOE,   8, 
        LPOP,   8, 
        LPOS,   8, 
        LPOW,   8, 
        LPER,   8, 
        PPSZ,   32, 
        DISE,   8, 
        BGMA,   64, 
        BGMS,   8, 
        BGIA,   16, 
        IRMC,   8, 
        NFCE,   8, 
        CHEN,   8, 
        S0ID,   8, 
        CTDB,   8, 
        DKSM,   8, 
        SIO1,   16, 
        SIO2,   16, 
        SPBA,   16, 
        SEC0,   32, 
        SEC1,   32, 
        SEC2,   32, 
        SEC3,   32, 
        SEC4,   32, 
        SEC5,   32, 
        SEC6,   32, 
        SEC7,   32, 
        SEC8,   32, 
        Offset (0x1F4), 
        WIFD,   8, 
        WFAT,   8, 
        WFPT,   8, 
        WFCT,   8, 
        WFHT,   8, 
        PWRE,   8, 
        PWRP,   8, 
        Offset (0x203), 
        XHPR,   8, 
        RIC0,   8, 
        DVS0,   8, 
        DVS1,   8, 
        DVS2,   8, 
        DVS3,   8, 
        GBSX,   8, 
        IUBE,   8, 
        IUCE,   8, 
        IUDE,   8, 
        ECNO,   8, 
        AUDD,   16, 
        IC0D,   16, 
        IC1D,   16, 
        IC1S,   16, 
        VRRD,   16, 
        PSCP,   8, 
        I20D,   16, 
        I21D,   16, 
        RCG0,   16, 
        ECDB,   8, 
        P2ME,   8, 
        SSH0,   16, 
        SSL0,   16, 
        SSD0,   16, 
        FMH0,   16, 
        FML0,   16, 
        FMD0,   16, 
        FPH0,   16, 
        FPL0,   16, 
        FPD0,   16, 
        SSH1,   16, 
        SSL1,   16, 
        SSD1,   16, 
        FMH1,   16, 
        FML1,   16, 
        FMD1,   16, 
        FPH1,   16, 
        FPL1,   16, 
        FPD1,   16, 
        M0C0,   16, 
        M1C0,   16, 
        M2C0,   16, 
        M0C1,   16, 
        M1C1,   16, 
        M2C1,   16, 
        M0C2,   16, 
        M1C2,   16, 
        M0C3,   16, 
        M1C3,   16, 
        M0C4,   16, 
        M1C4,   16, 
        M0C5,   16, 
        M1C5,   16, 
        TBSF,   8, 
        GIRQ,   32, 
        DMTP,   8, 
        DMTD,   8, 
        DMSH,   8, 
        LANP,   8, 
        SHSB,   8, 
        PLCS,   8, 
        PLVL,   16, 
        GN1E,   8, 
        G1AT,   8, 
        G1PT,   8, 
        G1CT,   8, 
        G1HT,   8, 
        GN2E,   8, 
        G2AT,   8, 
        G2PT,   8, 
        G2CT,   8, 
        G2HT,   8, 
        WWSD,   8, 
        CVSD,   8, 
        SSDD,   8, 
        INLD,   8, 
        IFAT,   8, 
        IFPT,   8, 
        IFCT,   8, 
        IFHT,   8, 
        SDWE,   8, 
        USBH,   8, 
        BCV4,   8, 
        WTV0,   8, 
        WTV1,   8, 
        APFU,   8, 
        SOHP,   8, 
        GP5F,   8, 
        NOHP,   8, 
        TBSE,   8, 
        WKFN,   8, 
        PEPC,   32, 
        VRSD,   16, 
        PB1E,   8, 
        GNID,   8, 
        WAND,   8, 
        WWAT,   8, 
        WWPT,   8, 
        WWCT,   8, 
        WWHT,   8, 
        Offset (0x2A3), 
        MPL0,   16, 
        CHGE,   8, 
        SAC3,   8, 
        MEM3,   8, 
        AMC3,   8, 
        SKC3,   8, 
        EFC3,   8, 
        VRC3,   8, 
        WFC3,   8, 
        G1C3,   8, 
        G2C3,   8, 
        IFC3,   8, 
        WWC3,   8, 
        WGC3,   8, 
        SPST,   8, 
        PERE,   8, 
        Offset (0x2B7), 
        GN3E,   8, 
        G3AT,   8, 
        G3PT,   8, 
        G3CT,   8, 
        G3HT,   8, 
        GN4E,   8, 
        G4AT,   8, 
        G4PT,   8, 
        G4CT,   8, 
        G4HT,   8, 
        GN5E,   8, 
        G5AT,   8, 
        G5PT,   8, 
        G5CT,   8, 
        G5HT,   8, 
        GN6E,   8, 
        G6AT,   8, 
        G6PT,   8, 
        G6CT,   8, 
        G6HT,   8, 
        ECLP,   8, 
        G3C3,   8, 
        G4C3,   8, 
        G5C3,   8, 
        G6C3,   8, 
        TSP1,   8, 
        TSP2,   8, 
        TSP3,   8, 
        TSP4,   8, 
        TSP5,   8, 
        TSP6,   8, 
        TSP7,   8, 
        TSP8,   8, 
        SSP1,   8, 
        SSP2,   8, 
        SSP3,   8, 
        SSP4,   8, 
        SSP5,   8, 
        SSP6,   8, 
        SSP7,   8, 
        SSP8,   8, 
        MEMS,   8, 
        Offset (0x2F8), 
        S1DE,   8, 
        S1AT,   8, 
        S1PT,   8, 
        S1CT,   8, 
        S1HT,   8, 
        S2DE,   8, 
        S2AT,   8, 
        S2PT,   8, 
        S2CT,   8, 
        S2HT,   8, 
        S3DE,   8, 
        S3AT,   8, 
        S3PT,   8, 
        S3CT,   8, 
        S3HT,   8, 
        S4DE,   8, 
        S4AT,   8, 
        S4PT,   8, 
        S4CT,   8, 
        S4HT,   8, 
        S5DE,   8, 
        S5AT,   8, 
        S5PT,   8, 
        S5CT,   8, 
        S5HT,   8, 
        S6DE,   8, 
        S6AT,   8, 
        S6PT,   8, 
        S6CT,   8, 
        S6HT,   8, 
        S7DE,   8, 
        S7AT,   8, 
        S7PT,   8, 
        S7CT,   8, 
        S7HT,   8, 
        S1S3,   8, 
        S2S3,   8, 
        S3S3,   8, 
        S4S3,   8, 
        S5S3,   8, 
        S6S3,   8, 
        S7S3,   8, 
        PSME,   8, 
        PDT1,   8, 
        PLM1,   16, 
        PTW1,   16, 
        PDT2,   8, 
        PLM2,   16, 
        PTW2,   16, 
        DDT1,   8, 
        DDP1,   8, 
        DLI1,   16, 
        DPL1,   16, 
        DTW1,   16, 
        DMI1,   16, 
        DMA1,   16, 
        DMT1,   16, 
        DDT2,   8, 
        DDP2,   8, 
        DLI2,   16, 
        DPL2,   16, 
        DTW2,   16, 
        DMI2,   16, 
        DMA2,   16, 
        DMT2,   16, 
        WIFE,   8, 
        DOM1,   8, 
        LIM1,   16, 
        TIM1,   16, 
        DOM2,   8, 
        LIM2,   16, 
        TIM2,   16, 
        DOM3,   8, 
        LIM3,   16, 
        TIM3,   16, 
        TRD0,   8, 
        TRL0,   8, 
        TRD1,   8, 
        TRL1,   8, 
        WDM1,   8, 
        CID1,   16, 
        WDM2,   8, 
        CID2,   16, 
        Offset (0x364), 
        APPE,   8, 
        MPL1,   16, 
        MPL2,   16, 
        SDS0,   8, 
        SDS1,   8, 
        SDS2,   8, 
        SDS3,   8, 
        SDS4,   8, 
        SDS5,   8, 
        SDS6,   8, 
        SDS7,   8, 
        SDS8,   8, 
        SDS9,   8, 
        SDSA,   8, 
        TPLB,   8, 
        TPLH,   16, 
        WTVX,   8, 
        WITX,   8, 
        GPTD,   8, 
        GDBT,   16, 
        UTKX,   8, 
        SPTD,   8, 
        GEXN,   8, 
        TBTS,   8, 
        AICS,   8, 
        TARS,   8, 
        FPAT,   8, 
        FPEN,   8, 
        FPGN,   32, 
        FPLV,   8, 
        CPAD,   16, 
        CPAB,   8, 
        TNAT,   8, 
        CPGN,   32, 
        CF2T,   8, 
        ATLB,   32, 
        SDM0,   8, 
        SDM1,   8, 
        SDM2,   8, 
        SDM3,   8, 
        SDM4,   8, 
        SDM5,   8, 
        SDM6,   8, 
        SDM7,   8, 
        SDM8,   8, 
        SDM9,   8, 
        SDMA,   8, 
        USTP,   8, 
        SSHI,   16, 
        SSLI,   16, 
        SSDI,   16, 
        FMHI,   16, 
        FMLI,   16, 
        FMDI,   16, 
        FPHI,   16, 
        FPLI,   16, 
        FPDI,   16, 
        M0CI,   16, 
        M1CI,   16, 
        M0CS,   16, 
        M1CS,   16, 
        M0CU,   16, 
        M1CU,   16, 
        CAMT,   8, 
        DS4D,   16, 
        IVDF,   8, 
        EIDF,   8, 
        GFPS,   32, 
        GFPI,   32, 
        GNSM,   8, 
        GNSC,   8, 
        GGNR,   32, 
        GBTW,   32, 
        GBTK,   32, 
        GBTI,   32, 
        GPDI,   32, 
        GPLI,   32, 
        CL00,   8, 
        CL01,   8, 
        CL02,   8, 
        CL03,   8, 
        L0EN,   8, 
        L1EN,   8, 
        L2EN,   8, 
        L3EN,   8, 
        CDIV,   8, 
        C0TP,   8, 
        C0CV,   8, 
        C0GP,   8, 
        C0IB,   8, 
        C0IA,   16, 
        C0P0,   8, 
        C0P1,   8, 
        C0P2,   8, 
        C0P3,   8, 
        C0G0,   8, 
        C0G1,   8, 
        C0G2,   8, 
        C0G3,   8, 
        C0F0,   8, 
        C0F1,   8, 
        C0F2,   8, 
        C0F3,   8, 
        C0A0,   8, 
        C0A1,   8, 
        C0A2,   8, 
        C0A3,   8, 
        C0I0,   8, 
        C0I1,   8, 
        C0I2,   8, 
        C0I3,   8, 
        C0PL,   8, 
        C1TP,   8, 
        C1CV,   8, 
        C1GP,   8, 
        C1IB,   8, 
        C1IA,   16, 
        C1P0,   8, 
        C1P1,   8, 
        C1P2,   8, 
        C1P3,   8, 
        C1G0,   8, 
        C1G1,   8, 
        C1G2,   8, 
        C1G3,   8, 
        C1F0,   8, 
        C1F1,   8, 
        C1F2,   8, 
        C1F3,   8, 
        C1A0,   8, 
        C1A1,   8, 
        C1A2,   8, 
        C1A3,   8, 
        C1I0,   8, 
        C1I1,   8, 
        C1I2,   8, 
        C1I3,   8, 
        C1PL,   8, 
        C2TP,   8, 
        C2CV,   8, 
        C2GP,   8, 
        C2IB,   8, 
        C2IA,   16, 
        C2P0,   8, 
        C2P1,   8, 
        C2P2,   8, 
        C2P3,   8, 
        C2G0,   8, 
        C2G1,   8, 
        C2G2,   8, 
        C2G3,   8, 
        C2F0,   8, 
        C2F1,   8, 
        C2F2,   8, 
        C2F3,   8, 
        C2A0,   8, 
        C2A1,   8, 
        C2A2,   8, 
        C2A3,   8, 
        C2I0,   8, 
        C2I1,   8, 
        C2I2,   8, 
        C2I3,   8, 
        C2PL,   8, 
        C3TP,   8, 
        C3CV,   8, 
        C3GP,   8, 
        C3IB,   8, 
        C3IA,   16, 
        C3P0,   8, 
        C3P1,   8, 
        C3P2,   8, 
        C3P3,   8, 
        C3G0,   8, 
        C3G1,   8, 
        C3G2,   8, 
        C3G3,   8, 
        C3F0,   8, 
        C3F1,   8, 
        C3F2,   8, 
        C3F3,   8, 
        C3A0,   8, 
        C3A1,   8, 
        C3A2,   8, 
        C3A3,   8, 
        C3I0,   8, 
        C3I1,   8, 
        C3I2,   8, 
        C3I3,   8, 
        C3PL,   8, 
        L0SM,   8, 
        L0H0,   8, 
        L0H1,   8, 
        L0H2,   8, 
        L0H3,   8, 
        L0H4,   8, 
        L0H5,   8, 
        L0H6,   8, 
        L0H7,   8, 
        L0H8,   8, 
        L0PL,   8, 
        L0M0,   8, 
        L0M1,   8, 
        L0M2,   8, 
        L0M3,   8, 
        L0M4,   8, 
        L0M5,   8, 
        L0M6,   8, 
        L0M7,   8, 
        L0M8,   8, 
        L0M9,   8, 
        L0MA,   8, 
        L0MB,   8, 
        L0MC,   8, 
        L0MD,   8, 
        L0ME,   8, 
        L0MF,   8, 
        L0DI,   8, 
        L0BS,   8, 
        L0A0,   16, 
        L0A1,   16, 
        L0A2,   16, 
        L0A3,   16, 
        L0A4,   16, 
        L0A5,   16, 
        L0A6,   16, 
        L0A7,   16, 
        L0A8,   16, 
        L0A9,   16, 
        L0AA,   16, 
        L0AB,   16, 
        L0D0,   8, 
        L0D1,   8, 
        L0D2,   8, 
        L0D3,   8, 
        L0D4,   8, 
        L0D5,   8, 
        L0D6,   8, 
        L0D7,   8, 
        L0D8,   8, 
        L0D9,   8, 
        L0DA,   8, 
        L0DB,   8, 
        L0DV,   8, 
        L0CV,   8, 
        L0LU,   8, 
        L0NL,   8, 
        L0EE,   8, 
        L0VC,   8, 
        L0FS,   8, 
        L0DG,   8, 
        L0C0,   8, 
        L0C1,   8, 
        L0C2,   8, 
        L0C3,   8, 
        L0CK,   32, 
        L0CL,   8, 
        L1SM,   8, 
        L1H0,   8, 
        L1H1,   8, 
        L1H2,   8, 
        L1H3,   8, 
        L1H4,   8, 
        L1H5,   8, 
        L1H6,   8, 
        L1H7,   8, 
        L1H8,   8, 
        L1PL,   8, 
        L1M0,   8, 
        L1M1,   8, 
        L1M2,   8, 
        L1M3,   8, 
        L1M4,   8, 
        L1M5,   8, 
        L1M6,   8, 
        L1M7,   8, 
        L1M8,   8, 
        L1M9,   8, 
        L1MA,   8, 
        L1MB,   8, 
        L1MC,   8, 
        L1MD,   8, 
        L1ME,   8, 
        L1MF,   8, 
        L1DI,   8, 
        L1BS,   8, 
        L1A0,   16, 
        L1A1,   16, 
        L1A2,   16, 
        L1A3,   16, 
        L1A4,   16, 
        L1A5,   16, 
        L1A6,   16, 
        L1A7,   16, 
        L1A8,   16, 
        L1A9,   16, 
        L1AA,   16, 
        L1AB,   16, 
        L1D0,   8, 
        L1D1,   8, 
        L1D2,   8, 
        L1D3,   8, 
        L1D4,   8, 
        L1D5,   8, 
        L1D6,   8, 
        L1D7,   8, 
        L1D8,   8, 
        L1D9,   8, 
        L1DA,   8, 
        L1DB,   8, 
        L1DV,   8, 
        L1CV,   8, 
        L1LU,   8, 
        L1NL,   8, 
        L1EE,   8, 
        L1VC,   8, 
        L1FS,   8, 
        L1DG,   8, 
        L1C0,   8, 
        L1C1,   8, 
        L1C2,   8, 
        L1C3,   8, 
        L1CK,   32, 
        L1CL,   8, 
        L2SM,   8, 
        L2H0,   8, 
        L2H1,   8, 
        L2H2,   8, 
        L2H3,   8, 
        L2H4,   8, 
        L2H5,   8, 
        L2H6,   8, 
        L2H7,   8, 
        L2H8,   8, 
        L2PL,   8, 
        L2M0,   8, 
        L2M1,   8, 
        L2M2,   8, 
        L2M3,   8, 
        L2M4,   8, 
        L2M5,   8, 
        L2M6,   8, 
        L2M7,   8, 
        L2M8,   8, 
        L2M9,   8, 
        L2MA,   8, 
        L2MB,   8, 
        L2MC,   8, 
        L2MD,   8, 
        L2ME,   8, 
        L2MF,   8, 
        L2DI,   8, 
        L2BS,   8, 
        L2A0,   16, 
        L2A1,   16, 
        L2A2,   16, 
        L2A3,   16, 
        L2A4,   16, 
        L2A5,   16, 
        L2A6,   16, 
        L2A7,   16, 
        L2A8,   16, 
        L2A9,   16, 
        L2AA,   16, 
        L2AB,   16, 
        L2D0,   8, 
        L2D1,   8, 
        L2D2,   8, 
        L2D3,   8, 
        L2D4,   8, 
        L2D5,   8, 
        L2D6,   8, 
        L2D7,   8, 
        L2D8,   8, 
        L2D9,   8, 
        L2DA,   8, 
        L2DB,   8, 
        L2DV,   8, 
        L2CV,   8, 
        L2LU,   8, 
        L2NL,   8, 
        L2EE,   8, 
        L2VC,   8, 
        L2FS,   8, 
        L2DG,   8, 
        L2C0,   8, 
        L2C1,   8, 
        L2C2,   8, 
        L2C3,   8, 
        L2CK,   32, 
        L2CL,   8, 
        L3SM,   8, 
        L3H0,   8, 
        L3H1,   8, 
        L3H2,   8, 
        L3H3,   8, 
        L3H4,   8, 
        L3H5,   8, 
        L3H6,   8, 
        L3H7,   8, 
        L3H8,   8, 
        L3PL,   8, 
        L3M0,   8, 
        L3M1,   8, 
        L3M2,   8, 
        L3M3,   8, 
        L3M4,   8, 
        L3M5,   8, 
        L3M6,   8, 
        L3M7,   8, 
        L3M8,   8, 
        L3M9,   8, 
        L3MA,   8, 
        L3MB,   8, 
        L3MC,   8, 
        L3MD,   8, 
        L3ME,   8, 
        L3MF,   8, 
        L3DI,   8, 
        L3BS,   8, 
        L3A0,   16, 
        L3A1,   16, 
        L3A2,   16, 
        L3A3,   16, 
        L3A4,   16, 
        L3A5,   16, 
        L3A6,   16, 
        L3A7,   16, 
        L3A8,   16, 
        L3A9,   16, 
        L3AA,   16, 
        L3AB,   16, 
        L3D0,   8, 
        L3D1,   8, 
        L3D2,   8, 
        L3D3,   8, 
        L3D4,   8, 
        L3D5,   8, 
        L3D6,   8, 
        L3D7,   8, 
        L3D8,   8, 
        L3D9,   8, 
        L3DA,   8, 
        L3DB,   8, 
        L3DV,   8, 
        L3CV,   8, 
        L3LU,   8, 
        L3NL,   8, 
        L3EE,   8, 
        L3VC,   8, 
        L3FS,   8, 
        L3DG,   8, 
        L3C0,   8, 
        L3C1,   8, 
        L3C2,   8, 
        L3C3,   8, 
        L3CK,   32, 
        L3CL,   8, 
        ECR1,   8, 
        Offset (0x5AA), 
        I2SC,   8, 
        ODV0,   8, 
        ODV1,   8, 
        ODV2,   8, 
        ODV3,   8, 
        ODV4,   8, 
        ODV5,   8, 
        UBCB,   32, 
        EMOD,   8, 
        WIFC,   8, 
        Offset (0x5BE), 
        TPLS,   8, 
        TPDB,   8, 
        TPDH,   16, 
        TPDS,   8, 
        AG1L,   64, 
        AG1H,   64, 
        AG2L,   64, 
        AG2H,   64, 
        AG3L,   64, 
        AG3H,   64, 
        HEFE,   8, 
        XDCE,   8, 
        STXE,   8, 
        STX0,   8, 
        STX1,   8, 
        STX2,   8, 
        STX3,   8, 
        STX4,   8, 
        STX5,   8, 
        STX6,   8, 
        STX7,   8, 
        STX8,   8, 
        STX9,   8
    }

    Scope (\_SB)
    {
        Method (_INI, 0, NotSerialized)  // _INI: Initialize
        {
            If (CondRefOf (\_OSI, Local0))
            {
                If (\_OSI ("Windows 2001"))
                {
                    \WNTF = 0x01
                    \WXPF = 0x01
                    \WSPV = 0x00
                    OSYS = 0x07D1
                }

                If (\_OSI ("Windows 2001 SP1"))
                {
                    \WSPV = 0x01
                    OSYS = 0x07D1
                }

                If (\_OSI ("Windows 2001 SP2"))
                {
                    \WSPV = 0x02
                    OSYS = 0x07D2
                }

                If (\_OSI ("Windows 2006"))
                {
                    \WVIS = 0x01
                    OSYS = 0x07D6
                }

                If (\_OSI ("Windows 2009"))
                {
                    \WIN7 = 0x01
                    OSYS = 0x07D9
                }

                If (\_OSI ("Windows 2012"))
                {
                    \WIN8 = 0x01
                    OSYS = 0x07DC
                }

                If (\_OSI ("Windows 2013"))
                {
                    \WIN8 = 0x01
                    OSYS = 0x07DD
                }

                If (\_OSI ("Windows 2015"))
                {
                    \WIN8 = 0x01
                    OSYS = 0x07DF
                }

                If (\_OSI ("Linux"))
                {
                    \LNUX = 0x01
                    OSYS = 0x03E8
                }

                If (\_OSI ("FreeBSD"))
                {
                    \LNUX = 0x01
                    OSYS = 0x03E8
                }
            }
            ElseIf ((\SCMP (\_OS, "Microsoft Windows NT") == Zero))
            {
                \WNTF = 0x01
            }

            If ((\_REV >= 0x02))
            {
                \H8DR = 0x01
            }

            \OSIF = 0x01
            \PWRS = \_SB.PCI0.LPC.EC.AC._PSR ()
            \_SB.PCI0.LPC.MOU.MHID ()
            If (\LNUX)
            {
                \_SB.PCI0.LPC.EC.SAUM (0x02)
                \UCMS (0x1C)
            }

            \_SB.PCI0.RID = \SRAH
            If (VIGD)
            {
                \_SB.PCI0.GFX0.RID = \SRHE
            }
            Else
            {
                \_SB.PCI0.PEG0.RID = \SRHE
            }

            \_SB.PCI0.EXP1.RID = \SRE1
            \_SB.PCI0.EXP2.RID = \SRE2
            \_SB.PCI0.EXP3.RID = \SRE3
            \_SB.PCI0.EXP5.RID = \SRE4
            \_SB.PCI0.RP09.RID = \SRE4
            \_SB.PCI0.LPC.RID = \SRLP
            \_SB.PCI0.SAT1.RID = \SRSA
            \_SB.PCI0.SMBU.RID = \SRSM
            \PMMD = \_SB.PCI0.LPC.EC.CMMD
            If ((\PMMD >= 0x07))
            {
                \PMMD = 0x00
            }

            \LVMD = \_SB.PCI0.LPC.EC.CMMD
            If (((\LVMD == 0x00) || (\LVMD >= 0x07)))
            {
                \LVMD = 0x01
            }
            ElseIf (((\LVMD == 0x02) || (\LVMD == 0x03)))
            {
                \LVMD = 0x02
            }
            Else
            {
                \LVMD = 0x03
            }
        }

        Name (OSCP, 0x00)
        Method (_OSC, 4, Serialized)  // _OSC: Operating System Capabilities
        {
            CreateDWordField (Arg3, 0x00, STS0)
            CreateDWordField (Arg3, 0x04, CAP0)
            If ((Arg0 == ToUUID ("0811b06e-4a27-44f9-8d60-3cbbc22e7b48") /* Platform-wide Capabilities */))
            {
                If ((Arg1 == One))
                {
                    OSCP = CAP0 /* \_SB_._OSC.CAP0 */
                    If ((CAP0 & 0x04))
                    {
                        If (!VMSH)
                        {
                            If ((RTD3 == 0x00))
                            {
                                CAP0 &= 0xFB
                                STS0 |= 0x10
                            }
                        }
                    }

                    If ((CAP0 & 0x20))
                    {
                        \CPPX = 0x01
                    }
                    Else
                    {
                        CAP0 &= 0x9F
                        STS0 |= 0x10
                    }
                }
                Else
                {
                    STS0 &= 0xFFFFFF00
                    STS0 |= 0x0A
                }
            }
            Else
            {
                STS0 &= 0xFFFFFF00
                STS0 |= 0x06
            }

            Return (Arg3)
        }

        Device (LNKA)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x01)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (!VPIR (\_SB.PCI0.LPC.PIRA))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                \_SB.PCI0.LPC.PIRA |= 0x80
            }

            Name (BUFA, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y00)
                    {}
            })
            CreateWordField (BUFA, \_SB.LNKA._Y00._INT, IRA1)  // _INT: Interrupts
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (\_SB.PCI0.LPC.PIRA & 0x8F)
                If (VPIR (Local0))
                {
                    IRA1 = (0x01 << Local0)
                }
                Else
                {
                    IRA1 = 0x00
                }

                Return (BUFA) /* \_SB_.LNKA.BUFA */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, 0x01, IRA2)
                FindSetRightBit (IRA2, Local0)
                Local1 = (\_SB.PCI0.LPC.PIRA & 0x70)
                Local1 |= Local0--
                \_SB.PCI0.LPC.PIRA = Local1
            }
        }

        Device (LNKB)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (!VPIR (\_SB.PCI0.LPC.PIRB))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                \_SB.PCI0.LPC.PIRB |= 0x80
            }

            Name (BUFB, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y01)
                    {}
            })
            CreateWordField (BUFB, \_SB.LNKB._Y01._INT, IRB1)  // _INT: Interrupts
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (\_SB.PCI0.LPC.PIRB & 0x8F)
                If (VPIR (Local0))
                {
                    IRB1 = (0x01 << Local0)
                }
                Else
                {
                    IRB1 = 0x00
                }

                Return (BUFB) /* \_SB_.LNKB.BUFB */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, 0x01, IRB2)
                FindSetRightBit (IRB2, Local0)
                Local1 = (\_SB.PCI0.LPC.PIRB & 0x70)
                Local1 |= Local0--
                \_SB.PCI0.LPC.PIRB = Local1
            }
        }

        Device (LNKC)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (!VPIR (\_SB.PCI0.LPC.PIRC))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                \_SB.PCI0.LPC.PIRC |= 0x80
            }

            Name (BUFC, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y02)
                    {}
            })
            CreateWordField (BUFC, \_SB.LNKC._Y02._INT, IRC1)  // _INT: Interrupts
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (\_SB.PCI0.LPC.PIRC & 0x8F)
                If (VPIR (Local0))
                {
                    IRC1 = (0x01 << Local0)
                }
                Else
                {
                    IRC1 = 0x00
                }

                Return (BUFC) /* \_SB_.LNKC.BUFC */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, 0x01, IRC2)
                FindSetRightBit (IRC2, Local0)
                Local1 = (\_SB.PCI0.LPC.PIRC & 0x70)
                Local1 |= Local0--
                \_SB.PCI0.LPC.PIRC = Local1
            }
        }

        Device (LNKD)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (!VPIR (\_SB.PCI0.LPC.PIRD))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                \_SB.PCI0.LPC.PIRD |= 0x80
            }

            Name (BUFD, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y03)
                    {}
            })
            CreateWordField (BUFD, \_SB.LNKD._Y03._INT, IRD1)  // _INT: Interrupts
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (\_SB.PCI0.LPC.PIRD & 0x8F)
                If (VPIR (Local0))
                {
                    IRD1 = (0x01 << Local0)
                }
                Else
                {
                    IRD1 = 0x00
                }

                Return (BUFD) /* \_SB_.LNKD.BUFD */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, 0x01, IRD2)
                FindSetRightBit (IRD2, Local0)
                Local1 = (\_SB.PCI0.LPC.PIRD & 0x70)
                Local1 |= Local0--
                \_SB.PCI0.LPC.PIRD = Local1
            }
        }

        Device (LNKE)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x05)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (!VPIR (\_SB.PCI0.LPC.PIRE))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                \_SB.PCI0.LPC.PIRE |= 0x80
            }

            Name (BUFE, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y04)
                    {}
            })
            CreateWordField (BUFE, \_SB.LNKE._Y04._INT, IRE1)  // _INT: Interrupts
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (\_SB.PCI0.LPC.PIRE & 0x8F)
                If (VPIR (Local0))
                {
                    IRE1 = (0x01 << Local0)
                }
                Else
                {
                    IRE1 = 0x00
                }

                Return (BUFE) /* \_SB_.LNKE.BUFE */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, 0x01, IRE2)
                FindSetRightBit (IRE2, Local0)
                Local1 = (\_SB.PCI0.LPC.PIRE & 0x70)
                Local1 |= Local0--
                \_SB.PCI0.LPC.PIRE = Local1
            }
        }

        Device (LNKF)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x06)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (!VPIR (\_SB.PCI0.LPC.PIRF))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                \_SB.PCI0.LPC.PIRF |= 0x80
            }

            Name (BUFF, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y05)
                    {}
            })
            CreateWordField (BUFF, \_SB.LNKF._Y05._INT, IRF1)  // _INT: Interrupts
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (\_SB.PCI0.LPC.PIRF & 0x8F)
                If (VPIR (Local0))
                {
                    IRF1 = (0x01 << Local0)
                }
                Else
                {
                    IRF1 = 0x00
                }

                Return (BUFF) /* \_SB_.LNKF.BUFF */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, 0x01, IRF2)
                FindSetRightBit (IRF2, Local0)
                Local1 = (\_SB.PCI0.LPC.PIRF & 0x70)
                Local1 |= Local0--
                \_SB.PCI0.LPC.PIRF = Local1
            }
        }

        Device (LNKG)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x07)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (!VPIR (\_SB.PCI0.LPC.PIRG))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                \_SB.PCI0.LPC.PIRG |= 0x80
            }

            Name (BUFG, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y06)
                    {}
            })
            CreateWordField (BUFG, \_SB.LNKG._Y06._INT, IRG1)  // _INT: Interrupts
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (\_SB.PCI0.LPC.PIRG & 0x8F)
                If (VPIR (Local0))
                {
                    IRG1 = (0x01 << Local0)
                }
                Else
                {
                    IRG1 = 0x00
                }

                Return (BUFG) /* \_SB_.LNKG.BUFG */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, 0x01, IRG2)
                FindSetRightBit (IRG2, Local0)
                Local1 = (\_SB.PCI0.LPC.PIRG & 0x70)
                Local1 |= Local0--
                \_SB.PCI0.LPC.PIRG = Local1
            }
        }

        Device (LNKH)
        {
            Name (_HID, EisaId ("PNP0C0F") /* PCI Interrupt Link Device */)  // _HID: Hardware ID
            Name (_UID, 0x08)  // _UID: Unique ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If (!VPIR (\_SB.PCI0.LPC.PIRH))
                {
                    Return (0x09)
                }
                Else
                {
                    Return (0x0B)
                }
            }

            Name (_PRS, ResourceTemplate ()  // _PRS: Possible Resource Settings
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11}
            })
            Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
            {
                \_SB.PCI0.LPC.PIRH |= 0x80
            }

            Name (BUFH, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, _Y07)
                    {}
            })
            CreateWordField (BUFH, \_SB.LNKH._Y07._INT, IRH1)  // _INT: Interrupts
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (\_SB.PCI0.LPC.PIRH & 0x8F)
                If (VPIR (Local0))
                {
                    IRH1 = (0x01 << Local0)
                }
                Else
                {
                    IRH1 = 0x00
                }

                Return (BUFH) /* \_SB_.LNKH.BUFH */
            }

            Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
            {
                CreateWordField (Arg0, 0x01, IRH2)
                FindSetRightBit (IRH2, Local0)
                Local1 = (\_SB.PCI0.LPC.PIRH & 0x70)
                Local1 |= Local0--
                \_SB.PCI0.LPC.PIRH = Local1
            }
        }

        Method (VPIR, 1, NotSerialized)
        {
            Local0 = 0x01
            If ((Arg0 & 0x80))
            {
                Local0 = 0x00
            }
            Else
            {
                Local1 = (Arg0 & 0x0F)
                If ((Local1 < 0x03))
                {
                    Local0 = 0x00
                }
                ElseIf (((Local1 == 0x08) || (Local1 == 0x0D)))
                {
                    Local0 = 0x00
                }
            }

            Return (Local0)
        }

        Device (MEM)
        {
            Name (_HID, EisaId ("PNP0C01") /* System Board */)  // _HID: Hardware ID
            Name (MEMS, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x000A0000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0x000C0000,         // Address Base
                    0x00000000,         // Address Length
                    _Y08)
                Memory32Fixed (ReadOnly,
                    0x000C4000,         // Address Base
                    0x00000000,         // Address Length
                    _Y09)
                Memory32Fixed (ReadOnly,
                    0x000C8000,         // Address Base
                    0x00000000,         // Address Length
                    _Y0A)
                Memory32Fixed (ReadOnly,
                    0x000CC000,         // Address Base
                    0x00000000,         // Address Length
                    _Y0B)
                Memory32Fixed (ReadOnly,
                    0x000D0000,         // Address Base
                    0x00000000,         // Address Length
                    _Y0C)
                Memory32Fixed (ReadOnly,
                    0x000D4000,         // Address Base
                    0x00000000,         // Address Length
                    _Y0D)
                Memory32Fixed (ReadOnly,
                    0x000D8000,         // Address Base
                    0x00000000,         // Address Length
                    _Y0E)
                Memory32Fixed (ReadOnly,
                    0x000DC000,         // Address Base
                    0x00000000,         // Address Length
                    _Y0F)
                Memory32Fixed (ReadOnly,
                    0x000E0000,         // Address Base
                    0x00000000,         // Address Length
                    _Y10)
                Memory32Fixed (ReadOnly,
                    0x000E4000,         // Address Base
                    0x00000000,         // Address Length
                    _Y11)
                Memory32Fixed (ReadOnly,
                    0x000E8000,         // Address Base
                    0x00000000,         // Address Length
                    _Y12)
                Memory32Fixed (ReadOnly,
                    0x000EC000,         // Address Base
                    0x00000000,         // Address Length
                    _Y13)
                Memory32Fixed (ReadOnly,
                    0x000F0000,         // Address Base
                    0x00010000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0x00100000,         // Address Base
                    0x01EE0000,         // Address Length
                    _Y14)
                Memory32Fixed (ReadOnly,
                    0xFEC00000,         // Address Base
                    0x00140000,         // Address Length
                    )
                Memory32Fixed (ReadOnly,
                    0xFED4C000,         // Address Base
                    0x012B4000,         // Address Length
                    )
            })
            CreateDWordField (MEMS, \_SB.MEM._Y08._LEN, MC0L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y09._LEN, MC4L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y0A._LEN, MC8L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y0B._LEN, MCCL)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y0C._LEN, MD0L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y0D._LEN, MD4L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y0E._LEN, MD8L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y0F._LEN, MDCL)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y10._LEN, ME0L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y11._LEN, ME4L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y12._LEN, ME8L)  // _LEN: Length
            CreateDWordField (MEMS, \_SB.MEM._Y13._LEN, MECL)  // _LEN: Length
            CreateBitField (MEMS, \_SB.MEM._Y08._RW, MC0W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y09._RW, MC4W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y0A._RW, MC8W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y0B._RW, MCCW)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y0C._RW, MD0W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y0D._RW, MD4W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y0E._RW, MD8W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y0F._RW, MDCW)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y10._RW, ME0W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y11._RW, ME4W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y12._RW, ME8W)  // _RW_: Read-Write Status
            CreateBitField (MEMS, \_SB.MEM._Y13._RW, MECW)  // _RW_: Read-Write Status
            CreateDWordField (MEMS, \_SB.MEM._Y14._BAS, MEB1)  // _BAS: Base Address
            CreateDWordField (MEMS, \_SB.MEM._Y14._LEN, MEL1)  // _LEN: Length
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = (\_SB.PCI0.PAM1 & 0x03)
                If (Local0)
                {
                    MC0L = 0x4000
                    If ((Local0 & 0x02))
                    {
                        MC0W = 0x01
                    }
                }

                Local0 = (\_SB.PCI0.PAM1 & 0x30)
                If (Local0)
                {
                    MC4L = 0x4000
                    If ((Local0 & 0x20))
                    {
                        MC4W = 0x01
                    }
                }

                Local0 = (\_SB.PCI0.PAM2 & 0x03)
                If (Local0)
                {
                    MC8L = 0x4000
                    If ((Local0 & 0x02))
                    {
                        MC8W = 0x01
                    }
                }

                Local0 = (\_SB.PCI0.PAM2 & 0x30)
                If (Local0)
                {
                    MCCL = 0x4000
                    If ((Local0 & 0x20))
                    {
                        MCCW = 0x01
                    }
                }

                Local0 = (\_SB.PCI0.PAM3 & 0x03)
                If (Local0)
                {
                    MD0L = 0x4000
                    If ((Local0 & 0x02))
                    {
                        MD0W = 0x01
                    }
                }

                Local0 = (\_SB.PCI0.PAM3 & 0x30)
                If (Local0)
                {
                    MD4L = 0x4000
                    If ((Local0 & 0x20))
                    {
                        MD4W = 0x01
                    }
                }

                Local0 = (\_SB.PCI0.PAM4 & 0x03)
                If (Local0)
                {
                    MD8L = 0x4000
                    If ((Local0 & 0x02))
                    {
                        MD8W = 0x01
                    }
                }

                Local0 = (\_SB.PCI0.PAM4 & 0x30)
                If (Local0)
                {
                    MDCL = 0x4000
                    If ((Local0 & 0x20))
                    {
                        MDCW = 0x01
                    }
                }

                Local0 = (\_SB.PCI0.PAM5 & 0x03)
                If (Local0)
                {
                    ME0L = 0x4000
                    If ((Local0 & 0x02))
                    {
                        ME0W = 0x01
                    }
                }

                Local0 = (\_SB.PCI0.PAM5 & 0x30)
                If (Local0)
                {
                    ME4L = 0x4000
                    If ((Local0 & 0x20))
                    {
                        ME4W = 0x01
                    }
                }

                Local0 = (\_SB.PCI0.PAM6 & 0x03)
                If (Local0)
                {
                    ME8L = 0x4000
                    If ((Local0 & 0x02))
                    {
                        ME8W = 0x01
                    }
                }

                Local0 = (\_SB.PCI0.PAM6 & 0x30)
                If (Local0)
                {
                    MECL = 0x4000
                    If ((Local0 & 0x20))
                    {
                        MECW = 0x01
                    }
                }

                MEL1 = (\MEMX - MEB1) /* \_SB_.MEM_.MEB1 */
                Return (MEMS) /* \_SB_.MEM_.MEMS */
            }
        }

        Device (LID)
        {
            Name (_HID, EisaId ("PNP0C0D") /* Lid Device */)  // _HID: Hardware ID
            Method (_LID, 0, NotSerialized)  // _LID: Lid Status
            {
                If (((\ILNF == 0x00) && (\PLUX == 0x00)))
                {
                    If (\H8DR)
                    {
                        Return (\_SB.PCI0.LPC.EC.HPLD)
                    }
                    ElseIf ((\RBEC (0x46) & 0x04))
                    {
                        Return (0x01)
                    }
                    Else
                    {
                        Return (0x00)
                    }
                }
                Else
                {
                    Return (0x01)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                If (\LWCP)
                {
                    Return (Package (0x02)
                    {
                        0x17, 
                        0x04
                    })
                }
                Else
                {
                    Return (Package (0x02)
                    {
                        0x17, 
                        0x03
                    })
                }
            }

            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (\H8DR)
                {
                    If (Arg0)
                    {
                        \_SB.PCI0.LPC.EC.HWLO = 0x01
                    }
                    Else
                    {
                        \_SB.PCI0.LPC.EC.HWLO = 0x00
                    }
                }
                ElseIf (Arg0)
                {
                    \MBEC (0x32, 0xFF, 0x04)
                }
                Else
                {
                    \MBEC (0x32, 0xFB, 0x00)
                }

                If (\LWCP)
                {
                    If (Arg0)
                    {
                        \LWEN = 0x01
                    }
                    Else
                    {
                        \LWEN = 0x00
                    }
                }
            }
        }

        Device (SLPB)
        {
            Name (_HID, EisaId ("PNP0C0E") /* Sleep Button Device */)  // _HID: Hardware ID
            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (Package (0x02)
                {
                    0x17, 
                    0x03
                })
            }

            Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
            {
                If (\H8DR)
                {
                    If (Arg0)
                    {
                        \_SB.PCI0.LPC.EC.HWFN = 0x01
                        \_SB.PCI0.LPC.EC.HWLU = 0x01
                    }
                    Else
                    {
                        \_SB.PCI0.LPC.EC.HWFN = 0x00
                        \_SB.PCI0.LPC.EC.HWLU = 0x00
                    }
                }
                ElseIf (Arg0)
                {
                    \MBEC (0x32, 0xFF, 0x10)
                    \MBEC (0x33, 0xFE, 0x01)
                }
                Else
                {
                    \MBEC (0x32, 0xEF, 0x00)
                    \MBEC (0x33, 0xFE, 0x00)
                }
            }
        }

        Scope (\_SB)
        {
            Device (LWMI)
            {
                Name (_HID, "PNP0C14" /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
                Name (_UID, 0x00)  // _UID: Unique ID
                Name (_WDG, Buffer (0x78)
                {
                    /* 0000 */  0x0F, 0x32, 0x64, 0x59, 0xD7, 0xA1, 0x4B, 0x40,  // .2dY..K@
                    /* 0008 */  0xA1, 0x31, 0x1E, 0x5C, 0xFE, 0x46, 0xFA, 0x47,  // .1.\.F.G
                    /* 0010 */  0x41, 0x41, 0x01, 0x00, 0x7E, 0x04, 0xA1, 0xBE,  // AA..~...
                    /* 0018 */  0x86, 0x7E, 0xEC, 0x49, 0xA6, 0x8B, 0x80, 0xB6,  // .~.I....
                    /* 0020 */  0xE7, 0x56, 0x78, 0x5E, 0x42, 0x42, 0x01, 0x02,  // .Vx^BB..
                    /* 0028 */  0x66, 0x8E, 0x31, 0xCE, 0x90, 0x8F, 0x63, 0x4E,  // f.1...cN
                    /* 0030 */  0xB1, 0x27, 0xE4, 0x40, 0x62, 0xF3, 0x2C, 0x72,  // .'.@b.,r
                    /* 0038 */  0x42, 0x43, 0x01, 0x02, 0x46, 0x71, 0x3C, 0xF1,  // BC..Fq<.
                    /* 0040 */  0xF3, 0xCC, 0x2D, 0x46, 0xAB, 0xB9, 0x15, 0x02,  // ..-F....
                    /* 0048 */  0x38, 0xBE, 0x03, 0xB5, 0xA0, 0x00, 0x01, 0x08,  // 8.......
                    /* 0050 */  0x96, 0x92, 0xDC, 0xA6, 0xF7, 0xC0, 0x23, 0x47,  // ......#G
                    /* 0058 */  0xB2, 0x99, 0xA4, 0x6B, 0x0B, 0xF6, 0x6B, 0x53,  // ...k..kS
                    /* 0060 */  0xA1, 0x00, 0x01, 0x08, 0x21, 0x12, 0x90, 0x05,  // ....!...
                    /* 0068 */  0x66, 0xD5, 0xD1, 0x11, 0xB2, 0xF0, 0x00, 0xA0,  // f.......
                    /* 0070 */  0xC9, 0x06, 0x29, 0x10, 0x4D, 0x4F, 0x01, 0x00   // ..).MO..
                })
                Method (WQAA, 1, NotSerialized)
                {
                    If ((Arg0 == 0x00))
                    {
                        Return (Package (0x01)
                        {
                            "AIZS1"
                        })
                    }
                }

                Method (WMBB, 3, NotSerialized)
                {
                    If ((Arg0 == 0x00))
                    {
                        If ((Arg1 == 0x01))
                        {
                            If ((\_SB.PCI0.LPC.EC.PTRG == 0x00))
                            {
                                Return (0x10)
                            }
                            Else
                            {
                                Return (0x11)
                            }
                        }
                    }

                    Return (0x00)
                }

                Method (WMBC, 3, NotSerialized)
                {
                    If ((Arg0 == 0x00))
                    {
                        If ((Arg1 == 0x01))
                        {
                            If ((\_SB.PCI0.LPC.EC.CMMD == 0x06))
                            {
                                Return (0x20)
                            }
                            Else
                            {
                                Return (0x1F)
                            }
                        }
                    }

                    Return (0x00)
                }

                Method (_WED, 1, NotSerialized)  // _Wxx: Wake Event, xx=0x00-0xFF
                {
                    If ((Arg0 == 0xA0))
                    {
                        If ((\_SB.PCI0.LPC.EC.PTRG == 0x00))
                        {
                            Return (0x10)
                        }
                        Else
                        {
                            Return (0x11)
                        }
                    }

                    If ((Arg0 == 0xA1))
                    {
                        If ((\_SB.PCI0.LPC.EC.CMMD == 0x06))
                        {
                            Return (0x20)
                        }
                        Else
                        {
                            Return (0x1F)
                        }
                    }

                    Return (0x00)
                }

                Name (WQMO, Buffer (0x054A)
                {
                    /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  // FOMB....
                    /* 0008 */  0x3A, 0x05, 0x00, 0x00, 0x54, 0x1A, 0x00, 0x00,  // :...T...
                    /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  // DS...}.T
                    /* 0018 */  0x18, 0xCE, 0x8C, 0x00, 0x01, 0x06, 0x18, 0x42,  // .......B
                    /* 0020 */  0x10, 0x0D, 0x10, 0x22, 0x21, 0x04, 0x12, 0x01,  // ..."!...
                    /* 0028 */  0xA1, 0xC8, 0x2C, 0x0C, 0x86, 0x10, 0x38, 0x2E,  // ..,...8.
                    /* 0030 */  0x84, 0x1C, 0x40, 0x48, 0x1C, 0x14, 0x4A, 0x08,  // ..@H..J.
                    /* 0038 */  0x84, 0xFA, 0x13, 0xC8, 0xAF, 0x00, 0x84, 0x0E,  // ........
                    /* 0040 */  0x05, 0xC8, 0x14, 0x60, 0x50, 0x80, 0x53, 0x04,  // ...`P.S.
                    /* 0048 */  0x11, 0xF4, 0x2A, 0xC0, 0xA6, 0x00, 0x93, 0x02,  // ..*.....
                    /* 0050 */  0x2C, 0x0A, 0xD0, 0x2E, 0xC0, 0xB2, 0x00, 0xDD,  // ,.......
                    /* 0058 */  0x02, 0xA4, 0xC3, 0x12, 0x91, 0xE0, 0x28, 0x31,  // ......(1
                    /* 0060 */  0xE0, 0x28, 0x9D, 0xD8, 0xC2, 0x0D, 0x1B, 0xBC,  // .(......
                    /* 0068 */  0x50, 0x14, 0xCD, 0x20, 0x4A, 0x82, 0xCA, 0x05,  // P.. J...
                    /* 0070 */  0xF8, 0x46, 0x10, 0x78, 0xB9, 0x02, 0x24, 0x4F,  // .F.x..$O
                    /* 0078 */  0x40, 0x9A, 0x05, 0x18, 0x16, 0x60, 0x5D, 0x80,  // @....`].
                    /* 0080 */  0xEC, 0x21, 0x50, 0xA9, 0x43, 0x40, 0xC9, 0x19,  // .!P.C@..
                    /* 0088 */  0x02, 0x6A, 0x00, 0xAD, 0x4E, 0x40, 0xF8, 0x95,  // .j..N@..
                    /* 0090 */  0x4E, 0x09, 0x49, 0x10, 0xCE, 0x58, 0xC5, 0xE3,  // N.I..X..
                    /* 0098 */  0x6B, 0x16, 0x4D, 0xCF, 0x49, 0xCE, 0x31, 0xE4,  // k.M.I.1.
                    /* 00A0 */  0x78, 0x5C, 0xE8, 0x41, 0x70, 0x69, 0x12, 0x40,  // x\.Api.@
                    /* 00A8 */  0x98, 0xF4, 0x21, 0x4B, 0x0C, 0x0C, 0x6A, 0xDC,  // ..!K..j.
                    /* 00B0 */  0x1E, 0x8B, 0x5D, 0x8C, 0x1A, 0x35, 0x52, 0x36,  // ..]..5R6
                    /* 00B8 */  0x20, 0x43, 0x94, 0x04, 0x87, 0x1A, 0xB5, 0x25,  //  C.....%
                    /* 00C0 */  0x0A, 0x30, 0x3F, 0x0E, 0xCD, 0xAE, 0xED, 0xB1,  // .0?.....
                    /* 00C8 */  0x10, 0x48, 0x26, 0x6D, 0x28, 0x28, 0x29, 0x10,  // .H&m(().
                    /* 00D0 */  0x1A, 0xDB, 0x99, 0x7A, 0x46, 0x11, 0x8F, 0xD4,  // ...zF...
                    /* 00D8 */  0x30, 0x09, 0x3C, 0x0A, 0x86, 0xC6, 0x09, 0x8A,  // 0.<.....
                    /* 00E0 */  0x1D, 0x3D, 0x7A, 0x18, 0x51, 0x0F, 0xF0, 0x24,  // .=z.Q..$
                    /* 00E8 */  0x4E, 0xD1, 0xC2, 0xC7, 0x27, 0x8C, 0xA0, 0x87,  // N...'...
                    /* 00F0 */  0x92, 0xE0, 0x64, 0xCF, 0xFB, 0x5C, 0xA2, 0x45,  // ..d..\.E
                    /* 00F8 */  0x28, 0x08, 0x49, 0x83, 0x8F, 0x71, 0x04, 0x6D,  // (.I..q.m
                    /* 0100 */  0x0D, 0x58, 0x13, 0x35, 0x54, 0xA4, 0xC0, 0x91,  // .X.5T...
                    /* 0108 */  0xCE, 0x24, 0x62, 0xE4, 0x10, 0x09, 0x8C, 0x9B,  // .$b.....
                    /* 0110 */  0xE0, 0xFF, 0x7F, 0x18, 0x5C, 0x06, 0x84, 0x3C,  // ....\..<
                    /* 0118 */  0x8E, 0x5F, 0xC3, 0x39, 0x8F, 0x04, 0x76, 0x2F,  // ._.9..v/
                    /* 0120 */  0xC0, 0x9A, 0x00, 0x73, 0x02, 0xB4, 0x0D, 0x4E,  // ...s...N
                    /* 0128 */  0xCE, 0x04, 0x28, 0x13, 0x20, 0x4C, 0x80, 0xC6,  // ..(. L..
                    /* 0130 */  0x29, 0xE8, 0x0E, 0xD0, 0x18, 0x9E, 0xBC, 0xA1,  // ).......
                    /* 0138 */  0x08, 0x2B, 0x52, 0x88, 0x0A, 0xA1, 0x28, 0x62,  // .+R...(b
                    /* 0140 */  0x88, 0x28, 0x21, 0xDE, 0x01, 0x42, 0x1F, 0x51,  // .(!..B.Q
                    /* 0148 */  0xD4, 0x20, 0xE1, 0xA2, 0x07, 0x09, 0x17, 0x24,  // . .....$
                    /* 0150 */  0x6E, 0xFB, 0xA7, 0x00, 0x76, 0x78, 0x40, 0x8F,  // n...vx@.
                    /* 0158 */  0xE7, 0xA0, 0x4E, 0xF0, 0x90, 0x82, 0x9C, 0x57,  // ..N....W
                    /* 0160 */  0x02, 0x4F, 0xF6, 0xD0, 0x1E, 0x15, 0xCE, 0xE2,  // .O......
                    /* 0168 */  0xC5, 0xE0, 0x38, 0x3C, 0x9D, 0x04, 0x8E, 0xA4,  // ..8<....
                    /* 0170 */  0x00, 0xA2, 0x05, 0x10, 0xC3, 0xA3, 0x8E, 0x0A,  // ........
                    /* 0178 */  0x3E, 0x11, 0x78, 0x68, 0x47, 0xE9, 0x29, 0x1A,  // >.xhG.).
                    /* 0180 */  0xE4, 0x10, 0x8E, 0xE0, 0x01, 0xE2, 0x51, 0xC0,  // ......Q.
                    /* 0188 */  0x63, 0x60, 0x77, 0x04, 0x9F, 0x2C, 0x7C, 0x36,  // c`w..,|6
                    /* 0190 */  0xC0, 0xBB, 0x06, 0xD4, 0xA5, 0xE0, 0x91, 0x80,  // ........
                    /* 0198 */  0x4D, 0x39, 0x1C, 0x66, 0xBC, 0x3E, 0x3C, 0x84,  // M9.f.><.
                    /* 01A0 */  0x3B, 0x81, 0xF3, 0x3E, 0x12, 0x06, 0x71, 0x44,  // ;..>..qD
                    /* 01A8 */  0x07, 0x87, 0x1D, 0xE6, 0xC9, 0x1C, 0xD9, 0xDB,  // ........
                    /* 01B0 */  0x44, 0xB3, 0xF7, 0x08, 0x42, 0x70, 0x3C, 0xBE,  // D...Bp<.
                    /* 01B8 */  0x42, 0x30, 0xCF, 0x90, 0x44, 0xFE, 0x20, 0x50,  // B0..D. P
                    /* 01C0 */  0x23, 0x33, 0xB4, 0x07, 0x7C, 0x5A, 0xEF, 0x05,  // #3..|Z..
                    /* 01C8 */  0x3E, 0x49, 0x98, 0xC0, 0x47, 0x04, 0x6F, 0x52,  // >I..G.oR
                    /* 01D0 */  0xE3, 0x01, 0x02, 0x8A, 0x8F, 0x1D, 0x64, 0xFA,  // ......d.
                    /* 01D8 */  0x9E, 0xAF, 0x09, 0x86, 0x1F, 0x38, 0x1A, 0xDA,  // .....8..
                    /* 01E0 */  0xF7, 0x07, 0xA6, 0x1A, 0x52, 0x23, 0x32, 0xC1,  // ....R#2.
                    /* 01E8 */  0xA8, 0x10, 0xFA, 0x62, 0x58, 0xD4, 0xB8, 0xE9,  // ...bX...
                    /* 01F0 */  0x81, 0x82, 0xFF, 0xFF, 0xCF, 0x12, 0xEF, 0x15,  // ........
                    /* 01F8 */  0xBE, 0x25, 0xBC, 0x35, 0xB0, 0xA1, 0x9C, 0x91,  // .%.5....
                    /* 0200 */  0xFF, 0x2B, 0x1E, 0x19, 0xFC, 0x03, 0x09, 0xEE,  // .+......
                    /* 0208 */  0x54, 0x01, 0xF7, 0x44, 0xF2, 0xA8, 0xE0, 0xEB,  // T..D....
                    /* 0210 */  0x40, 0xF4, 0x20, 0xBD, 0x23, 0x69, 0x18, 0xF1,  // @. .#i..
                    /* 0218 */  0x4E, 0x0B, 0x07, 0x14, 0x23, 0xCE, 0xF3, 0x86,  // N...#...
                    /* 0220 */  0x4F, 0x03, 0x60, 0x94, 0x77, 0xA2, 0x01, 0x05,  // O.`.w...
                    /* 0228 */  0xFA, 0x03, 0x07, 0x6E, 0xA8, 0xFC, 0x48, 0x03,  // ...n..H.
                    /* 0230 */  0x4C, 0x46, 0xC0, 0xC3, 0x3D, 0x2D, 0x4C, 0x20,  // LF..=-L 
                    /* 0238 */  0xF1, 0xEB, 0x97, 0xA8, 0x87, 0x00, 0x85, 0xF1,  // ........
                    /* 0240 */  0xE9, 0x05, 0x78, 0x8F, 0xED, 0xC1, 0x00, 0x2C,  // ..x....,
                    /* 0248 */  0xFF, 0xFF, 0xD3, 0x0B, 0x38, 0x8E, 0x21, 0x46,  // ....8.!F
                    /* 0250 */  0x2E, 0xFA, 0x68, 0x40, 0x8E, 0x2F, 0x60, 0xB8,  // ..h@./`.
                    /* 0258 */  0xB5, 0x1C, 0xFD, 0x5B, 0x8B, 0x2F, 0x2E, 0xBE,  // ...[./..
                    /* 0260 */  0xAF, 0x84, 0x39, 0x87, 0x18, 0x3E, 0x3C, 0xBD,  // ..9..><.
                    /* 0268 */  0xB4, 0x3C, 0xBE, 0xF8, 0x9A, 0x12, 0xE6, 0x68,  // .<.....h
                    /* 0270 */  0x1E, 0x5F, 0x0C, 0x14, 0xEA, 0x05, 0xC6, 0x18,  // ._......
                    /* 0278 */  0x51, 0x83, 0xC4, 0x09, 0x16, 0xF4, 0x01, 0x26,  // Q......&
                    /* 0280 */  0x48, 0x8C, 0x48, 0x41, 0xE2, 0x3C, 0xBE, 0x80,  // H.HA.<..
                    /* 0288 */  0x39, 0xD8, 0x71, 0x40, 0x67, 0x0D, 0x1F, 0x5F,  // 9.q@g.._
                    /* 0290 */  0x00, 0x7E, 0x08, 0x84, 0xD0, 0xFF, 0xFF, 0x00,  // .~......
                    /* 0298 */  0x02, 0xB6, 0x39, 0xBC, 0x32, 0xE0, 0x4E, 0x20,  // ..9.2.N 
                    /* 02A0 */  0xC0, 0x43, 0xFE, 0x3A, 0x75, 0x9A, 0xB1, 0x74,  // .C.:u..t
                    /* 02A8 */  0x10, 0xD9, 0x58, 0xA9, 0x07, 0x45, 0xC5, 0x52,  // ..X..E.R
                    /* 02B0 */  0xE9, 0x1C, 0x71, 0x32, 0x3E, 0x9E, 0xA0, 0xA0,  // ..q2>...
                    /* 02B8 */  0x74, 0xB6, 0xE3, 0xF2, 0x28, 0x24, 0x0E, 0x42,  // t...($.B
                    /* 02C0 */  0xC3, 0xF1, 0x91, 0x8D, 0xC0, 0x51, 0x10, 0x0F,  // .....Q..
                    /* 02C8 */  0xDE, 0xA7, 0x1D, 0x3B, 0x39, 0x07, 0xA0, 0x46,  // ...;9..F
                    /* 02D0 */  0xEF, 0xD9, 0x1C, 0x03, 0x26, 0xDA, 0xA9, 0x87,  // ....&...
                    /* 02D8 */  0x1E, 0x16, 0xF0, 0x43, 0x8B, 0x79, 0x5A, 0x9E,  // ...C.yZ.
                    /* 02E0 */  0x85, 0x6F, 0x19, 0x3E, 0x82, 0x80, 0xC3, 0x27,  // .o.>...'
                    /* 02E8 */  0x34, 0x41, 0x8A, 0xE1, 0x0D, 0xC6, 0x78, 0x51,  // 4A....xQ
                    /* 02F0 */  0x30, 0xCA, 0xF3, 0x97, 0x07, 0xC2, 0x4E, 0x43,  // 0.....NC
                    /* 02F8 */  0x7C, 0x0C, 0x3E, 0x7B, 0x70, 0x02, 0x9F, 0x0E,  // |.>{p...
                    /* 0300 */  0xE0, 0x4F, 0x01, 0x7B, 0x3A, 0x00, 0x0B, 0x90,  // .O.{:...
                    /* 0308 */  0xAF, 0x03, 0x3E, 0x38, 0x3C, 0x12, 0xB0, 0x39,  // ..>8<..9
                    /* 0310 */  0x3C, 0xF4, 0xF9, 0xC8, 0xC7, 0xE0, 0xB9, 0x88,  // <.......
                    /* 0318 */  0x91, 0xEB, 0x73, 0xE3, 0xFF, 0xBF, 0xAC, 0x71,  // ..s....q
                    /* 0320 */  0xA1, 0x06, 0xEA, 0x43, 0x13, 0x3B, 0x2A, 0xE0,  // ...C.;*.
                    /* 0328 */  0x4E, 0x4D, 0x18, 0x58, 0x0F, 0x9D, 0xC3, 0x1A,  // NM.X....
                    /* 0330 */  0x2D, 0xEC, 0xC9, 0x3E, 0x44, 0xF8, 0x02, 0xE2,  // -..>D...
                    /* 0338 */  0x99, 0x19, 0x23, 0xAC, 0x8F, 0x1E, 0xE0, 0x00,  // ..#.....
                    /* 0340 */  0xC4, 0x0F, 0xE7, 0x25, 0xC0, 0x13, 0x30, 0x20,  // ...%..0 
                    /* 0348 */  0x1B, 0xCF, 0xE3, 0x00, 0x58, 0xA6, 0x86, 0x1B,  // ....X...
                    /* 0350 */  0xC5, 0x63, 0xC4, 0xCB, 0x0D, 0x3B, 0x87, 0xC4,  // .c...;..
                    /* 0358 */  0xF2, 0x19, 0x07, 0xCE, 0x79, 0x85, 0x41, 0x3C,  // ....y.A<
                    /* 0360 */  0x06, 0x44, 0x49, 0xE0, 0x88, 0xC7, 0x23, 0x2A,  // .DI...#*
                    /* 0368 */  0x7F, 0xA1, 0x12, 0xB6, 0x64, 0x0A, 0xE3, 0xE3,  // ....d...
                    /* 0370 */  0x11, 0xF0, 0x16, 0x7C, 0x3C, 0x02, 0xF1, 0x10,  // ...|<...
                    /* 0378 */  0x5E, 0x42, 0x18, 0xE2, 0xD1, 0x86, 0x79, 0x0A,  // ^B....y.
                    /* 0380 */  0x63, 0xE7, 0x23, 0x30, 0xFC, 0xFF, 0xCF, 0x47,  // c.#0...G
                    /* 0388 */  0xD8, 0xB3, 0x89, 0xEF, 0x88, 0xBE, 0x10, 0x05,  // ........
                    /* 0390 */  0x79, 0x25, 0x7A, 0x39, 0x32, 0xCA, 0x23, 0xE2,  // y%z92.#.
                    /* 0398 */  0x5B, 0xD0, 0x9B, 0xC5, 0xF3, 0x91, 0xA1, 0x8C,  // [.......
                    /* 03A0 */  0x17, 0xE5, 0xDD, 0x28, 0xE2, 0x3B, 0xC5, 0x23,  // ...(.;.#
                    /* 03A8 */  0xA3, 0xAF, 0x8A, 0x3E, 0x0E, 0x19, 0x2C, 0x50,  // ...>..,P
                    /* 03B0 */  0xD0, 0x27, 0x0B, 0x4F, 0x20, 0x58, 0x8C, 0xE7,  // .'.O X..
                    /* 03B8 */  0x23, 0x30, 0x47, 0x3B, 0x1F, 0x01, 0x34, 0x39,  // #0G;..49
                    /* 03C0 */  0xD6, 0xE0, 0x8E, 0x2C, 0xF0, 0x2E, 0x0D, 0x98,  // ...,....
                    /* 03C8 */  0x43, 0x03, 0x3F, 0x20, 0xC1, 0xF8, 0xFF, 0x1F,  // C.? ....
                    /* 03D0 */  0x90, 0x80, 0x43, 0x80, 0x03, 0x12, 0x15, 0x7F,  // ..C.....
                    /* 03D8 */  0x40, 0x02, 0xA8, 0x26, 0xE3, 0x80, 0x04, 0x34,  // @..&...4
                    /* 03E0 */  0xFE, 0xFF, 0x07, 0x24, 0xE0, 0x75, 0x94, 0xC1,  // ...$.u..
                    /* 03E8 */  0x1D, 0x90, 0xC0, 0x7C, 0xCA, 0x81, 0x75, 0x42,  // ...|..uB
                    /* 03F0 */  0xC2, 0x4B, 0x3F, 0x99, 0xA3, 0xC4, 0x1E, 0xCE,  // .K?.....
                    /* 03F8 */  0x01, 0x9D, 0x30, 0x2F, 0xF6, 0x98, 0xF3, 0x11,  // ..0/....
                    /* 0400 */  0xEC, 0x03, 0xD1, 0x2B, 0xB9, 0x0F, 0x44, 0x06,  // ...+..D.
                    /* 0408 */  0x79, 0x20, 0xF7, 0x14, 0xC2, 0xBC, 0x93, 0xFB,  // y ......
                    /* 0410 */  0x72, 0x64, 0x20, 0x1F, 0x28, 0xA2, 0x3E, 0x8E,  // rd .(.>.
                    /* 0418 */  0xFA, 0x7E, 0x14, 0xE1, 0x59, 0xE8, 0xE1, 0xDC,  // .~..Y...
                    /* 0420 */  0x37, 0xD1, 0xF7, 0x8B, 0xFF, 0x7F, 0xAC, 0x80,  // 7.......
                    /* 0428 */  0x8F, 0xA4, 0xBE, 0x48, 0x84, 0x89, 0x12, 0x24,  // ...H...$
                    /* 0430 */  0xD4, 0xF3, 0x11, 0x98, 0x23, 0xBF, 0x4E, 0x74,  // ....#.Nt
                    /* 0438 */  0x1A, 0xF0, 0xF9, 0x08, 0x78, 0xB8, 0x3C, 0x1F,  // ....x.<.
                    /* 0440 */  0x01, 0x5A, 0x83, 0x1F, 0x73, 0x20, 0x01, 0x1F,  // .Z..s ..
                    /* 0448 */  0xEB, 0x7B, 0xC3, 0xE9, 0x38, 0xE8, 0xD9, 0x1C,  // .{..8...
                    /* 0450 */  0xE8, 0xCC, 0xE8, 0xA1, 0x02, 0xE6, 0xFF, 0xFF,  // ........
                    /* 0458 */  0x50, 0x81, 0xBB, 0x4F, 0xC0, 0x85, 0x09, 0x71,  // P..O...q
                    /* 0460 */  0x60, 0xFC, 0xB4, 0x03, 0x9C, 0x8E, 0xB2, 0xD8,  // `.......
                    /* 0468 */  0x19, 0xBC, 0x6D, 0x60, 0x8E, 0x56, 0xC0, 0xE4,  // ..m`.V..
                    /* 0470 */  0xCC, 0x84, 0x3B, 0x4B, 0x78, 0x08, 0x7C, 0x00,  // ..;Kx.|.
                    /* 0478 */  0x8F, 0x20, 0xA7, 0xE7, 0xE1, 0x9F, 0x14, 0xEE,  // . ......
                    /* 0480 */  0x98, 0xC2, 0xC7, 0x84, 0x1D, 0x00, 0x0F, 0x70,  // .......p
                    /* 0488 */  0x94, 0xA1, 0x27, 0x75, 0x4B, 0x86, 0x41, 0x1D,  // ..'uK.A.
                    /* 0490 */  0xD6, 0x01, 0x5F, 0xFF, 0xFF, 0x93, 0x10, 0xBC,  // .._.....
                    /* 0498 */  0xE3, 0x0C, 0x98, 0xAE, 0xE8, 0x86, 0x39, 0x8C,  // ......9.
                    /* 04A0 */  0x27, 0x96, 0x77, 0x85, 0x10, 0x8F, 0x33, 0xEC,  // '.w...3.
                    /* 04A8 */  0xE2, 0xF0, 0x38, 0xF3, 0xE0, 0xE8, 0x0B, 0xBB,  // ..8.....
                    /* 04B0 */  0x2F, 0x32, 0x3E, 0x3D, 0x1A, 0xCF, 0xC7, 0x19,  // /2>=....
                    /* 04B8 */  0x03, 0xBF, 0xD3, 0x18, 0xE8, 0x6D, 0xDD, 0x98,  // .....m..
                    /* 04C0 */  0x6F, 0x92, 0xBE, 0xCD, 0x18, 0xF2, 0x71, 0x06,  // o.....q.
                    /* 04C8 */  0xCC, 0xB1, 0x8F, 0x33, 0x00, 0x4D, 0xA2, 0x1F,  // ...3.M..
                    /* 04D0 */  0x67, 0xA0, 0xFC, 0xFF, 0x8F, 0x33, 0xB8, 0xC3,  // g....3..
                    /* 04D8 */  0xA0, 0x8F, 0x33, 0xC0, 0x65, 0x1A, 0x4F, 0x6C,  // ..3.e.Ol
                    /* 04E0 */  0xE0, 0xB9, 0x50, 0xC0, 0x3E, 0xCF, 0x80, 0xFB,  // ..P.>...
                    /* 04E8 */  0xE8, 0x09, 0xD6, 0x03, 0x0D, 0x60, 0x48, 0xA1,  // .....`H.
                    /* 04F0 */  0x4D, 0x9F, 0x1A, 0x8D, 0x5A, 0x35, 0x28, 0x53,  // M...Z5(S
                    /* 04F8 */  0xA3, 0x4C, 0x83, 0x5A, 0x7D, 0x2A, 0x35, 0x66,  // .L.Z}*5f
                    /* 0500 */  0xCC, 0xC8, 0xB8, 0xFC, 0x3A, 0xD0, 0xF1, 0xC0,  // ....:...
                    /* 0508 */  0x51, 0x40, 0x68, 0x8C, 0x37, 0x82, 0x40, 0x2C,  // Q@h.7.@,
                    /* 0510 */  0xD4, 0x03, 0x08, 0x8B, 0x09, 0x42, 0x25, 0x9B,  // .....B%.
                    /* 0518 */  0x80, 0x08, 0xEC, 0x00, 0x20, 0xFA, 0xFF, 0x03,  // .... ...
                    /* 0520 */  0x59, 0x86, 0x0D, 0x10, 0x16, 0x02, 0x84, 0x4A,  // Y......J
                    /* 0528 */  0xF2, 0x01, 0xC8, 0x04, 0x82, 0x08, 0xC8, 0x21,  // .......!
                    /* 0530 */  0x95, 0x80, 0x30, 0x89, 0xEF, 0x07, 0x81, 0x58,  // ..0....X
                    /* 0538 */  0xDA, 0xAB, 0x41, 0x20, 0x16, 0xE8, 0x05, 0x84,  // ..A ....
                    /* 0540 */  0xC5, 0x03, 0xA1, 0xC1, 0xD6, 0x2D, 0x10, 0xFF,  // .....-..
                    /* 0548 */  0xFF, 0x01                                       // ..
                })
            }
        }

        Device (PCI0)
        {
            Name (_BBN, 0x00)  // _BBN: BIOS Bus Number
            Name (_ADR, 0x00)  // _ADR: Address
            Name (RID, 0x00)
            Name (_S3D, 0x02)  // _S3D: S3 Device State
            Name (LRRT, Package (0x24)
            {
                Package (0x04)
                {
                    0x0001FFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x01, 
                    \_SB.LNKB, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x02, 
                    \_SB.LNKC, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x03, 
                    \_SB.LNKD, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0004FFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0005FFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0008FFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0013FFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    0x01, 
                    \_SB.LNKB, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    0x02, 
                    \_SB.LNKC, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    0x03, 
                    \_SB.LNKD, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x01, 
                    \_SB.LNKB, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x02, 
                    \_SB.LNKC, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x03, 
                    \_SB.LNKD, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x0017FFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x01, 
                    \_SB.LNKB, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x02, 
                    \_SB.LNKC, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x03, 
                    \_SB.LNKD, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x01, 
                    \_SB.LNKB, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x02, 
                    \_SB.LNKC, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x03, 
                    \_SB.LNKD, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001EFFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001EFFFF, 
                    0x01, 
                    \_SB.LNKB, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001EFFFF, 
                    0x02, 
                    \_SB.LNKC, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001EFFFF, 
                    0x03, 
                    \_SB.LNKD, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x00, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x01, 
                    \_SB.LNKB, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x02, 
                    \_SB.LNKC, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x03, 
                    \_SB.LNKD, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x04, 
                    \_SB.LNKA, 
                    0x00
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x06, 
                    \_SB.LNKC, 
                    0x00
                }
            })
            Name (ARRT, Package (0x2B)
            {
                Package (0x04)
                {
                    0x0001FFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x01, 
                    0x00, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x02, 
                    0x00, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x03, 
                    0x00, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0004FFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0005FFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0008FFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0013FFFF, 
                    0x00, 
                    0x00, 
                    0x14
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    0x01, 
                    0x00, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    0x02, 
                    0x00, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0014FFFF, 
                    0x03, 
                    0x00, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x0015FFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0015FFFF, 
                    0x01, 
                    0x00, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0015FFFF, 
                    0x02, 
                    0x00, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0015FFFF, 
                    0x03, 
                    0x00, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x01, 
                    0x00, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x02, 
                    0x00, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0016FFFF, 
                    0x03, 
                    0x00, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x0017FFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0019FFFF, 
                    0x00, 
                    0x00, 
                    0x20
                }, 

                Package (0x04)
                {
                    0x0019FFFF, 
                    0x01, 
                    0x00, 
                    0x21
                }, 

                Package (0x04)
                {
                    0x0019FFFF, 
                    0x02, 
                    0x00, 
                    0x22
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x01, 
                    0x00, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x02, 
                    0x00, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x03, 
                    0x00, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x01, 
                    0x00, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x02, 
                    0x00, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x03, 
                    0x00, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001EFFFF, 
                    0x00, 
                    0x00, 
                    0x14
                }, 

                Package (0x04)
                {
                    0x001EFFFF, 
                    0x01, 
                    0x00, 
                    0x15
                }, 

                Package (0x04)
                {
                    0x001EFFFF, 
                    0x02, 
                    0x00, 
                    0x16
                }, 

                Package (0x04)
                {
                    0x001EFFFF, 
                    0x03, 
                    0x00, 
                    0x17
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x00, 
                    0x00, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x01, 
                    0x00, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x02, 
                    0x00, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x03, 
                    0x00, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x04, 
                    0x00, 
                    0x14
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    0x06, 
                    0x00, 
                    0x16
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (\GPIC)
                {
                    ADBG ("APIC mode")
                    Return (ARRT) /* \_SB_.PCI0.ARRT */
                }
                Else
                {
                    ADBG ("8259 mode")
                    Return (LRRT) /* \_SB_.PCI0.LRRT */
                }
            }

            Name (_HID, EisaId ("PNP0A08") /* PCI Express Bus */)  // _HID: Hardware ID
            Name (_CID, EisaId ("PNP0A03") /* PCI Bus */)  // _CID: Compatible ID
            OperationRegion (MHCS, PCI_Config, 0x40, 0xC0)
            Field (MHCS, DWordAcc, NoLock, Preserve)
            {
                Offset (0x40), 
                PAM0,   8, 
                PAM1,   8, 
                PAM2,   8, 
                PAM3,   8, 
                PAM4,   8, 
                PAM5,   8, 
                PAM6,   8, 
                Offset (0x7C), 
                    ,   20, 
                TLUD,   12
            }

            Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    ,, _Y22)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x0CF7,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0CF8,             // Length
                    ,, , TypeStatic, DenseTranslation)
                WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x0000,             // Granularity
                    0x0D00,             // Range Minimum
                    0xFFFF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0xF300,             // Length
                    ,, , TypeStatic, DenseTranslation)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000C3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y15, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C4000,         // Range Minimum
                    0x000C7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y16, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C8000,         // Range Minimum
                    0x000CBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y17, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000CC000,         // Range Minimum
                    0x000CFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y18, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D0000,         // Range Minimum
                    0x000D3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y19, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D4000,         // Range Minimum
                    0x000D7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y1A, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D8000,         // Range Minimum
                    0x000DBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y1B, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000DC000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y1C, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000E3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y1D, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E4000,         // Range Minimum
                    0x000E7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y1E, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E8000,         // Range Minimum
                    0x000EBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y1F, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000EC000,         // Range Minimum
                    0x000EFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    ,, _Y20, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00100000,         // Range Minimum
                    0xFEBFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0xFEB00000,         // Length
                    ,, _Y21, AddressRangeMemory, TypeStatic)
            })
            CreateDWordField (_CRS, \_SB.PCI0._Y15._LEN, C0LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y16._LEN, C4LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y17._LEN, C8LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y18._LEN, CCLN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y19._LEN, D0LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y1A._LEN, D4LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y1B._LEN, D8LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y1C._LEN, DCLN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y1D._LEN, E0LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y1E._LEN, E4LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y1F._LEN, E8LN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y20._LEN, ECLN)  // _LEN: Length
            CreateDWordField (_CRS, \_SB.PCI0._Y21._MIN, XXMN)  // _MIN: Minimum Base Address
            CreateDWordField (_CRS, \_SB.PCI0._Y21._MAX, XXMX)  // _MAX: Maximum Base Address
            CreateDWordField (_CRS, \_SB.PCI0._Y21._LEN, XXLN)  // _LEN: Length
            CreateWordField (_CRS, \_SB.PCI0._Y22._MAX, B0MX)  // _MAX: Maximum Base Address
            CreateWordField (_CRS, \_SB.PCI0._Y22._LEN, B0LN)  // _LEN: Length
            Method (_INI, 0, Serialized)  // _INI: Initialize
            {
                B0MX = 0x3F
                B0LN = (0x3F + 0x01)
                If (!\OSIF)
                {
                    \_SB._INI ()
                }

                Local0 = (TLUD << 0x14)
                \MEMX = Local0
                XXMN = Local0
                XXLN = ((XXMX - XXMN) + 0x01)
                If ((PAM1 & 0x03))
                {
                    C0LN = 0x00
                }

                If ((PAM1 & 0x30))
                {
                    C4LN = 0x00
                }

                If ((PAM2 & 0x03))
                {
                    C8LN = 0x00
                }

                If ((PAM2 & 0x30))
                {
                    CCLN = 0x00
                }

                If ((PAM3 & 0x03))
                {
                    D0LN = 0x00
                }

                If ((PAM3 & 0x30))
                {
                    D4LN = 0x00
                }

                If ((PAM4 & 0x03))
                {
                    D8LN = 0x00
                }

                If ((PAM4 & 0x30))
                {
                    DCLN = 0x00
                }

                If ((PAM5 & 0x03))
                {
                    E0LN = 0x00
                }

                If ((PAM5 & 0x30))
                {
                    E4LN = 0x00
                }

                If ((PAM6 & 0x03))
                {
                    E8LN = 0x00
                }

                If ((PAM6 & 0x30))
                {
                    ECLN = 0x00
                }
            }

            Name (SUPP, 0x00)
            Name (CTRL, 0x00)
            Method (_OSC, 4, NotSerialized)  // _OSC: Operating System Capabilities
            {
                CreateDWordField (Arg3, 0x00, CDW1)
                CreateDWordField (Arg3, 0x04, CDW2)
                CreateDWordField (Arg3, 0x08, CDW3)
                If ((Arg0 == ToUUID ("33db4d5b-1ff7-401c-9657-7441c03dd766") /* PCI Host Bridge Device */))
                {
                    SUPP = CDW2 /* \_SB_.PCI0._OSC.CDW2 */
                    CTRL = CDW3 /* \_SB_.PCI0._OSC.CDW3 */
                    CTRL &= 0x0D
                    If (!(CDW1 & 0x01))
                    {
                        If ((CTRL & 0x01))
                        {
                            \NHPS = 0x01
                        }

                        If ((CTRL & 0x04))
                        {
                            If (\_SB.PCI0.EXP1.PMEX)
                            {
                                \_SB.PCI0.EXP1.PMEX = 0x00
                                \_SB.PCI0.EXP1.PMSX = 0x01
                            }

                            If (\_SB.PCI0.EXP2.PMEX)
                            {
                                \_SB.PCI0.EXP2.PMEX = 0x00
                                \_SB.PCI0.EXP2.PMSX = 0x01
                            }

                            If (\_SB.PCI0.EXP3.PMEX)
                            {
                                \_SB.PCI0.EXP3.PMEX = 0x00
                                \_SB.PCI0.EXP3.PMSX = 0x01
                            }

                            If (\_SB.PCI0.EXP5.PMEX)
                            {
                                \_SB.PCI0.EXP5.PMEX = 0x00
                                \_SB.PCI0.EXP5.PMSX = 0x01
                            }

                            If (\_SB.PCI0.RP09.PMEX)
                            {
                                \_SB.PCI0.RP09.PMEX = 0x00
                                \_SB.PCI0.RP09.PMSX = 0x01
                            }

                            \_SB.PCI0.LPC.EXPE = 0x00
                            \NPME = 0x01
                        }
                    }

                    If ((Arg1 != 0x01))
                    {
                        CDW1 |= 0x0A
                    }

                    If ((CDW3 != CTRL))
                    {
                        CDW1 |= 0x10
                    }

                    CDW3 = CTRL /* \_SB_.PCI0.CTRL */
                }
                Else
                {
                    CDW1 |= 0x06
                }

                Return (Arg3)
            }

            OperationRegion (HBUS, PCI_Config, 0x00, 0x0100)
            Field (HBUS, DWordAcc, NoLock, Preserve)
            {
                Offset (0x40), 
                EPEN,   1, 
                    ,   11, 
                EPBR,   20, 
                Offset (0x48), 
                MHEN,   1, 
                    ,   14, 
                MHBR,   17, 
                Offset (0x50), 
                GCLK,   1, 
                Offset (0x60), 
                PXEN,   1, 
                PXSZ,   2, 
                    ,   23, 
                PXBR,   6, 
                Offset (0x68), 
                DIEN,   1, 
                    ,   11, 
                DIBR,   20, 
                Offset (0x70), 
                    ,   20, 
                MEBR,   12
            }

            Name (EP_B, 0x00)
            Name (MH_B, 0x00)
            Name (PC_B, 0x00)
            Name (PC_L, 0x00)
            Name (DM_B, 0x00)
            Method (GEPB, 0, Serialized)
            {
                If ((EP_B == 0x00))
                {
                    EP_B = (\_SB.PCI0.EPBR << 0x0C)
                }

                Return (EP_B) /* \_SB_.PCI0.EP_B */
            }

            Method (GMHB, 0, Serialized)
            {
                If ((MH_B == 0x00))
                {
                    MH_B = (\_SB.PCI0.MHBR << 0x0F)
                }

                Return (MH_B) /* \_SB_.PCI0.MH_B */
            }

            Method (GPCB, 0, Serialized)
            {
                If ((PC_B == 0x00))
                {
                    PC_B = (\_SB.PCI0.PXBR << 0x1A)
                }

                Return (PC_B) /* \_SB_.PCI0.PC_B */
            }

            Method (GPCL, 0, Serialized)
            {
                If ((PC_L == 0x00))
                {
                    PC_L = (0x10000000 >> \_SB.PCI0.PXSZ)
                }

                Return (PC_L) /* \_SB_.PCI0.PC_L */
            }

            Method (GDMB, 0, Serialized)
            {
                If ((DM_B == 0x00))
                {
                    DM_B = (\_SB.PCI0.DIBR << 0x0C)
                }

                Return (DM_B) /* \_SB_.PCI0.DM_B */
            }

            Scope (\_SB.PCI0)
            {
                Method (WHIT, 0, NotSerialized)
                {
                    Return (Package (0x01)
                    {
                        Package (0x05)
                        {
                            "?*", 
                            "?*", 
                            0x00, 
                            0x02, 
                            0x02
                        }
                    })
                }

                Method (SELF, 0, NotSerialized)
                {
                    Return (Package (0x02)
                    {
                        "LENOVO", 
                        "TP-N1G  "
                    })
                }
            }

            Device (LPC)
            {
                Name (_ADR, 0x001F0000)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, 0x00)
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (PCIC (Arg0))
                    {
                        Return (PCID (Arg0, Arg1, Arg2, Arg3))
                    }

                    Return (0x00)
                }

                Device (SIO)
                {
                    Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
                    Name (_UID, 0x00)  // _UID: Unique ID
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Name (BUF, ResourceTemplate ()
                        {
                            IO (Decode16,
                                0x0010,             // Range Minimum
                                0x0010,             // Range Maximum
                                0x01,               // Alignment
                                0x10,               // Length
                                )
                            IO (Decode16,
                                0x0090,             // Range Minimum
                                0x0090,             // Range Maximum
                                0x01,               // Alignment
                                0x10,               // Length
                                )
                            IO (Decode16,
                                0x0024,             // Range Minimum
                                0x0024,             // Range Maximum
                                0x01,               // Alignment
                                0x02,               // Length
                                )
                            IO (Decode16,
                                0x0028,             // Range Minimum
                                0x0028,             // Range Maximum
                                0x01,               // Alignment
                                0x02,               // Length
                                )
                            IO (Decode16,
                                0x002C,             // Range Minimum
                                0x002C,             // Range Maximum
                                0x01,               // Alignment
                                0x02,               // Length
                                )
                            IO (Decode16,
                                0x0030,             // Range Minimum
                                0x0030,             // Range Maximum
                                0x01,               // Alignment
                                0x02,               // Length
                                )
                            IO (Decode16,
                                0x0034,             // Range Minimum
                                0x0034,             // Range Maximum
                                0x01,               // Alignment
                                0x02,               // Length
                                )
                            IO (Decode16,
                                0x0038,             // Range Minimum
                                0x0038,             // Range Maximum
                                0x01,               // Alignment
                                0x02,               // Length
                                )
                            IO (Decode16,
                                0x003C,             // Range Minimum
                                0x003C,             // Range Maximum
                                0x01,               // Alignment
                                0x02,               // Length
                                )
                            IO (Decode16,
                                0x00A4,             // Range Minimum
                                0x00A4,             // Range Maximum
                                0x01,               // Alignment
                                0x02,               // Length
                                )
                            IO (Decode16,
                                0x00A8,             // Range Minimum
                                0x00A8,             // Range Maximum
                                0x01,               // Alignment
                                0x02,               // Length
                                )
                            IO (Decode16,
                                0x00AC,             // Range Minimum
                                0x00AC,             // Range Maximum
                                0x01,               // Alignment
                                0x02,               // Length
                                )
                            IO (Decode16,
                                0x00B0,             // Range Minimum
                                0x00B0,             // Range Maximum
                                0x01,               // Alignment
                                0x06,               // Length
                                )
                            IO (Decode16,
                                0x00B8,             // Range Minimum
                                0x00B8,             // Range Maximum
                                0x01,               // Alignment
                                0x02,               // Length
                                )
                            IO (Decode16,
                                0x00BC,             // Range Minimum
                                0x00BC,             // Range Maximum
                                0x01,               // Alignment
                                0x02,               // Length
                                )
                            IO (Decode16,
                                0x0050,             // Range Minimum
                                0x0050,             // Range Maximum
                                0x01,               // Alignment
                                0x04,               // Length
                                )
                            IO (Decode16,
                                0x0072,             // Range Minimum
                                0x0072,             // Range Maximum
                                0x01,               // Alignment
                                0x06,               // Length
                                )
                            IO (Decode16,
                                0x1800,             // Range Minimum
                                0x1800,             // Range Maximum
                                0x01,               // Alignment
                                0xA0,               // Length
                                )
                            IO (Decode16,
                                0x0800,             // Range Minimum
                                0x0800,             // Range Maximum
                                0x01,               // Alignment
                                0x80,               // Length
                                )
                            IO (Decode16,
                                0x0880,             // Range Minimum
                                0x0880,             // Range Maximum
                                0x01,               // Alignment
                                0x80,               // Length
                                )
                            IO (Decode16,
                                0x0900,             // Range Minimum
                                0x0900,             // Range Maximum
                                0x01,               // Alignment
                                0x80,               // Length
                                )
                            IO (Decode16,
                                0x0980,             // Range Minimum
                                0x0980,             // Range Maximum
                                0x01,               // Alignment
                                0x80,               // Length
                                )
                            IO (Decode16,
                                0x0A00,             // Range Minimum
                                0x0A00,             // Range Maximum
                                0x01,               // Alignment
                                0x80,               // Length
                                )
                            IO (Decode16,
                                0x0A80,             // Range Minimum
                                0x0A80,             // Range Maximum
                                0x01,               // Alignment
                                0x80,               // Length
                                )
                            IO (Decode16,
                                0x0B00,             // Range Minimum
                                0x0B00,             // Range Maximum
                                0x01,               // Alignment
                                0x80,               // Length
                                )
                            IO (Decode16,
                                0x0B80,             // Range Minimum
                                0x0B80,             // Range Maximum
                                0x01,               // Alignment
                                0x80,               // Length
                                )
                            IO (Decode16,
                                0x15E0,             // Range Minimum
                                0x15E0,             // Range Maximum
                                0x01,               // Alignment
                                0x10,               // Length
                                )
                            IO (Decode16,
                                0x1600,             // Range Minimum
                                0x1600,             // Range Maximum
                                0x01,               // Alignment
                                0x80,               // Length
                                )
                            IO (Decode16,
                                0x1640,             // Range Minimum
                                0x1640,             // Range Maximum
                                0x01,               // Alignment
                                0x20,               // Length
                                )
                            Memory32Fixed (ReadWrite,
                                0xF8000000,         // Address Base
                                0x04000000,         // Address Length
                                )
                            Memory32Fixed (ReadWrite,
                                0xFED10000,         // Address Base
                                0x00004000,         // Address Length
                                )
                            Memory32Fixed (ReadWrite,
                                0xFED18000,         // Address Base
                                0x00001000,         // Address Length
                                )
                            Memory32Fixed (ReadWrite,
                                0xFED19000,         // Address Base
                                0x00001000,         // Address Length
                                )
                            Memory32Fixed (ReadWrite,
                                0xFEB00000,         // Address Base
                                0x00100000,         // Address Length
                                )
                            Memory32Fixed (ReadWrite,
                                0xFED20000,         // Address Base
                                0x00020000,         // Address Length
                                )
                            Memory32Fixed (ReadOnly,
                                0xFED90000,         // Address Base
                                0x00004000,         // Address Length
                                )
                            Memory32Fixed (ReadWrite,
                                0x00000000,         // Address Base
                                0x00000000,         // Address Length
                                _Y23)
                        })
                        CreateDWordField (BUF, \_SB.PCI0.LPC.SIO._CRS._Y23._BAS, SXB)  // _BAS: Base Address
                        SXB = \SXRB
                        CreateDWordField (BUF, \_SB.PCI0.LPC.SIO._CRS._Y23._LEN, SXL)  // _LEN: Length
                        SXL = \SXRS
                        Return (BUF) /* \_SB_.PCI0.LPC_.SIO_._CRS.BUF_ */
                    }
                }

                OperationRegion (LPCS, PCI_Config, 0x00, 0x0100)
                Field (LPCS, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x60), 
                    PIRA,   8, 
                    PIRB,   8, 
                    PIRC,   8, 
                    PIRD,   8, 
                    SERQ,   8, 
                    Offset (0x68), 
                    PIRE,   8, 
                    PIRF,   8, 
                    PIRG,   8, 
                    PIRH,   8, 
                    Offset (0x80), 
                    XU1A,   3, 
                        ,   1, 
                    XU2A,   3, 
                    Offset (0x81), 
                    XPA,    2, 
                        ,   2, 
                    XFA,    1, 
                    Offset (0x82), 
                    XU1E,   1, 
                    XU2E,   1, 
                    XPE,    1, 
                    XFE,    1, 
                    Offset (0x84), 
                    XG1E,   1, 
                        ,   1, 
                    XG1A,   14, 
                    Offset (0x88), 
                    XG2E,   1, 
                        ,   1, 
                    XG2A,   14, 
                    Offset (0xA0), 
                        ,   2, 
                    CLKR,   1, 
                        ,   7, 
                    EXPE,   1, 
                    Offset (0xA2), 
                    Offset (0xAC), 
                    Offset (0xAD), 
                    Offset (0xAE), 
                    XUSB,   1, 
                    Offset (0xB8), 
                    GR00,   2, 
                        ,   10, 
                    GR06,   2
                }

                OperationRegion (GDIO, SystemMemory, 0xFDAF04C0, 0x10)
                Field (GDIO, DWordAcc, NoLock, Preserve)
                {
                        ,   30, 
                    DOI0,   1, 
                    Offset (0x04), 
                        ,   30, 
                    DOI1,   1, 
                    Offset (0x08), 
                        ,   30, 
                    DOI2,   1, 
                    Offset (0x0C), 
                        ,   30, 
                    DOI3,   1
                }

                OperationRegion (LPIO, SystemIO, 0x0800, 0x0400)
                Field (LPIO, DWordAcc, NoLock, Preserve)
                {
                    Offset (0x180), 
                        ,   3, 
                    XHPD,   1, 
                    Offset (0x1B0), 
                        ,   31, 
                    GLIS,   1, 
                    Offset (0x308), 
                    Offset (0x30C)
                }

                OperationRegion (GBIO, SystemMemory, 0xFDAF0558, 0x0C)
                Field (GBIO, DWordAcc, NoLock, Preserve)
                {
                    NFCP,   1, 
                    Offset (0x08), 
                        ,   1, 
                    NFCI,   1, 
                    Offset (0x0C)
                }

                OperationRegion (GNIO, SystemMemory, 0xFDAE0570, 0x04)
                Field (GNIO, DWordAcc, NoLock, Preserve)
                {
                        ,   1, 
                    NFCD,   1, 
                    Offset (0x04)
                }

                OperationRegion (PMIO, SystemIO, 0x1800, 0x0100)
                Field (PMIO, AnyAcc, NoLock, Preserve)
                {
                    Offset (0x2A), 
                        ,   6, 
                    XHPE,   1, 
                    Offset (0x42), 
                        ,   1, 
                    SWGE,   1, 
                    Offset (0x64), 
                        ,   9, 
                    Offset (0x8C), 
                    SCIS,   1, 
                        ,   6
                }

                Device (PIC)
                {
                    Name (_HID, EisaId ("PNP0000") /* 8259-compatible Programmable Interrupt Controller */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {2}
                    })
                }

                Device (TIMR)
                {
                    Name (_HID, EisaId ("PNP0100") /* PC-class System Timer */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {0}
                    })
                }

                Device (HPET)
                {
                    Name (_HID, EisaId ("PNP0103") /* HPET System Timer */)  // _HID: Hardware ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((\WNTF && !\WXPF))
                        {
                            Return (0x00)
                        }
                        Else
                        {
                            Return (0x0F)
                        }

                        Return (0x00)
                    }

                    Name (BUF0, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            _Y24)
                    })
                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        CreateDWordField (BUF0, \_SB.PCI0.LPC.HPET._Y24._BAS, HPT0)  // _BAS: Base Address
                        HPT0 = \HPET
                        Return (BUF0) /* \_SB_.PCI0.LPC_.HPET.BUF0 */
                    }
                }

                Device (SPKR)
                {
                    Name (_HID, EisaId ("PNP0800") /* Microsoft Sound System Compatible Device */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                    })
                }

                Device (RTC)
                {
                    Name (_HID, EisaId ("PNP0B00") /* AT Real-Time Clock */)  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {8}
                    })
                }

                Device (KBD)
                {
                    Method (_HID, 0, NotSerialized)  // _HID: Hardware ID
                    {
                        If (\WIN8)
                        {
                            Return (0x7100AE30)
                        }

                        Return (0x0303D041)
                    }

                    Name (_CID, EisaId ("PNP0303") /* IBM Enhanced Keyboard (101/102-key, PS/2 Mouse) */)  // _CID: Compatible ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {1}
                    })
                }

                Device (MOU)
                {
                    Name (_HID, EisaId ("LEN004F"))  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0F13") /* PS/2 Mouse */)  // _CID: Compatible ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IRQNoFlags ()
                            {12}
                    })
                    Method (MHID, 0, NotSerialized)
                    {
                        If (\_SB.PCI0.LPC.NFCD)
                        {
                            _HID = 0x4F00AE30
                        }
                        Else
                        {
                            _HID = 0x5C00AE30
                        }
                    }
                }

                OperationRegion (IMGA, SystemIO, 0x15E0, 0x10)
                Field (IMGA, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x01), 
                    Offset (0x02), 
                    Offset (0x03), 
                    WAKR,   16, 
                    Offset (0x0C), 
                    GAIX,   8, 
                    Offset (0x0E), 
                    GADT,   8, 
                    Offset (0x10)
                }

                IndexField (GAIX, GADT, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x60), 
                    EPWG,   1, 
                        ,   1, 
                    CSON,   1, 
                    DSCI,   1, 
                    DSCS,   1, 
                    DLAN,   1, 
                    Offset (0xC2), 
                    GAID,   8
                }

                Device (CWDT)
                {
                    Name (_HID, EisaId ("INT3F0D") /* ACPI Motherboard Resources */)  // _HID: Hardware ID
                    Name (_CID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _CID: Compatible ID
                    Name (BUF0, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x1854,             // Range Minimum
                            0x1854,             // Range Maximum
                            0x04,               // Alignment
                            0x04,               // Length
                            )
                    })
                    Method (_STA, 0, Serialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
                    {
                        Return (BUF0) /* \_SB_.PCI0.LPC_.CWDT.BUF0 */
                    }
                }

                Device (EC)
                {
                    Name (_HID, EisaId ("PNP0C09") /* Embedded Controller Device */)  // _HID: Hardware ID
                    Name (_UID, 0x00)  // _UID: Unique ID
                    Name (_GPE, 0x16)  // _GPE: General Purpose Events
                    Method (_REG, 2, NotSerialized)  // _REG: Region Availability
                    {
                        If ((Arg0 == 0x03))
                        {
                            \H8DR = Arg1
                        }
                    }

                    OperationRegion (ECOR, EmbeddedControl, 0x00, 0x0100)
                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                        HDBM,   1, 
                            ,   1, 
                            ,   1, 
                        HFNE,   1, 
                            ,   1, 
                            ,   1, 
                        HLDM,   1, 
                        Offset (0x01), 
                        BBLS,   1, 
                        BTCM,   1, 
                            ,   1, 
                            ,   1, 
                            ,   1, 
                        HBPR,   1, 
                        BTPC,   1, 
                        Offset (0x02), 
                        HDUE,   1, 
                            ,   4, 
                        SNLK,   1, 
                        Offset (0x03), 
                            ,   5, 
                        HAUM,   2, 
                        Offset (0x05), 
                        HSPA,   1, 
                        Offset (0x06), 
                        HSUN,   8, 
                        HSRP,   8, 
                        Offset (0x0C), 
                        HLCL,   8, 
                            ,   4, 
                        CALM,   1, 
                        Offset (0x0E), 
                        HFNS,   2, 
                        Offset (0x0F), 
                            ,   6, 
                        NULS,   1, 
                        Offset (0x10), 
                        HAM0,   8, 
                        HAM1,   8, 
                        HAM2,   8, 
                        HAM3,   8, 
                        HAM4,   8, 
                        HAM5,   8, 
                        HAM6,   8, 
                        HAM7,   8, 
                        HAM8,   8, 
                        HAM9,   8, 
                        HAMA,   8, 
                        HAMB,   8, 
                        HAMC,   8, 
                        HAMD,   8, 
                        HAME,   8, 
                        HAMF,   8, 
                        Offset (0x23), 
                        HANT,   8, 
                        Offset (0x26), 
                            ,   2, 
                        HANA,   2, 
                        Offset (0x27), 
                        Offset (0x28), 
                            ,   1, 
                        SKEM,   1, 
                        Offset (0x29), 
                        Offset (0x2A), 
                        HATR,   8, 
                        HT0H,   8, 
                        HT0L,   8, 
                        HT1H,   8, 
                        HT1L,   8, 
                        HFSP,   8, 
                            ,   6, 
                        HMUT,   1, 
                        Offset (0x31), 
                            ,   2, 
                        HUWB,   1, 
                            ,   3, 
                        VPON,   1, 
                        VRST,   1, 
                        HWPM,   1, 
                        HWLB,   1, 
                        HWLO,   1, 
                        HWDK,   1, 
                        HWFN,   1, 
                        HWBT,   1, 
                        HWRI,   1, 
                        HWBU,   1, 
                        HWLU,   1, 
                        Offset (0x34), 
                            ,   3, 
                        PIBS,   1, 
                            ,   3, 
                        HPLO,   1, 
                        Offset (0x36), 
                        HWAC,   16, 
                        HB0S,   7, 
                        HB0A,   1, 
                        HB1S,   7, 
                        HB1A,   1, 
                        HCMU,   1, 
                            ,   2, 
                        OVRQ,   1, 
                        DCBD,   1, 
                        DCWL,   1, 
                        DCWW,   1, 
                        HB1I,   1, 
                            ,   1, 
                        KBLT,   1, 
                        BTPW,   1, 
                        FNKC,   1, 
                        HUBS,   1, 
                        BDPW,   1, 
                        BDDT,   1, 
                        HUBB,   1, 
                        Offset (0x46), 
                            ,   1, 
                        BTWK,   1, 
                        HPLD,   1, 
                            ,   1, 
                        HPAC,   1, 
                        BTST,   1, 
                        Offset (0x47), 
                        HPBU,   1, 
                            ,   1, 
                        HBID,   1, 
                            ,   3, 
                        HBCS,   1, 
                        HPNF,   1, 
                            ,   1, 
                        GSTS,   1, 
                            ,   2, 
                        HLBU,   1, 
                        DOCD,   1, 
                        HCBL,   1, 
                        Offset (0x49), 
                        SLUL,   1, 
                        Offset (0x4C), 
                        HTMH,   8, 
                        HTML,   8, 
                        HWAK,   16, 
                        HMPR,   8, 
                            ,   7, 
                        HMDN,   1, 
                        Offset (0x78), 
                        TMP0,   8, 
                        Offset (0x80), 
                        Offset (0x81), 
                        HIID,   8, 
                        Offset (0x83), 
                        HFNI,   8, 
                        HSPD,   16, 
                        Offset (0x88), 
                        TSL0,   7, 
                        TSR0,   1, 
                        TSL1,   7, 
                        TSR1,   1, 
                        TSL2,   7, 
                        TSR2,   1, 
                        TSL3,   7, 
                        TSR3,   1, 
                        Offset (0x8D), 
                        HDAA,   3, 
                        HDAB,   3, 
                        HDAC,   2, 
                        Offset (0xB0), 
                        HDEN,   32, 
                        HDEP,   32, 
                        HDEM,   8, 
                        HDES,   8, 
                        Offset (0xC1), 
                        CMMD,   8, 
                        Offset (0xC8), 
                        ATMX,   8, 
                        HWAT,   8, 
                        Offset (0xCC), 
                        PWMH,   8, 
                        PWML,   8, 
                        Offset (0xDE), 
                        DCID,   8, 
                        PTRG,   1, 
                        DKAC,   1, 
                        Offset (0xED), 
                            ,   4, 
                        HDDD,   1, 
                        Offset (0xFE), 
                        DIST,   1
                    }

                    Method (_INI, 0, NotSerialized)  // _INI: Initialize
                    {
                        If (\H8DR)
                        {
                            HSPA = 0x00
                        }
                        Else
                        {
                            \MBEC (0x05, 0xFE, 0x00)
                        }

                        \_SB.PCI0.LPC.EC.HKEY.WGIN ()
                    }

                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0062,             // Range Minimum
                            0x0062,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0066,             // Range Minimum
                            0x0066,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                    })
                    Method (LED, 2, NotSerialized)
                    {
                        Local0 = (Arg0 | Arg1)
                        If (\H8DR)
                        {
                            HLCL = Local0
                        }
                        Else
                        {
                            \WBEC (0x0C, Local0)
                        }
                    }

                    Name (BAON, 0x00)
                    Name (WBON, 0x00)
                    Method (BEEP, 1, NotSerialized)
                    {
                        If ((Arg0 == 0x05))
                        {
                            WBON = 0x00
                        }

                        Local2 = WBON /* \_SB_.PCI0.LPC_.EC__.WBON */
                        If (BAON)
                        {
                            If ((Arg0 == 0x00))
                            {
                                BAON = 0x00
                                If (WBON)
                                {
                                    Local0 = 0x03
                                    Local1 = 0x08
                                }
                                Else
                                {
                                    Local0 = 0x00
                                    Local1 = 0x00
                                }
                            }
                            Else
                            {
                                Local0 = 0xFF
                                Local1 = 0xFF
                                If ((Arg0 == 0x11))
                                {
                                    WBON = 0x00
                                }

                                If ((Arg0 == 0x10))
                                {
                                    WBON = 0x01
                                }
                            }
                        }
                        Else
                        {
                            Local0 = Arg0
                            Local1 = 0xFF
                            If ((Arg0 == 0x0F))
                            {
                                Local0 = Arg0
                                Local1 = 0x08
                                BAON = 0x01
                            }

                            If ((Arg0 == 0x11))
                            {
                                Local0 = 0x00
                                Local1 = 0x00
                                WBON = 0x00
                            }

                            If ((Arg0 == 0x10))
                            {
                                Local0 = 0x03
                                Local1 = 0x08
                                WBON = 0x01
                            }
                        }

                        If ((Arg0 == 0x03))
                        {
                            WBON = 0x00
                            If (Local2)
                            {
                                Local0 = 0x07
                                If (((\SPS == 0x03) || (\SPS == 0x04)))
                                {
                                    Local2 = 0x00
                                    Local0 = 0xFF
                                    Local1 = 0xFF
                                }
                            }
                        }

                        If ((Arg0 == 0x07))
                        {
                            If (Local2)
                            {
                                Local2 = 0x00
                                Local0 = 0xFF
                                Local1 = 0xFF
                            }
                        }

                        If (\H8DR)
                        {
                            If ((Local2 && !WBON))
                            {
                                HSRP = 0x00
                                HSUN = 0x00
                                Sleep (0x64)
                            }

                            If ((Local1 != 0xFF))
                            {
                                HSRP = Local1
                            }

                            If ((Local0 != 0xFF))
                            {
                                HSUN = Local0
                            }
                        }
                        Else
                        {
                            If ((Local2 && !WBON))
                            {
                                \WBEC (0x07, 0x00)
                                \WBEC (0x06, 0x00)
                                Sleep (0x64)
                            }

                            If ((Local1 != 0xFF))
                            {
                                \WBEC (0x07, Local1)
                            }

                            If ((Local0 != 0xFF))
                            {
                                \WBEC (0x06, Local0)
                            }
                        }

                        If ((Arg0 == 0x03)){}
                        If ((Arg0 == 0x07))
                        {
                            Sleep (0x01F4)
                        }
                    }

                    Method (EVNT, 1, NotSerialized)
                    {
                        If (\H8DR)
                        {
                            If (Arg0)
                            {
                                HAM5 |= 0x04
                            }
                            Else
                            {
                                HAM5 &= 0xFB
                            }
                        }
                        ElseIf (Arg0)
                        {
                            \MBEC (0x15, 0xFF, 0x04)
                        }
                        Else
                        {
                            \MBEC (0x15, 0xFB, 0x00)
                        }
                    }

                    Name (USPS, 0x00)
                    PowerResource (PUBS, 0x03, 0x0000)
                    {
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (\H8DR)
                            {
                                Local0 = HUBS /* \_SB_.PCI0.LPC_.EC__.HUBS */
                            }
                            Else
                            {
                                Local0 = (\RBEC (0x3B) & 0x10)
                            }

                            If (Local0)
                            {
                                Return (0x01)
                            }
                            Else
                            {
                                Return (0x00)
                            }
                        }

                        Method (_ON, 0, NotSerialized)  // _ON_: Power On
                        {
                            Local0 = 0x64
                            While ((USPS && Local0))
                            {
                                Sleep (0x01)
                                Local0--
                            }

                            If (\H8DR)
                            {
                                HUBS = 0x01
                            }
                            Else
                            {
                                \MBEC (0x3B, 0xFF, 0x10)
                            }
                        }

                        Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
                        {
                            USPS = 0x01
                            If (\H8DR)
                            {
                                HUBS = 0x00
                            }
                            Else
                            {
                                \MBEC (0x3B, 0xEF, 0x00)
                            }

                            Sleep (0x14)
                            USPS = 0x00
                        }
                    }

                    Method (CHKS, 0, NotSerialized)
                    {
                        Local0 = 0x03E8
                        While (HMPR)
                        {
                            Sleep (0x01)
                            Local0--
                            If (!Local0)
                            {
                                Return (0x8080)
                            }
                        }

                        If (HMDN)
                        {
                            Return (Zero)
                        }

                        Return (0x8081)
                    }

                    Method (LPMD, 0, NotSerialized)
                    {
                        Local0 = 0x00
                        Local1 = 0x00
                        Local2 = 0x00
                        If (\H8DR)
                        {
                            If (HPAC)
                            {
                                If (HPLO)
                                {
                                    Local0 = \LPST
                                }
                                ElseIf ((HWAT < 0x5A))
                                {
                                    If (HB0A)
                                    {
                                        If (((HB0S & 0x10) || ((HB0S & 0x07) < 0x02)))
                                        {
                                            Local1 = 0x01
                                        }
                                    }
                                    Else
                                    {
                                        Local1 = 0x01
                                    }

                                    If (HB1A)
                                    {
                                        If (((HB1S & 0x10) || ((HB1S & 0x07) < 0x02)))
                                        {
                                            Local2 = 0x01
                                        }
                                    }
                                    Else
                                    {
                                        Local2 = 0x01
                                    }

                                    If ((Local1 && Local2))
                                    {
                                        Local0 = \LPST
                                    }
                                }
                            }
                        }
                        ElseIf ((\RBEC (0x46) & 0x10))
                        {
                            If ((\RBEC (0x34) & 0x80))
                            {
                                Local0 = \LPST
                            }
                            ElseIf ((\RBEC (0xC9) < 0x5A))
                            {
                                Local3 = \RBEC (0x38)
                                If ((Local3 & 0x80))
                                {
                                    If (((Local3 & 0x10) || ((Local3 & 0x07) < 0x02)))
                                    {
                                        Local1 = 0x01
                                    }
                                }
                                Else
                                {
                                    Local2 = 0x01
                                }

                                Local3 = \RBEC (0x39)
                                If ((Local3 & 0x80))
                                {
                                    If (((Local3 & 0x10) || ((Local3 & 0x07) < 0x02)))
                                    {
                                        Local1 = 0x01
                                    }
                                }
                                Else
                                {
                                    Local2 = 0x01
                                }

                                If ((Local1 && Local2))
                                {
                                    Local0 = \LPST
                                }
                            }
                        }

                        Return (Local0)
                    }

                    Method (CLPM, 0, NotSerialized)
                    {
                        If ((\_PR.CFGD & 0x01))
                        {
                            If ((\OSPX || \CPPX))
                            {
                                \PNTF (0x80)
                            }
                            Else
                            {
                                Local0 = LPMD ()
                                If (Local0)
                                {
                                    \STEP (0x04)
                                }
                                Else
                                {
                                    \STEP (0x05)
                                }
                            }
                        }
                    }

                    Mutex (MCPU, 0x00)
                    Method (_Q10, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x01))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1001)
                        }
                    }

                    Method (_Q11, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Noop
                    }

                    Method (_Q12, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x02))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1002)
                        }
                    }

                    Method (_Q13, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.DHKC)
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1004)
                        }
                        Else
                        {
                            Notify (\_SB.SLPB, 0x80) // Status Change
                        }
                    }

                    Method (_Q64, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x10))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1005)
                        }
                    }

                    Method (_Q65, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x20))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1006)
                        }
                    }

                    Method (_Q16, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x40))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1007)
                        }
                    }

                    Method (_Q17, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x80))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1008)
                        }
                    }

                    Method (_Q18, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x0100))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1009)
                        }

                        Noop
                    }

                    Method (_Q1A, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x0400))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x100B)
                        }
                    }

                    Method (_Q1B, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x100C)
                    }

                    Method (_Q62, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x1000))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x100D)
                        }
                    }

                    Method (_Q60, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x2000))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x100E)
                        }
                    }

                    Method (_Q61, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x4000))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x100F)
                        }
                    }

                    Method (_Q1F, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x00020000))
                        {
                            If ((PKLI & 0x0C00))
                            {
                                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1012)
                            }
                        }

                        \UCMS (0x0E)
                    }

                    Method (_Q1C, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x01000000))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1019)
                        }
                    }

                    Method (_Q1D, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x02000000))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x101A)
                        }
                    }

                    Method (_Q66, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x10000000))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x101D)
                        }
                    }

                    Method (_Q67, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x20000000))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x101E)
                        }
                    }

                    Method (_Q68, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x40000000))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x101F)
                        }
                    }

                    Method (_Q69, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x80000000))
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1020)
                        }
                    }

                    Method (_Q26, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (VIGD)
                        {
                            If (\WVIS)
                            {
                                \VBTD ()
                            }

                            \_SB.PCI0.LPC.EC.BRNS ()
                        }
                        Else
                        {
                            \UCMS (0x12)
                        }

                        ADBG ("AC_A0")
                        \_SB.PCI0.LPC.EC.HKEY.DYTC (0x000F4001)
                        ADBG ("AC_A1")
                        Sleep (0x01F4)
                        Notify (AC, 0x80) // Status Change
                        Notify (\_TZ.THM0, 0x80) // Thermal Status Change
                        If (\WXPF)
                        {
                            Acquire (MCPU, 0xFFFF)
                        }

                        PWRS = 0x01
                        If ((\_PR.CFGD & 0x01))
                        {
                            If ((\OSPX || \CPPX))
                            {
                                \PNTF (0x80)
                            }
                        }

                        If (\WXPF)
                        {
                            Sleep (0x64)
                        }

                        If (\OSC4)
                        {
                            \PNTF (0x81)
                        }

                        If (\WXPF)
                        {
                            Release (MCPU)
                        }

                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6040)
                        ATMC ()
                    }

                    Method (_Q27, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If (VIGD)
                        {
                            If (\WVIS)
                            {
                                \VBTD ()
                            }

                            \_SB.PCI0.LPC.EC.BRNS ()
                        }
                        Else
                        {
                            \UCMS (0x12)
                        }

                        If ((\_SB.LID._LID () == 0x00))
                        {
                            ADBG ("AC_D0")
                            \_SB.PCI0.LPC.EC.HKEY.DYTC (0x001F4001)
                            ADBG ("AC_D1")
                        }

                        Sleep (0x01F4)
                        Notify (AC, 0x80) // Status Change
                        Notify (\_TZ.THM0, 0x80) // Thermal Status Change
                        If (\WXPF)
                        {
                            Acquire (MCPU, 0xFFFF)
                        }

                        PWRS = 0x00
                        If ((\_PR.CFGD & 0x01))
                        {
                            If ((\OSPX || \CPPX))
                            {
                                \PNTF (0x80)
                            }
                        }

                        If (\WXPF)
                        {
                            Sleep (0x64)
                        }

                        If (\OSC4)
                        {
                            \PNTF (0x81)
                        }

                        If (\WXPF)
                        {
                            Release (MCPU)
                        }

                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6040)
                        ATMC ()
                    }

                    Method (_Q2A, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        ADBG ("LIDO")
                        \VCMS (0x01, \_SB.LID._LID ())
                        ADBG ("LIDO0")
                        \_SB.PCI0.LPC.EC.HKEY.DYTC (0x000F4001)
                        ADBG ("LIDO1")
                        If ((\ILNF == 0x00))
                        {
                            If (\IOST)
                            {
                                If (!\ISOC (0x00))
                                {
                                    \IOST = 0x00
                                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x60D0)
                                }
                            }

                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x5002)
                            If ((\PLUX == 0x00))
                            {
                                If (VIGD)
                                {
                                    \_SB.PCI0.GFX0.VLOC (0x01)
                                }

                                Notify (\_SB.LID, 0x80) // Status Change
                            }
                        }
                    }

                    Method (_Q2B, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        ADBG ("LIDC")
                        \UCMS (0x0D)
                        \VCMS (0x01, \_SB.LID._LID ())
                        If ((\_SB.PCI0.LPC.EC.AC._PSR () == 0x00))
                        {
                            ADBG ("LIDC0")
                            \_SB.PCI0.LPC.EC.HKEY.DYTC (0x001F4001)
                            ADBG ("LIDC1")
                        }

                        If ((\ILNF == 0x00))
                        {
                            If ((\IOEN && !\IOST))
                            {
                                If (!\ISOC (0x01))
                                {
                                    \IOST = 0x01
                                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x60D0)
                                }
                            }

                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x5001)
                            If ((\PLUX == 0x00))
                            {
                                If (VIGD)
                                {
                                    \_SB.PCI0.GFX0.VLOC (0x00)
                                }

                                Notify (\_SB.LID, 0x80) // Status Change
                            }
                        }
                    }

                    Method (_Q3D, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                    }

                    Method (_Q48, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If ((\_PR.CFGD & 0x01))
                        {
                            If ((\OSPX || \CPPX))
                            {
                                \PNTF (0x80)
                            }
                            Else
                            {
                                \STEP (0x04)
                            }

                            \_SB.PCI0.LPC.EC.CALM = 0x01
                        }
                    }

                    Method (_Q49, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If ((\_PR.CFGD & 0x01))
                        {
                            If ((\OSPX || \CPPX))
                            {
                                \PNTF (0x80)
                            }
                            Else
                            {
                                \STEP (0x05)
                            }
                        }
                    }

                    Method (_Q7F, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Fatal (0x01, 0x80010000, 0x4B87)
                    }

                    Method (_Q4E, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6011)
                    }

                    Method (_Q4F, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6012)
                    }

                    Method (_Q7A, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Notify (\_SB.LWMI, 0xA0) // Device-Specific
                    }

                    Method (_Q46, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6012)
                    }

                    Method (_Q2E, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        Notify (\_SB.LWMI, 0xA1) // Device-Specific
                        Local0 = \_SB.PCI0.LPC.EC.CMMD
                        If (((Local0 != 0x00) && (Local0 <= 0x06)))
                        {
                            If ((Local0 != \PMMD))
                            {
                                \PMMD = Local0
                                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x60C0)
                            }
                        }

                        If (((Local0 == 0x00) || (Local0 >= 0x07)))
                        {
                            Local1 = 0x01
                        }
                        ElseIf (((Local0 == 0x02) || (Local0 == 0x03)))
                        {
                            Local1 = 0x02
                        }
                        Else
                        {
                            Local1 = 0x03
                        }

                        If ((Local1 != \LVMD))
                        {
                            \LVMD = Local1
                            Sleep (0x0A)
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x60F0)
                        }
                    }

                    Method (_Q22, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        CLPM ()
                        If (HB0A)
                        {
                            Notify (BAT0, 0x80) // Status Change
                        }

                        If (HB1A)
                        {
                            Notify (BAT1, 0x80) // Status Change
                        }
                    }

                    Method (_Q4A, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        CLPM ()
                        Notify (BAT0, 0x81) // Information Change
                    }

                    Method (_Q4B, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        CLPM ()
                        Notify (BAT0, 0x80) // Status Change
                    }

                    Method (_Q4D, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        CLPM ()
                        If (\BT2T)
                        {
                            If ((^BAT1.SBLI == 0x01))
                            {
                                Sleep (0x0A)
                                If ((HB1A && (SLUL == 0x00)))
                                {
                                    ^BAT1.XB1S = 0x01
                                    Notify (\_SB.PCI0.LPC.EC.BAT1, 0x01) // Device Check
                                }
                            }
                            ElseIf ((SLUL == 0x01))
                            {
                                ^BAT1.XB1S = 0x00
                                Notify (\_SB.PCI0.LPC.EC.BAT1, 0x03) // Eject Request
                            }
                        }

                        If ((^BAT1.B1ST & ^BAT1.XB1S))
                        {
                            Notify (BAT1, 0x80) // Status Change
                        }
                    }

                    Method (_Q24, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        CLPM ()
                        Notify (BAT0, 0x80) // Status Change
                    }

                    Method (_Q25, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                    {
                        If ((^BAT1.B1ST & ^BAT1.XB1S))
                        {
                            CLPM ()
                            Notify (BAT1, 0x80) // Status Change
                        }
                    }

                    Method (BATW, 1, NotSerialized)
                    {
                        If (\BT2T)
                        {
                            Local0 = \_SB.PCI0.LPC.EC.BAT1.XB1S
                            If ((HB1A && !SLUL))
                            {
                                Local1 = 0x01
                            }
                            Else
                            {
                                Local1 = 0x00
                            }

                            If ((Local0 ^ Local1))
                            {
                                \_SB.PCI0.LPC.EC.BAT1.XB1S = Local1
                                Notify (\_SB.PCI0.LPC.EC.BAT1, 0x01) // Device Check
                            }
                        }
                    }

                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0xA0), 
                        SBRC,   16, 
                        SBFC,   16, 
                        SBAE,   16, 
                        SBRS,   16, 
                        SBAC,   16, 
                        SBVO,   16, 
                        SBAF,   16, 
                        SBBS,   16
                    }

                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0xA0), 
                        SBBM,   16, 
                        SBMD,   16, 
                        SBCC,   16
                    }

                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0xA0), 
                        SBDC,   16, 
                        SBDV,   16, 
                        SBOM,   16, 
                        SBSI,   16, 
                        SBDT,   16, 
                        SBSN,   16
                    }

                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0xA0), 
                        SBCH,   32
                    }

                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0xA0), 
                        SBMN,   128
                    }

                    Field (ECOR, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0xA0), 
                        SBDN,   128
                    }

                    Mutex (BATM, 0x00)
                    Method (GBIF, 3, NotSerialized)
                    {
                        Acquire (BATM, 0xFFFF)
                        If (Arg2)
                        {
                            HIID = (Arg0 | 0x01)
                            Local7 = SBBM /* \_SB_.PCI0.LPC_.EC__.SBBM */
                            Local7 >>= 0x0F
                            Arg1 [0x00] = (Local7 ^ 0x01)
                            HIID = Arg0
                            If (Local7)
                            {
                                Local1 = (SBFC * 0x0A)
                            }
                            Else
                            {
                                Local1 = SBFC /* \_SB_.PCI0.LPC_.EC__.SBFC */
                            }

                            Arg1 [0x02] = Local1
                            HIID = (Arg0 | 0x02)
                            If (Local7)
                            {
                                Local0 = (SBDC * 0x0A)
                            }
                            Else
                            {
                                Local0 = SBDC /* \_SB_.PCI0.LPC_.EC__.SBDC */
                            }

                            Arg1 [0x01] = Local0
                            Divide (Local1, 0x14, Local2, Arg1 [0x05])
                            If (Local7)
                            {
                                Arg1 [0x06] = 0xC8
                            }
                            ElseIf (SBDV)
                            {
                                Divide (0x00030D40, SBDV, Local2, Arg1 [0x06])
                            }
                            Else
                            {
                                Arg1 [0x06] = 0x00
                            }

                            Arg1 [0x04] = SBDV /* \_SB_.PCI0.LPC_.EC__.SBDV */
                            Local0 = SBSN /* \_SB_.PCI0.LPC_.EC__.SBSN */
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

                            Arg1 [0x0A] = SERN /* \_SB_.PCI0.LPC_.EC__.GBIF.SERN */
                            HIID = (Arg0 | 0x06)
                            Arg1 [0x09] = SBDN /* \_SB_.PCI0.LPC_.EC__.SBDN */
                            HIID = (Arg0 | 0x04)
                            Name (BTYP, Buffer (0x05)
                            {
                                 0x00, 0x00, 0x00, 0x00, 0x00                     // .....
                            })
                            BTYP = SBCH /* \_SB_.PCI0.LPC_.EC__.SBCH */
                            Arg1 [0x0B] = BTYP /* \_SB_.PCI0.LPC_.EC__.GBIF.BTYP */
                            HIID = (Arg0 | 0x05)
                            Arg1 [0x0C] = SBMN /* \_SB_.PCI0.LPC_.EC__.SBMN */
                        }
                        Else
                        {
                            Arg1 [0x01] = 0xFFFFFFFF
                            Arg1 [0x05] = 0x00
                            Arg1 [0x06] = 0x00
                            Arg1 [0x02] = 0xFFFFFFFF
                        }

                        Release (BATM)
                        Return (Arg1)
                    }

                    Name (B0I0, 0x00)
                    Name (B0I1, 0x00)
                    Name (B0I2, 0x00)
                    Name (B0I3, 0x00)
                    Name (B1I0, 0x00)
                    Name (B1I1, 0x00)
                    Name (B1I2, 0x00)
                    Name (B1I3, 0x00)
                    Method (GBST, 4, NotSerialized)
                    {
                        Acquire (BATM, 0xFFFF)
                        If ((Arg1 & 0x20))
                        {
                            Local0 = 0x02
                        }
                        ElseIf ((Arg1 & 0x40))
                        {
                            Local0 = 0x01
                        }
                        Else
                        {
                            Local0 = 0x00
                        }

                        If ((Arg1 & 0x07)){}
                        Else
                        {
                            Local0 |= 0x04
                        }

                        If (((Arg1 & 0x07) == 0x07))
                        {
                            Local0 = 0x04
                            Local1 = 0x00
                            Local2 = 0x00
                            Local3 = 0x00
                        }
                        Else
                        {
                            HIID = Arg0
                            Local3 = SBVO /* \_SB_.PCI0.LPC_.EC__.SBVO */
                            If (Arg2)
                            {
                                Local2 = (SBRC * 0x0A)
                            }
                            Else
                            {
                                Local2 = SBRC /* \_SB_.PCI0.LPC_.EC__.SBRC */
                            }

                            Local1 = SBAC /* \_SB_.PCI0.LPC_.EC__.SBAC */
                            If ((Local1 >= 0x8000))
                            {
                                If ((Local0 & 0x01))
                                {
                                    Local1 = (0x00010000 - Local1)
                                }
                                Else
                                {
                                    Local1 = 0x00
                                }
                            }
                            ElseIf (!(Local0 & 0x02))
                            {
                                Local1 = 0x00
                            }

                            If (Arg2)
                            {
                                Local1 *= Local3
                                Divide (Local1, 0x03E8, Local7, Local1)
                            }
                        }

                        Local5 = (0x01 << (Arg0 >> 0x04))
                        BSWA |= BSWR /* \_SB_.PCI0.LPC_.EC__.BSWR */
                        If (((\_SB.PCI0.LPC.EC.BSWA & Local5) == 0x00))
                        {
                            Arg3 [0x00] = Local0
                            Arg3 [0x01] = Local1
                            Arg3 [0x02] = Local2
                            Arg3 [0x03] = Local3
                            If ((Arg0 == 0x00))
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
                                If ((Arg0 == 0x00))
                                {
                                    Arg3 [0x00] = B0I0 /* \_SB_.PCI0.LPC_.EC__.B0I0 */
                                    Arg3 [0x01] = B0I1 /* \_SB_.PCI0.LPC_.EC__.B0I1 */
                                    Arg3 [0x02] = B0I2 /* \_SB_.PCI0.LPC_.EC__.B0I2 */
                                    Arg3 [0x03] = B0I3 /* \_SB_.PCI0.LPC_.EC__.B0I3 */
                                }
                                Else
                                {
                                    Arg3 [0x00] = B1I0 /* \_SB_.PCI0.LPC_.EC__.B1I0 */
                                    Arg3 [0x01] = B1I1 /* \_SB_.PCI0.LPC_.EC__.B1I1 */
                                    Arg3 [0x02] = B1I2 /* \_SB_.PCI0.LPC_.EC__.B1I2 */
                                    Arg3 [0x03] = B1I3 /* \_SB_.PCI0.LPC_.EC__.B1I3 */
                                }
                            }
                            Else
                            {
                                Arg3 [0x00] = Local0
                                Arg3 [0x01] = Local1
                                Arg3 [0x02] = Local2
                                Arg3 [0x03] = Local3
                            }

                            If ((((Local0 & 0x04) == 0x00) && ((Local2 > 0x00) && 
                                (Local3 > 0x00))))
                            {
                                BSWA &= ~Local5
                                Arg3 [0x00] = Local0
                                Arg3 [0x01] = Local1
                                Arg3 [0x02] = Local2
                                Arg3 [0x03] = Local3
                            }
                        }

                        Release (BATM)
                        Return (Arg3)
                    }

                    Name (BSWR, 0x00)
                    Name (BSWA, 0x00)
                    Device (BAT0)
                    {
                        Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
                        Name (_UID, 0x00)  // _UID: Unique ID
                        Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                        {
                            \_SB
                        })
                        Name (B0ST, 0x00)
                        Name (BT0I, Package (0x0D)
                        {
                            0x00, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0x01, 
                            0x2A30, 
                            0x00, 
                            0x00, 
                            0x01, 
                            0x01, 
                            "", 
                            "", 
                            "", 
                            ""
                        })
                        Name (BT0P, Package (0x04){})
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (\H8DR)
                            {
                                B0ST = HB0A /* \_SB_.PCI0.LPC_.EC__.HB0A */
                            }
                            ElseIf ((\RBEC (0x38) & 0x80))
                            {
                                B0ST = 0x01
                            }
                            Else
                            {
                                B0ST = 0x00
                            }

                            If (B0ST)
                            {
                                Return (0x1F)
                            }
                            Else
                            {
                                Return (0x0F)
                            }
                        }

                        Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
                        {
                            Local7 = 0x00
                            Local6 = 0x0A
                            While ((!Local7 && Local6))
                            {
                                If (HB0A)
                                {
                                    If (((HB0S & 0x07) == 0x07))
                                    {
                                        Sleep (0x03E8)
                                        Local6--
                                    }
                                    Else
                                    {
                                        Local7 = 0x01
                                    }
                                }
                                Else
                                {
                                    Local6 = 0x00
                                }
                            }

                            Return (GBIF (0x00, BT0I, Local7))
                        }

                        Method (_BST, 0, NotSerialized)  // _BST: Battery Status
                        {
                            Local0 = (DerefOf (BT0I [0x00]) ^ 0x01)
                            Return (GBST (0x00, HB0S, Local0, BT0P))
                        }

                        Method (_BTP, 1, NotSerialized)  // _BTP: Battery Trip Point
                        {
                            HAM4 &= 0xEF
                            If (Arg0)
                            {
                                Local1 = Arg0
                                If (!DerefOf (BT0I [0x00]))
                                {
                                    Divide (Local1, 0x0A, Local0, Local1)
                                }

                                HT0L = (Local1 & 0xFF)
                                HT0H = ((Local1 >> 0x08) & 0xFF)
                                HAM4 |= 0x10
                            }
                        }
                    }

                    Device (BAT1)
                    {
                        Name (_HID, EisaId ("PNP0C0A") /* Control Method Battery */)  // _HID: Hardware ID
                        Name (_UID, 0x01)  // _UID: Unique ID
                        Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                        {
                            \_SB
                        })
                        Name (B1ST, 0x00)
                        Name (SBLI, 0x01)
                        Name (XB1S, 0x00)
                        Name (BT1I, Package (0x0D)
                        {
                            0x00, 
                            0xFFFFFFFF, 
                            0xFFFFFFFF, 
                            0x01, 
                            0x2A30, 
                            0x00, 
                            0x00, 
                            0x01, 
                            0x01, 
                            "", 
                            "", 
                            "", 
                            ""
                        })
                        Name (BT1P, Package (0x04){})
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            If (\H8DR)
                            {
                                If (HB1A)
                                {
                                    B1ST = 0x01
                                    If (\BT2T)
                                    {
                                        If (SLUL)
                                        {
                                            SBLI = 0x01
                                            XB1S = 0x00
                                        }
                                        Else
                                        {
                                            SBLI = 0x00
                                            XB1S = 0x01
                                        }
                                    }
                                    Else
                                    {
                                        XB1S = 0x01
                                    }
                                }
                                Else
                                {
                                    B1ST = 0x00
                                    If (\BT2T)
                                    {
                                        SBLI = 0x01
                                        XB1S = 0x00
                                    }
                                    Else
                                    {
                                        XB1S = 0x00
                                    }
                                }
                            }
                            ElseIf ((\RBEC (0x39) & 0x80))
                            {
                                B1ST = 0x01
                                If (\BT2T)
                                {
                                    If ((\RBEC (0x49) & 0x01))
                                    {
                                        SBLI = 0x01
                                        XB1S = 0x00
                                    }
                                    Else
                                    {
                                        SBLI = 0x00
                                        XB1S = 0x01
                                    }
                                }
                                Else
                                {
                                    XB1S = 0x01
                                }
                            }
                            Else
                            {
                                B1ST = 0x00
                                If (\BT2T)
                                {
                                    SBLI = 0x01
                                    XB1S = 0x00
                                }
                                Else
                                {
                                    XB1S = 0x00
                                }
                            }

                            If (B1ST)
                            {
                                If (XB1S)
                                {
                                    Return (0x1F)
                                }
                                ElseIf (\WNTF)
                                {
                                    Return (0x00)
                                }
                                Else
                                {
                                    Return (0x1F)
                                }
                            }
                            ElseIf (\WNTF)
                            {
                                Return (0x00)
                            }
                            Else
                            {
                                Return (0x0F)
                            }
                        }

                        Method (_BIF, 0, NotSerialized)  // _BIF: Battery Information
                        {
                            Local7 = 0x00
                            Local6 = 0x0A
                            While ((!Local7 && Local6))
                            {
                                If (HB1A)
                                {
                                    If (((HB1S & 0x07) == 0x07))
                                    {
                                        Sleep (0x03E8)
                                        Local6--
                                    }
                                    Else
                                    {
                                        Local7 = 0x01
                                    }
                                }
                                Else
                                {
                                    Local6 = 0x00
                                }
                            }

                            Return (GBIF (0x10, BT1I, Local7))
                        }

                        Method (_BST, 0, NotSerialized)  // _BST: Battery Status
                        {
                            Local0 = (DerefOf (BT1I [0x00]) ^ 0x01)
                            Return (GBST (0x10, HB1S, Local0, BT1P))
                        }

                        Method (_BTP, 1, NotSerialized)  // _BTP: Battery Trip Point
                        {
                            HAM4 &= 0xDF
                            If (Arg0)
                            {
                                Local1 = Arg0
                                If (!DerefOf (BT1I [0x00]))
                                {
                                    Divide (Local1, 0x0A, Local0, Local1)
                                }

                                HT1L = (Local1 & 0xFF)
                                HT1H = ((Local1 >> 0x08) & 0xFF)
                                HAM4 |= 0x20
                            }
                        }
                    }

                    Device (AC)
                    {
                        Name (_HID, "ACPI0003" /* Power Source Device */)  // _HID: Hardware ID
                        Name (_UID, 0x00)  // _UID: Unique ID
                        Name (_PCL, Package (0x01)  // _PCL: Power Consumer List
                        {
                            \_SB
                        })
                        Method (_PSR, 0, NotSerialized)  // _PSR: Power Source
                        {
                            If (\H8DR)
                            {
                                Return (HPAC) /* \_SB_.PCI0.LPC_.EC__.HPAC */
                            }
                            ElseIf ((\RBEC (0x46) & 0x10))
                            {
                                Return (0x01)
                            }
                            Else
                            {
                                Return (0x00)
                            }
                        }

                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }
                    }

                    Device (HKEY)
                    {
                        Name (_HID, EisaId ("LEN0068"))  // _HID: Hardware ID
                        Method (_STA, 0, NotSerialized)  // _STA: Status
                        {
                            Return (0x0F)
                        }

                        Method (_INI, 0, NotSerialized)  // _INI: Initialize
                        {
                            ADBG ("_INI0")
                            \_SB.PCI0.LPC.EC.HKEY.ANGN = 0x00
                            \_SB.PCI0.LPC.EC.HKEY.DYTC (0x000F0001)
                            ADBG ("_INI1")
                        }

                        Method (MHKV, 0, NotSerialized)
                        {
                            Return (0x0100)
                        }

                        Name (DHKC, 0x00)
                        Name (DHKB, 0x01)
                        Name (DHKH, 0x00)
                        Name (DHKW, 0x00)
                        Name (DHKS, 0x00)
                        Name (DHKD, 0x00)
                        Name (DHKN, 0x0808)
                        Name (DHKT, 0x00)
                        Name (DHWW, 0x00)
                        Name (DSML, 0x00)
                        Mutex (XDHK, 0x00)
                        Method (MHKA, 0, NotSerialized)
                        {
                            Return (0xFFFFFFFB)
                        }

                        Method (MHKN, 0, NotSerialized)
                        {
                            Return (DHKN) /* \_SB_.PCI0.LPC_.EC__.HKEY.DHKN */
                        }

                        Method (MHKK, 1, NotSerialized)
                        {
                            If (DHKC)
                            {
                                Return ((DHKN & Arg0))
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Method (MHKM, 2, NotSerialized)
                        {
                            Acquire (XDHK, 0xFFFF)
                            If ((Arg0 > 0x20))
                            {
                                Noop
                            }
                            Else
                            {
                                Local0 = (One << Arg0--)
                                If ((Local0 & 0xFFFFFFFB))
                                {
                                    If (Arg1)
                                    {
                                        DHKN |= Local0 /* \_SB_.PCI0.LPC_.EC__.HKEY.DHKN */
                                    }
                                    Else
                                    {
                                        DHKN &= (Local0 ^ 0xFFFFFFFF)
                                    }
                                }
                                Else
                                {
                                    Noop
                                }
                            }

                            Release (XDHK)
                        }

                        Method (MHKS, 0, NotSerialized)
                        {
                            Notify (\_SB.SLPB, 0x80) // Status Change
                        }

                        Method (MHKC, 1, NotSerialized)
                        {
                            DHKC = Arg0
                        }

                        Method (MHKP, 0, NotSerialized)
                        {
                            Acquire (XDHK, 0xFFFF)
                            If (DHWW)
                            {
                                Local1 = DHWW /* \_SB_.PCI0.LPC_.EC__.HKEY.DHWW */
                                DHWW = Zero
                            }
                            ElseIf (DHKW)
                            {
                                Local1 = DHKW /* \_SB_.PCI0.LPC_.EC__.HKEY.DHKW */
                                DHKW = Zero
                            }
                            ElseIf (DHKD)
                            {
                                Local1 = DHKD /* \_SB_.PCI0.LPC_.EC__.HKEY.DHKD */
                                DHKD = Zero
                            }
                            ElseIf (DHKS)
                            {
                                Local1 = DHKS /* \_SB_.PCI0.LPC_.EC__.HKEY.DHKS */
                                DHKS = Zero
                            }
                            ElseIf (DHKT)
                            {
                                Local1 = DHKT /* \_SB_.PCI0.LPC_.EC__.HKEY.DHKT */
                                DHKT = Zero
                            }
                            Else
                            {
                                Local1 = DHKH /* \_SB_.PCI0.LPC_.EC__.HKEY.DHKH */
                                DHKH = Zero
                            }

                            Release (XDHK)
                            Return (Local1)
                        }

                        Method (MHKE, 1, Serialized)
                        {
                            DHKB = Arg0
                            Acquire (XDHK, 0xFFFF)
                            DHKH = Zero
                            DHKW = Zero
                            DHKS = Zero
                            DHKD = Zero
                            DHKT = Zero
                            DHWW = Zero
                            Release (XDHK)
                        }

                        Method (MHKQ, 1, Serialized)
                        {
                            If (DHKB)
                            {
                                If (DHKC)
                                {
                                    Acquire (XDHK, 0xFFFF)
                                    If ((Arg0 < 0x1000)){}
                                    ElseIf ((Arg0 < 0x2000))
                                    {
                                        DHKH = Arg0
                                    }
                                    ElseIf ((Arg0 < 0x3000))
                                    {
                                        DHKW = Arg0
                                    }
                                    ElseIf ((Arg0 < 0x4000))
                                    {
                                        DHKS = Arg0
                                    }
                                    ElseIf ((Arg0 < 0x5000))
                                    {
                                        DHKD = Arg0
                                    }
                                    ElseIf ((Arg0 < 0x6000))
                                    {
                                        DHKH = Arg0
                                    }
                                    ElseIf ((Arg0 < 0x7000))
                                    {
                                        DHKT = Arg0
                                    }
                                    ElseIf ((Arg0 < 0x8000))
                                    {
                                        DHWW = Arg0
                                    }
                                    Else
                                    {
                                    }

                                    Release (XDHK)
                                    Notify (HKEY, 0x80) // Status Change
                                }
                                ElseIf ((Arg0 == 0x1004))
                                {
                                    Notify (\_SB.SLPB, 0x80) // Status Change
                                }
                            }
                        }

                        Method (MHKB, 1, NotSerialized)
                        {
                            If ((Arg0 == 0x00))
                            {
                                \_SB.PCI0.LPC.EC.BEEP (0x11)
                                \LIDB = 0x00
                            }
                            ElseIf ((Arg0 == 0x01))
                            {
                                \_SB.PCI0.LPC.EC.BEEP (0x10)
                                \LIDB = 0x01
                            }
                            Else
                            {
                            }
                        }

                        Method (MHKD, 0, NotSerialized)
                        {
                            If ((\PLUX == 0x00))
                            {
                                If (VIGD)
                                {
                                    \_SB.PCI0.GFX0.VLOC (0x00)
                                }
                            }
                        }

                        Method (MHQC, 1, NotSerialized)
                        {
                            If (\WNTF)
                            {
                                If ((Arg0 == 0x00))
                                {
                                    Return (\CWAC)
                                }
                                ElseIf ((Arg0 == 0x01))
                                {
                                    Return (\CWAP)
                                }
                                ElseIf ((Arg0 == 0x02))
                                {
                                    Return (\CWAT)
                                }
                                Else
                                {
                                    Noop
                                }
                            }
                            Else
                            {
                                Noop
                            }

                            Return (0x00)
                        }

                        Method (MHGC, 0, NotSerialized)
                        {
                            If (\WNTF)
                            {
                                Acquire (XDHK, 0xFFFF)
                                If (CKC4 (0x00))
                                {
                                    Local0 = 0x03
                                }
                                Else
                                {
                                    Local0 = 0x04
                                }

                                Release (XDHK)
                                Return (Local0)
                            }
                            Else
                            {
                                Noop
                            }

                            Return (0x00)
                        }

                        Method (MHSC, 1, NotSerialized)
                        {
                            If ((\CWAC && \WNTF))
                            {
                                Acquire (XDHK, 0xFFFF)
                                If (\OSC4)
                                {
                                    If ((Arg0 == 0x03))
                                    {
                                        If (!\CWAS)
                                        {
                                            \PNTF (0x81)
                                            \CWAS = 0x01
                                        }
                                    }
                                    ElseIf ((Arg0 == 0x04))
                                    {
                                        If (\CWAS)
                                        {
                                            \PNTF (0x81)
                                            \CWAS = 0x00
                                        }
                                    }
                                    Else
                                    {
                                        Noop
                                    }
                                }

                                Release (XDHK)
                            }
                            Else
                            {
                                Noop
                            }
                        }

                        Method (CKC4, 1, NotSerialized)
                        {
                            Local0 = 0x00
                            If (\C4WR)
                            {
                                If (!\C4AC)
                                {
                                    Local0 |= 0x01
                                }
                            }

                            If (\C4NA)
                            {
                                Local0 |= 0x02
                            }

                            If ((\CWAC && \CWAS))
                            {
                                Local0 |= 0x04
                            }

                            Local0 &= ~Arg0
                            Return (Local0)
                        }

                        Method (MHQE, 0, NotSerialized)
                        {
                            Return (\C4WR)
                        }

                        Method (MHGE, 0, NotSerialized)
                        {
                            If ((\C4WR && \C4AC))
                            {
                                Return (0x04)
                            }

                            Return (0x03)
                        }

                        Method (MHSE, 1, NotSerialized)
                        {
                            If (\C4WR)
                            {
                                Local0 = \C4AC
                                If ((Arg0 == 0x03))
                                {
                                    \C4AC = 0x00
                                    If ((Local0 ^ \C4AC))
                                    {
                                        If (\OSC4)
                                        {
                                            \PNTF (0x81)
                                        }
                                    }
                                }
                                ElseIf ((Arg0 == 0x04))
                                {
                                    \C4AC = 0x01
                                    If ((Local0 ^ \C4AC))
                                    {
                                        If (\OSC4)
                                        {
                                            \PNTF (0x81)
                                        }
                                    }
                                }
                            }
                        }

                        Method (UAWO, 1, NotSerialized)
                        {
                            Return (\UAWS (Arg0))
                        }

                        Method (MLCG, 1, NotSerialized)
                        {
                            Local0 = \KBLS (0x00, 0x00)
                            Return (Local0)
                        }

                        Method (MLCS, 1, NotSerialized)
                        {
                            Local0 = \KBLS (0x01, Arg0)
                            If (!(Local0 & 0x80000000))
                            {
                                If ((Arg0 & 0x00010000))
                                {
                                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6001)
                                }
                                Else
                                {
                                    If ((!DSML && (Arg0 & 0x0100)))
                                    {
                                        DSML = 0x01
                                    }

                                    If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x00020000))
                                    {
                                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1012)
                                    }
                                }
                            }

                            Return (Local0)
                        }

                        Method (DSSG, 1, NotSerialized)
                        {
                            Local0 = (0x0400 | \PDCI)
                            Return (Local0)
                        }

                        Method (DSSS, 1, NotSerialized)
                        {
                            \PDCI |= Arg0
                        }

                        Method (SBSG, 1, NotSerialized)
                        {
                            Return (\SYBC (0x00, 0x00))
                        }

                        Method (SBSS, 1, NotSerialized)
                        {
                            Return (\SYBC (0x01, Arg0))
                        }

                        Method (PBLG, 1, NotSerialized)
                        {
                            Local0 = \BRLV
                            Local1 = (Local0 | 0x0F00)
                            Return (Local1)
                        }

                        Method (PBLS, 1, NotSerialized)
                        {
                            \BRLV = Arg0
                            If (\VIGD)
                            {
                                \_SB.PCI0.LPC.EC.BRNS ()
                            }
                            Else
                            {
                                \VBRC (\BRLV)
                            }

                            If (!\NBCF)
                            {
                                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6050)
                            }

                            Return (0x00)
                        }

                        Method (PMSG, 1, NotSerialized)
                        {
                            Local0 = \PRSM (0x00, 0x00)
                            Return (Local0)
                        }

                        Method (PMSS, 1, NotSerialized)
                        {
                            \PRSM (0x01, Arg0)
                            Return (0x00)
                        }

                        Method (ISSG, 1, NotSerialized)
                        {
                            Local0 = \ISSP
                            If (\ISSP)
                            {
                                Local0 |= 0x01000000
                                Local0 |= (\ISFS << 0x19)
                            }

                            Local0 |= 0x80
                            Local0 |= (\ISCG & 0x30)
                            Return (Local0)
                        }

                        Method (ISSS, 1, NotSerialized)
                        {
                            \ISCG = Arg0
                            Return (0x00)
                        }

                        Method (FFSG, 1, NotSerialized)
                        {
                            Return (0x00)
                        }

                        Method (FFSS, 1, NotSerialized)
                        {
                            Return (0x80000000)
                        }

                        Method (GMKS, 0, NotSerialized)
                        {
                            Return (\FNSC (0x02, 0x00))
                        }

                        Method (SMKS, 1, NotSerialized)
                        {
                            Return (\FNSC (0x03, (Arg0 & 0x00010001)))
                        }

                        Method (INSG, 1, NotSerialized)
                        {
                            Local0 = \IOEN
                            Local0 |= (\IOST << 0x07)
                            Local0 |= (\IOCP << 0x08)
                            Local0 |= 0x10000000
                            Return (Local0)
                        }

                        Method (INSS, 1, NotSerialized)
                        {
                            If ((Arg0 & 0x10000000))
                            {
                                If (\IOCP)
                                {
                                    Local0 = ((Arg0 & 0x80) >> 0x07)
                                    If (!\EZRC (Local0))
                                    {
                                        \IOST = Local0
                                    }
                                }

                                Return (0x00)
                            }

                            If ((\IOCP && (Arg0 & 0x01)))
                            {
                                \IOEN = 0x01
                            }
                            Else
                            {
                                \IOEN = 0x00
                                If (\IOST)
                                {
                                    If (!\ISOC (0x00))
                                    {
                                        \IOST = 0x00
                                    }
                                }
                            }

                            Return (0x00)
                        }

                        Method (GMMS, 1, NotSerialized)
                        {
                            Local0 = 0x00040000
                            Local1 = \PMMD
                            If ((Local1 >= 0x06))
                            {
                                Local0 |= 0x03
                            }
                            ElseIf ((Local1 >= 0x05))
                            {
                                Local0 |= 0x05
                            }
                            ElseIf ((Local1 >= 0x04))
                            {
                                Local0 |= 0x04
                            }
                            ElseIf ((Local1 >= 0x03))
                            {
                                Local0 |= 0x02
                            }
                            ElseIf ((Local1 >= 0x01))
                            {
                                Local0 |= 0x01
                            }

                            Return (Local0)
                        }

                        Method (GTMS, 1, NotSerialized)
                        {
                            Local0 = 0x00010000
                            Local0 |= \LVMD
                            Return (Local0)
                        }

                        Method (SSPI, 1, NotSerialized)
                        {
                            If ((Arg0 == 0x00))
                            {
                                Local0 = 0x0100
                                Return (Local0)
                            }
                            ElseIf ((Arg0 == 0x0100))
                            {
                                Local0 = 0x01
                                Return (Local0)
                            }
                        }

                        Method (GTCS, 1, NotSerialized)
                        {
                            If ((Arg0 == 0x00))
                            {
                                Local0 = 0x0100
                                Return (Local0)
                            }
                            ElseIf ((Arg0 == 0x0100))
                            {
                                If (\_SB.PCI0.LPC.EC.DIST)
                                {
                                    Local0 = 0x00
                                }
                                Else
                                {
                                    Local0 = 0x01
                                }

                                Return (Local0)
                            }
                        }

                        Method (STCS, 1, NotSerialized)
                        {
                            If ((Arg0 == 0x00))
                            {
                                Local0 = 0x0100
                                Return (Local0)
                            }
                            ElseIf ((Arg0 == 0x0100))
                            {
                                \_SB.PCI0.LPC.EC.DIST = 0x01
                                Return (0x00)
                            }
                            ElseIf ((Arg0 == 0x0101))
                            {
                                \_SB.PCI0.LPC.EC.DIST = 0x00
                                Return (0x00)
                            }
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC.HKEY)
                    {
                        Name (INDV, 0x00)
                        Method (MHQI, 0, NotSerialized)
                        {
                            If ((\IPMS & 0x01))
                            {
                                INDV |= 0x01
                            }

                            If ((\IPMS & 0x02))
                            {
                                INDV |= 0x02
                            }

                            If ((\IPMS & 0x04))
                            {
                                INDV |= 0x0100
                            }

                            If ((\IPMS & 0x08))
                            {
                                INDV |= 0x0200
                            }

                            If ((\IPMS & 0x10))
                            {
                                INDV |= 0x04
                            }

                            Return (INDV) /* \_SB_.PCI0.LPC_.EC__.HKEY.INDV */
                        }

                        Method (MHGI, 1, NotSerialized)
                        {
                            Name (RETB, Buffer (0x10){})
                            CreateByteField (RETB, 0x00, MHGS)
                            Local0 = (0x01 << Arg0)
                            If ((INDV & Local0))
                            {
                                If ((Arg0 == 0x00))
                                {
                                    CreateField (RETB, 0x08, 0x78, BRBU)
                                    BRBU = \IPMB
                                    MHGS = 0x10
                                }
                                ElseIf ((Arg0 == 0x01))
                                {
                                    CreateField (RETB, 0x08, 0x18, RRBU)
                                    RRBU = \IPMR
                                    MHGS = 0x04
                                }
                                ElseIf ((Arg0 == 0x08))
                                {
                                    CreateField (RETB, 0x10, 0x18, ODBU)
                                    CreateByteField (RETB, 0x01, MHGZ)
                                    ODBU = \IPMO
                                    If (((^^BSTS == 0x00) && (^^BDEV == 0x03)))
                                    {
                                        MHGZ |= 0x01 /* \_SB_.PCI0.LPC_.EC__.HKEY.MHGI.MHGZ */
                                        MHGZ |= 0x02 /* \_SB_.PCI0.LPC_.EC__.HKEY.MHGI.MHGZ */
                                    }

                                    MHGS = 0x05
                                }
                                ElseIf ((Arg0 == 0x09))
                                {
                                    CreateField (RETB, 0x10, 0x08, AUBU)
                                    AUBU = \IPMA
                                    RETB [0x01] = 0x01
                                    MHGS = 0x03
                                }
                                ElseIf ((Arg0 == 0x02))
                                {
                                    Local1 = \VDYN (0x00, 0x00)
                                    RETB [0x02] = (Local1 & 0x0F)
                                    Local1 >>= 0x04
                                    RETB [0x01] = (Local1 & 0x0F)
                                    MHGS = 0x03
                                }
                            }

                            Return (RETB) /* \_SB_.PCI0.LPC_.EC__.HKEY.MHGI.RETB */
                        }

                        Method (MHSI, 2, NotSerialized)
                        {
                            Local0 = (0x01 << Arg0)
                            If ((INDV & Local0))
                            {
                                If ((Arg0 == 0x08))
                                {
                                    If (Arg1)
                                    {
                                        If (\H8DR)
                                        {
                                            Local1 = ^^HPBU /* \_SB_.PCI0.LPC_.EC__.HPBU */
                                        }
                                        Else
                                        {
                                            Local1 = (\RBEC (0x47) & 0x01)
                                        }

                                        If (!Local1)
                                        {
                                            ^^BDEV = ^^BGID (0x00)
                                            ^^NBIN (Local1)
                                        }
                                    }
                                }
                                ElseIf ((Arg0 == 0x02))
                                {
                                    \VDYN (0x01, Arg1)
                                }
                            }
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC)
                    {
                        Method (_Q6A, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                        {
                            If (HDMC)
                            {
                                Noop
                            }
                            ElseIf (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x04000000))
                            {
                                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x101B)
                            }
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC.HKEY)
                    {
                        Method (MMTG, 0, NotSerialized)
                        {
                            Local0 = 0x0101
                            If (HDMC)
                            {
                                Local0 |= 0x00010000
                            }

                            Return (Local0)
                        }

                        Method (MMTS, 1, NotSerialized)
                        {
                            If (HDMC)
                            {
                                Noop
                            }
                            ElseIf ((Arg0 == 0x02))
                            {
                                \_SB.PCI0.LPC.EC.LED (0x0E, 0x80)
                            }
                            ElseIf ((Arg0 == 0x03))
                            {
                                \_SB.PCI0.LPC.EC.LED (0x0E, 0xC0)
                            }
                            Else
                            {
                                \_SB.PCI0.LPC.EC.LED (0x0E, 0x00)
                            }
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC.HKEY)
                    {
                        Method (PWMC, 0, NotSerialized)
                        {
                            Return (0x01)
                        }

                        Method (PWMG, 0, NotSerialized)
                        {
                            Local0 = \_SB.PCI0.LPC.EC.PWMH
                            Local0 <<= 0x08
                            Local0 |= \_SB.PCI0.LPC.EC.PWML
                            Return (Local0)
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC)
                    {
                        Method (_Q45, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                        {
                            If (DOCD)
                            {
                                Sleep (0x64)
                                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x4010)
                                Notify (\_SB.PCI0.XHCI.URTH.HSP3, 0x09) // Device PLD Check
                                Notify (\_SB.PCI0.XHCI.URTH.SSP3, 0x09) // Device PLD Check
                            }
                            Else
                            {
                                Sleep (0x64)
                                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x4011)
                                Notify (\_SB.PCI0.XHCI.URTH.HSP3, 0x09) // Device PLD Check
                                Notify (\_SB.PCI0.XHCI.URTH.SSP3, 0x09) // Device PLD Check
                            }
                        }

                        Method (DKID, 0, NotSerialized)
                        {
                            Local0 = \_SB.PCI0.LPC.DOI0
                            Local1 = \_SB.PCI0.LPC.DOI1
                            Local2 = \_SB.PCI0.LPC.DOI2
                            Local3 = \_SB.PCI0.LPC.DOI3
                            Local0 |= (Local1 << 0x01)
                            Local0 |= (Local2 << 0x02)
                            Local0 |= (Local3 << 0x03)
                            Return (Local0)
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC.HKEY)
                    {
                        Method (GDKS, 0, NotSerialized)
                        {
                            Local0 = 0x00
                            If ((\_SB.PCI0.LPC.EC.DOCD == 0x01))
                            {
                                If ((\_SB.PCI0.LPC.EC.DCID == 0x03))
                                {
                                    If (!\_SB.PCI0.LPC.EC.DKAC)
                                    {
                                        Local0 |= 0x08
                                    }

                                    Local0 |= 0x01
                                    Local0 |= 0x00090000
                                }
                            }

                            Return (Local0)
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC)
                    {
                        Method (_Q3F, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6000)
                        }

                        Method (_Q74, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
                        {
                            \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6060)
                        }
                    }

                    Scope (\_SB.PCI0.LPC.EC.HKEY)
                    {
                        Method (NUMG, 0, NotSerialized)
                        {
                            Local0 = 0x00
                            Return (Local0)
                        }
                    }
                }
            }

            Device (PEG0)
            {
                Name (_ADR, 0x00010000)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, 0x00)
                Device (PEGP)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                }
            }

            Device (PEG1)
            {
                Name (_ADR, 0x00010001)  // _ADR: Address
                Device (PEGP)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                }
            }

            Device (PEG2)
            {
                Name (_ADR, 0x00010002)  // _ADR: Address
                Device (PEGP)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                }
            }

            Device (GFX0)
            {
                Name (_ADR, 0x00020000)  // _ADR: Address
                Name (RID, 0x00)
            }

            Device (IGBE)
            {
                Name (_ADR, 0x001F0006)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, 0x00)
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (PCIC (Arg0))
                    {
                        Return (PCID (Arg0, Arg1, Arg2, Arg3))
                    }

                    Return (0x00)
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x6D, 
                    0x04
                })
            }

            Device (EXP1)
            {
                Name (_ADR, 0x001C0000)  // _ADR: Address
                Name (RID, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    LTRN = LTR1 /* \LTR1 */
                    LMSL = PML1 /* \PML1 */
                    LNSL = PNL1 /* \PNL1 */
                    OBFN = OBF1 /* \OBF1 */
                }

                Name (LPRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        \_SB.LNKA, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        \_SB.LNKB, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        \_SB.LNKC, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        \_SB.LNKD, 
                        0x00
                    }
                })
                Name (APRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        0x00, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        0x00, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        0x00, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        0x00, 
                        0x13
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (\GPIC)
                    {
                        Return (APRT) /* \_SB_.PCI0.EXP1.APRT */
                    }
                    Else
                    {
                        Return (LPRT) /* \_SB_.PCI0.EXP1.LPRT */
                    }
                }

                OperationRegion (PXCS, PCI_Config, 0x00, 0x0480)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    VDID,   32, 
                    Offset (0x50), 
                    L0SE,   1, 
                        ,   3, 
                    LDIS,   1, 
                    Offset (0x51), 
                    Offset (0x52), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x5A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x5B), 
                    Offset (0x60), 
                    Offset (0x62), 
                    PSPX,   1, 
                    Offset (0xA4), 
                    D3HT,   2, 
                    Offset (0xD8), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                    Offset (0xE2), 
                        ,   2, 
                    L23E,   1, 
                    L23R,   1, 
                    Offset (0x324), 
                        ,   3, 
                    LEDM,   1, 
                    Offset (0x420), 
                        ,   30, 
                    DPGE,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0xDC), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Name (LTRV, Package (0x04)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (0x00)
                            {
                                Name (OPTS, Buffer (0x02)
                                {
                                     0x00, 0x00                                       // ..
                                })
                                CreateBitField (OPTS, 0x00, FUN0)
                                CreateBitField (OPTS, 0x04, FUN4)
                                CreateBitField (OPTS, 0x06, FUN6)
                                CreateBitField (OPTS, 0x08, FUN8)
                                CreateBitField (OPTS, 0x09, FUN9)
                                If ((Arg1 >= 0x02))
                                {
                                    FUN0 = 0x01
                                    If (LTRE)
                                    {
                                        FUN6 = 0x01
                                    }

                                    If (OBFF)
                                    {
                                        FUN4 = 0x01
                                    }

                                    If ((ECR1 == 0x01))
                                    {
                                        If ((Arg1 >= 0x03))
                                        {
                                            FUN8 = 0x01
                                            FUN9 = 0x01
                                        }
                                    }
                                }

                                Return (OPTS) /* \_SB_.PCI0.EXP1._DSM.OPTS */
                            }
                            Case (0x04)
                            {
                                If ((Arg1 >= 0x02))
                                {
                                    If (OBFN)
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00   // ........
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                                        })
                                    }
                                }
                            }
                            Case (0x06)
                            {
                                If ((Arg1 >= 0x02))
                                {
                                    If (LTRN)
                                    {
                                        If (((LMSL == 0x00) || (LNSL == 0x00)))
                                        {
                                            If ((PCHS == SPTH))
                                            {
                                                LMSL = 0x0846
                                                LNSL = 0x0846
                                            }
                                            ElseIf ((PCHS == SPTL))
                                            {
                                                LMSL = 0x1003
                                                LNSL = 0x1003
                                            }
                                        }

                                        LTRV [0x00] = ((LMSL >> 0x0A) & 0x07)
                                        LTRV [0x01] = (LMSL & 0x03FF)
                                        LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                        LTRV [0x03] = (LNSL & 0x03FF)
                                        Return (LTRV) /* \_SB_.PCI0.EXP1.LTRV */
                                    }
                                    Else
                                    {
                                        Return (0x00)
                                    }
                                }
                            }
                            Case (0x08)
                            {
                                If ((ECR1 == 0x01))
                                {
                                    If ((Arg1 >= 0x03))
                                    {
                                        Return (0x01)
                                    }
                                }
                            }
                            Case (0x09)
                            {
                                If ((ECR1 == 0x01))
                                {
                                    If ((Arg1 >= 0x03))
                                    {
                                        Return (Package (0x05)
                                        {
                                            0xC350, 
                                            Ones, 
                                            Ones, 
                                            0xC350, 
                                            Ones
                                        })
                                    }
                                }
                            }

                        }
                    }

                    Return (Buffer (0x01)
                    {
                         0x00                                             // .
                    })
                }

                Device (PXSX)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                }

                Method (HPME, 0, Serialized)
                {
                    If (((VDID != 0xFFFFFFFF) && (PMSX == 0x01)))
                    {
                        PMSX = 0x01
                        PSPX = 0x01
                    }
                }
            }

            Device (EXP2)
            {
                Name (_ADR, 0x001C0001)  // _ADR: Address
                Name (RID, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    LTRN = LTR2 /* \LTR2 */
                    LMSL = PML2 /* \PML2 */
                    LNSL = PNL2 /* \PNL2 */
                    OBFN = OBF2 /* \OBF2 */
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x69, 
                    0x04
                })
                Name (LPRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        \_SB.LNKB, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        \_SB.LNKC, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        \_SB.LNKD, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        \_SB.LNKA, 
                        0x00
                    }
                })
                Name (APRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        0x00, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        0x00, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        0x00, 
                        0x13
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        0x00, 
                        0x10
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (\GPIC)
                    {
                        Return (APRT) /* \_SB_.PCI0.EXP2.APRT */
                    }
                    Else
                    {
                        Return (LPRT) /* \_SB_.PCI0.EXP2.LPRT */
                    }
                }

                OperationRegion (PXCS, PCI_Config, 0x00, 0x0480)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    VDID,   32, 
                    Offset (0x50), 
                    L0SE,   1, 
                        ,   3, 
                    LDIS,   1, 
                    Offset (0x51), 
                    Offset (0x52), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x5A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x5B), 
                    Offset (0x60), 
                    Offset (0x62), 
                    PSPX,   1, 
                    Offset (0xA4), 
                    D3HT,   2, 
                    Offset (0xD8), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                    Offset (0xE2), 
                        ,   2, 
                    L23E,   1, 
                    L23R,   1, 
                    Offset (0x324), 
                        ,   3, 
                    LEDM,   1, 
                    Offset (0x420), 
                        ,   30, 
                    DPGE,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0xDC), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Name (LTRV, Package (0x04)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (0x00)
                            {
                                Name (OPTS, Buffer (0x02)
                                {
                                     0x00, 0x00                                       // ..
                                })
                                CreateBitField (OPTS, 0x00, FUN0)
                                CreateBitField (OPTS, 0x04, FUN4)
                                CreateBitField (OPTS, 0x06, FUN6)
                                CreateBitField (OPTS, 0x08, FUN8)
                                CreateBitField (OPTS, 0x09, FUN9)
                                If ((Arg1 >= 0x02))
                                {
                                    FUN0 = 0x01
                                    If (LTRE)
                                    {
                                        FUN6 = 0x01
                                    }

                                    If (OBFF)
                                    {
                                        FUN4 = 0x01
                                    }

                                    If ((ECR1 == 0x01))
                                    {
                                        If ((Arg1 >= 0x03))
                                        {
                                            FUN8 = 0x01
                                            FUN9 = 0x01
                                        }
                                    }
                                }

                                Return (OPTS) /* \_SB_.PCI0.EXP2._DSM.OPTS */
                            }
                            Case (0x04)
                            {
                                If ((Arg1 >= 0x02))
                                {
                                    If (OBFN)
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00   // ........
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                                        })
                                    }
                                }
                            }
                            Case (0x06)
                            {
                                If ((Arg1 >= 0x02))
                                {
                                    If (LTRN)
                                    {
                                        If (((LMSL == 0x00) || (LNSL == 0x00)))
                                        {
                                            If ((PCHS == SPTH))
                                            {
                                                LMSL = 0x0846
                                                LNSL = 0x0846
                                            }
                                            ElseIf ((PCHS == SPTL))
                                            {
                                                LMSL = 0x1003
                                                LNSL = 0x1003
                                            }
                                        }

                                        LTRV [0x00] = ((LMSL >> 0x0A) & 0x07)
                                        LTRV [0x01] = (LMSL & 0x03FF)
                                        LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                        LTRV [0x03] = (LNSL & 0x03FF)
                                        Return (LTRV) /* \_SB_.PCI0.EXP2.LTRV */
                                    }
                                    Else
                                    {
                                        Return (0x00)
                                    }
                                }
                            }
                            Case (0x08)
                            {
                                If ((ECR1 == 0x01))
                                {
                                    If ((Arg1 >= 0x03))
                                    {
                                        Return (0x01)
                                    }
                                }
                            }
                            Case (0x09)
                            {
                                If ((ECR1 == 0x01))
                                {
                                    If ((Arg1 >= 0x03))
                                    {
                                        Return (Package (0x05)
                                        {
                                            0xC350, 
                                            Ones, 
                                            Ones, 
                                            0xC350, 
                                            Ones
                                        })
                                    }
                                }
                            }

                        }
                    }

                    Return (Buffer (0x01)
                    {
                         0x00                                             // .
                    })
                }

                Device (PXSX)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                }

                Method (HPME, 0, Serialized)
                {
                    If (((VDID != 0xFFFFFFFF) && (PMSX == 0x01)))
                    {
                        PMSX = 0x01
                        PSPX = 0x01
                    }
                }
            }

            Device (EXP3)
            {
                Name (_ADR, 0x001C0002)  // _ADR: Address
                Name (RID, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    LTRN = LTR3 /* \LTR3 */
                    LMSL = PML3 /* \PML3 */
                    LNSL = PNL3 /* \PNL3 */
                    OBFN = OBF3 /* \OBF3 */
                }

                Name (LPRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        \_SB.LNKC, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        \_SB.LNKD, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        \_SB.LNKA, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        \_SB.LNKB, 
                        0x00
                    }
                })
                Name (APRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        0x00, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        0x00, 
                        0x13
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        0x00, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        0x00, 
                        0x11
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (\GPIC)
                    {
                        Return (APRT) /* \_SB_.PCI0.EXP3.APRT */
                    }
                    Else
                    {
                        Return (LPRT) /* \_SB_.PCI0.EXP3.LPRT */
                    }
                }

                OperationRegion (PXCS, PCI_Config, 0x00, 0x0480)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    VDID,   32, 
                    Offset (0x50), 
                    L0SE,   1, 
                        ,   3, 
                    LDIS,   1, 
                    Offset (0x51), 
                    Offset (0x52), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x5A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x5B), 
                    Offset (0x60), 
                    Offset (0x62), 
                    PSPX,   1, 
                    Offset (0xA4), 
                    D3HT,   2, 
                    Offset (0xD8), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                    Offset (0xE2), 
                        ,   2, 
                    L23E,   1, 
                    L23R,   1, 
                    Offset (0x324), 
                        ,   3, 
                    LEDM,   1, 
                    Offset (0x420), 
                        ,   30, 
                    DPGE,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0xDC), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Name (LTRV, Package (0x04)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (0x00)
                            {
                                Name (OPTS, Buffer (0x02)
                                {
                                     0x00, 0x00                                       // ..
                                })
                                CreateBitField (OPTS, 0x00, FUN0)
                                CreateBitField (OPTS, 0x04, FUN4)
                                CreateBitField (OPTS, 0x06, FUN6)
                                CreateBitField (OPTS, 0x08, FUN8)
                                CreateBitField (OPTS, 0x09, FUN9)
                                If ((Arg1 >= 0x02))
                                {
                                    FUN0 = 0x01
                                    If (LTRE)
                                    {
                                        FUN6 = 0x01
                                    }

                                    If (OBFF)
                                    {
                                        FUN4 = 0x01
                                    }

                                    If ((ECR1 == 0x01))
                                    {
                                        If ((Arg1 >= 0x03))
                                        {
                                            FUN8 = 0x01
                                            FUN9 = 0x01
                                        }
                                    }
                                }

                                Return (OPTS) /* \_SB_.PCI0.EXP3._DSM.OPTS */
                            }
                            Case (0x04)
                            {
                                If ((Arg1 >= 0x02))
                                {
                                    If (OBFN)
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00   // ........
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                                        })
                                    }
                                }
                            }
                            Case (0x06)
                            {
                                If ((Arg1 >= 0x02))
                                {
                                    If (LTRN)
                                    {
                                        If (((LMSL == 0x00) || (LNSL == 0x00)))
                                        {
                                            If ((PCHS == SPTH))
                                            {
                                                LMSL = 0x0846
                                                LNSL = 0x0846
                                            }
                                            ElseIf ((PCHS == SPTL))
                                            {
                                                LMSL = 0x1003
                                                LNSL = 0x1003
                                            }
                                        }

                                        LTRV [0x00] = ((LMSL >> 0x0A) & 0x07)
                                        LTRV [0x01] = (LMSL & 0x03FF)
                                        LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                        LTRV [0x03] = (LNSL & 0x03FF)
                                        Return (LTRV) /* \_SB_.PCI0.EXP3.LTRV */
                                    }
                                    Else
                                    {
                                        Return (0x00)
                                    }
                                }
                            }
                            Case (0x08)
                            {
                                If ((ECR1 == 0x01))
                                {
                                    If ((Arg1 >= 0x03))
                                    {
                                        Return (0x01)
                                    }
                                }
                            }
                            Case (0x09)
                            {
                                If ((ECR1 == 0x01))
                                {
                                    If ((Arg1 >= 0x03))
                                    {
                                        Return (Package (0x05)
                                        {
                                            0xC350, 
                                            Ones, 
                                            Ones, 
                                            0xC350, 
                                            Ones
                                        })
                                    }
                                }
                            }

                        }
                    }

                    Return (Buffer (0x01)
                    {
                         0x00                                             // .
                    })
                }

                Device (PXSX)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                }

                Method (HPME, 0, Serialized)
                {
                    If (((VDID != 0xFFFFFFFF) && (PMSX == 0x01)))
                    {
                        PMSX = 0x01
                        PSPX = 0x01
                    }
                }
            }

            Device (EXP5)
            {
                Name (_ADR, 0x001C0004)  // _ADR: Address
                Name (RID, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    LTRN = LTR5 /* \LTR5 */
                    LMSL = PML5 /* \PML5 */
                    LNSL = PNL5 /* \PNL5 */
                    OBFN = OBF5 /* \OBF5 */
                }

                Name (LPRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        \_SB.LNKA, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        \_SB.LNKB, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        \_SB.LNKC, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        \_SB.LNKD, 
                        0x00
                    }
                })
                Name (APRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        0x00, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        0x00, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        0x00, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        0x00, 
                        0x13
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (\GPIC)
                    {
                        Return (APRT) /* \_SB_.PCI0.EXP5.APRT */
                    }
                    Else
                    {
                        Return (LPRT) /* \_SB_.PCI0.EXP5.LPRT */
                    }
                }

                OperationRegion (PXCS, PCI_Config, 0x00, 0x0480)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    VDID,   32, 
                    Offset (0x50), 
                    L0SE,   1, 
                        ,   3, 
                    LDIS,   1, 
                    Offset (0x51), 
                    Offset (0x52), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x5A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x5B), 
                    Offset (0x60), 
                    Offset (0x62), 
                    PSPX,   1, 
                    Offset (0xA4), 
                    D3HT,   2, 
                    Offset (0xD8), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                    Offset (0xE2), 
                        ,   2, 
                    L23E,   1, 
                    L23R,   1, 
                    Offset (0x324), 
                        ,   3, 
                    LEDM,   1, 
                    Offset (0x420), 
                        ,   30, 
                    DPGE,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0xDC), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Name (LTRV, Package (0x04)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (0x00)
                            {
                                Name (OPTS, Buffer (0x02)
                                {
                                     0x00, 0x00                                       // ..
                                })
                                CreateBitField (OPTS, 0x00, FUN0)
                                CreateBitField (OPTS, 0x04, FUN4)
                                CreateBitField (OPTS, 0x06, FUN6)
                                CreateBitField (OPTS, 0x08, FUN8)
                                CreateBitField (OPTS, 0x09, FUN9)
                                If ((Arg1 >= 0x02))
                                {
                                    FUN0 = 0x01
                                    If (LTRE)
                                    {
                                        FUN6 = 0x01
                                    }

                                    If (OBFF)
                                    {
                                        FUN4 = 0x01
                                    }

                                    If ((ECR1 == 0x01))
                                    {
                                        If ((Arg1 >= 0x03))
                                        {
                                            FUN8 = 0x01
                                            FUN9 = 0x01
                                        }
                                    }
                                }

                                Return (OPTS) /* \_SB_.PCI0.EXP5._DSM.OPTS */
                            }
                            Case (0x04)
                            {
                                If ((Arg1 >= 0x02))
                                {
                                    If (OBFN)
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00   // ........
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                                        })
                                    }
                                }
                            }
                            Case (0x06)
                            {
                                If ((Arg1 >= 0x02))
                                {
                                    If (LTRN)
                                    {
                                        If (((LMSL == 0x00) || (LNSL == 0x00)))
                                        {
                                            If ((PCHS == SPTH))
                                            {
                                                LMSL = 0x0846
                                                LNSL = 0x0846
                                            }
                                            ElseIf ((PCHS == SPTL))
                                            {
                                                LMSL = 0x1003
                                                LNSL = 0x1003
                                            }
                                        }

                                        LTRV [0x00] = ((LMSL >> 0x0A) & 0x07)
                                        LTRV [0x01] = (LMSL & 0x03FF)
                                        LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                        LTRV [0x03] = (LNSL & 0x03FF)
                                        Return (LTRV) /* \_SB_.PCI0.EXP5.LTRV */
                                    }
                                    Else
                                    {
                                        Return (0x00)
                                    }
                                }
                            }
                            Case (0x08)
                            {
                                If ((ECR1 == 0x01))
                                {
                                    If ((Arg1 >= 0x03))
                                    {
                                        Return (0x01)
                                    }
                                }
                            }
                            Case (0x09)
                            {
                                If ((ECR1 == 0x01))
                                {
                                    If ((Arg1 >= 0x03))
                                    {
                                        Return (Package (0x05)
                                        {
                                            0xC350, 
                                            Ones, 
                                            Ones, 
                                            0xC350, 
                                            Ones
                                        })
                                    }
                                }
                            }

                        }
                    }

                    Return (Buffer (0x01)
                    {
                         0x00                                             // .
                    })
                }

                Device (PXSX)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                }

                Method (HPME, 0, Serialized)
                {
                    If (((VDID != 0xFFFFFFFF) && (PMSX == 0x01)))
                    {
                        PMSX = 0x01
                        PSPX = 0x01
                    }
                }
            }

            Device (RP09)
            {
                Name (_ADR, 0x001D0000)  // _ADR: Address
                Name (RID, 0x00)
                Method (_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    LMSL = PML9 /* \PML9 */
                    LNSL = PNL9 /* \PNL9 */
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x69, 
                    0x04
                })
                Name (LPRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        \_SB.LNKD, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        \_SB.LNKA, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        \_SB.LNKB, 
                        0x00
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        \_SB.LNKC, 
                        0x00
                    }
                })
                Name (APRT, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        0x00, 
                        0x00, 
                        0x13
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x01, 
                        0x00, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        0x00, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        0x00, 
                        0x12
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (\GPIC)
                    {
                        Return (APRT) /* \_SB_.PCI0.RP09.APRT */
                    }
                    Else
                    {
                        Return (LPRT) /* \_SB_.PCI0.RP09.LPRT */
                    }
                }

                OperationRegion (PXCS, PCI_Config, 0x00, 0x0480)
                Field (PXCS, AnyAcc, NoLock, Preserve)
                {
                    VDID,   32, 
                    Offset (0x50), 
                    L0SE,   1, 
                        ,   3, 
                    LDIS,   1, 
                    Offset (0x51), 
                    Offset (0x52), 
                        ,   13, 
                    LASX,   1, 
                    Offset (0x5A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                    Offset (0x5B), 
                    Offset (0x60), 
                    Offset (0x62), 
                    PSPX,   1, 
                    Offset (0xA4), 
                    D3HT,   2, 
                    Offset (0xD8), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                    Offset (0xE2), 
                        ,   2, 
                    L23E,   1, 
                    L23R,   1, 
                    Offset (0x324), 
                        ,   3, 
                    LEDM,   1, 
                    Offset (0x420), 
                        ,   30, 
                    DPGE,   1
                }

                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                    Offset (0xDC), 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Name (LTRV, Package (0x04)
                {
                    0x00, 
                    0x00, 
                    0x00, 
                    0x00
                })
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If ((Arg0 == ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (0x00)
                            {
                                Name (OPTS, Buffer (0x02)
                                {
                                     0x00, 0x00                                       // ..
                                })
                                CreateBitField (OPTS, 0x00, FUN0)
                                CreateBitField (OPTS, 0x04, FUN4)
                                CreateBitField (OPTS, 0x06, FUN6)
                                CreateBitField (OPTS, 0x08, FUN8)
                                CreateBitField (OPTS, 0x09, FUN9)
                                If ((Arg1 >= 0x02))
                                {
                                    FUN0 = 0x01
                                    If (LTRE)
                                    {
                                        FUN6 = 0x01
                                    }

                                    If (OBFF)
                                    {
                                        FUN4 = 0x01
                                    }

                                    If ((ECR1 == 0x01))
                                    {
                                        If ((Arg1 >= 0x03))
                                        {
                                            FUN8 = 0x01
                                            FUN9 = 0x01
                                        }
                                    }
                                }

                                Return (OPTS) /* \_SB_.PCI0.RP09._DSM.OPTS */
                            }
                            Case (0x04)
                            {
                                If ((Arg1 >= 0x02))
                                {
                                    If (OBFN)
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00   // ........
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (0x10)
                                        {
                                            /* 0000 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                                            /* 0008 */  0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
                                        })
                                    }
                                }
                            }
                            Case (0x06)
                            {
                                If ((Arg1 >= 0x02))
                                {
                                    If (LTRN)
                                    {
                                        If (((LMSL == 0x00) || (LNSL == 0x00)))
                                        {
                                            If ((PCHS == SPTH))
                                            {
                                                LMSL = 0x0846
                                                LNSL = 0x0846
                                            }
                                            ElseIf ((PCHS == SPTL))
                                            {
                                                LMSL = 0x1003
                                                LNSL = 0x1003
                                            }
                                        }

                                        LTRV [0x00] = ((LMSL >> 0x0A) & 0x07)
                                        LTRV [0x01] = (LMSL & 0x03FF)
                                        LTRV [0x02] = ((LNSL >> 0x0A) & 0x07)
                                        LTRV [0x03] = (LNSL & 0x03FF)
                                        Return (LTRV) /* \_SB_.PCI0.RP09.LTRV */
                                    }
                                    Else
                                    {
                                        Return (0x00)
                                    }
                                }
                            }
                            Case (0x08)
                            {
                                If ((ECR1 == 0x01))
                                {
                                    If ((Arg1 >= 0x03))
                                    {
                                        Return (0x01)
                                    }
                                }
                            }
                            Case (0x09)
                            {
                                If ((ECR1 == 0x01))
                                {
                                    If ((Arg1 >= 0x03))
                                    {
                                        Return (Package (0x05)
                                        {
                                            0xC350, 
                                            Ones, 
                                            Ones, 
                                            0xC350, 
                                            Ones
                                        })
                                    }
                                }
                            }

                        }
                    }

                    Return (Buffer (0x01)
                    {
                         0x00                                             // .
                    })
                }

                Device (PXSX)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                }

                Method (HPME, 0, Serialized)
                {
                    If (((VDID != 0xFFFFFFFF) && (PMSX == 0x01)))
                    {
                        PMSX = 0x01
                        PSPX = 0x01
                    }
                }
            }

            Device (SAT1)
            {
                Name (_ADR, 0x00170000)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, 0x00)
            }

            Device (SMBU)
            {
                Name (_ADR, 0x001F0004)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, 0x00)
                Device (CP)
                {
                    Name (_HID, EisaId ("ETDFF00"))  // _HID: Hardware ID
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (((OSYS >= 0x07DD) && (\_SB.PCI0.LPC.NFCD == 0x00)))
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (0x00)
                        }
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Name (RBUF, ResourceTemplate ()
                        {
                            I2cSerialBusV2 (0x0015, DeviceInitiated, 0x00061A80,
                                AddressingMode7Bit, "\\_SB.PCI0.SMBU",
                                0x00, ResourceConsumer, , Exclusive,
                                )
                        })
                        Name (EBUF, Buffer (0x02)
                        {
                             0x79, 0x00                                       // y.
                        })
                        If ((OSYS > 0x07D9))
                        {
                            Return (RBUF) /* \_SB_.PCI0.SMBU.CP__._CRS.RBUF */
                        }
                        Else
                        {
                            Return (EBUF) /* \_SB_.PCI0.SMBU.CP__._CRS.EBUF */
                        }
                    }
                }

                Device (NFC)
                {
                    Name (_HID, EisaId ("BCM2F36"))  // _HID: Hardware ID
                    Name (_CID, EisaId ("BCM2F36"))  // _CID: Compatible ID
                    Name (_UID, 0x00)  // _UID: Unique ID
                }

                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (PCIC (Arg0))
                    {
                        Return (PCID (Arg0, Arg1, Arg2, Arg3))
                    }

                    Return (0x00)
                }

                OperationRegion (SMBP, PCI_Config, 0x50, 0x04)
                Field (SMBP, DWordAcc, NoLock, Preserve)
                {
                        ,   5, 
                    TCOB,   11, 
                    Offset (0x04)
                }

                Name (TCBV, 0x00)
                Method (TCBS, 0, NotSerialized)
                {
                    If ((TCBV == 0x00))
                    {
                        TCBV = (\_SB.PCI0.SMBU.TCOB << 0x05)
                    }

                    Return (TCBV) /* \_SB_.PCI0.SMBU.TCBV */
                }

                OperationRegion (TCBA, SystemIO, TCBS (), 0x10)
                Field (TCBA, ByteAcc, NoLock, Preserve)
                {
                    Offset (0x04), 
                        ,   9, 
                    CPSC,   1
                }

                Scope (\_SB.PCI0.SMBU.NFC)
                {
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If ((\_SB.PCI0.LPC.NFCD || \NFCF))
                        {
                            Return (0x00)
                        }
                        Else
                        {
                            Return (0x0F)
                        }
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Name (RBUF, ResourceTemplate ()
                        {
                            I2cSerialBusV2 (0x0077, DeviceInitiated, 0x00061A80,
                                AddressingMode7Bit, "\\_SB.PCI0.SMBU",
                                0x00, ResourceConsumer, , Exclusive,
                                )
                        })
                        Name (EBUF, Buffer (0x02)
                        {
                             0x79, 0x00                                       // y.
                        })
                        If ((OSYS > 0x07D9))
                        {
                            Return (RBUF) /* \_SB_.PCI0.SMBU.NFC_._CRS.RBUF */
                        }
                        Else
                        {
                            Return (EBUF) /* \_SB_.PCI0.SMBU.NFC_._CRS.EBUF */
                        }
                    }

                    Method (GPEN, 0, NotSerialized)
                    {
                        \_GPE.GPFG = 0x01
                    }

                    Method (SNFC, 1, NotSerialized)
                    {
                        If (Arg0)
                        {
                            \_SB.PCI0.LPC.NFCP = 0x01
                        }
                        Else
                        {
                            \_SB.PCI0.LPC.NFCP = 0x00
                        }
                    }
                }
            }

            Device (XHCI)
            {
                Name (_ADR, 0x00140000)  // _ADR: Address
                Name (RID, 0x00)
                Device (URTH)
                {
                    Name (_ADR, 0x00)  // _ADR: Address
                    Device (HSP0)
                    {
                        Name (_ADR, 0x01)  // _ADR: Address
                    }

                    Device (HSP1)
                    {
                        Name (_ADR, 0x02)  // _ADR: Address
                    }

                    Device (HSP2)
                    {
                        Name (_ADR, 0x03)  // _ADR: Address
                    }

                    Device (HSP3)
                    {
                        Name (_ADR, 0x04)  // _ADR: Address
                    }

                    Device (HSP4)
                    {
                        Name (_ADR, 0x05)  // _ADR: Address
                    }

                    Device (HSP5)
                    {
                        Name (_ADR, 0x06)  // _ADR: Address
                    }

                    Device (HSP6)
                    {
                        Name (_ADR, 0x07)  // _ADR: Address
                    }

                    Device (HSP7)
                    {
                        Name (_ADR, 0x08)  // _ADR: Address
                        Device (WCAM)
                        {
                            Name (_ADR, 0x08)  // _ADR: Address
                        }
                    }

                    Device (HSP8)
                    {
                        Name (_ADR, 0x09)  // _ADR: Address
                    }

                    Device (HSP9)
                    {
                        Name (_ADR, 0x0A)  // _ADR: Address
                    }

                    Device (HSPA)
                    {
                        Name (_ADR, 0x0B)  // _ADR: Address
                    }

                    Device (HSPB)
                    {
                        Name (_ADR, 0x0C)  // _ADR: Address
                    }

                    Device (SSP0)
                    {
                        Name (_ADR, 0x0D)  // _ADR: Address
                    }

                    Device (SSP1)
                    {
                        Name (_ADR, 0x0E)  // _ADR: Address
                    }

                    Device (SSP2)
                    {
                        Name (_ADR, 0x0F)  // _ADR: Address
                    }

                    Device (SSP3)
                    {
                        Name (_ADR, 0x10)  // _ADR: Address
                    }

                    Device (SSP4)
                    {
                        Name (_ADR, 0x11)  // _ADR: Address
                    }

                    Device (SSP5)
                    {
                        Name (_ADR, 0x12)  // _ADR: Address
                    }
                }

                Name (_PR0, Package (0x01)  // _PR0: Power Resources for D0
                {
                    \_SB.PCI0.LPC.EC.PUBS
                })
                Name (_PR1, Package (0x01)  // _PR1: Power Resources for D1
                {
                    \_SB.PCI0.LPC.EC.PUBS
                })
                Name (_PR2, Package (0x01)  // _PR2: Power Resources for D2
                {
                    \_SB.PCI0.LPC.EC.PUBS
                })
                Name (_PRW, Package (0x03)  // _PRW: Power Resources for Wake
                {
                    0x6D, 
                    0x03, 
                    \_SB.PCI0.LPC.EC.PUBS
                })
                Scope (\_SB.PCI0)
                {
                    Scope (\_SB.PCI0.XHCI)
                    {
                        OperationRegion (XPRT, PCI_Config, 0x00, 0x0100)
                        Field (XPRT, AnyAcc, NoLock, Preserve)
                        {
                            DVID,   16, 
                            Offset (0x10), 
                            XADL,   32, 
                            XADH,   32, 
                            Offset (0x50), 
                                ,   2, 
                            STGE,   1, 
                            Offset (0xA2), 
                                ,   2, 
                            D3HE,   1, 
                            Offset (0xA8), 
                                ,   13, 
                            MW13,   1, 
                            MW14,   1, 
                            Offset (0xAC), 
                            Offset (0xB0), 
                                ,   13, 
                            MB13,   1, 
                            MB14,   1, 
                            Offset (0xB4), 
                            Offset (0xD0), 
                            PR2,    32, 
                            PR2M,   32, 
                            PR3,    32, 
                            PR3M,   32
                        }

                        Field (XPRT, ByteAcc, NoLock, Preserve)
                        {
                            Offset (0x74), 
                            D0D3,   2, 
                            Offset (0x75), 
                            PMEE,   1, 
                                ,   6, 
                            PMES,   1
                        }

                        Name (XFLT, 0x00)
                        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                        {
                            ADBG ("_DSM")
                            Local0 = (XADH << 0x20)
                            Local0 |= XADL /* \_SB_.PCI0.XHCI.XADL */
                            Local0 &= 0xFFFFFFFFFFFFFFF0
                            OperationRegion (XMIO, SystemMemory, Local0, 0x9000)
                            Field (XMIO, AnyAcc, Lock, Preserve)
                            {
                                Offset (0x550), 
                                PCCS,   1, 
                                    ,   4, 
                                PPLS,   4, 
                                PTPP,   1, 
                                Offset (0x8420), 
                                PRTM,   2
                            }

                            If (PCIC (Arg0))
                            {
                                Return (PCID (Arg0, Arg1, Arg2, Arg3))
                            }

                            If ((Arg0 == ToUUID ("ac340cb7-e901-45bf-b7e6-2b34ec931e23") /* Unknown UUID */))
                            {
                                If ((Arg1 == 0x03))
                                {
                                    XFLT = Arg1
                                }

                                If (((PRTM > 0x00) && ((Arg1 == 0x05) || (Arg1 == 0x06))))
                                {
                                    ADBG ("SSIC")
                                    If ((((PCCS == 0x00) || (PTPP == 0x00)) || ((
                                        PPLS >= 0x04) && (PPLS <= 0x0F))))
                                    {
                                        If ((PPLS == 0x08))
                                        {
                                            D3HE = One
                                        }
                                        Else
                                        {
                                            D3HE = Zero
                                        }
                                    }
                                    Else
                                    {
                                        D3HE = One
                                    }
                                }
                            }

                            Return (0x00)
                        }

                        Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                        {
                            Return (0x03)
                        }

                        Method (_S4D, 0, NotSerialized)  // _S4D: S4 Device State
                        {
                            Return (0x03)
                        }

                        Method (_S3W, 0, NotSerialized)  // _S3W: S3 Device Wake State
                        {
                            Return (0x03)
                        }

                        Method (_S4W, 0, NotSerialized)  // _S4W: S4 Device Wake State
                        {
                            Return (0x03)
                        }

                        Method (_S0W, 0, NotSerialized)  // _S0W: S0 Device Wake State
                        {
                            If ((XFLT == Zero))
                            {
                                Return (0x00)
                            }
                            Else
                            {
                                Return (0x03)
                            }
                        }

                        Method (_DSW, 3, NotSerialized)  // _DSW: Device Sleep Wake
                        {
                            PMEE = Arg0
                        }

                        Method (_INI, 0, NotSerialized)  // _INI: Initialize
                        {
                            If (CondRefOf (\_SB.PCI0.XHCI.URTH.INIR))
                            {
                                \_SB.PCI0.XHCI.URTH.INIR ()
                            }
                        }

                        OperationRegion (XHCP, SystemMemory, (\_SB.PCI0.GPCB () + 0x000A0000), 0x0100)
                        Field (XHCP, AnyAcc, Lock, Preserve)
                        {
                            Offset (0x04), 
                            PDBM,   16, 
                            Offset (0x10), 
                            MEMB,   64
                        }

                        Name (XRST, Zero)
                        Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                        {
                            If ((^DVID == 0xFFFF))
                            {
                                Return (Zero)
                            }

                            Local2 = ^MEMB /* \_SB_.PCI0.XHCI.MEMB */
                            Local1 = ^PDBM /* \_SB_.PCI0.XHCI.PDBM */
                            ^PDBM &= ~0x06
                            D3HE = 0x00
                            STGE = 0x00
                            Local3 = ^D0D3 /* \_SB_.PCI0.XHCI.D0D3 */
                            ^D0D3 = 0x00
                            ^MEMB = \XWMB
                            ^PDBM = (Local1 | 0x02)
                            OperationRegion (MC11, SystemMemory, \XWMB, 0x9000)
                            Field (MC11, DWordAcc, Lock, Preserve)
                            {
                                Offset (0x81C4), 
                                    ,   2, 
                                UPSW,   2
                            }

                            UPSW = 0x00
                            ^PDBM &= ~0x02
                            ^MEMB = Local2
                            ^PDBM = Local1
                            If (CondRefOf (\_SB.PCI0.XHCI.PS0X))
                            {
                                \_SB.PCI0.XHCI.PS0X ()
                            }

                            If ((UWAB && (D0D3 == 0x00)))
                            {
                                MPMC = 0x01
                                While (PMFS)
                                {
                                    Sleep (0x0A)
                                }
                            }
                        }

                        Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                        {
                            If ((^DVID == 0xFFFF))
                            {
                                Return (Zero)
                            }

                            Local2 = ^MEMB /* \_SB_.PCI0.XHCI.MEMB */
                            Local1 = ^PDBM /* \_SB_.PCI0.XHCI.PDBM */
                            ^PDBM &= ~0x06
                            ^D0D3 = 0x00
                            ^MEMB = \XWMB
                            ^PDBM = (Local1 | 0x02)
                            OperationRegion (MC11, SystemMemory, \XWMB, 0x9000)
                            Field (MC11, DWordAcc, Lock, Preserve)
                            {
                                Offset (0x81C4), 
                                    ,   2, 
                                UPSW,   2
                            }

                            UPSW = 0x03
                            ^PDBM &= ~0x02
                            D3HE = 0x01
                            STGE = 0x01
                            ^D0D3 = 0x03
                            ^MEMB = Local2
                            ^PDBM = Local1
                            If (CondRefOf (\_SB.PCI0.XHCI.PS3X))
                            {
                                \_SB.PCI0.XHCI.PS3X ()
                            }

                            If ((UWAB && (D0D3 == 0x03)))
                            {
                                MPMC = 0x03
                                While (PMFS)
                                {
                                    Sleep (0x0A)
                                }
                            }
                        }

                        Method (CUID, 1, Serialized)
                        {
                            If ((Arg0 == ToUUID ("7c9512a9-1705-4cb4-af7d-506a2423ab71") /* Unknown UUID */))
                            {
                                Return (0x01)
                            }

                            Return (0x00)
                        }

                        Scope (\_SB.PCI0.XHCI.URTH)
                        {
                            Method (_PS0, 0, Serialized)  // _PS0: Power State 0
                            {
                                If ((\_SB.PCI0.XHCI.DVID == 0xFFFF))
                                {
                                    Return (Zero)
                                }

                                If (CondRefOf (\_SB.PCI0.XHCI.URTH.PS0X))
                                {
                                    \_SB.PCI0.XHCI.URTH.PS0X ()
                                }
                            }

                            Method (_PS2, 0, Serialized)  // _PS2: Power State 2
                            {
                                If ((\_SB.PCI0.XHCI.DVID == 0xFFFF))
                                {
                                    Return (Zero)
                                }

                                If (CondRefOf (\_SB.PCI0.XHCI.URTH.PS2X))
                                {
                                    \_SB.PCI0.XHCI.URTH.PS2X ()
                                }
                            }

                            Method (_PS3, 0, Serialized)  // _PS3: Power State 3
                            {
                                If ((\_SB.PCI0.XHCI.DVID == 0xFFFF))
                                {
                                    Return (Zero)
                                }

                                If (CondRefOf (\_SB.PCI0.XHCI.URTH.PS3X))
                                {
                                    \_SB.PCI0.XHCI.URTH.PS3X ()
                                }
                            }
                        }
                    }
                }

                Scope (\)
                {
                    Name (UPC0, Package (0x04)
                    {
                        0xFF, 
                        0x00, 
                        0x00, 
                        0x00
                    })
                    Name (PLD0, Buffer (0x10)
                    {
                        /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x99, 0x12, 0x80, 0x00, 0x03, 0x00, 0x00, 0x00   // ........
                    })
                    Name (UPC1, Package (0x04)
                    {
                        0x00, 
                        0xFF, 
                        0x00, 
                        0x00
                    })
                    Name (PLD1, Buffer (0x10)
                    {
                        /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // 0.......
                    })
                    Name (UPC2, Package (0x04)
                    {
                        0xFF, 
                        0x00, 
                        0x00, 
                        0x00
                    })
                    Name (PLD2, Buffer (0x10)
                    {
                        /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x99, 0x10, 0x00, 0x01, 0x03, 0x00, 0x00, 0x00   // ........
                    })
                    Name (UPC3, Package (0x04)
                    {
                        0xFF, 
                        0x00, 
                        0x00, 
                        0x00
                    })
                    Name (PLD3, Buffer (0x10)
                    {
                        /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x91, 0x10, 0x80, 0x01, 0x03, 0x00, 0x00, 0x00   // ........
                    })
                    Name (UPCI, Package (0x04)
                    {
                        0x00, 
                        0xFF, 
                        0x00, 
                        0x00
                    })
                    Name (PLDI, Buffer (0x10)
                    {
                        /* 0000 */  0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // 0.......
                    })
                    Name (PLDC, Buffer (0x14)
                    {
                        /* 0000 */  0x82, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // ........
                        /* 0008 */  0x24, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,  // $.......
                        /* 0010 */  0xDD, 0x00, 0x95, 0x00                           // ....
                    })
                }

                Scope (\_SB.PCI0.XHCI.URTH.HSP0)
                {
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00
                        })
                        CopyObject (\UPC0, UPCP) /* \_SB_.PCI0.XHCI.URTH.HSP0._UPC.UPCP */
                        Return (UPCP) /* \_SB_.PCI0.XHCI.URTH.HSP0._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Buffer (0x10){})
                        PLDP = \PLD0
                        Return (PLDP) /* \_SB_.PCI0.XHCI.URTH.HSP0._PLD.PLDP */
                    }
                }

                Scope (\_SB.PCI0.XHCI.URTH.HSP1)
                {
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00
                        })
                        CopyObject (\UPC1, UPCP) /* \_SB_.PCI0.XHCI.URTH.HSP1._UPC.UPCP */
                        Return (UPCP) /* \_SB_.PCI0.XHCI.URTH.HSP1._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Buffer (0x10){})
                        PLDP = \PLD1
                        Return (PLDP) /* \_SB_.PCI0.XHCI.URTH.HSP1._PLD.PLDP */
                    }
                }

                Scope (\_SB.PCI0.XHCI.URTH.HSP2)
                {
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00
                        })
                        CopyObject (\UPC2, UPCP) /* \_SB_.PCI0.XHCI.URTH.HSP2._UPC.UPCP */
                        Return (UPCP) /* \_SB_.PCI0.XHCI.URTH.HSP2._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Buffer (0x10){})
                        PLDP = \PLD2
                        Return (PLDP) /* \_SB_.PCI0.XHCI.URTH.HSP2._PLD.PLDP */
                    }
                }

                Scope (\_SB.PCI0.XHCI.URTH.HSP3)
                {
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00
                        })
                        If ((\_SB.PCI0.LPC.EC.DOCD == 0x01))
                        {
                            CopyObject (\UPCI, UPCP) /* \_SB_.PCI0.XHCI.URTH.HSP3._UPC.UPCP */
                        }
                        Else
                        {
                            CopyObject (\UPC3, UPCP) /* \_SB_.PCI0.XHCI.URTH.HSP3._UPC.UPCP */
                        }

                        Return (UPCP) /* \_SB_.PCI0.XHCI.URTH.HSP3._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Buffer (0x10){})
                        If ((\_SB.PCI0.LPC.EC.DOCD == 0x01))
                        {
                            PLDP = \PLDI
                        }
                        Else
                        {
                            PLDP = \PLD3
                        }

                        Return (PLDP) /* \_SB_.PCI0.XHCI.URTH.HSP3._PLD.PLDP */
                    }
                }

                Scope (\_SB.PCI0.XHCI.URTH.HSP4)
                {
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00
                        })
                        CopyObject (\UPCI, UPCP) /* \_SB_.PCI0.XHCI.URTH.HSP4._UPC.UPCP */
                        Return (UPCP) /* \_SB_.PCI0.XHCI.URTH.HSP4._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Buffer (0x10){})
                        PLDP = \PLDI
                        Return (PLDP) /* \_SB_.PCI0.XHCI.URTH.HSP4._PLD.PLDP */
                    }
                }

                Scope (\_SB.PCI0.XHCI.URTH.HSP5)
                {
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00
                        })
                        CopyObject (\UPCI, UPCP) /* \_SB_.PCI0.XHCI.URTH.HSP5._UPC.UPCP */
                        Return (UPCP) /* \_SB_.PCI0.XHCI.URTH.HSP5._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Buffer (0x10){})
                        PLDP = \PLDI
                        Return (PLDP) /* \_SB_.PCI0.XHCI.URTH.HSP5._PLD.PLDP */
                    }
                }

                Scope (\_SB.PCI0.XHCI.URTH.HSP6)
                {
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00
                        })
                        CopyObject (\UPCI, UPCP) /* \_SB_.PCI0.XHCI.URTH.HSP6._UPC.UPCP */
                        Return (UPCP) /* \_SB_.PCI0.XHCI.URTH.HSP6._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Buffer (0x10){})
                        PLDP = \PLDI
                        Return (PLDP) /* \_SB_.PCI0.XHCI.URTH.HSP6._PLD.PLDP */
                    }
                }

                Scope (\_SB.PCI0.XHCI.URTH.HSP7)
                {
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00
                        })
                        CopyObject (\UPCI, UPCP) /* \_SB_.PCI0.XHCI.URTH.HSP7._UPC.UPCP */
                        Return (UPCP) /* \_SB_.PCI0.XHCI.URTH.HSP7._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Buffer (0x10){})
                        PLDP = \PLDI
                        Return (PLDP) /* \_SB_.PCI0.XHCI.URTH.HSP7._PLD.PLDP */
                    }
                }

                Scope (\_SB.PCI0.XHCI.URTH.HSP8)
                {
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00
                        })
                        CopyObject (\UPCI, UPCP) /* \_SB_.PCI0.XHCI.URTH.HSP8._UPC.UPCP */
                        Return (UPCP) /* \_SB_.PCI0.XHCI.URTH.HSP8._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Buffer (0x10){})
                        PLDP = \PLDI
                        Return (PLDP) /* \_SB_.PCI0.XHCI.URTH.HSP8._PLD.PLDP */
                    }
                }

                Scope (\_SB.PCI0.XHCI.URTH.HSP9)
                {
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00
                        })
                        CopyObject (\UPCI, UPCP) /* \_SB_.PCI0.XHCI.URTH.HSP9._UPC.UPCP */
                        Return (UPCP) /* \_SB_.PCI0.XHCI.URTH.HSP9._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Buffer (0x10){})
                        PLDP = \PLDI
                        Return (PLDP) /* \_SB_.PCI0.XHCI.URTH.HSP9._PLD.PLDP */
                    }
                }

                Scope (\_SB.PCI0.XHCI.URTH.HSPA)
                {
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00
                        })
                        CopyObject (\UPCI, UPCP) /* \_SB_.PCI0.XHCI.URTH.HSPA._UPC.UPCP */
                        Return (UPCP) /* \_SB_.PCI0.XHCI.URTH.HSPA._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Buffer (0x10){})
                        PLDP = \PLDI
                        Return (PLDP) /* \_SB_.PCI0.XHCI.URTH.HSPA._PLD.PLDP */
                    }
                }

                Scope (\_SB.PCI0.XHCI.URTH.HSPB)
                {
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00
                        })
                        CopyObject (\UPCI, UPCP) /* \_SB_.PCI0.XHCI.URTH.HSPB._UPC.UPCP */
                        Return (UPCP) /* \_SB_.PCI0.XHCI.URTH.HSPB._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Buffer (0x10){})
                        PLDP = \PLDI
                        Return (PLDP) /* \_SB_.PCI0.XHCI.URTH.HSPB._PLD.PLDP */
                    }
                }

                Scope (\_SB.PCI0.XHCI.URTH.SSP0)
                {
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00
                        })
                        CopyObject (\UPC0, UPCP) /* \_SB_.PCI0.XHCI.URTH.SSP0._UPC.UPCP */
                        Return (UPCP) /* \_SB_.PCI0.XHCI.URTH.SSP0._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Buffer (0x10){})
                        PLDP = \PLD0
                        Return (PLDP) /* \_SB_.PCI0.XHCI.URTH.SSP0._PLD.PLDP */
                    }
                }

                Scope (\_SB.PCI0.XHCI.URTH.SSP1)
                {
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00
                        })
                        CopyObject (\UPC1, UPCP) /* \_SB_.PCI0.XHCI.URTH.SSP1._UPC.UPCP */
                        Return (UPCP) /* \_SB_.PCI0.XHCI.URTH.SSP1._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Buffer (0x10){})
                        PLDP = \PLD1
                        Return (PLDP) /* \_SB_.PCI0.XHCI.URTH.SSP1._PLD.PLDP */
                    }
                }

                Scope (\_SB.PCI0.XHCI.URTH.SSP2)
                {
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00
                        })
                        CopyObject (\UPC2, UPCP) /* \_SB_.PCI0.XHCI.URTH.SSP2._UPC.UPCP */
                        Return (UPCP) /* \_SB_.PCI0.XHCI.URTH.SSP2._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Buffer (0x10){})
                        PLDP = \PLD2
                        Return (PLDP) /* \_SB_.PCI0.XHCI.URTH.SSP2._PLD.PLDP */
                    }
                }

                Scope (\_SB.PCI0.XHCI.URTH.SSP3)
                {
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00
                        })
                        CopyObject (\UPCI, UPCP) /* \_SB_.PCI0.XHCI.URTH.SSP3._UPC.UPCP */
                        Return (UPCP) /* \_SB_.PCI0.XHCI.URTH.SSP3._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Buffer (0x10){})
                        PLDP = \PLDI
                        Return (PLDP) /* \_SB_.PCI0.XHCI.URTH.SSP3._PLD.PLDP */
                    }
                }

                Scope (\_SB.PCI0.XHCI.URTH.SSP4)
                {
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00
                        })
                        CopyObject (\UPCI, UPCP) /* \_SB_.PCI0.XHCI.URTH.SSP4._UPC.UPCP */
                        Return (UPCP) /* \_SB_.PCI0.XHCI.URTH.SSP4._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Buffer (0x10){})
                        PLDP = \PLDI
                        Return (PLDP) /* \_SB_.PCI0.XHCI.URTH.SSP4._PLD.PLDP */
                    }
                }

                Scope (\_SB.PCI0.XHCI.URTH.SSP5)
                {
                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Name (UPCP, Package (0x04)
                        {
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00
                        })
                        CopyObject (\UPCI, UPCP) /* \_SB_.PCI0.XHCI.URTH.SSP5._UPC.UPCP */
                        Return (UPCP) /* \_SB_.PCI0.XHCI.URTH.SSP5._UPC.UPCP */
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Name (PLDP, Buffer (0x10){})
                        PLDP = \PLDI
                        Return (PLDP) /* \_SB_.PCI0.XHCI.URTH.SSP5._PLD.PLDP */
                    }
                }

                Scope (\_SB.PCI0.XHCI.URTH.HSP7.WCAM)
                {
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        If (\WIN8)
                        {
                            Return (0x0F)
                        }
                        Else
                        {
                            Return (0x00)
                        }
                    }

                    Method (_UPC, 0, Serialized)  // _UPC: USB Port Capabilities
                    {
                        Return (\UPCI)
                    }

                    Method (_PLD, 0, Serialized)  // _PLD: Physical Location of Device
                    {
                        Return (\PLDC)
                    }
                }
            }

            Device (HDEF)
            {
                Name (_ADR, 0x001F0003)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, 0x00)
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    ADBG ("HDAS _DSM")
                    If (PCIC (Arg0))
                    {
                        Return (PCID (Arg0, Arg1, Arg2, Arg3))
                    }

                    Return (0x00)
                }
            }

            Device (HECI)
            {
                Name (_ADR, 0x00160000)  // _ADR: Address
                Name (_S3D, 0x03)  // _S3D: S3 Device State
                Name (RID, 0x00)
                Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
                {
                    If (PCIC (Arg0))
                    {
                        Return (PCID (Arg0, Arg1, Arg2, Arg3))
                    }

                    Return (0x00)
                }
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Name (BDEV, 0xFF)
            Name (BSTS, 0x00)
            Name (BHKE, 0x00)
            Method (_Q2C, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                If ((BSTS == 0x00))
                {
                    BDEV = BGID (0x00)
                    NBRE (BDEV)
                }
            }

            Method (_Q2D, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                BDEV = BGID (0x00)
                NBIN (BDEV)
            }

            Method (_Q38, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                Local0 = BGID (0x00)
                If ((Local0 == 0x0F))
                {
                    BDIS ()
                    \BHDP (0x01, 0x00)
                    NBEJ (BDEV)
                    BDEV = Local0
                    If ((\BIDE == 0x03))
                    {
                        \_SB.PCI0.SAT1.PRIM.GTME = 0x00
                        \_SB.PCI0.SAT1.SCND.GTME = 0x00
                    }
                }
                ElseIf (HPBU){}
                Else
                {
                    BDEV = Local0
                    NBIN (Local0)
                }
            }

            Method (NBRE, 1, NotSerialized)
            {
                If ((Arg0 < 0x0C))
                {
                    If ((\BIDE == 0x03))
                    {
                        Notify (\_SB.PCI0.SAT1.SCND.MSTR, 0x03) // Eject Request
                    }
                    Else
                    {
                        Notify (\_SB.PCI0.SAT1.PRT1, 0x03) // Eject Request
                    }
                }
            }

            Method (NBEJ, 1, NotSerialized)
            {
                If ((BSTS == 0x00))
                {
                    If ((Arg0 < 0x0C))
                    {
                        If ((\BIDE == 0x03))
                        {
                            Notify (\_SB.PCI0.SAT1.SCND.MSTR, 0x01) // Device Check
                        }
                        Else
                        {
                            Notify (\_SB.PCI0.SAT1.PRT1, 0x01) // Device Check
                        }
                    }
                }

                BEEP (0x00)
                BSTS = 0x00
            }

            Method (NBIN, 1, NotSerialized)
            {
                If ((Arg0 < 0x0C))
                {
                    BEN (0x01)
                    If ((\BIDE == 0x03))
                    {
                        Notify (\_SB.PCI0.SAT1.SCND.MSTR, 0x01) // Device Check
                    }
                    Else
                    {
                        Notify (\_SB.PCI0.SAT1.PRT1, 0x01) // Device Check
                    }
                }

                BEEP (0x00)
                BSTS = 0x00
            }

            Method (BEJ0, 1, NotSerialized)
            {
                If (Arg0)
                {
                    BDIS ()
                    \BHDP (0x01, 0x00)
                    BSTS = 0x01
                    If (BHKE)
                    {
                        BHKE = 0x00
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x3003)
                    }
                }
                Else
                {
                    BSTS = 0x00
                }
            }

            Method (BEJ3, 1, NotSerialized)
            {
                If (Arg0)
                {
                    BDIS ()
                    BSTS = 0x01
                }
                Else
                {
                    BSTS = 0x00
                }
            }

            Method (BPTS, 1, NotSerialized)
            {
                HDBM = 0x01
                If ((BSTS != 0x00))
                {
                    BDEV = 0x0F
                    BSTS = 0x00
                }

                BHKE = 0x00
                BUWK (0x00)
            }

            Method (BWAK, 1, NotSerialized)
            {
                BUWK (0x00)
                Local0 = BGID (0x00)
                If ((BSTS == 0x00))
                {
                    If ((Local0 != BDEV))
                    {
                        NBEJ (BDEV)
                        BDEV = Local0
                        NBIN (Local0)
                    }
                    ElseIf ((\LFDC || (BDEV != 0x0D)))
                    {
                        If ((Local0 != 0x0F))
                        {
                            If (HPBU)
                            {
                                If ((Arg0 <= 0x02)){}
                                Else
                                {
                                    NBRE (Local0)
                                }
                            }
                        }
                    }
                }

                If ((BDEV < 0x0C))
                {
                    \UBIS (0x00)
                }
                Else
                {
                    \UBIS (0x01)
                }
            }

            Method (BDIS, 0, NotSerialized)
            {
                If (!\_SB.PCI0.LPC.CSON)
                {
                    If (!\_SB.PCI0.LPC.GLIS)
                    {
                        \UBIS (0x01)
                    }

                    \_SB.PCI0.LPC.CSON = 0x01
                    \IDET = 0x0F
                }
            }

            Method (BPON, 1, NotSerialized)
            {
                If (\_SB.PCI0.LPC.CSON)
                {
                    \_SB.PCI0.LPC.CSON = 0x00
                    If (\_SB.PCI0.LPC.GLIS)
                    {
                        \UBIS (0x00)
                    }
                }
            }

            Method (BEN, 1, NotSerialized)
            {
                If (\_SB.PCI0.LPC.CSON)
                {
                    BPON (Arg0)
                    If (Arg0)
                    {
                        IRDY ()
                    }
                }
            }

            Method (BSTA, 1, NotSerialized)
            {
                If (\_SB.PCI0.LPC.CSON)
                {
                    Return (0x00)
                }

                BINI ()
                If ((Arg0 == 0x01))
                {
                    Return ((BDEV < 0x0C))
                }

                Return (0x00)
            }

            Method (BUWK, 1, NotSerialized)
            {
                If (\H8DR)
                {
                    If (Arg0)
                    {
                        \_SB.PCI0.LPC.EC.HWBU = 0x01
                    }
                    Else
                    {
                        \_SB.PCI0.LPC.EC.HWBU = 0x00
                    }
                }
                ElseIf (Arg0)
                {
                    \MBEC (0x32, 0xFF, 0x80)
                }
                Else
                {
                    \MBEC (0x32, 0x7F, 0x00)
                }
            }

            Method (BINI, 0, NotSerialized)
            {
                If ((BDEV == 0xFF))
                {
                    BDEV = BGID (0x00)
                }
            }

            Method (BGID, 1, NotSerialized)
            {
                If (Arg0)
                {
                    Local0 = 0xFF
                }
                Else
                {
                    If (\H8DR)
                    {
                        Local1 = HPBU /* \_SB_.PCI0.LPC_.EC__.HPBU */
                        Local2 = HBID /* \_SB_.PCI0.LPC_.EC__.HBID */
                    }
                    Else
                    {
                        Local2 = RBEC (0x47)
                        Local1 = (Local2 & 0x01)
                        Local2 &= 0x04
                        Local2 >>= 0x02
                    }

                    If (Local2)
                    {
                        Local0 = 0x0F
                    }
                    ElseIf (HDUB)
                    {
                        Local0 = 0x0F
                    }
                    ElseIf (((\IDET == 0x03) || (\IDET == 0x06)))
                    {
                        Local0 = \IDET
                    }
                    Else
                    {
                        Local0 = 0x07
                    }

                    If ((Local0 == 0x0F)){}
                }

                If ((\HDUB && (Local0 < 0x0C)))
                {
                    Local0 = 0x0F
                }

                Return (Local0)
            }

            Method (IRDY, 0, NotSerialized)
            {
                Local0 = 0x01F4
                Local1 = 0x3C
                Local2 = Zero
                While (Local1)
                {
                    Sleep (Local0)
                    Local3 = \BCHK ()
                    If (!Local3)
                    {
                        Break
                    }

                    If ((Local3 == 0x02))
                    {
                        Local2 = One
                        Break
                    }

                    Local1--
                }

                Return (Local2)
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Method (_Q43, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                \UCMS (0x18)
            }

            Method (SAUM, 1, NotSerialized)
            {
                If ((Arg0 > 0x03))
                {
                    Noop
                }
                ElseIf (\H8DR)
                {
                    HAUM = Arg0
                }
                Else
                {
                    \MBEC (0x03, 0x9F, (Arg0 << 0x05))
                }
            }
        }

        Scope (\_SB.PCI0.LPC.EC.HKEY)
        {
            Method (GSMS, 1, NotSerialized)
            {
                Return (\AUDC (0x00, 0x00))
            }

            Method (SSMS, 1, NotSerialized)
            {
                Return (\AUDC (0x01, (Arg0 & 0x01)))
            }

            Method (SHDA, 1, NotSerialized)
            {
                Return (\AUDC (0x02, (Arg0 & 0x01)))
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Name (BRTW, Package (0x12)
            {
                0x64, 
                0x64, 
                0x05, 
                0x0A, 
                0x14, 
                0x19, 
                0x1E, 
                0x23, 
                0x28, 
                0x2D, 
                0x32, 
                0x37, 
                0x3C, 
                0x41, 
                0x46, 
                0x50, 
                0x5A, 
                0x64
            })
            Name (BRTB, Package (0x04)
            {
                Package (0x16)
                {
                    0x1E, 
                    0x03, 
                    0x03, 
                    0x06, 
                    0x0A, 
                    0x0E, 
                    0x11, 
                    0x16, 
                    0x1B, 
                    0x21, 
                    0x28, 
                    0x32, 
                    0x41, 
                    0x54, 
                    0x73, 
                    0xA2, 
                    0xD5, 
                    0xFF, 
                    0xDC, 
                    0xDC, 
                    0x03, 
                    0x03
                }, 

                Package (0x16)
                {
                    0x19, 
                    0x03, 
                    0x03, 
                    0x06, 
                    0x0B, 
                    0x0F, 
                    0x17, 
                    0x21, 
                    0x2E, 
                    0x3A, 
                    0x43, 
                    0x50, 
                    0x5F, 
                    0x78, 
                    0x95, 
                    0xC1, 
                    0xDC, 
                    0xFF, 
                    0xDC, 
                    0xDC, 
                    0x03, 
                    0x03
                }, 

                Package (0x16)
                {
                    0x1B, 
                    0x03, 
                    0x03, 
                    0x06, 
                    0x0A, 
                    0x0E, 
                    0x13, 
                    0x18, 
                    0x1F, 
                    0x27, 
                    0x31, 
                    0x3A, 
                    0x48, 
                    0x5E, 
                    0x82, 
                    0xB4, 
                    0xE2, 
                    0xFF, 
                    0xDC, 
                    0xDC, 
                    0x03, 
                    0x03
                }, 

                Package (0x16)
                {
                    0x28, 
                    0x03, 
                    0x03, 
                    0x04, 
                    0x06, 
                    0x08, 
                    0x0A, 
                    0x0C, 
                    0x11, 
                    0x18, 
                    0x20, 
                    0x2C, 
                    0x3B, 
                    0x50, 
                    0x6C, 
                    0x92, 
                    0xC1, 
                    0xFF, 
                    0x0393, 
                    0x0393, 
                    0x03, 
                    0x03
                }
            })
            Name (BRTD, Package (0x04)
            {
                Package (0x65)
                {
                    0x03, 
                    0x04, 
                    0x05, 
                    0x06, 
                    0x07, 
                    0x08, 
                    0x09, 
                    0x0A, 
                    0x0B, 
                    0x0C, 
                    0x0D, 
                    0x0E, 
                    0x0F, 
                    0x10, 
                    0x11, 
                    0x12, 
                    0x13, 
                    0x14, 
                    0x15, 
                    0x16, 
                    0x17, 
                    0x18, 
                    0x19, 
                    0x1A, 
                    0x1C, 
                    0x1D, 
                    0x1F, 
                    0x21, 
                    0x22, 
                    0x24, 
                    0x26, 
                    0x28, 
                    0x2A, 
                    0x2C, 
                    0x2E, 
                    0x30, 
                    0x33, 
                    0x35, 
                    0x37, 
                    0x3A, 
                    0x3C, 
                    0x3F, 
                    0x41, 
                    0x44, 
                    0x46, 
                    0x49, 
                    0x4C, 
                    0x4F, 
                    0x51, 
                    0x54, 
                    0x57, 
                    0x5A, 
                    0x5D, 
                    0x61, 
                    0x64, 
                    0x67, 
                    0x6A, 
                    0x6E, 
                    0x71, 
                    0x75, 
                    0x78, 
                    0x7C, 
                    0x80, 
                    0x83, 
                    0x87, 
                    0x8B, 
                    0x8F, 
                    0x93, 
                    0x97, 
                    0x9B, 
                    0x9F, 
                    0xA3, 
                    0xA8, 
                    0xAC, 
                    0xB0, 
                    0xB5, 
                    0xB9, 
                    0xBE, 
                    0xC3, 
                    0xC7, 
                    0xCC, 
                    0xCE, 
                    0xD1, 
                    0xD3, 
                    0xD6, 
                    0xD8, 
                    0xDB, 
                    0xDD, 
                    0xE0, 
                    0xE2, 
                    0xE5, 
                    0xE7, 
                    0xEA, 
                    0xEC, 
                    0xEF, 
                    0xF2, 
                    0xF4, 
                    0xF7, 
                    0xFA, 
                    0xFC, 
                    0xFF
                }, 

                Package (0x65)
                {
                    0x03, 
                    0x04, 
                    0x05, 
                    0x06, 
                    0x07, 
                    0x08, 
                    0x09, 
                    0x0A, 
                    0x0B, 
                    0x0C, 
                    0x0D, 
                    0x0E, 
                    0x0F, 
                    0x10, 
                    0x11, 
                    0x12, 
                    0x13, 
                    0x14, 
                    0x15, 
                    0x16, 
                    0x17, 
                    0x18, 
                    0x19, 
                    0x1A, 
                    0x1B, 
                    0x1C, 
                    0x1D, 
                    0x1E, 
                    0x1F, 
                    0x20, 
                    0x21, 
                    0x22, 
                    0x23, 
                    0x25, 
                    0x26, 
                    0x28, 
                    0x2A, 
                    0x2C, 
                    0x2E, 
                    0x2F, 
                    0x31, 
                    0x33, 
                    0x35, 
                    0x37, 
                    0x3A, 
                    0x3C, 
                    0x3E, 
                    0x40, 
                    0x42, 
                    0x45, 
                    0x47, 
                    0x4A, 
                    0x4C, 
                    0x4E, 
                    0x51, 
                    0x54, 
                    0x56, 
                    0x59, 
                    0x5C, 
                    0x5E, 
                    0x61, 
                    0x64, 
                    0x67, 
                    0x6A, 
                    0x6D, 
                    0x70, 
                    0x73, 
                    0x76, 
                    0x79, 
                    0x7D, 
                    0x80, 
                    0x83, 
                    0x86, 
                    0x8A, 
                    0x8D, 
                    0x91, 
                    0x94, 
                    0x98, 
                    0x9C, 
                    0x9F, 
                    0xA3, 
                    0xA7, 
                    0xAB, 
                    0xAF, 
                    0xB4, 
                    0xB8, 
                    0xBC, 
                    0xC1, 
                    0xC5, 
                    0xCA, 
                    0xCE, 
                    0xD3, 
                    0xD8, 
                    0xDC, 
                    0xE1, 
                    0xE6, 
                    0xEB, 
                    0xF0, 
                    0xF5, 
                    0xFA, 
                    0xFF
                }, 

                Package (0x65)
                {
                    0x03, 
                    0x04, 
                    0x05, 
                    0x06, 
                    0x07, 
                    0x08, 
                    0x09, 
                    0x0A, 
                    0x0B, 
                    0x0C, 
                    0x0D, 
                    0x0E, 
                    0x0F, 
                    0x10, 
                    0x11, 
                    0x12, 
                    0x13, 
                    0x14, 
                    0x15, 
                    0x16, 
                    0x17, 
                    0x18, 
                    0x19, 
                    0x1A, 
                    0x1C, 
                    0x1D, 
                    0x1F, 
                    0x21, 
                    0x22, 
                    0x24, 
                    0x26, 
                    0x28, 
                    0x2A, 
                    0x2C, 
                    0x2E, 
                    0x30, 
                    0x33, 
                    0x35, 
                    0x37, 
                    0x3A, 
                    0x3C, 
                    0x3F, 
                    0x41, 
                    0x44, 
                    0x46, 
                    0x49, 
                    0x4C, 
                    0x4F, 
                    0x51, 
                    0x54, 
                    0x57, 
                    0x5A, 
                    0x5D, 
                    0x61, 
                    0x64, 
                    0x67, 
                    0x6A, 
                    0x6E, 
                    0x71, 
                    0x75, 
                    0x78, 
                    0x7C, 
                    0x80, 
                    0x83, 
                    0x87, 
                    0x8B, 
                    0x8F, 
                    0x93, 
                    0x97, 
                    0x9B, 
                    0x9F, 
                    0xA3, 
                    0xA8, 
                    0xAC, 
                    0xB0, 
                    0xB5, 
                    0xB9, 
                    0xBE, 
                    0xC3, 
                    0xC7, 
                    0xCC, 
                    0xCE, 
                    0xD1, 
                    0xD3, 
                    0xD6, 
                    0xD8, 
                    0xDB, 
                    0xDD, 
                    0xE0, 
                    0xE2, 
                    0xE5, 
                    0xE7, 
                    0xEA, 
                    0xEC, 
                    0xEF, 
                    0xF2, 
                    0xF4, 
                    0xF7, 
                    0xFA, 
                    0xFC, 
                    0xFF
                }, 

                Package (0x65)
                {
                    0x03, 
                    0x04, 
                    0x05, 
                    0x06, 
                    0x07, 
                    0x08, 
                    0x09, 
                    0x0A, 
                    0x0B, 
                    0x0C, 
                    0x0D, 
                    0x0E, 
                    0x0F, 
                    0x10, 
                    0x11, 
                    0x12, 
                    0x13, 
                    0x14, 
                    0x15, 
                    0x16, 
                    0x17, 
                    0x18, 
                    0x19, 
                    0x1A, 
                    0x1C, 
                    0x1D, 
                    0x1F, 
                    0x21, 
                    0x22, 
                    0x24, 
                    0x26, 
                    0x28, 
                    0x2A, 
                    0x2C, 
                    0x2E, 
                    0x30, 
                    0x33, 
                    0x35, 
                    0x37, 
                    0x3A, 
                    0x3C, 
                    0x3F, 
                    0x41, 
                    0x44, 
                    0x46, 
                    0x49, 
                    0x4C, 
                    0x4F, 
                    0x51, 
                    0x54, 
                    0x57, 
                    0x5A, 
                    0x5D, 
                    0x61, 
                    0x64, 
                    0x67, 
                    0x6A, 
                    0x6E, 
                    0x71, 
                    0x75, 
                    0x78, 
                    0x7C, 
                    0x80, 
                    0x83, 
                    0x87, 
                    0x8B, 
                    0x8F, 
                    0x93, 
                    0x97, 
                    0x9B, 
                    0x9F, 
                    0xA3, 
                    0xA8, 
                    0xAC, 
                    0xB0, 
                    0xB5, 
                    0xB9, 
                    0xBE, 
                    0xC3, 
                    0xC7, 
                    0xCC, 
                    0xCE, 
                    0xD1, 
                    0xD3, 
                    0xD6, 
                    0xD8, 
                    0xDB, 
                    0xDD, 
                    0xE0, 
                    0xE2, 
                    0xE5, 
                    0xE7, 
                    0xEA, 
                    0xEC, 
                    0xEF, 
                    0xF2, 
                    0xF4, 
                    0xF7, 
                    0xFA, 
                    0xFC, 
                    0xFF
                }
            })
            Method (_Q14, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x8000))
                {
                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1010)
                }

                If (\VIGD)
                {
                    Notify (\_SB.PCI0.GFX0.DD1F, 0x86) // Device-Specific
                }
            }

            Method (_Q15, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x00010000))
                {
                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1011)
                }

                If (\VIGD)
                {
                    Notify (\_SB.PCI0.GFX0.DD1F, 0x87) // Device-Specific
                }

                Return (Zero)
            }

            Method (BRNS, 0, NotSerialized)
            {
                Local0 = (\BRLV + 0x02)
                Local3 = \BRTN
                If (\_SB.PCI0.GFX0.DRDY)
                {
                    Local2 = DerefOf (DerefOf (BRTB [Local3]) [Local0])
                    \_SB.PCI0.GFX0.AINT (0x01, Local2)
                }
                Else
                {
                    \UCMS (0x12)
                }
            }

            Method (BRCF, 1, NotSerialized)
            {
                If ((Arg0 < 0x00))
                {
                    Return (0x00)
                }

                If ((Arg0 > 0x64))
                {
                    Return (0x0F)
                }

                Local0 = (Arg0 + 0x03)
                Local0 *= 0x0F
                Divide (Local0, 0x64, Local0, Local1)
                Return (Local1)
            }

            Method (BRCD, 1, NotSerialized)
            {
                Local0 = DerefOf (DerefOf (BRTD [\BRTN]) [Arg0])
                Return (Local0)
            }

            Method (BFRQ, 0, NotSerialized)
            {
                Local0 = 0x80000100
                Local1 = DerefOf (DerefOf (BRTB [\BRTN]) [0x13])
                Local0 |= (Local1 << 0x09)
                Local1 = DerefOf (DerefOf (BRTB [\BRTN]) [0x15])
                Local0 |= Local1
                Return (Local0)
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Method (_Q19, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x00800000))
                {
                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1018)
                }

                \UCMS (0x03)
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Method (_Q63, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                If (\_SB.PCI0.LPC.EC.HKEY.MHKK (0x00080000))
                {
                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x1014)
                }

                \UCMS (0x0B)
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Method (_Q70, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                FNST ()
            }

            Method (_Q72, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                FNST ()
            }

            Method (_Q73, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                FNST ()
            }

            Method (FNST, 0, NotSerialized)
            {
                If (\H8DR)
                {
                    Local0 = HFNS /* \_SB_.PCI0.LPC_.EC__.HFNS */
                    Local1 = HFNE /* \_SB_.PCI0.LPC_.EC__.HFNE */
                }
                Else
                {
                    Local0 = (\RBEC (0x0E) & 0x03)
                    Local1 = (\RBEC (0x00) & 0x08)
                }

                If (Local1)
                {
                    If ((Local0 == 0x00))
                    {
                        \UCMS (0x11)
                    }

                    If ((Local0 == 0x01))
                    {
                        \UCMS (0x0F)
                    }

                    If ((Local0 == 0x02))
                    {
                        \UCMS (0x10)
                    }

                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6005)
                }
            }
        }

        Scope (\_SB.PCI0.LPC.EC.HKEY)
        {
            Method (GHSL, 1, NotSerialized)
            {
                Return (\FNSC (0x00, 0x00))
            }

            Method (SHSL, 1, NotSerialized)
            {
                Return (\FNSC (0x01, (Arg0 & 0x00010001)))
            }
        }

        Scope (\_SB.PCI0.LPC.EC.HKEY)
        {
            Name (WGFL, 0x00)
            Method (WSIF, 0, NotSerialized)
            {
                Return (0x00)
            }

            Method (WLSW, 0, NotSerialized)
            {
                Return (0x10010001)
            }

            Method (GWAN, 0, NotSerialized)
            {
                Local0 = 0x00
                If ((WGFL & 0x01))
                {
                    Local0 |= 0x01
                }

                If ((WGFL & 0x08))
                {
                    Return (Local0)
                }

                If (WPWS ())
                {
                    Local0 |= 0x02
                }

                Local0 |= 0x04
                Return (Local0)
            }

            Method (SWAN, 1, NotSerialized)
            {
                If ((Arg0 & 0x02))
                {
                    WPWC (0x01)
                }
                Else
                {
                    WPWC (0x00)
                }
            }

            Method (GBDC, 0, NotSerialized)
            {
                Local0 = 0x00
                If ((WGFL & 0x10))
                {
                    Local0 |= 0x01
                }

                If ((WGFL & 0x80))
                {
                    Return (Local0)
                }

                If (BPWS ())
                {
                    Local0 |= 0x02
                }

                Local0 |= 0x04
                Return (Local0)
            }

            Method (SBDC, 1, NotSerialized)
            {
                If ((Arg0 & 0x02))
                {
                    BPWC (0x01)
                }
                Else
                {
                    BPWC (0x00)
                }
            }

            Method (WPWS, 0, NotSerialized)
            {
                If (\H8DR)
                {
                    Local0 = \_SB.PCI0.LPC.EC.DCWW
                }
                Else
                {
                    Local0 = ((\RBEC (0x3A) & 0x40) >> 0x06)
                }

                Return (Local0)
            }

            Method (WPWC, 1, NotSerialized)
            {
                If ((Arg0 && ((WGFL & 0x01) && !(WGFL & 0x08
                    ))))
                {
                    If (\H8DR)
                    {
                        \_SB.PCI0.LPC.EC.DCWW = One
                    }
                    Else
                    {
                        \MBEC (0x3A, 0xFF, 0x40)
                    }

                    WGFL |= 0x02
                }
                Else
                {
                    If (\H8DR)
                    {
                        \_SB.PCI0.LPC.EC.DCWW = Zero
                    }
                    Else
                    {
                        \MBEC (0x3A, 0xBF, 0x00)
                    }

                    WGFL &= ~0x02
                }
            }

            Method (BPWS, 0, NotSerialized)
            {
                If (\H8DR)
                {
                    Local0 = \_SB.PCI0.LPC.EC.DCBD
                }
                Else
                {
                    Local0 = ((\RBEC (0x3A) & 0x10) >> 0x04)
                }

                Return (Local0)
            }

            Method (BPWC, 1, NotSerialized)
            {
                If ((Arg0 && ((WGFL & 0x10) && !(WGFL & 0x80
                    ))))
                {
                    If (\H8DR)
                    {
                        \_SB.PCI0.LPC.EC.DCBD = One
                    }
                    Else
                    {
                        \MBEC (0x3A, 0xFF, 0x10)
                    }

                    WGFL |= 0x20
                }
                Else
                {
                    If (\H8DR)
                    {
                        \_SB.PCI0.LPC.EC.DCBD = Zero
                    }
                    Else
                    {
                        \MBEC (0x3A, 0xEF, 0x00)
                    }

                    WGFL &= ~0x20
                }
            }

            Method (WGIN, 0, NotSerialized)
            {
                WGFL = 0x00
                WGFL = \WGSV (0x01)
                If (\WIN8)
                {
                    If ((WGFL && 0x10))
                    {
                        BPWC (0x01)
                    }
                }

                If (WPWS ())
                {
                    WGFL |= 0x02
                }

                If (BPWS ())
                {
                    WGFL |= 0x20
                }
            }

            Method (WGPS, 1, NotSerialized)
            {
                If ((Arg0 >= 0x04))
                {
                    \BLTH (0x05)
                }
            }

            Method (WGWK, 1, NotSerialized)
            {
                Noop
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Method (_Q41, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
            {
                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x7000)
            }
        }

        Device (WMI1)
        {
            Name (_HID, EisaId ("PNP0C14") /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, 0x01)  // _UID: Unique ID
            Name (_WDG, Buffer (0xB4)
            {
                /* 0000 */  0x0E, 0x23, 0xF5, 0x51, 0x77, 0x96, 0xCD, 0x46,  // .#.Qw..F
                /* 0008 */  0xA1, 0xCF, 0xC0, 0xB2, 0x3E, 0xE3, 0x4D, 0xB7,  // ....>.M.
                /* 0010 */  0x41, 0x30, 0xFF, 0x05, 0x64, 0x9A, 0x47, 0x98,  // A0..d.G.
                /* 0018 */  0xF5, 0x33, 0x33, 0x4E, 0xA7, 0x07, 0x8E, 0x25,  // .33N...%
                /* 0020 */  0x1E, 0xBB, 0xC3, 0xA1, 0x41, 0x31, 0x01, 0x06,  // ....A1..
                /* 0028 */  0xEF, 0x54, 0x4B, 0x6A, 0xED, 0xA5, 0x33, 0x4D,  // .TKj..3M
                /* 0030 */  0x94, 0x55, 0xB0, 0xD9, 0xB4, 0x8D, 0xF4, 0xB3,  // .U......
                /* 0038 */  0x41, 0x32, 0x01, 0x06, 0xB6, 0xEB, 0xF1, 0x74,  // A2.....t
                /* 0040 */  0x7A, 0x92, 0x7D, 0x4C, 0x95, 0xDF, 0x69, 0x8E,  // z.}L..i.
                /* 0048 */  0x21, 0xE8, 0x0E, 0xB5, 0x41, 0x33, 0x01, 0x06,  // !...A3..
                /* 0050 */  0xFF, 0x04, 0xEF, 0x7E, 0x28, 0x43, 0x7C, 0x44,  // ...~(C|D
                /* 0058 */  0xB5, 0xBB, 0xD4, 0x49, 0x92, 0x5D, 0x53, 0x8D,  // ...I.]S.
                /* 0060 */  0x41, 0x34, 0x01, 0x06, 0x9E, 0x15, 0xDB, 0x8A,  // A4......
                /* 0068 */  0x32, 0x1E, 0x5C, 0x45, 0xBC, 0x93, 0x30, 0x8A,  // 2.\E..0.
                /* 0070 */  0x7E, 0xD9, 0x82, 0x46, 0x41, 0x35, 0x01, 0x01,  // ~..FA5..
                /* 0078 */  0xFD, 0xD9, 0x51, 0x26, 0x1C, 0x91, 0x69, 0x4B,  // ..Q&..iK
                /* 0080 */  0xB9, 0x4E, 0xD0, 0xDE, 0xD5, 0x96, 0x3B, 0xD7,  // .N....;.
                /* 0088 */  0x41, 0x36, 0x01, 0x06, 0x1A, 0x65, 0x64, 0x73,  // A6...eds
                /* 0090 */  0x2F, 0x13, 0xE7, 0x4F, 0xAD, 0xAA, 0x40, 0xC6,  // /..O..@.
                /* 0098 */  0xC7, 0xEE, 0x2E, 0x3B, 0x41, 0x37, 0x01, 0x06,  // ...;A7..
                /* 00A0 */  0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,  // !...f...
                /* 00A8 */  0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,  // ......).
                /* 00B0 */  0x42, 0x41, 0x01, 0x00                           // BA..
            })
            Name (RETN, Package (0x05)
            {
                "Success", 
                "Not Supported", 
                "Invalid Parameter", 
                "Access Denied", 
                "System Busy"
            })
            Name (ITEM, Package (0x60)
            {
                Package (0x02)
                {
                    0x0E, 
                    "WakeOnLAN"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "EthernetLANOptionROM"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "USBBIOSSupport"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "AlwaysOnUSB"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "TrackPoint"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "TouchPad"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "FnSticky"
                }, 

                Package (0x02)
                {
                    0x04, 
                    "ThinkPadNumLock"
                }, 

                Package (0x02)
                {
                    0x0C, 
                    "PowerOnNumLock"
                }, 

                Package (0x02)
                {
                    0x05, 
                    "BootDisplayDevice"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "SpeedStep"
                }, 

                Package (0x02)
                {
                    0x09, 
                    "AdaptiveThermalManagementAC"
                }, 

                Package (0x02)
                {
                    0x09, 
                    "AdaptiveThermalManagementBattery"
                }, 

                Package (0x02)
                {
                    0x06, 
                    "CDROMSpeed"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "CPUPowerManagement"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "PowerControlBeep"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "LowBatteryAlarm"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "PasswordBeep"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "KeyboardBeep"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "ExtendedMemoryTest"
                }, 

                Package (0x02)
                {
                    0x07, 
                    "SATAControllerMode"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "CoreMultiProcessing"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "VirtualizationTechnology"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "LockBIOSSetting"
                }, 

                Package (0x02)
                {
                    0x0B, 
                    "MinimumPasswordLength"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "BIOSPasswordAtUnattendedBoot"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "FingerprintPredesktopAuthentication"
                }, 

                Package (0x02)
                {
                    0x08, 
                    "FingerprintReaderPriority"
                }, 

                Package (0x02)
                {
                    0x03, 
                    "FingerprintSecurityMode"
                }, 

                Package (0x02)
                {
                    0x02, 
                    "SecurityChip"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "BIOSUpdateByEndUsers"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "DataExecutionPrevention"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "EthernetLANAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "WirelessLANAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "WirelessWANAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "BluetoothAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "WirelessUSBAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "ModemAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "USBPortAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "IEEE1394Access"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "ExpressCardAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "PCIExpressSlotAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "UltrabayAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "MemoryCardSlotAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "SmartCardSlotAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "IntegratedCameraAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "MicrophoneAccess"
                }, 

                Package (0x02)
                {
                    0x0A, 
                    "BootMode"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "StartupOptionKeys"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "BootDeviceListF12Option"
                }, 

                Package (0x02)
                {
                    0x64, 
                    "BootOrder"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "WiMAXAccess"
                }, 

                Package (0x02)
                {
                    0x0D, 
                    "GraphicsDevice"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "TXTFeature"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "VTdFeature"
                }, 

                Package (0x02)
                {
                    0x0F, 
                    "AMTControl"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "FingerprintPasswordAuthentication"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "FingerprintReaderAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "OsDetectionForSwitchableGraphics"
                }, 

                Package (0x02)
                {
                    0x0F, 
                    "ComputraceModuleActivation"
                }, 

                Package (0x02)
                {
                    0x01, 
                    "PCIExpressPowerManagement"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "Reserved"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "eSATAPortAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "HardwarePasswordManager"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "HyperThreadingTechnology"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "FnCtrlKeySwap"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "BIOSPasswordAtReboot"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "OnByAcAttach"
                }, 

                Package (0x02)
                {
                    0x64, 
                    "NetworkBoot"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "BootOrderLock"
                }, 

                Package (0x02)
                {
                    0x10, 
                    "SharedDisplayPriority"
                }, 

                Package (0x02)
                {
                    0x11, 
                    "ExpressCardSpeed"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "RapidStartTechnology"
                }, 

                Package (0x02)
                {
                    0x12, 
                    "KeyboardIllumination"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "IPv4NetworkStack"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "IPv6NetworkStack"
                }, 

                Package (0x02)
                {
                    0x13, 
                    "UefiPxeBootPriority"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "PhysicalPresenceForTpmProvision"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "PhysicalPresenceForTpmClear"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "SecureRollBackPrevention"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "SecureBoot"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "NfcAccess"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "BottomCoverTamperDetected"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "PasswordCountExceededError"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "BIOSPasswordAtBootDeviceList"
                }, 

                Package (0x02)
                {
                    0x14, 
                    "TotalGraphicsMemory"
                }, 

                Package (0x02)
                {
                    0x15, 
                    "BootTimeExtension"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "FnKeyAsPrimary"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "WiGig"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "BIOSPasswordAtPowerOn"
                }, 

                Package (0x02)
                {
                    0x16, 
                    "SGXControl"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "WiGigWake"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "InternalStorageTamper"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "DeviceGuard"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "Reserved"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "Reserved"
                }
            })
            Name (VSEL, Package (0x19)
            {
                Package (0x02)
                {
                    "Disable", 
                    "Enable"
                }, 

                Package (0x02)
                {
                    "Disable", 
                    "Automatic"
                }, 

                Package (0x04)
                {
                    "Active", 
                    "Inactive", 
                    "Disable", 
                    "Enable"
                }, 

                Package (0x02)
                {
                    "Normal", 
                    "High"
                }, 

                Package (0x02)
                {
                    "Independent", 
                    "Synchronized"
                }, 

                Package (0x04)
                {
                    "LCD", 
                    "DisplayPort", 
                    "HDMI", 
                    "DockDisplay"
                }, 

                Package (0x03)
                {
                    "High", 
                    "Normal", 
                    "Silent"
                }, 

                Package (0x02)
                {
                    "Compatibility", 
                    "AHCI"
                }, 

                Package (0x02)
                {
                    "External", 
                    "InternalOnly"
                }, 

                Package (0x02)
                {
                    "MaximizePerformance", 
                    "Balanced"
                }, 

                Package (0x02)
                {
                    "Quick", 
                    "Diagnostics"
                }, 

                Package (0x0A)
                {
                    "Disable", 
                    "4", 
                    "5", 
                    "6", 
                    "7", 
                    "8", 
                    "9", 
                    "10", 
                    "11", 
                    "12"
                }, 

                Package (0x03)
                {
                    "Auto", 
                    "On", 
                    "Off"
                }, 

                Package (0x03)
                {
                    "IntegratedGfx", 
                    "DiscreteGfx", 
                    "SwitchableGfx"
                }, 

                Package (0x04)
                {
                    "Disable", 
                    "ACOnly", 
                    "ACandBattery", 
                    "Enable"
                }, 

                Package (0x03)
                {
                    "Disable", 
                    "Enable", 
                    "Disable"
                }, 

                Package (0x02)
                {
                    "HDMI", 
                    "DockDisplay"
                }, 

                Package (0x02)
                {
                    "Generation1", 
                    "Automatic"
                }, 

                Package (0x03)
                {
                    "ThinkLightOnly", 
                    "BacklightOnly", 
                    "Both"
                }, 

                Package (0x02)
                {
                    "IPv6First", 
                    "IPv4First"
                }, 

                Package (0x02)
                {
                    "256MB", 
                    "512MB"
                }, 

                Package (0x0B)
                {
                    "Disable", 
                    "1", 
                    "2", 
                    "3", 
                    "", 
                    "5", 
                    "", 
                    "", 
                    "", 
                    "", 
                    "10"
                }, 

                Package (0x03)
                {
                    "Disable", 
                    "Enable", 
                    "SoftwareControl"
                }, 

                Package (0x04)
                {
                    "Unlimited", 
                    "1", 
                    "3", 
                    "100"
                }, 

                Package (0x02)
                {
                    "Immediately", 
                    "AfterReboot"
                }
            })
            Name (VLST, Package (0x11)
            {
                "HDD0", 
                "HDD1", 
                "HDD2", 
                "HDD3", 
                "HDD4", 
                "PCILAN", 
                "ATAPICD0", 
                "ATAPICD1", 
                "ATAPICD2", 
                "USBFDD", 
                "USBCD", 
                "USBHDD", 
                "OtherHDD", 
                "OtherCD", 
                "NVMe0", 
                "NVMe1", 
                "NODEV"
            })
            Name (PENC, Package (0x02)
            {
                "ascii", 
                "scancode"
            })
            Name (PKBD, Package (0x03)
            {
                "us", 
                "fr", 
                "gr"
            })
            Name (PTYP, Package (0x08)
            {
                "pap", 
                "pop", 
                "uhdp1", 
                "mhdp1", 
                "uhdp2", 
                "mhdp2", 
                "uhdp3", 
                "mhdp3"
            })
            Mutex (MWMI, 0x00)
            Name (PCFG, Buffer (0x18){})
            Name (IBUF, Buffer (0x0100){})
            Name (ILEN, 0x00)
            Name (PSTR, Buffer (0x81){})
            Method (WQA0, 1, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                If ((\WMIS (0x00, Arg0) != 0x00))
                {
                    Release (MWMI)
                    Return ("")
                }

                Local0 = DerefOf (ITEM [\WITM])
                Local1 = DerefOf (Local0 [0x00])
                Local2 = DerefOf (Local0 [0x01])
                If ((Local1 < 0x64))
                {
                    Concatenate (Local2, ",", Local6)
                    Local3 = DerefOf (VSEL [Local1])
                    Concatenate (Local6, DerefOf (Local3 [\WSEL]), Local7)
                }
                Else
                {
                    Local3 = SizeOf (VLST)
                    If ((\WLS0 <= Local3))
                    {
                        Concatenate (Local2, ",", Local7)
                        Concatenate (Local7, DerefOf (VLST [\WLS0]), Local2)
                    }

                    If ((\WLS1 <= Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (VLST [\WLS1]), Local2)
                    }

                    If ((\WLS2 <= Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (VLST [\WLS2]), Local2)
                    }

                    If ((\WLS3 <= Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (VLST [\WLS3]), Local2)
                    }

                    If ((\WLS4 <= Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (VLST [\WLS4]), Local2)
                    }

                    If ((\WLS5 <= Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (VLST [\WLS5]), Local2)
                    }

                    If ((\WLS6 <= Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (VLST [\WLS6]), Local2)
                    }

                    If ((\WLS7 <= Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (VLST [\WLS7]), Local2)
                    }

                    If ((\WLS8 <= Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (VLST [\WLS8]), Local2)
                    }

                    If ((\WLS9 <= Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (VLST [\WLS9]), Local2)
                    }

                    If ((\WLSA <= Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (VLST [\WLSA]), Local2)
                    }

                    If ((\WLSB <= Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (VLST [\WLSB]), Local2)
                    }

                    If ((\WLSC <= Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (VLST [\WLSC]), Local2)
                    }

                    If ((\WLSD <= Local3))
                    {
                        Concatenate (Local2, ":", Local7)
                        Concatenate (Local7, DerefOf (VLST [\WLSD]), Local2)
                    }

                    Local7 = Local2
                }

                Release (MWMI)
                Return (Local7)
            }

            Method (WMA1, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                If ((SizeOf (Arg2) == 0x00))
                {
                    Local0 = 0x02
                }
                Else
                {
                    Local0 = CARG (Arg2)
                    If ((Local0 == 0x00))
                    {
                        Local0 = WSET (ITEM, VSEL)
                        If ((Local0 == 0x00))
                        {
                            Local0 = \WMIS (0x01, 0x00)
                        }
                    }
                }

                Release (MWMI)
                Return (DerefOf (RETN [Local0]))
            }

            Method (WMA2, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                Local0 = CARG (Arg2)
                If ((Local0 == 0x00))
                {
                    If ((ILEN != 0x00))
                    {
                        Local0 = CPAS (IBUF, 0x00)
                    }

                    If ((Local0 == 0x00))
                    {
                        Local0 = \WMIS (0x02, 0x00)
                    }
                }

                Release (MWMI)
                Return (DerefOf (RETN [Local0]))
            }

            Method (WMA3, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                Local0 = CARG (Arg2)
                If ((Local0 == 0x00))
                {
                    If ((ILEN != 0x00))
                    {
                        Local0 = CPAS (IBUF, 0x00)
                    }

                    If ((Local0 == 0x00))
                    {
                        Local0 = \WMIS (0x03, 0x00)
                    }
                }

                Release (MWMI)
                Return (DerefOf (RETN [Local0]))
            }

            Method (WMA4, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                Local0 = CARG (Arg2)
                If ((Local0 == 0x00))
                {
                    If ((ILEN != 0x00))
                    {
                        Local0 = CPAS (IBUF, 0x00)
                    }

                    If ((Local0 == 0x00))
                    {
                        Local0 = \WMIS (0x04, 0x00)
                    }
                }

                Release (MWMI)
                Return (DerefOf (RETN [Local0]))
            }

            Method (WQA5, 1, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                Local0 = \WMIS (0x05, 0x00)
                PCFG [0x00] = \WSPM
                PCFG [0x04] = \WSPS
                PCFG [0x08] = \WSMN
                PCFG [0x0C] = \WSMX
                PCFG [0x10] = \WSEN
                PCFG [0x14] = \WSKB
                Release (MWMI)
                Return (PCFG) /* \_SB_.WMI1.PCFG */
            }

            Method (WMA6, 3, NotSerialized)
            {
                Acquire (MWMI, 0xFFFF)
                If ((SizeOf (Arg2) == 0x00))
                {
                    Local0 = 0x02
                }
                Else
                {
                    Local0 = CARG (Arg2)
                    If ((Local0 == 0x00))
                    {
                        If ((ILEN != 0x00))
                        {
                            Local0 = SPAS (IBUF)
                        }

                        If ((Local0 == 0x00))
                        {
                            Local0 = \WMIS (0x06, 0x00)
                        }
                    }
                }

                Release (MWMI)
                Return (DerefOf (RETN [Local0]))
            }

            Method (WMA7, 3, NotSerialized)
            {
                If ((SizeOf (Arg2) == 0x00))
                {
                    Return ("")
                }

                Local0 = CARG (Arg2)
                If ((Local0 == 0x00))
                {
                    Local1 = GITM (IBUF, ITEM)
                    If ((Local1 == Ones))
                    {
                        Return ("")
                    }

                    Local0 = DerefOf (ITEM [Local1])
                    Local1 = DerefOf (Local0 [0x00])
                    If ((Local1 < 0x64))
                    {
                        Local3 = DerefOf (VSEL [Local1])
                        Local2 = DerefOf (Local3 [0x00])
                        Local4 = SizeOf (Local3)
                        Local5 = 0x01
                        While ((Local5 < Local4))
                        {
                            Local6 = DerefOf (Local3 [Local5])
                            If ((SizeOf (Local6) != 0x00))
                            {
                                Concatenate (Local2, ",", Local7)
                                Concatenate (Local7, Local6, Local2)
                            }

                            Local5++
                        }
                    }
                    Else
                    {
                        Local2 = DerefOf (VLST [0x00])
                        Local4 = SizeOf (VLST)
                        Local5 = 0x01
                        While ((Local5 < Local4))
                        {
                            Local6 = DerefOf (VLST [Local5])
                            Concatenate (Local2, ",", Local7)
                            Concatenate (Local7, Local6, Local2)
                            Local5++
                        }
                    }
                }

                Return (Local2)
            }

            Method (CARG, 1, NotSerialized)
            {
                Local0 = SizeOf (Arg0)
                If ((Local0 == 0x00))
                {
                    IBUF = 0x00
                    ILEN = 0x00
                    Return (0x00)
                }

                If ((ObjectType (Arg0) != 0x02))
                {
                    Return (0x02)
                }

                If ((Local0 >= 0xFF))
                {
                    Return (0x02)
                }

                IBUF = Arg0
                Local0--
                Local1 = DerefOf (IBUF [Local0])
                If (((Local1 == 0x3B) || (Local1 == 0x2A)))
                {
                    IBUF [Local0] = 0x00
                    ILEN = Local0
                }
                Else
                {
                    ILEN = SizeOf (Arg0)
                }

                Return (0x00)
            }

            Method (SCMP, 3, NotSerialized)
            {
                Local0 = SizeOf (Arg0)
                If ((Local0 == 0x00))
                {
                    Return (0x00)
                }

                Local0++
                Name (STR1, Buffer (Local0){})
                STR1 = Arg0
                Local0--
                Local1 = 0x00
                Local2 = Arg2
                While ((Local1 < Local0))
                {
                    Local3 = DerefOf (STR1 [Local1])
                    Local4 = DerefOf (Arg1 [Local2])
                    If ((Local3 != Local4))
                    {
                        Return (0x00)
                    }

                    Local1++
                    Local2++
                }

                Local4 = DerefOf (Arg1 [Local2])
                If ((Local4 == 0x00))
                {
                    Return (0x01)
                }

                If (((Local4 == 0x2C) || (Local4 == 0x3A)))
                {
                    Return (0x01)
                }

                Return (0x00)
            }

            Method (GITM, 2, NotSerialized)
            {
                Local0 = 0x00
                Local1 = SizeOf (Arg1)
                While ((Local0 < Local1))
                {
                    Local3 = DerefOf (DerefOf (Arg1 [Local0]) [0x01])
                    If (SCMP (Local3, Arg0, 0x00))
                    {
                        Return (Local0)
                    }

                    Local0++
                }

                Return (Ones)
            }

            Method (GSEL, 3, NotSerialized)
            {
                Local0 = 0x00
                Local1 = SizeOf (Arg0)
                While ((Local0 < Local1))
                {
                    Local2 = DerefOf (Arg0 [Local0])
                    If (SCMP (Local2, Arg1, Arg2))
                    {
                        Return (Local0)
                    }

                    Local0++
                }

                Return (Ones)
            }

            Method (SLEN, 2, NotSerialized)
            {
                Local0 = DerefOf (Arg0 [Arg1])
                Return (SizeOf (Local0))
            }

            Method (CLRP, 0, NotSerialized)
            {
                \WPAS = 0x00
                \WPNW = 0x00
            }

            Method (GPAS, 2, NotSerialized)
            {
                Local0 = Arg1
                Local1 = 0x00
                While ((Local1 <= 0x80))
                {
                    Local2 = DerefOf (Arg0 [Local0])
                    If (((Local2 == 0x2C) || (Local2 == 0x00)))
                    {
                        PSTR [Local1] = 0x00
                        Return (Local1)
                    }

                    PSTR [Local1] = Local2
                    Local0++
                    Local1++
                }

                PSTR [Local1] = 0x00
                Return (Ones)
            }

            Method (CPAS, 2, NotSerialized)
            {
                CLRP ()
                Local0 = Arg1
                Local1 = GPAS (Arg0, Local0)
                If ((Local1 == Ones))
                {
                    Return (0x02)
                }

                If ((Local1 == 0x00))
                {
                    Return (0x02)
                }

                \WPAS = PSTR /* \_SB_.WMI1.PSTR */
                Local0 += Local1
                Local0++
                Local6 = GSEL (PENC, Arg0, Local0)
                If ((Local6 == Ones))
                {
                    Return (0x02)
                }

                \WENC = Local6
                If ((Local6 == 0x00))
                {
                    Local0 += SLEN (PENC, 0x00)
                    If ((DerefOf (Arg0 [Local0]) != 0x2C))
                    {
                        Return (0x02)
                    }

                    Local0++
                    Local6 = GSEL (PKBD, Arg0, Local0)
                    If ((Local6 == Ones))
                    {
                        Return (0x02)
                    }

                    \WKBD = Local6
                }

                Return (0x00)
            }

            Method (SPAS, 1, NotSerialized)
            {
                CLRP ()
                Local6 = GSEL (PTYP, Arg0, 0x00)
                If ((Local6 == Ones))
                {
                    Return (0x02)
                }

                \WPTY = Local6
                Local0 = SLEN (PTYP, Local6)
                If ((DerefOf (Arg0 [Local0]) != 0x2C))
                {
                    Return (0x02)
                }

                Local0++
                Local1 = GPAS (Arg0, Local0)
                If (((Local1 == Ones) || (Local1 == 0x00)))
                {
                    Return (0x02)
                }

                \WPAS = PSTR /* \_SB_.WMI1.PSTR */
                Local0 += Local1
                If ((DerefOf (Arg0 [Local0]) != 0x2C))
                {
                    Return (0x02)
                }

                Local0++
                Local1 = GPAS (Arg0, Local0)
                If ((Local1 == Ones))
                {
                    Return (0x02)
                }

                If ((Local1 == 0x00))
                {
                    PSTR = 0x00
                }

                \WPNW = PSTR /* \_SB_.WMI1.PSTR */
                Local0 += Local1
                Local0++
                Local6 = GSEL (PENC, Arg0, Local0)
                If ((Local6 == Ones))
                {
                    Return (0x02)
                }

                \WENC = Local6
                If ((Local6 == 0x00))
                {
                    Local0 += SLEN (PENC, 0x00)
                    If ((DerefOf (Arg0 [Local0]) != 0x2C))
                    {
                        Return (0x02)
                    }

                    Local0++
                    Local6 = GSEL (PKBD, Arg0, Local0)
                    If ((Local6 == Ones))
                    {
                        Return (0x02)
                    }

                    \WKBD = Local6
                }

                Return (0x00)
            }

            Method (WSET, 2, NotSerialized)
            {
                Local0 = ILEN /* \_SB_.WMI1.ILEN */
                Local0++
                Local1 = GITM (IBUF, Arg0)
                If ((Local1 == Ones))
                {
                    Return (0x02)
                }

                \WITM = Local1
                Local3 = DerefOf (Arg0 [Local1])
                Local4 = DerefOf (Local3 [0x01])
                Local2 = SizeOf (Local4)
                Local2++
                Local4 = DerefOf (Local3 [0x00])
                If ((Local4 < 0x64))
                {
                    Local5 = DerefOf (Arg1 [Local4])
                    Local6 = GSEL (Local5, IBUF, Local2)
                    If ((Local6 == Ones))
                    {
                        Return (0x02)
                    }

                    \WSEL = Local6
                    Local2 += SLEN (Local5, Local6)
                    Local4 = DerefOf (IBUF [Local2])
                }
                Else
                {
                    \WLS0 = 0x3F
                    \WLS1 = 0x3F
                    \WLS2 = 0x3F
                    \WLS3 = 0x3F
                    \WLS4 = 0x3F
                    \WLS5 = 0x3F
                    \WLS6 = 0x3F
                    \WLS7 = 0x3F
                    \WLS8 = 0x3F
                    \WLS9 = 0x3F
                    \WLSA = 0x3F
                    \WLSB = 0x3F
                    \WLSC = 0x3F
                    \WLSD = 0x3F
                    Local6 = GSEL (VLST, IBUF, Local2)
                    If ((Local6 == Ones))
                    {
                        Return (0x02)
                    }

                    \WLS0 = Local6
                    Local2 += SLEN (VLST, Local6)
                    Local4 = DerefOf (IBUF [Local2])
                    If (((Local2 < Local0) && (Local4 == 0x3A)))
                    {
                        Local2++
                        Local6 = GSEL (VLST, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        \WLS1 = Local6
                        Local2 += SLEN (VLST, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }

                    If (((Local2 < Local0) && (Local4 == 0x3A)))
                    {
                        Local2++
                        Local6 = GSEL (VLST, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        \WLS2 = Local6
                        Local2 += SLEN (VLST, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }

                    If (((Local2 < Local0) && (Local4 == 0x3A)))
                    {
                        Local2++
                        Local6 = GSEL (VLST, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        \WLS3 = Local6
                        Local2 += SLEN (VLST, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }

                    If (((Local2 < Local0) && (Local4 == 0x3A)))
                    {
                        Local2++
                        Local6 = GSEL (VLST, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        \WLS4 = Local6
                        Local2 += SLEN (VLST, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }

                    If (((Local2 < Local0) && (Local4 == 0x3A)))
                    {
                        Local2++
                        Local6 = GSEL (VLST, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        \WLS5 = Local6
                        Local2 += SLEN (VLST, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }

                    If (((Local2 < Local0) && (Local4 == 0x3A)))
                    {
                        Local2++
                        Local6 = GSEL (VLST, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        \WLS6 = Local6
                        Local2 += SLEN (VLST, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }

                    If (((Local2 < Local0) && (Local4 == 0x3A)))
                    {
                        Local2++
                        Local6 = GSEL (VLST, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        \WLS7 = Local6
                        Local2 += SLEN (VLST, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }

                    If (((Local2 < Local0) && (Local4 == 0x3A)))
                    {
                        Local2++
                        Local6 = GSEL (VLST, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        \WLS8 = Local6
                        Local2 += SLEN (VLST, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }

                    If (((Local2 < Local0) && (Local4 == 0x3A)))
                    {
                        Local2++
                        Local6 = GSEL (VLST, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        \WLS9 = Local6
                        Local2 += SLEN (VLST, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }

                    If (((Local2 < Local0) && (Local4 == 0x3A)))
                    {
                        Local2++
                        Local6 = GSEL (VLST, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        \WLSA = Local6
                        Local2 += SLEN (VLST, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }

                    If (((Local2 < Local0) && (Local4 == 0x3A)))
                    {
                        Local2++
                        Local6 = GSEL (VLST, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        \WLSB = Local6
                        Local2 += SLEN (VLST, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }

                    If (((Local2 < Local0) && (Local4 == 0x3A)))
                    {
                        Local2++
                        Local6 = GSEL (VLST, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        \WLSC = Local6
                        Local2 += SLEN (VLST, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }

                    If (((Local2 < Local0) && (Local4 == 0x3A)))
                    {
                        Local2++
                        Local6 = GSEL (VLST, IBUF, Local2)
                        If ((Local6 == Ones))
                        {
                            Return (0x02)
                        }

                        \WLSD = Local6
                        Local2 += SLEN (VLST, Local6)
                        Local4 = DerefOf (IBUF [Local2])
                    }
                }

                If (((Local4 == 0x2C) && (Local2 < Local0)))
                {
                    Local2++
                    Local0 = CPAS (IBUF, Local2)
                    If ((Local0 != 0x00))
                    {
                        Return (Local0)
                    }
                }

                Return (0x00)
            }

            Name (WQBA, Buffer (0x089D)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  // FOMB....
                /* 0008 */  0x8D, 0x08, 0x00, 0x00, 0xF2, 0x36, 0x00, 0x00,  // .....6..
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  // DS...}.T
                /* 0018 */  0xA8, 0xC9, 0x9A, 0x00, 0x01, 0x06, 0x18, 0x42,  // .......B
                /* 0020 */  0x10, 0x13, 0x10, 0x0A, 0x0D, 0x21, 0x02, 0x0B,  // .....!..
                /* 0028 */  0x83, 0x50, 0x4C, 0x18, 0x14, 0xA0, 0x45, 0x41,  // .PL...EA
                /* 0030 */  0xC8, 0x05, 0x14, 0x95, 0x02, 0x21, 0xC3, 0x02,  // .....!..
                /* 0038 */  0x14, 0x0B, 0x70, 0x2E, 0x40, 0xBA, 0x00, 0xE5,  // ..p.@...
                /* 0040 */  0x28, 0x72, 0x0C, 0x22, 0x02, 0xF7, 0xEF, 0x0F,  // (r."....
                /* 0048 */  0x31, 0x0E, 0x88, 0x14, 0x40, 0x48, 0x26, 0x84,  // 1...@H&.
                /* 0050 */  0x44, 0x00, 0x53, 0x21, 0x70, 0x84, 0xA0, 0x5F,  // D.S!p.._
                /* 0058 */  0x01, 0x08, 0x1D, 0xA2, 0xC9, 0xA0, 0x00, 0xA7,  // ........
                /* 0060 */  0x08, 0x82, 0xB4, 0x65, 0x01, 0xBA, 0x05, 0xF8,  // ...e....
                /* 0068 */  0x16, 0xA0, 0x1D, 0x42, 0x68, 0x15, 0x0A, 0x30,  // ...Bh..0
                /* 0070 */  0x29, 0xC0, 0x27, 0x98, 0x2C, 0x0A, 0x90, 0x0D,  // ).'.,...
                /* 0078 */  0x26, 0xDB, 0x70, 0x64, 0x18, 0x4C, 0xE4, 0x18,  // &.pd.L..
                /* 0080 */  0x50, 0x62, 0xC6, 0x80, 0xD2, 0x39, 0x05, 0xD9,  // Pb...9..
                /* 0088 */  0x04, 0x16, 0x74, 0xA1, 0x28, 0x9A, 0x46, 0x94,  // ..t.(.F.
                /* 0090 */  0x04, 0x07, 0x75, 0x0C, 0x11, 0x82, 0x97, 0x2B,  // ..u....+
                /* 0098 */  0x40, 0xF2, 0x04, 0xA4, 0x79, 0x5E, 0xB2, 0x3E,  // @...y^.>
                /* 00A0 */  0x08, 0x0D, 0x81, 0x8D, 0x80, 0x47, 0x91, 0x00,  // .....G..
                /* 00A8 */  0xC2, 0x62, 0x2C, 0x53, 0xE2, 0x61, 0x50, 0x1E,  // .b,S.aP.
                /* 00B0 */  0x40, 0x24, 0x67, 0xA8, 0x28, 0x60, 0x7B, 0x9D,  // @$g.(`{.
                /* 00B8 */  0x88, 0x86, 0x75, 0x9C, 0x4C, 0x12, 0x1C, 0x6A,  // ..u.L..j
                /* 00C0 */  0x94, 0x96, 0x28, 0xC0, 0xFC, 0xC8, 0x34, 0x91,  // ..(...4.
                /* 00C8 */  0x63, 0x6B, 0x7A, 0xC4, 0x82, 0x64, 0xD2, 0x86,  // ckz..d..
                /* 00D0 */  0x82, 0x1A, 0xBA, 0xA7, 0x75, 0x52, 0x9E, 0x68,  // ....uR.h
                /* 00D8 */  0xC4, 0x83, 0x32, 0x4C, 0x02, 0x8F, 0x82, 0xA1,  // ..2L....
                /* 00E0 */  0x71, 0x82, 0xB2, 0x20, 0xE4, 0x60, 0xA0, 0x28,  // q.. .`.(
                /* 00E8 */  0xC0, 0x93, 0xF0, 0x1C, 0x8B, 0x17, 0x20, 0x7C,  // ...... |
                /* 00F0 */  0xC6, 0xE4, 0x28, 0x10, 0x23, 0x81, 0x8F, 0x04,  // ..(.#...
                /* 00F8 */  0x1E, 0xCD, 0x31, 0x63, 0x81, 0xC2, 0x05, 0x3C,  // ..1c...<
                /* 0100 */  0x9F, 0x63, 0x88, 0x1C, 0xF7, 0x50, 0x63, 0x1C,  // .c...Pc.
                /* 0108 */  0x45, 0xE4, 0x04, 0xEF, 0x00, 0x51, 0x8C, 0x56,  // E....Q.V
                /* 0110 */  0xD0, 0xBC, 0x85, 0x18, 0x2C, 0x9A, 0xC1, 0x7A,  // ....,..z
                /* 0118 */  0x06, 0x27, 0x83, 0x4E, 0xF0, 0xFF, 0x3F, 0x02,  // .'.N..?.
                /* 0120 */  0x2E, 0x03, 0x42, 0x1E, 0x05, 0x58, 0x1D, 0x94,  // ..B..X..
                /* 0128 */  0xA6, 0x61, 0x82, 0xEE, 0x05, 0xBC, 0x1A, 0x1A,  // .a......
                /* 0130 */  0x13, 0xA0, 0x11, 0x43, 0xCA, 0x04, 0x38, 0xBB,  // ...C..8.
                /* 0138 */  0x2F, 0x68, 0x46, 0x6D, 0x09, 0x30, 0x27, 0x40,  // /hFm.0'@
                /* 0140 */  0x9B, 0x00, 0x6F, 0x08, 0x42, 0x39, 0xCF, 0x28,  // ..o.B9.(
                /* 0148 */  0xC7, 0x72, 0x8A, 0x51, 0x1E, 0x06, 0x62, 0xBE,  // .r.Q..b.
                /* 0150 */  0x0C, 0x04, 0x8D, 0x12, 0x23, 0xE6, 0xB9, 0xC4,  // ....#...
                /* 0158 */  0x35, 0x6C, 0x84, 0x18, 0x21, 0x4F, 0x21, 0x50,  // 5l..!O!P
                /* 0160 */  0xDC, 0xF6, 0x07, 0x41, 0x06, 0x8D, 0x1B, 0xBD,  // ...A....
                /* 0168 */  0x4F, 0x0B, 0x67, 0x75, 0x02, 0x47, 0xFF, 0xA4,  // O.gu.G..
                /* 0170 */  0x60, 0x02, 0x4F, 0xF9, 0xC0, 0x9E, 0x0D, 0x4E,  // `.O....N
                /* 0178 */  0xE0, 0x58, 0xA3, 0xC6, 0x38, 0x95, 0x04, 0x8E,  // .X..8...
                /* 0180 */  0xFD, 0x80, 0x90, 0x06, 0x10, 0x45, 0x82, 0x47,  // .....E.G
                /* 0188 */  0x9D, 0x16, 0x7C, 0x2E, 0xF0, 0xD0, 0x0E, 0xDA,  // ..|.....
                /* 0190 */  0x73, 0x3C, 0x81, 0x20, 0x87, 0x70, 0x04, 0x4F,  // s<. .p.O
                /* 0198 */  0x0C, 0x0F, 0x04, 0x1E, 0x03, 0xBB, 0x29, 0xF8,  // ......).
                /* 01A0 */  0x08, 0xE0, 0x13, 0x02, 0xDE, 0x35, 0xA0, 0xAE,  // .....5..
                /* 01A8 */  0x06, 0x0F, 0x06, 0x6C, 0xD0, 0xE1, 0x30, 0xE3,  // ...l..0.
                /* 01B0 */  0xF5, 0xF0, 0xC3, 0x9D, 0xC0, 0x49, 0x3E, 0x60,  // .....I>`
                /* 01B8 */  0xF0, 0xC3, 0x86, 0x07, 0x87, 0x9B, 0xE7, 0xC9,  // ........
                /* 01C0 */  0x1C, 0x59, 0xA9, 0x02, 0xCC, 0x1E, 0x0E, 0x74,  // .Y.....t
                /* 01C8 */  0x90, 0xF0, 0x69, 0x83, 0x9D, 0x01, 0x30, 0xF2,  // ..i...0.
                /* 01D0 */  0x07, 0x81, 0x1A, 0x99, 0xA1, 0x3D, 0xEE, 0x97,  // .....=..
                /* 01D8 */  0x0E, 0x43, 0x3E, 0x27, 0x1C, 0x16, 0x13, 0x7B,  // .C>'...{
                /* 01E0 */  0xEA, 0xA0, 0xE3, 0x01, 0xFF, 0x65, 0xE4, 0x39,  // .....e.9
                /* 01E8 */  0xC3, 0xD3, 0xF7, 0x7C, 0x4D, 0x30, 0xEC, 0xC0,  // ...|M0..
                /* 01F0 */  0xD1, 0x03, 0x31, 0xF4, 0xC3, 0xC6, 0x61, 0x9C,  // ..1...a.
                /* 01F8 */  0x86, 0xEF, 0x1F, 0x3E, 0x2F, 0xC0, 0x38, 0x05,  // ...>/.8.
                /* 0200 */  0x78, 0xE4, 0xFE, 0xFF, 0x1F, 0x52, 0x7C, 0x9A,  // x....R|.
                /* 0208 */  0xE0, 0x47, 0x0B, 0x9F, 0x26, 0xD8, 0xF5, 0xE0,  // .G..&...
                /* 0210 */  0x34, 0x9E, 0x03, 0x3C, 0x9C, 0xB3, 0xF2, 0x61,  // 4..<...a
                /* 0218 */  0x02, 0x6C, 0xF7, 0x13, 0x36, 0xA2, 0x77, 0x0B,  // .l..6.w.
                /* 0220 */  0x8F, 0x06, 0x7B, 0x0A, 0x00, 0xDF, 0xF9, 0x05,  // ..{.....
                /* 0228 */  0x9C, 0x77, 0x0D, 0x36, 0x58, 0x18, 0xE7, 0x17,  // .w.6X...
                /* 0230 */  0xE0, 0x71, 0x42, 0xF0, 0x10, 0xF8, 0x41, 0xC2,  // .qB...A.
                /* 0238 */  0x43, 0xE0, 0x03, 0x78, 0xFE, 0x38, 0x43, 0x2B,  // C..x.8C+
                /* 0240 */  0x9D, 0x17, 0x72, 0x60, 0xF0, 0xCE, 0x39, 0x30,  // ..r`..90
                /* 0248 */  0x46, 0xC1, 0xF3, 0x3C, 0x36, 0x4C, 0xA0, 0x20,  // F..<6L. 
                /* 0250 */  0xAF, 0x01, 0x85, 0x7A, 0x16, 0x50, 0x18, 0x9F,  // ...z.P..
                /* 0258 */  0x6A, 0x80, 0xD7, 0xFF, 0xFF, 0x54, 0x03, 0x5C,  // j....T.\
                /* 0260 */  0x0E, 0x07, 0xB8, 0x93, 0x03, 0xDC, 0x7B, 0x01,  // ......{.
                /* 0268 */  0xBB, 0x38, 0x3C, 0xD7, 0xC0, 0x15, 0x7D, 0xAE,  // .8<...}.
                /* 0270 */  0x81, 0x7A, 0x6F, 0x29, 0x6E, 0x8C, 0xBA, 0xC6,  // .zo)n...
                /* 0278 */  0x04, 0x79, 0x14, 0x78, 0xA4, 0x89, 0xF2, 0x3C,  // .y.x...<
                /* 0280 */  0xF3, 0x2E, 0x13, 0xE1, 0xD9, 0xC6, 0xD7, 0x1A,  // ........
                /* 0288 */  0x4F, 0x21, 0x8E, 0xAF, 0x35, 0x46, 0x7C, 0x99,  // O!..5F|.
                /* 0290 */  0x78, 0xB7, 0x31, 0xEE, 0xC1, 0x3D, 0xD6, 0x3C,  // x.1..=.<
                /* 0298 */  0xE4, 0x18, 0xE4, 0x68, 0x22, 0xBC, 0x18, 0x04,  // ...h"...
                /* 02A0 */  0x7C, 0xBC, 0xF1, 0xB1, 0x06, 0xBC, 0x62, 0x5E,  // |.....b^
                /* 02A8 */  0x28, 0xB2, 0x70, 0xAC, 0x01, 0x34, 0xFE, 0xFF,  // (.p..4..
                /* 02B0 */  0x8F, 0x35, 0xC0, 0x0D, 0xEB, 0x01, 0x05, 0x7C,  // .5.....|
                /* 02B8 */  0x47, 0x06, 0x76, 0x43, 0x81, 0x77, 0x42, 0x01,  // G.vC.wB.
                /* 02C0 */  0xFC, 0x24, 0x7E, 0x01, 0xE8, 0xC8, 0xE1, 0xB4,  // .$~.....
                /* 02C8 */  0x20, 0xB2, 0xF1, 0x06, 0xF0, 0x29, 0x80, 0xAA,  //  ....)..
                /* 02D0 */  0x01, 0xD2, 0x34, 0x61, 0x13, 0x4C, 0x4F, 0x2E,  // ..4a.LO.
                /* 02D8 */  0x78, 0x1F, 0x09, 0x9C, 0x9B, 0x44, 0xC9, 0x87,  // x....D..
                /* 02E0 */  0x45, 0xE1, 0x9C, 0xF5, 0x20, 0x42, 0x41, 0x0C,  // E... BA.
                /* 02E8 */  0xE8, 0x20, 0xC7, 0x09, 0xF4, 0x19, 0xC5, 0x07,  // . ......
                /* 02F0 */  0x91, 0x13, 0x7D, 0x22, 0xF4, 0xA0, 0x3C, 0x8C,  // ..}"..<.
                /* 02F8 */  0x77, 0x14, 0x76, 0x02, 0xF1, 0x61, 0xC2, 0x63,  // w.v..a.c
                /* 0300 */  0xF7, 0x31, 0x81, 0xFF, 0x63, 0x3C, 0x1B, 0xA3,  // .1..c<..
                /* 0308 */  0x5B, 0x0D, 0x86, 0xFE, 0xFF, 0xE7, 0x14, 0x0E,  // [.......
                /* 0310 */  0xE6, 0x83, 0x08, 0x27, 0xA8, 0xEB, 0x26, 0x01,  // ...'..&.
                /* 0318 */  0x32, 0x7D, 0x47, 0x05, 0x50, 0x00, 0xF9, 0x5E,  // 2}G.P..^
                /* 0320 */  0xE0, 0x73, 0xC0, 0xB3, 0x01, 0x1B, 0xC3, 0xA3,  // .s......
                /* 0328 */  0x80, 0xD1, 0x8C, 0xCE, 0xC3, 0x4F, 0x16, 0x15,  // .....O..
                /* 0330 */  0x77, 0xB2, 0x14, 0xC4, 0x93, 0x75, 0x94, 0xC9,  // w....u..
                /* 0338 */  0xA2, 0x67, 0xE2, 0x7B, 0x85, 0x67, 0xF4, 0xA6,  // .g.{.g..
                /* 0340 */  0xE5, 0x39, 0x7A, 0xC2, 0xBE, 0x87, 0xC0, 0x3A,  // .9z....:
                /* 0348 */  0x0C, 0x84, 0x7C, 0x30, 0xF0, 0x34, 0x0C, 0xE7,  // ..|0.4..
                /* 0350 */  0xC9, 0x72, 0x38, 0x4F, 0x96, 0x8F, 0xC5, 0xD7,  // .r8O....
                /* 0358 */  0x10, 0xF0, 0x09, 0x9C, 0x2D, 0xC8, 0xE1, 0x31,  // ....-..1
                /* 0360 */  0xB1, 0x46, 0x45, 0xAF, 0x42, 0x1E, 0x1E, 0xBF,  // .FE.B...
                /* 0368 */  0x1C, 0x78, 0x3E, 0xCF, 0x08, 0x47, 0xF9, 0x24,  // .x>..G.$
                /* 0370 */  0x81, 0xC3, 0x78, 0x26, 0xF1, 0x10, 0x7D, 0x2B,  // ..x&..}+
                /* 0378 */  0x82, 0x35, 0x91, 0x93, 0xF6, 0x6D, 0xE1, 0x64,  // .5...m.d
                /* 0380 */  0x83, 0xBE, 0x9E, 0x61, 0x6E, 0x45, 0xB0, 0xFF,  // ...anE..
                /* 0388 */  0xFF, 0xB7, 0x22, 0x38, 0x17, 0x34, 0x98, 0x99,  // .."8.4..
                /* 0390 */  0xEE, 0x55, 0xA8, 0x58, 0xF7, 0x2A, 0x40, 0xEC,  // .U.X.*@.
                /* 0398 */  0xB0, 0x5E, 0x7B, 0x7C, 0xB0, 0x82, 0x7B, 0xAF,  // .^{|..{.
                /* 03A0 */  0x82, 0x7B, 0xA9, 0x7A, 0x56, 0x38, 0xC6, 0xF0,  // .{.zV8..
                /* 03A8 */  0x0F, 0x53, 0x31, 0x4E, 0xE9, 0xB5, 0xD3, 0x40,  // .S1N...@
                /* 03B0 */  0x61, 0xA2, 0xC4, 0x7B, 0xAF, 0xF2, 0x18, 0xDF,  // a..{....
                /* 03B8 */  0xAB, 0xD8, 0x15, 0x2A, 0x4C, 0xAC, 0x97, 0x2B,  // ...*L..+
                /* 03C0 */  0xA3, 0xBE, 0x4E, 0x84, 0x0B, 0x14, 0x24, 0xD2,  // ..N...$.
                /* 03C8 */  0xAB, 0x55, 0x94, 0xC8, 0xF1, 0x0D, 0xF9, 0x5E,  // .U.....^
                /* 03D0 */  0x05, 0x5E, 0x39, 0xF7, 0x2A, 0x90, 0xFD, 0xFF,  // .^9.*...
                /* 03D8 */  0xEF, 0x55, 0x80, 0x79, 0xB4, 0xF7, 0x2A, 0x30,  // .U.y..*0
                /* 03E0 */  0x5E, 0x1B, 0xD8, 0x0D, 0x09, 0x16, 0xD0, 0x8B,  // ^.......
                /* 03E8 */  0x15, 0x60, 0x28, 0xF3, 0xC5, 0x8A, 0xE6, 0xBD,  // .`(.....
                /* 03F0 */  0x58, 0x21, 0xFE, 0xFF, 0xE7, 0x12, 0xA6, 0xE7,  // X!......
                /* 03F8 */  0x62, 0x45, 0xE6, 0x09, 0xFF, 0x66, 0x05, 0x70,  // bE...f.p
                /* 0400 */  0xFA, 0xFF, 0x7F, 0xB3, 0x02, 0x8C, 0xDD, 0x8B,  // ........
                /* 0408 */  0x30, 0x47, 0x2B, 0x78, 0x29, 0x6F, 0x56, 0x34,  // 0G+x)oV4
                /* 0410 */  0xCE, 0x32, 0x14, 0x70, 0x41, 0x14, 0xC6, 0x37,  // .2.pA..7
                /* 0418 */  0x2B, 0xC0, 0xD1, 0x75, 0x05, 0x37, 0x64, 0xB8,  // +..u.7d.
                /* 0420 */  0x60, 0x51, 0x82, 0xF9, 0x10, 0xE2, 0xE9, 0x1C,  // `Q......
                /* 0428 */  0xF1, 0x43, 0xC2, 0x4B, 0xC0, 0x63, 0x8E, 0x07,  // .C.K.c..
                /* 0430 */  0xFC, 0x40, 0xE0, 0xCB, 0x15, 0x98, 0xFE, 0xFF,  // .@......
                /* 0438 */  0x04, 0x3E, 0xF9, 0x9E, 0xE5, 0xDB, 0xD4, 0x7B,  // .>.....{
                /* 0440 */  0x2F, 0x3F, 0x60, 0xBD, 0x57, 0xF9, 0xF0, 0x1B,  // /?`.W...
                /* 0448 */  0xEB, 0x9D, 0xE1, 0xE5, 0xCA, 0x23, 0x89, 0x72,  // .....#.r
                /* 0450 */  0x12, 0xA1, 0x7C, 0xB7, 0x7A, 0xAF, 0x32, 0x4A,  // ..|.z.2J
                /* 0458 */  0xC4, 0x17, 0x62, 0x9F, 0x82, 0x0D, 0x6D, 0x94,  // ..b...m.
                /* 0460 */  0xA7, 0x8A, 0xE8, 0xC6, 0x7B, 0xB9, 0x02, 0xAF,  // ....{...
                /* 0468 */  0xA4, 0xCB, 0x15, 0x40, 0x93, 0xE1, 0xBF, 0x5C,  // ...@...\
                /* 0470 */  0x81, 0xEF, 0xE6, 0x80, 0xBD, 0x26, 0xC1, 0xF9,  // .....&..
                /* 0478 */  0xFF, 0x5F, 0x93, 0xF8, 0xF5, 0x0A, 0xF0, 0x93,  // ._......
                /* 0480 */  0xFD, 0x7A, 0x45, 0x73, 0x5F, 0xAF, 0x50, 0xA2,  // .zEs_.P.
                /* 0488 */  0x20, 0xA4, 0x08, 0x48, 0x33, 0x05, 0xCF, 0xFD,  //  ..H3...
                /* 0490 */  0x0A, 0xE0, 0xC4, 0xFF, 0xFF, 0x7E, 0x05, 0x58,  // .....~.X
                /* 0498 */  0x0E, 0x77, 0xBF, 0x02, 0x7A, 0xB7, 0x23, 0xF0,  // .w..z.#.
                /* 04A0 */  0xA2, 0xBC, 0x1D, 0x61, 0xAF, 0x58, 0xF8, 0x8C,  // ...a.X..
                /* 04A8 */  0x57, 0x2C, 0x1A, 0x66, 0x25, 0x8A, 0xB7, 0x26,  // W,.f%..&
                /* 04B0 */  0x0A, 0xE3, 0x2B, 0x16, 0x30, 0xF9, 0xFF, 0x5F,  // ..+.0.._
                /* 04B8 */  0xB1, 0x80, 0xD9, 0x41, 0x14, 0x37, 0x6A, 0xB8,  // ...A.7j.
                /* 04C0 */  0x17, 0x27, 0xDF, 0x7A, 0x3C, 0xDF, 0x88, 0xBE,  // .'.z<...
                /* 04C8 */  0xC3, 0x60, 0x4E, 0x58, 0x30, 0x6E, 0x58, 0xF0,  // .`NX0nX.
                /* 04D0 */  0x87, 0xF4, 0x30, 0xEC, 0x93, 0xC4, 0x3B, 0x96,  // ..0...;.
                /* 04D8 */  0x8F, 0x56, 0x06, 0x79, 0x03, 0x7E, 0xB2, 0x7A,  // .V.y.~.z
                /* 04E0 */  0xB0, 0x8A, 0x62, 0x84, 0x80, 0xC7, 0xF3, 0x2E,  // ..b.....
                /* 04E8 */  0xEC, 0xA3, 0xD5, 0x9B, 0x96, 0x51, 0x62, 0xC7,  // .....Qb.
                /* 04F0 */  0xF2, 0x85, 0xEA, 0x59, 0xCB, 0xD7, 0x2C, 0x43,  // ...Y..,C
                /* 04F8 */  0xC4, 0x7D, 0x20, 0xF6, 0x0D, 0x0B, 0xB0, 0xFD,  // .} .....
                /* 0500 */  0xFF, 0xBF, 0x61, 0x01, 0x8E, 0x2E, 0x0E, 0xFC,  // ..a.....
                /* 0508 */  0xE0, 0x80, 0xBD, 0x61, 0x01, 0x3E, 0x67, 0x0A,  // ...a.>g.
                /* 0510 */  0x9E, 0x1B, 0x16, 0xB0, 0xF9, 0xFF, 0xDF, 0xB0,  // ........
                /* 0518 */  0x00, 0xFE, 0xFF, 0xFF, 0x6F, 0x58, 0xC0, 0xE1,  // ....oX..
                /* 0520 */  0x76, 0x85, 0xBD, 0x65, 0x61, 0x6F, 0x2F, 0x64,  // v..eao/d
                /* 0528 */  0x15, 0x34, 0xD4, 0x4A, 0x14, 0xFC, 0x7B, 0x65,  // .4.J..{e
                /* 0530 */  0x18, 0x7A, 0xC3, 0x02, 0x1C, 0x8D, 0xDB, 0xA3,  // .z......
                /* 0538 */  0x06, 0xC7, 0xD9, 0xE0, 0x49, 0x02, 0x73, 0xAE,  // ....I.s.
                /* 0540 */  0xC6, 0xCD, 0xE6, 0xE0, 0x02, 0x47, 0xE8, 0x1D,  // .....G..
                /* 0548 */  0x54, 0x73, 0x67, 0x97, 0x14, 0x18, 0xB7, 0x2C,  // Tsg....,
                /* 0550 */  0xB8, 0x97, 0xAA, 0x87, 0x86, 0x28, 0x07, 0xF1,  // .....(..
                /* 0558 */  0x2A, 0xFC, 0x60, 0xF5, 0x28, 0x75, 0x64, 0x8F,  // *.`.(ud.
                /* 0560 */  0x57, 0x4F, 0xC3, 0x3E, 0x66, 0xF9, 0x96, 0x65,  // WO.>f..e
                /* 0568 */  0xA8, 0x08, 0x6F, 0x59, 0xEC, 0x0C, 0x11, 0x2F,  // ..oY.../
                /* 0570 */  0x56, 0x94, 0x10, 0xEF, 0x15, 0xA1, 0x7D, 0xE7,  // V.....}.
                /* 0578 */  0x32, 0xF8, 0xA3, 0xB1, 0x51, 0x83, 0xBE, 0x1C,  // 2...Q...
                /* 0580 */  0xBF, 0x65, 0xC1, 0xFB, 0xFF, 0xDF, 0xB2, 0xE0,  // .e......
                /* 0588 */  0x8B, 0xFC, 0xAB, 0xE8, 0x44, 0xE0, 0x5B, 0x16,  // ....D.[.
                /* 0590 */  0xC0, 0x8F, 0x60, 0x10, 0x72, 0x32, 0x70, 0xF4,  // ..`.r2p.
                /* 0598 */  0x79, 0x01, 0x3F, 0x80, 0x87, 0x11, 0x0F, 0x89,  // y.?.....
                /* 05A0 */  0x05, 0x18, 0x38, 0xBD, 0x2F, 0xF9, 0x4C, 0xC1,  // ..8./.L.
                /* 05A8 */  0x0F, 0x18, 0x3E, 0x53, 0xB0, 0xEB, 0x41, 0xF4,  // ..>S..A.
                /* 05B0 */  0xC7, 0x00, 0x9F, 0x4B, 0x30, 0x83, 0x03, 0xFF,  // ...K0...
                /* 05B8 */  0xB5, 0xE2, 0xD0, 0x3D, 0x8A, 0xD7, 0x07, 0x13,  // ...=....
                /* 05C0 */  0x78, 0x70, 0xFC, 0xFF, 0x3F, 0x38, 0xB8, 0x77,  // xp..?8.w
                /* 05C8 */  0x86, 0x23, 0xF2, 0x1D, 0xC6, 0x83, 0x03, 0xDB,  // .#......
                /* 05D0 */  0x41, 0x00, 0x38, 0x0C, 0x0E, 0x1F, 0x6A, 0x70,  // A.8...jp
                /* 05D8 */  0xE8, 0xF1, 0x18, 0x38, 0xA4, 0xCF, 0x63, 0xEC,  // ...8..c.
                /* 05E0 */  0xC2, 0xF0, 0x90, 0xE3, 0xA1, 0x81, 0x0D, 0xD0,  // ........
                /* 05E8 */  0x43, 0x03, 0x96, 0x93, 0x78, 0x0A, 0x39, 0x34,  // C...x.94
                /* 05F0 */  0x30, 0x4B, 0x18, 0x1A, 0x50, 0x8A, 0x37, 0x34,  // 0K..P.74
                /* 05F8 */  0xFA, 0xFF, 0x1F, 0x1A, 0x1F, 0x92, 0x0F, 0x0B,  // ........
                /* 0600 */  0x31, 0x9F, 0x72, 0x22, 0xBC, 0x2F, 0xF8, 0x04,  // 1.r"./..
                /* 0608 */  0xC5, 0xD0, 0x5F, 0x53, 0x7C, 0xBB, 0xF0, 0x4D,  // .._S|..M
                /* 0610 */  0x10, 0x37, 0x3E, 0x70, 0x5D, 0x3A, 0x3D, 0x3E,  // .7>p]:=>
                /* 0618 */  0xE0, 0x73, 0xE4, 0xF2, 0xF8, 0x70, 0x47, 0x27,  // .s...pG'
                /* 0620 */  0x8F, 0x0F, 0x86, 0xCB, 0xAB, 0x0C, 0x39, 0x9A,  // ......9.
                /* 0628 */  0xF8, 0x68, 0xC5, 0x86, 0x07, 0xB6, 0x9B, 0x9E,  // .h......
                /* 0630 */  0x87, 0x07, 0x7C, 0xAE, 0x9B, 0x60, 0xBC, 0x42,  // ..|..`.B
                /* 0638 */  0xF2, 0x6B, 0x09, 0x8C, 0x13, 0x14, 0xFE, 0xBA,  // .k......
                /* 0640 */  0x09, 0xDE, 0xFF, 0xFF, 0x75, 0x13, 0x78, 0x8E,  // ....u.x.
                /* 0648 */  0x82, 0x6B, 0xBD, 0x64, 0xD3, 0x20, 0xAF, 0x1C,  // .k.d. ..
                /* 0650 */  0xC5, 0x7A, 0x11, 0x50, 0x18, 0x9F, 0xD9, 0x00,  // .z.P....
                /* 0658 */  0x47, 0x63, 0x7D, 0x66, 0x03, 0xCB, 0xBD, 0x80,  // Gc}f....
                /* 0660 */  0xDD, 0xD8, 0xE0, 0x9E, 0xD6, 0x60, 0xDF, 0x1D,  // .....`..
                /* 0668 */  0x1E, 0xCE, 0x1E, 0xD3, 0x1E, 0xD5, 0x1E, 0xD0,  // ........
                /* 0670 */  0x7C, 0xC4, 0x8E, 0xF1, 0x96, 0x16, 0x24, 0x4E,  // |.....$N
                /* 0678 */  0x84, 0xD7, 0x81, 0xA7, 0x35, 0x5F, 0x32, 0xE2,  // ....5_2.
                /* 0680 */  0x05, 0x7A, 0x5A, 0x33, 0x46, 0x9C, 0x97, 0x36,  // .zZ3F..6
                /* 0688 */  0x23, 0xBE, 0x52, 0x84, 0x78, 0x58, 0xF3, 0xC9,  // #.R.xX..
                /* 0690 */  0xCD, 0x78, 0x0F, 0x13, 0xE1, 0xC2, 0xBC, 0xB0,  // .x......
                /* 0698 */  0x3D, 0xAD, 0x81, 0xE3, 0xFF, 0x7F, 0x5A, 0x83,  // =.....Z.
                /* 06A0 */  0x23, 0xE7, 0x8A, 0x0D, 0xD0, 0xE4, 0xA2, 0x8F,  // #.......
                /* 06A8 */  0x3B, 0xA4, 0x80, 0xE5, 0xDA, 0xC0, 0x6E, 0x29,  // ;.....n)
                /* 06B0 */  0xF0, 0x2E, 0xD8, 0xC0, 0xF9, 0xFF, 0x7F, 0x44,  // .......D
                /* 06B8 */  0x01, 0x5F, 0x96, 0x0B, 0x36, 0xCD, 0x71, 0xC1,  // ._..6.q.
                /* 06C0 */  0x46, 0x71, 0x58, 0x0D, 0x90, 0xE6, 0x09, 0xFF,  // FqX.....
                /* 06C8 */  0x7A, 0x0D, 0xFE, 0x49, 0xF8, 0x7A, 0x0D, 0xD8,  // z..I.z..
                /* 06D0 */  0xBE, 0xC5, 0xE2, 0xAE, 0xD7, 0xC0, 0xEA, 0xFF,  // ........
                /* 06D8 */  0x7F, 0xBD, 0x06, 0x96, 0x82, 0x47, 0x4A, 0xEF,  // .....GJ.
                /* 06E0 */  0xD4, 0xE0, 0xBA, 0x69, 0xE3, 0x41, 0xDF, 0xB4,  // ...i.A..
                /* 06E8 */  0x61, 0x0A, 0xBE, 0x45, 0xD1, 0x28, 0xE4, 0x8A,  // a..E.(..
                /* 06F0 */  0xB6, 0x10, 0x0A, 0xE3, 0x5B, 0x14, 0xE0, 0x08,  // ....[...
                /* 06F8 */  0xFB, 0x2D, 0x0A, 0x2C, 0x17, 0xA7, 0xB7, 0x28,  // .-.,...(
                /* 0700 */  0xFC, 0x0C, 0x3C, 0x68, 0xDF, 0x75, 0x18, 0xA6,  // ..<h.u..
                /* 0708 */  0xEF, 0xD0, 0xF0, 0x4F, 0x4D, 0xCF, 0x4D, 0x0F,  // ...OM.M.
                /* 0710 */  0x4E, 0x0F, 0xCD, 0x3E, 0x48, 0xF9, 0x70, 0xF0,  // N..>H.p.
                /* 0718 */  0xFC, 0xF4, 0xFF, 0x8F, 0xF1, 0x5E, 0xE7, 0x9B,  // .....^..
                /* 0720 */  0xD4, 0x6B, 0x94, 0x2F, 0x30, 0xC7, 0x10, 0x31,  // .k./0..1
                /* 0728 */  0xCA, 0xCB, 0xB4, 0x21, 0xE2, 0xF9, 0xD4, 0xE4,  // ...!....
                /* 0730 */  0xB3, 0x42, 0xDC, 0x10, 0x0F, 0xD1, 0x46, 0x88,  // .B....F.
                /* 0738 */  0xFA, 0x3C, 0xED, 0x09, 0xBD, 0x46, 0x81, 0x57,  // .<...F.W
                /* 0740 */  0xD0, 0x35, 0x0A, 0xA0, 0xC9, 0xFD, 0x08, 0x77,  // .5.....w
                /* 0748 */  0x8D, 0x02, 0xCB, 0xBD, 0x81, 0x9D, 0x87, 0xF8,  // ........
                /* 0750 */  0x95, 0xC8, 0xD7, 0x06, 0x18, 0xF7, 0x28, 0x38,  // ......(8
                /* 0758 */  0xFF, 0xFF, 0x7B, 0x14, 0x60, 0x23, 0xCC, 0x3D,  // ..{.`#.=
                /* 0760 */  0x8A, 0x06, 0xB9, 0x47, 0xA1, 0x4E, 0x26, 0xBE,  // ...G.N&.
                /* 0768 */  0xD4, 0x79, 0xA2, 0xE0, 0x08, 0x7F, 0x91, 0x42,  // .y.....B
                /* 0770 */  0xC5, 0x26, 0x51, 0xE8, 0xC3, 0x10, 0x2A, 0xE6,  // .&Q...*.
                /* 0778 */  0x61, 0x84, 0x82, 0x18, 0xD0, 0x19, 0x4E, 0x14,  // a.....N.
                /* 0780 */  0x68, 0x15, 0x27, 0x0A, 0x72, 0x8B, 0xF1, 0xA4,  // h.'.r...
                /* 0788 */  0x1E, 0xA3, 0x00, 0x5F, 0xCB, 0xF4, 0x50, 0x79,  // ..._..Py
                /* 0790 */  0xE4, 0xA1, 0x52, 0x10, 0x0F, 0xD5, 0x71, 0x86,  // ..R...q.
                /* 0798 */  0x8A, 0x9E, 0xA4, 0xE7, 0x8F, 0xF9, 0xFF, 0x1F,  // ........
                /* 07A0 */  0x1C, 0xB0, 0x07, 0x29, 0x80, 0x17, 0x0A, 0x6D,  // ...)...m
                /* 07A8 */  0xFA, 0xD4, 0x68, 0xD4, 0xAA, 0x41, 0x99, 0x1A,  // ..h..A..
                /* 07B0 */  0x65, 0x1A, 0xD4, 0xEA, 0x53, 0xA9, 0x31, 0x63,  // e...S.1c
                /* 07B8 */  0xE7, 0x50, 0x4B, 0x3B, 0x4B, 0x50, 0x31, 0x8B,  // .PK;KP1.
                /* 07C0 */  0xD1, 0x68, 0x1C, 0x05, 0x84, 0xCA, 0xFE, 0x9B,  // .h......
                /* 07C8 */  0x0B, 0xC4, 0x21, 0x9F, 0x3A, 0x02, 0x74, 0xB0,  // ..!.:.t.
                /* 07D0 */  0x17, 0x95, 0x80, 0x2C, 0x6B, 0x6D, 0x02, 0x71,  // ...,km.q
                /* 07D8 */  0x7C, 0x13, 0x10, 0x8D, 0x80, 0x48, 0xCB, 0x63,  // |....H.c
                /* 07E0 */  0x42, 0x40, 0xCE, 0x0D, 0x22, 0x20, 0xAB, 0x58,  // B@.." .X
                /* 07E8 */  0x93, 0x80, 0xAC, 0xF9, 0x01, 0x23, 0x70, 0xEB,  // .....#p.
                /* 07F0 */  0xD4, 0x01, 0xC4, 0x52, 0x82, 0xD0, 0x44, 0x0B,  // ...R..D.
                /* 07F8 */  0x17, 0xA8, 0xE3, 0x81, 0x68, 0x30, 0x84, 0x46,  // ....h0.F
                /* 0800 */  0x40, 0x0E, 0x46, 0x21, 0x20, 0xCB, 0xF8, 0x74,  // @.F! ..t
                /* 0808 */  0x0B, 0xDC, 0x02, 0xAC, 0x00, 0x31, 0xF9, 0x20,  // .....1. 
                /* 0810 */  0x54, 0xB0, 0x17, 0x50, 0xA6, 0x1E, 0x44, 0x40,  // T..P..D@
                /* 0818 */  0x56, 0xBA, 0x56, 0x01, 0x59, 0x37, 0x88, 0x80,  // V.V.Y7..
                /* 0820 */  0xFE, 0xFF, 0x2F, 0x83, 0x32, 0x03, 0xCE, 0x32,  // ../.2..2
                /* 0828 */  0xBA, 0x01, 0x62, 0x0A, 0x1F, 0x0A, 0x02, 0xB1,  // ..b.....
                /* 0830 */  0x26, 0x3D, 0xA0, 0x4C, 0x20, 0x88, 0xAE, 0x1C,  // &=.L ...
                /* 0838 */  0xC4, 0x0F, 0x10, 0x93, 0x06, 0x22, 0x20, 0xC7,  // ....." .
                /* 0840 */  0x39, 0x98, 0x08, 0xDC, 0x71, 0x14, 0x01, 0x52,  // 9...q..R
                /* 0848 */  0x47, 0xC3, 0xA5, 0x20, 0x54, 0xFC, 0xF3, 0x44,  // G.. T..D
                /* 0850 */  0x20, 0x16, 0x64, 0x09, 0x8C, 0x82, 0xD0, 0x08,  //  .d.....
                /* 0858 */  0x9A, 0x40, 0x98, 0x3C, 0x4F, 0x20, 0x2C, 0xD4,  // .@.<O ,.
                /* 0860 */  0x9F, 0x5C, 0xA7, 0x15, 0xA2, 0x6A, 0x88, 0xD4,  // .\...j..
                /* 0868 */  0x15, 0x08, 0x0B, 0xFC, 0x30, 0xD0, 0x60, 0x9C,  // ....0.`.
                /* 0870 */  0x1E, 0x44, 0x40, 0x4E, 0xFA, 0xA7, 0x0A, 0x44,  // .D@N...D
                /* 0878 */  0x72, 0x83, 0x08, 0xC8, 0xF9, 0x9F, 0x22, 0x02,  // r.....".
                /* 0880 */  0x77, 0xEA, 0xD7, 0x84, 0x86, 0x4F, 0xBE, 0x58,  // w....O.X
                /* 0888 */  0x41, 0x88, 0xB8, 0x87, 0x55, 0x50, 0xA2, 0x14,  // A...UP..
                /* 0890 */  0x44, 0x40, 0x56, 0xF6, 0xB4, 0x12, 0x90, 0x75,  // D@V....u
                /* 0898 */  0x82, 0x08, 0xC8, 0xFF, 0x7F                     // .....
            })
        }

        Device (WMI2)
        {
            Name (_HID, EisaId ("PNP0C14") /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, 0x02)  // _UID: Unique ID
            Name (_WDG, Buffer (0x64)
            {
                /* 0000 */  0xF1, 0x24, 0xB4, 0xFC, 0x5A, 0x07, 0x0E, 0x4E,  // .$..Z..N
                /* 0008 */  0xBF, 0xC4, 0x62, 0xF3, 0xE7, 0x17, 0x71, 0xFA,  // ..b...q.
                /* 0010 */  0x41, 0x37, 0x01, 0x01, 0xE3, 0x5E, 0xBE, 0xE2,  // A7...^..
                /* 0018 */  0xDA, 0x42, 0xDB, 0x49, 0x83, 0x78, 0x1F, 0x52,  // .B.I.x.R
                /* 0020 */  0x47, 0x38, 0x82, 0x02, 0x41, 0x38, 0x01, 0x02,  // G8..A8..
                /* 0028 */  0x9A, 0x01, 0x30, 0x74, 0xE9, 0xDC, 0x48, 0x45,  // ..0t..HE
                /* 0030 */  0xBA, 0xB0, 0x9F, 0xDE, 0x09, 0x35, 0xCA, 0xFF,  // .....5..
                /* 0038 */  0x41, 0x39, 0x14, 0x05, 0x03, 0x70, 0xF4, 0x7F,  // A9...p..
                /* 0040 */  0x6C, 0x3B, 0x5E, 0x4E, 0xA2, 0x27, 0xE9, 0x79,  // l;^N.'.y
                /* 0048 */  0x82, 0x4A, 0x85, 0xD1, 0x41, 0x41, 0x01, 0x06,  // .J..AA..
                /* 0050 */  0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,  // !...f...
                /* 0058 */  0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,  // ......).
                /* 0060 */  0x42, 0x42, 0x01, 0x00                           // BB..
            })
            Name (PREL, Buffer (0x08)
            {
                 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   // ........
            })
            Method (WQA7, 1, NotSerialized)
            {
                Acquire (\_SB.WMI1.MWMI, 0xFFFF)
                \WMIS (0x07, 0x00)
                PREL [0x00] = \WLS0
                PREL [0x01] = \WLS1
                PREL [0x02] = \WLS2
                PREL [0x03] = \WLS3
                PREL [0x04] = \WLS4
                PREL [0x05] = \WLS5
                PREL [0x06] = \WLS6
                PREL [0x07] = \WLS7
                Release (\_SB.WMI1.MWMI)
                Return (PREL) /* \_SB_.WMI2.PREL */
            }

            Method (WMA8, 3, NotSerialized)
            {
                CreateByteField (Arg2, 0x00, PRE0)
                CreateByteField (Arg2, 0x01, PRE1)
                CreateByteField (Arg2, 0x02, PRE2)
                CreateByteField (Arg2, 0x03, PRE3)
                CreateByteField (Arg2, 0x04, PRE4)
                CreateByteField (Arg2, 0x05, PRE5)
                CreateByteField (Arg2, 0x06, PRE6)
                CreateByteField (Arg2, 0x07, PRE7)
                Acquire (\_SB.WMI1.MWMI, 0xFFFF)
                \WLS0 = PRE0 /* \_SB_.WMI2.WMA8.PRE0 */
                \WLS1 = PRE1 /* \_SB_.WMI2.WMA8.PRE1 */
                \WLS2 = PRE2 /* \_SB_.WMI2.WMA8.PRE2 */
                \WLS3 = PRE3 /* \_SB_.WMI2.WMA8.PRE3 */
                \WLS4 = PRE4 /* \_SB_.WMI2.WMA8.PRE4 */
                \WLS5 = PRE5 /* \_SB_.WMI2.WMA8.PRE5 */
                \WLS6 = PRE6 /* \_SB_.WMI2.WMA8.PRE6 */
                \WLS7 = PRE7 /* \_SB_.WMI2.WMA8.PRE7 */
                \WMIS (0x08, 0x00)
                Release (\_SB.WMI1.MWMI)
            }

            Name (ITEM, Package (0x08)
            {
                Package (0x02)
                {
                    0x00, 
                    "InhibitEnteringThinkPadSetup"
                }, 

                Package (0x02)
                {
                    0x03, 
                    "MTMSerialConcatenation"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "SwapProductName"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "ComputraceMsgDisable"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "CpuDebugEnable"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "PasswordAfterBootDeviceList"
                }, 

                Package (0x02)
                {
                    0x02, 
                    "SpecialCharForPassword"
                }, 

                Package (0x02)
                {
                    0x00, 
                    "ConfirmTpmFwUpdate"
                }
            })
            Name (VSEL, Package (0x04)
            {
                Package (0x02)
                {
                    "Disable", 
                    "Enable"
                }, 

                Package (0x02)
                {
                    "Off", 
                    "On"
                }, 

                Package (0x02)
                {
                    "Disable", 
                    "412"
                }, 

                Package (0x06)
                {
                    "Disable", 
                    "Enable", 
                    "Default", 
                    "MTMSN", 
                    "1SMTMSN", 
                    "MTSN"
                }
            })
            Method (WQA9, 1, NotSerialized)
            {
                Acquire (\_SB.WMI1.MWMI, 0xFFFF)
                If ((\WMIS (0x09, Arg0) != 0x00))
                {
                    Release (\_SB.WMI1.MWMI)
                    Return ("")
                }

                Local0 = DerefOf (ITEM [\WITM])
                Local1 = DerefOf (Local0 [0x00])
                Local2 = DerefOf (Local0 [0x01])
                Concatenate (Local2, ",", Local6)
                Local3 = DerefOf (VSEL [Local1])
                Concatenate (Local6, DerefOf (Local3 [\WSEL]), Local7)
                Release (\_SB.WMI1.MWMI)
                Return (Local7)
            }

            Method (WMAA, 3, NotSerialized)
            {
                Acquire (\_SB.WMI1.MWMI, 0xFFFF)
                If ((SizeOf (Arg2) == 0x00))
                {
                    Local0 = 0x02
                }
                Else
                {
                    Local0 = \_SB.WMI1.CARG (Arg2)
                    If ((Local0 == 0x00))
                    {
                        Local0 = \_SB.WMI1.WSET (ITEM, VSEL)
                        If ((Local0 == 0x00))
                        {
                            Local0 = \WMIS (0x0A, 0x00)
                        }
                    }
                }

                Release (\_SB.WMI1.MWMI)
                Return (DerefOf (\_SB.WMI1.RETN [Local0]))
            }

            Name (WQBB, Buffer (0x0538)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  // FOMB....
                /* 0008 */  0x28, 0x05, 0x00, 0x00, 0xAE, 0x18, 0x00, 0x00,  // (.......
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  // DS...}.T
                /* 0018 */  0x98, 0xDE, 0x8B, 0x00, 0x01, 0x06, 0x18, 0x42,  // .......B
                /* 0020 */  0x10, 0x0D, 0x10, 0x8A, 0x0D, 0x21, 0x02, 0x0B,  // .....!..
                /* 0028 */  0x83, 0x50, 0x50, 0x18, 0x14, 0xA0, 0x45, 0x41,  // .PP...EA
                /* 0030 */  0xC8, 0x05, 0x14, 0x95, 0x02, 0x21, 0xC3, 0x02,  // .....!..
                /* 0038 */  0x14, 0x0B, 0x70, 0x2E, 0x40, 0xBA, 0x00, 0xE5,  // ..p.@...
                /* 0040 */  0x28, 0x72, 0x0C, 0x22, 0x02, 0xF7, 0xEF, 0x0F,  // (r."....
                /* 0048 */  0x31, 0x10, 0x88, 0x14, 0x40, 0x48, 0x28, 0x84,  // 1...@H(.
                /* 0050 */  0x44, 0x00, 0x53, 0x21, 0x70, 0x84, 0xA0, 0x5F,  // D.S!p.._
                /* 0058 */  0x01, 0x08, 0x1D, 0x0A, 0x90, 0x29, 0xC0, 0xA0,  // .....)..
                /* 0060 */  0x00, 0xA7, 0x08, 0x22, 0x88, 0xD2, 0xB2, 0x00,  // ..."....
                /* 0068 */  0xDD, 0x02, 0x7C, 0x0B, 0xD0, 0x0E, 0x21, 0xB4,  // ..|...!.
                /* 0070 */  0xC8, 0x95, 0x0A, 0xB0, 0x08, 0x25, 0x9F, 0x80,  // .....%..
                /* 0078 */  0x92, 0x88, 0x22, 0xD9, 0x78, 0xB2, 0x8D, 0x48,  // ..".x..H
                /* 0080 */  0xE6, 0x61, 0x91, 0x83, 0x40, 0x89, 0x19, 0x04,  // .a..@...
                /* 0088 */  0x4A, 0x27, 0xAE, 0x6C, 0xE2, 0x6A, 0x10, 0x07,  // J'.l.j..
                /* 0090 */  0x10, 0xE5, 0x3C, 0xA2, 0x24, 0x38, 0xAA, 0x83,  // ..<.$8..
                /* 0098 */  0x88, 0x10, 0xBB, 0x5C, 0x01, 0x92, 0x07, 0x20,  // ...\... 
                /* 00A0 */  0xCD, 0x13, 0x93, 0xF5, 0x39, 0x68, 0x64, 0x6C,  // ....9hdl
                /* 00A8 */  0x04, 0x3C, 0x98, 0x04, 0x10, 0x16, 0x65, 0x9D,  // .<....e.
                /* 00B0 */  0x8A, 0x02, 0x83, 0xF2, 0x00, 0x22, 0x39, 0x63,  // ....."9c
                /* 00B8 */  0x45, 0x01, 0xDB, 0xEB, 0x44, 0x64, 0x72, 0xA0,  // E...Ddr.
                /* 00C0 */  0x54, 0x12, 0x1C, 0x6A, 0x98, 0x9E, 0x5A, 0xF3,  // T..j..Z.
                /* 00C8 */  0x13, 0xD3, 0x44, 0x4E, 0xAD, 0xE9, 0x21, 0x0B,  // ..DN..!.
                /* 00D0 */  0x92, 0x49, 0x1B, 0x0A, 0x6A, 0xEC, 0x9E, 0xD6,  // .I..j...
                /* 00D8 */  0x49, 0x79, 0xA6, 0x11, 0x0F, 0xCA, 0x30, 0x09,  // Iy....0.
                /* 00E0 */  0x3C, 0x0A, 0x86, 0xC6, 0x09, 0xCA, 0x82, 0x90,  // <.......
                /* 00E8 */  0x83, 0x81, 0xA2, 0x00, 0x4F, 0xC2, 0x73, 0x2C,  // ....O.s,
                /* 00F0 */  0x5E, 0x80, 0xF0, 0x11, 0x93, 0xB3, 0x40, 0x8C,  // ^.....@.
                /* 00F8 */  0x04, 0x3E, 0x13, 0x78, 0xE4, 0xC7, 0x8C, 0x1D,  // .>.x....
                /* 0100 */  0x51, 0xB8, 0x80, 0xE7, 0x73, 0x0C, 0x91, 0xE3,  // Q...s...
                /* 0108 */  0x1E, 0x6A, 0x8C, 0xA3, 0x88, 0x7C, 0x38, 0x0C,  // .j...|8.
                /* 0110 */  0xED, 0x74, 0xE3, 0x1C, 0xD8, 0xE9, 0x14, 0x04,  // .t......
                /* 0118 */  0x2E, 0x90, 0x60, 0x3D, 0xCF, 0x59, 0x20, 0xFF,  // ..`=.Y .
                /* 0120 */  0xFF, 0x18, 0x07, 0xC1, 0xF0, 0x8E, 0x01, 0x23,  // .......#
                /* 0128 */  0x03, 0x42, 0x1E, 0x05, 0x58, 0x1D, 0x96, 0x26,  // .B..X..&
                /* 0130 */  0x91, 0xC0, 0xEE, 0x05, 0x68, 0xBC, 0x04, 0x48,  // ....h..H
                /* 0138 */  0xE1, 0x20, 0xA5, 0x0C, 0x42, 0x30, 0x8D, 0x09,  // . ..B0..
                /* 0140 */  0xB0, 0x75, 0x68, 0x90, 0x37, 0x01, 0xD6, 0xAE,  // .uh.7...
                /* 0148 */  0x02, 0x42, 0x89, 0x74, 0x02, 0x71, 0x42, 0x44,  // .B.t.qBD
                /* 0150 */  0x89, 0x18, 0xD4, 0x40, 0x51, 0x6A, 0x43, 0x15,  // ...@QjC.
                /* 0158 */  0x4C, 0x67, 0xC3, 0x13, 0x66, 0xDC, 0x10, 0x31,  // Lg..f..1
                /* 0160 */  0x0C, 0x14, 0xB7, 0xFD, 0x41, 0x90, 0x61, 0xE3,  // ....A.a.
                /* 0168 */  0xC6, 0xEF, 0x41, 0x9D, 0xD6, 0xD9, 0x1D, 0xD3,  // ..A.....
                /* 0170 */  0xAB, 0x82, 0x09, 0x3C, 0xE9, 0x37, 0x84, 0xA7,  // ...<.7..
                /* 0178 */  0x83, 0xA3, 0x38, 0xDA, 0xA8, 0x31, 0x9A, 0x23,  // ..8..1.#
                /* 0180 */  0x65, 0xAB, 0xD6, 0xB9, 0xC2, 0x91, 0xE0, 0x51,  // e......Q
                /* 0188 */  0xE7, 0x05, 0x9F, 0x0C, 0x3C, 0xB4, 0xC3, 0xF6,  // ....<...
                /* 0190 */  0x60, 0xCF, 0xD2, 0x43, 0x38, 0x82, 0x67, 0x86,  // `..C8.g.
                /* 0198 */  0x47, 0x02, 0x8F, 0x81, 0xDD, 0x15, 0x7C, 0x08,  // G.....|.
                /* 01A0 */  0xF0, 0x19, 0x01, 0xEF, 0x1A, 0x50, 0x97, 0x83,  // .....P..
                /* 01A8 */  0x47, 0x03, 0x36, 0xE9, 0x70, 0x98, 0xF1, 0x7A,  // G.6.p..z
                /* 01B0 */  0xEE, 0x9E, 0xBA, 0xCF, 0x18, 0xFC, 0xBC, 0xE1,  // ........
                /* 01B8 */  0xC1, 0xE1, 0x46, 0x7A, 0x32, 0x47, 0x56, 0xAA,  // ..Fz2GV.
                /* 01C0 */  0x00, 0xB3, 0xD7, 0x00, 0x1D, 0x25, 0x7C, 0xE0,  // .....%|.
                /* 01C8 */  0x60, 0x77, 0x81, 0xA7, 0x00, 0x13, 0x58, 0xFE,  // `w....X.
                /* 01D0 */  0x20, 0x50, 0x23, 0x33, 0xB4, 0xC7, 0xFB, 0xDE,  //  P#3....
                /* 01D8 */  0x61, 0xC8, 0x27, 0x85, 0xC3, 0x62, 0x62, 0x0F,  // a.'..bb.
                /* 01E0 */  0x1E, 0x74, 0x3C, 0xE0, 0xBF, 0x8F, 0x3C, 0x69,  // .t<...<i
                /* 01E8 */  0x78, 0xFA, 0x9E, 0xAF, 0x09, 0x06, 0x86, 0x90,  // x.......
                /* 01F0 */  0x95, 0xF1, 0xA0, 0x06, 0x62, 0xE8, 0x57, 0x85,  // ....b.W.
                /* 01F8 */  0xC3, 0x38, 0x0D, 0x9F, 0x40, 0x7C, 0x0E, 0x08,  // .8..@|..
                /* 0200 */  0x12, 0xE3, 0x98, 0x3C, 0x38, 0xFF, 0xFF, 0x09,  // ...<8...
                /* 0208 */  0x1C, 0x6B, 0xE4, 0xF4, 0x9C, 0xE2, 0xF3, 0x04,  // .k......
                /* 0210 */  0x3F, 0x5C, 0xF8, 0x3C, 0xC1, 0x4E, 0x0C, 0xA7,  // ?\.<.N..
                /* 0218 */  0xF1, 0x1C, 0xE0, 0xE1, 0x9C, 0x95, 0x8F, 0x13,  // ........
                /* 0220 */  0xC0, 0x02, 0xE2, 0x75, 0x82, 0x0F, 0x14, 0x3E,  // ...u...>
                /* 0228 */  0xEC, 0xA1, 0x79, 0x14, 0x2F, 0x11, 0x6F, 0x0F,  // ..y./.o.
                /* 0230 */  0x26, 0x88, 0xF6, 0x10, 0x03, 0xC6, 0x19, 0xE1,  // &.......
                /* 0238 */  0xCE, 0x1B, 0x70, 0x4E, 0x31, 0xC0, 0x03, 0xEA,  // ..pN1...
                /* 0240 */  0x10, 0x30, 0x87, 0x09, 0x0F, 0x81, 0x0F, 0xE0,  // .0......
                /* 0248 */  0x19, 0xE4, 0x1C, 0x7D, 0xCC, 0x39, 0x33, 0xDC,  // ...}.93.
                /* 0250 */  0x71, 0x07, 0x6C, 0xC3, 0xE0, 0x91, 0x2D, 0x80,  // q.l...-.
                /* 0258 */  0xB0, 0x38, 0x4F, 0x02, 0x05, 0x7C, 0x1B, 0x50,  // .8O..|.P
                /* 0260 */  0x18, 0x1F, 0x6E, 0xC0, 0xFB, 0xFF, 0x3F, 0xDC,  // ..n...?.
                /* 0268 */  0x00, 0xD7, 0xF3, 0x01, 0xEE, 0xF8, 0x00, 0xF7,  // ........
                /* 0270 */  0x62, 0xC1, 0x0E, 0x0F, 0x8F, 0x37, 0xC0, 0x60,  // b....7.`
                /* 0278 */  0x48, 0x8F, 0x34, 0x6F, 0x35, 0x31, 0x5E, 0x6D,  // H.4o51^m
                /* 0280 */  0x42, 0x44, 0x78, 0xA8, 0x79, 0xB7, 0x31, 0x52,  // BDx.y.1R
                /* 0288 */  0xBC, 0xC7, 0x1B, 0x76, 0x8D, 0x39, 0x8B, 0x07,  // ...v.9..
                /* 0290 */  0x90, 0x28, 0xC5, 0xA1, 0xE9, 0x62, 0x13, 0x23,  // .(...b.#
                /* 0298 */  0xCA, 0x9B, 0x8D, 0x61, 0xDF, 0x74, 0x0C, 0x14,  // ...a.t..
                /* 02A0 */  0x2A, 0x52, 0x84, 0x30, 0x2F, 0x16, 0x21, 0x1E,  // *R.0/.!.
                /* 02A8 */  0x6F, 0xC0, 0x2C, 0xE9, 0xA5, 0xA2, 0xCF, 0x81,  // o.,.....
                /* 02B0 */  0x8F, 0x37, 0x80, 0x97, 0xFF, 0xFF, 0xF1, 0x06,  // .7......
                /* 02B8 */  0xF0, 0x30, 0x0C, 0x1F, 0x53, 0xC0, 0x76, 0x73,  // .0..S.vs
                /* 02C0 */  0x60, 0xF7, 0x14, 0xF8, 0xE7, 0x14, 0xC0, 0x91,  // `.......
                /* 02C8 */  0x90, 0x47, 0x80, 0x0E, 0x1E, 0x16, 0x01, 0x22,  // .G....."
                /* 02D0 */  0x1B, 0xCF, 0x00, 0x9F, 0x89, 0xA8, 0x40, 0x2A,  // ......@*
                /* 02D8 */  0xCD, 0x14, 0x2C, 0xE3, 0x14, 0xAC, 0x4E, 0x88,  // ..,...N.
                /* 02E0 */  0x5C, 0x06, 0x85, 0x44, 0x40, 0x68, 0x64, 0x86,  // \..D@hd.
                /* 02E8 */  0xF3, 0x21, 0xD1, 0x60, 0x06, 0xF1, 0xF9, 0xC0,  // .!.`....
                /* 02F0 */  0x67, 0x0A, 0x9F, 0x9C, 0xF8, 0xFF, 0xFF, 0xE4,  // g.......
                /* 02F8 */  0x04, 0x9E, 0x83, 0xC9, 0x43, 0x05, 0x2C, 0x44,  // ....C.,D
                /* 0300 */  0x9F, 0x16, 0x38, 0x9C, 0xCF, 0x2C, 0x1C, 0xCE,  // ..8..,..
                /* 0308 */  0x47, 0x12, 0x7E, 0x80, 0xE4, 0x47, 0x25, 0x70,  // G.~..G%p
                /* 0310 */  0x09, 0x3C, 0x34, 0x80, 0x02, 0xC8, 0xF7, 0x03,  // .<4.....
                /* 0318 */  0x9F, 0x03, 0x9E, 0x11, 0xD8, 0x1C, 0x1E, 0x09,  // ........
                /* 0320 */  0x7C, 0x20, 0x60, 0xF0, 0x3C, 0xDA, 0xA8, 0xE8,  // | `.<...
                /* 0328 */  0xD1, 0xC6, 0xC3, 0xE3, 0x47, 0x06, 0xCF, 0xE7,  // ....G...
                /* 0330 */  0x81, 0xE0, 0x28, 0x1F, 0x09, 0x70, 0x18, 0xEF,  // ..(..p..
                /* 0338 */  0x17, 0x1E, 0xA2, 0x4F, 0x39, 0xB0, 0x26, 0x72,  // ...O9.&r
                /* 0340 */  0xD4, 0x16, 0x7D, 0x22, 0x10, 0xE8, 0x33, 0x17,  // ..}"..3.
                /* 0348 */  0xE6, 0x94, 0x03, 0x9C, 0x82, 0x8F, 0x1E, 0x15,  // ........
                /* 0350 */  0xF5, 0x40, 0x0A, 0xDA, 0x93, 0x82, 0xCF, 0x0A,  // .@......
                /* 0358 */  0x3E, 0x7C, 0xC1, 0xFF, 0xFF, 0x1F, 0xBE, 0xE0,  // >|......
                /* 0360 */  0xCC, 0xEB, 0x65, 0xCD, 0x07, 0x8E, 0x38, 0x67,  // ..e...8g
                /* 0368 */  0x71, 0xBA, 0xEF, 0x16, 0xF8, 0x13, 0x29, 0x30,  // q.....)0
                /* 0370 */  0x0B, 0x72, 0x22, 0x45, 0xC1, 0xF8, 0x44, 0x0A,  // .r"E..D.
                /* 0378 */  0xD8, 0xBC, 0x05, 0x60, 0xAF, 0x0B, 0x4F, 0x22,  // ...`..O"
                /* 0380 */  0x30, 0xCE, 0x11, 0xCF, 0x58, 0x30, 0x0F, 0x55,  // 0...X0.U
                /* 0388 */  0xA7, 0xF8, 0x52, 0xF5, 0xC6, 0x10, 0xE1, 0xC9,  // ..R.....
                /* 0390 */  0xEA, 0x35, 0xEA, 0x01, 0xCB, 0x60, 0x2F, 0x02,  // .5...`/.
                /* 0398 */  0x86, 0x79, 0xC5, 0xF2, 0xE9, 0x2A, 0xC4, 0x03,  // .y...*..
                /* 03A0 */  0x96, 0xCF, 0x5A, 0xD1, 0x42, 0x84, 0x8C, 0x12,  // ..Z.B...
                /* 03A8 */  0xEC, 0x15, 0xEB, 0x55, 0xC6, 0x47, 0x2A, 0x83,  // ...U.G*.
                /* 03B0 */  0x07, 0x0C, 0x1B, 0x2D, 0x52, 0x84, 0x47, 0x2C,  // ...-R.G,
                /* 03B8 */  0xFC, 0xFF, 0xFF, 0x88, 0x05, 0x1E, 0x09, 0x07,  // ........
                /* 03C0 */  0x52, 0x80, 0x2A, 0x03, 0xC7, 0x1D, 0x48, 0x81,  // R.*...H.
                /* 03C8 */  0xFD, 0x69, 0x02, 0x7F, 0xBD, 0xF0, 0x78, 0xB0,  // .i....x.
                /* 03D0 */  0xFF, 0xFF, 0x73, 0x00, 0xF8, 0x0E, 0x31, 0xC0,  // ..s...1.
                /* 03D8 */  0x60, 0xC0, 0x30, 0x0E, 0x31, 0xC0, 0x43, 0xF0,  // `.0.1.C.
                /* 03E0 */  0xC9, 0x0C, 0xF4, 0xC7, 0x1D, 0xF8, 0xE3, 0xE0,  // ........
                /* 03E8 */  0x19, 0x9F, 0x1C, 0x26, 0x50, 0x98, 0x13, 0x29,  // ...&P..)
                /* 03F0 */  0x0A, 0xC6, 0x27, 0x52, 0xC0, 0xD9, 0xFF, 0xFF,  // ..'R....
                /* 03F8 */  0x70, 0x05, 0x86, 0xE3, 0x0D, 0xF8, 0x6F, 0x33,  // p.....o3
                /* 0400 */  0x3E, 0x84, 0xFA, 0x7C, 0xE3, 0x0B, 0xA9, 0x21,  // >..|...!
                /* 0408 */  0x5E, 0x6C, 0xDE, 0xD4, 0x5E, 0x09, 0x5E, 0xDF,  // ^l..^.^.
                /* 0410 */  0xD9, 0xB5, 0xE6, 0xF5, 0xDD, 0xA7, 0x82, 0x27,  // .......'
                /* 0418 */  0xD1, 0x08, 0x21, 0xA3, 0xBC, 0xE4, 0x18, 0x24,  // ..!....$
                /* 0420 */  0xC4, 0xEB, 0xA8, 0x01, 0x83, 0x05, 0x89, 0x78,  // .......x
                /* 0428 */  0x0A, 0x4F, 0x3B, 0x8F, 0x37, 0xE0, 0x15, 0x75,  // .O;.7..u
                /* 0430 */  0x20, 0x05, 0xE8, 0xF1, 0xFF, 0x3F, 0x90, 0x02,  //  ....?..
                /* 0438 */  0x83, 0x7B, 0x0A, 0xEC, 0x73, 0x0A, 0xE0, 0x29,  // .{..s..)
                /* 0440 */  0xF9, 0x89, 0x94, 0xA6, 0x3E, 0x91, 0xA2, 0x15,  // ....>...
                /* 0448 */  0x01, 0x69, 0xAA, 0x60, 0x21, 0x98, 0xFE, 0x44,  // .i.`!..D
                /* 0450 */  0x4A, 0x0F, 0x06, 0xCE, 0x4D, 0xA2, 0xE4, 0x43,  // J...M..C
                /* 0458 */  0xA3, 0x70, 0xCE, 0x7A, 0x20, 0xA1, 0x20, 0x06,  // .p.z . .
                /* 0460 */  0x74, 0x90, 0x43, 0x05, 0xFA, 0xAC, 0xE2, 0x03,  // t.C.....
                /* 0468 */  0xC9, 0x81, 0x3C, 0x22, 0x7A, 0x58, 0x3E, 0x54,  // ..<"zX>T
                /* 0470 */  0xFA, 0xAE, 0xE2, 0x73, 0x88, 0x8F, 0x14, 0x1E,  // ...s....
                /* 0478 */  0xBF, 0x0F, 0x0B, 0xFC, 0x3F, 0xE3, 0xE3, 0x28,  // ....?..(
                /* 0480 */  0x03, 0xAF, 0xE6, 0xBC, 0x82, 0x02, 0xF3, 0x69,  // .......i
                /* 0488 */  0x14, 0xA3, 0xEB, 0x3E, 0x01, 0x92, 0xFF, 0xFF,  // ...>....
                /* 0490 */  0xFC, 0xB8, 0xBE, 0xC3, 0x28, 0xC8, 0xD1, 0x79,  // ....(..y
                /* 0498 */  0xF8, 0xC9, 0xA2, 0xE2, 0x4E, 0x96, 0x82, 0x78,  // ....N..x
                /* 04A0 */  0xB2, 0x8E, 0x32, 0x59, 0xF4, 0x4C, 0x7C, 0xBB,  // ..2Y.L|.
                /* 04A8 */  0xF0, 0x8C, 0xDE, 0xBB, 0x7C, 0x83, 0x65, 0x37,  // ....|.e7
                /* 04B0 */  0x59, 0x78, 0x97, 0x81, 0x90, 0x8F, 0x06, 0xBE,  // Yx......
                /* 04B8 */  0xC9, 0xC2, 0x1D, 0x8B, 0x2F, 0x23, 0xE0, 0xBB,  // ..../#..
                /* 04C0 */  0xC9, 0x02, 0x5E, 0x47, 0xE3, 0xB3, 0x05, 0x3B,  // ..^G...;
                /* 04C8 */  0x85, 0xF8, 0xBA, 0x06, 0x4B, 0xA1, 0x4D, 0x9F,  // ....K.M.
                /* 04D0 */  0x1A, 0x8D, 0x5A, 0xFD, 0xFF, 0x1B, 0x94, 0xA9,  // ..Z.....
                /* 04D8 */  0x51, 0xA6, 0x41, 0xAD, 0x3E, 0x95, 0x1A, 0x33,  // Q.A.>..3
                /* 04E0 */  0x76, 0xA1, 0xB0, 0xB8, 0x0B, 0x06, 0x95, 0xB4,  // v.......
                /* 04E8 */  0x2C, 0x8D, 0xCB, 0x81, 0x40, 0x68, 0x80, 0x5B,  // ,...@h.[
                /* 04F0 */  0xA9, 0x40, 0x1C, 0xFA, 0x0B, 0xA4, 0x53, 0x02,  // .@....S.
                /* 04F8 */  0xF9, 0x6A, 0x09, 0xC8, 0x62, 0x57, 0x25, 0x10,  // .j..bW%.
                /* 0500 */  0xCB, 0x54, 0x01, 0xD1, 0xC8, 0xDD, 0xC2, 0x20,  // .T..... 
                /* 0508 */  0x02, 0x72, 0xBC, 0x4F, 0x8D, 0x40, 0x1D, 0x49,  // .r.O.@.I
                /* 0510 */  0x07, 0x10, 0x13, 0xE4, 0x63, 0xAC, 0xF4, 0x25,  // ....c..%
                /* 0518 */  0x20, 0x10, 0xCB, 0xA6, 0x15, 0xA0, 0xE5, 0x3A,  //  ......:
                /* 0520 */  0x01, 0x62, 0x61, 0x41, 0x68, 0xC0, 0x5F, 0xB5,  // .baAh._.
                /* 0528 */  0x86, 0xE0, 0xB4, 0x20, 0x02, 0x72, 0x32, 0x2D,  // ... .r2-
                /* 0530 */  0x40, 0x2C, 0x27, 0x88, 0x80, 0xFC, 0xFF, 0x07   // @,'.....
            })
        }

        Device (WMI3)
        {
            Name (_HID, EisaId ("PNP0C14") /* Windows Management Instrumentation Device */)  // _HID: Hardware ID
            Name (_UID, 0x03)  // _UID: Unique ID
            Name (_WDG, /**** Is ResourceTemplate, but EndTag not at buffer end ****/ Buffer (0x3C)
            {
                /* 0000 */  0x79, 0x36, 0x4D, 0x8F, 0x9E, 0x74, 0x79, 0x44,  // y6M..tyD
                /* 0008 */  0x9B, 0x16, 0xC6, 0x26, 0x01, 0xFD, 0x25, 0xF0,  // ...&..%.
                /* 0010 */  0x41, 0x42, 0x01, 0x02, 0x69, 0xE8, 0xD2, 0x85,  // AB..i...
                /* 0018 */  0x5A, 0x36, 0xCE, 0x4A, 0xA4, 0xD3, 0xCD, 0x69,  // Z6.J...i
                /* 0020 */  0x2B, 0x16, 0x98, 0xA0, 0x41, 0x43, 0x01, 0x02,  // +...AC..
                /* 0028 */  0x21, 0x12, 0x90, 0x05, 0x66, 0xD5, 0xD1, 0x11,  // !...f...
                /* 0030 */  0xB2, 0xF0, 0x00, 0xA0, 0xC9, 0x06, 0x29, 0x10,  // ......).
                /* 0038 */  0x42, 0x43, 0x01, 0x00                           // BC..
            })
            Method (WMAB, 3, NotSerialized)
            {
                CreateByteField (Arg2, 0x00, ASS0)
                CreateWordField (Arg2, 0x01, ASS1)
                CreateByteField (Arg2, 0x03, ASS2)
                Acquire (\_SB.WMI1.MWMI, 0xFFFF)
                \WASB = ASS0 /* \_SB_.WMI3.WMAB.ASS0 */
                \WASI = ASS1 /* \_SB_.WMI3.WMAB.ASS1 */
                \WASD = ASS2 /* \_SB_.WMI3.WMAB.ASS2 */
                \WMIS (0x0B, 0x00)
                Local0 = \WASS
                Release (\_SB.WMI1.MWMI)
                Return (Local0)
            }

            Method (WMAC, 3, NotSerialized)
            {
                CreateByteField (Arg2, 0x00, ASS0)
                CreateWordField (Arg2, 0x01, ASS1)
                Acquire (\_SB.WMI1.MWMI, 0xFFFF)
                \WASB = ASS0 /* \_SB_.WMI3.WMAC.ASS0 */
                \WASI = ASS1 /* \_SB_.WMI3.WMAC.ASS1 */
                \WMIS (0x0C, Arg1)
                Local0 = \WASS
                Release (\_SB.WMI1.MWMI)
                Return (Local0)
            }

            Name (WQBC, Buffer (0x040A)
            {
                /* 0000 */  0x46, 0x4F, 0x4D, 0x42, 0x01, 0x00, 0x00, 0x00,  // FOMB....
                /* 0008 */  0xFA, 0x03, 0x00, 0x00, 0x32, 0x12, 0x00, 0x00,  // ....2...
                /* 0010 */  0x44, 0x53, 0x00, 0x01, 0x1A, 0x7D, 0xDA, 0x54,  // DS...}.T
                /* 0018 */  0x98, 0xC3, 0x88, 0x00, 0x01, 0x06, 0x18, 0x42,  // .......B
                /* 0020 */  0x10, 0x07, 0x10, 0x8A, 0x0D, 0x21, 0x02, 0x0B,  // .....!..
                /* 0028 */  0x83, 0x50, 0x50, 0x18, 0x14, 0xA0, 0x45, 0x41,  // .PP...EA
                /* 0030 */  0xC8, 0x05, 0x14, 0x95, 0x02, 0x21, 0xC3, 0x02,  // .....!..
                /* 0038 */  0x14, 0x0B, 0x70, 0x2E, 0x40, 0xBA, 0x00, 0xE5,  // ..p.@...
                /* 0040 */  0x28, 0x72, 0x0C, 0x22, 0x02, 0xF7, 0xEF, 0x0F,  // (r."....
                /* 0048 */  0x31, 0x10, 0x88, 0x14, 0x40, 0x48, 0x28, 0x84,  // 1...@H(.
                /* 0050 */  0x44, 0x00, 0x53, 0x21, 0x70, 0x84, 0xA0, 0x5F,  // D.S!p.._
                /* 0058 */  0x01, 0x08, 0x1D, 0x0A, 0x90, 0x29, 0xC0, 0xA0,  // .....)..
                /* 0060 */  0x00, 0xA7, 0x08, 0x22, 0x88, 0xD2, 0xB2, 0x00,  // ..."....
                /* 0068 */  0xDD, 0x02, 0x7C, 0x0B, 0xD0, 0x0E, 0x21, 0xB4,  // ..|...!.
                /* 0070 */  0x58, 0x07, 0x11, 0x21, 0xD2, 0x31, 0x34, 0x29,  // X..!.14)
                /* 0078 */  0x40, 0xA2, 0x00, 0x8B, 0x02, 0x64, 0xC3, 0xC8,  // @....d..
                /* 0080 */  0x36, 0x22, 0x99, 0x87, 0x45, 0x0E, 0x02, 0x25,  // 6"..E..%
                /* 0088 */  0x66, 0x10, 0x28, 0x9D, 0xE0, 0xB2, 0x89, 0xAB,  // f.(.....
                /* 0090 */  0x41, 0x9C, 0x4C, 0x94, 0xF3, 0x88, 0x92, 0xE0,  // A.L.....
                /* 0098 */  0xA8, 0x0E, 0x22, 0x42, 0xEC, 0x72, 0x05, 0x48,  // .."B.r.H
                /* 00A0 */  0x1E, 0x80, 0x34, 0x4F, 0x4C, 0xD6, 0xE7, 0xA0,  // ..4OL...
                /* 00A8 */  0x91, 0xB1, 0x11, 0xF0, 0x94, 0x1A, 0x40, 0x58,  // ......@X
                /* 00B0 */  0xA0, 0x75, 0x2A, 0xE0, 0x7A, 0x0D, 0x43, 0x3D,  // .u*.z.C=
                /* 00B8 */  0x80, 0x48, 0xCE, 0x58, 0x51, 0xC0, 0xF6, 0x3A,  // .H.XQ..:
                /* 00C0 */  0x11, 0x8D, 0xEA, 0x40, 0x99, 0x24, 0x38, 0xD4,  // ...@.$8.
                /* 00C8 */  0x30, 0x3D, 0xB5, 0xE6, 0x27, 0xA6, 0x89, 0x9C,  // 0=..'...
                /* 00D0 */  0x5A, 0xD3, 0x43, 0x16, 0x24, 0x93, 0x36, 0x14,  // Z.C.$.6.
                /* 00D8 */  0xD4, 0xD8, 0x3D, 0xAD, 0x93, 0xF2, 0x4C, 0x23,  // ..=...L#
                /* 00E0 */  0x1E, 0x94, 0x61, 0x12, 0x78, 0x14, 0x0C, 0x8D,  // ..a.x...
                /* 00E8 */  0x13, 0x94, 0x75, 0x22, 0xA0, 0x03, 0xE5, 0x80,  // ..u"....
                /* 00F0 */  0x27, 0xE1, 0x39, 0x16, 0x2F, 0x40, 0xF8, 0x88,  // '.9./@..
                /* 00F8 */  0xC9, 0xB4, 0x4D, 0xE0, 0x33, 0x81, 0x87, 0x79,  // ..M.3..y
                /* 0100 */  0xCC, 0xD8, 0x11, 0x85, 0x0B, 0x78, 0x3E, 0xC7,  // .....x>.
                /* 0108 */  0x10, 0x39, 0xEE, 0xA1, 0xC6, 0x38, 0x8A, 0xC8,  // .9...8..
                /* 0110 */  0x47, 0x60, 0x24, 0x03, 0xC5, 0x2B, 0x08, 0x89,  // G`$..+..
                /* 0118 */  0x80, 0xF8, 0x76, 0x70, 0x70, 0x91, 0xFC, 0xFF,  // ..vpp...
                /* 0120 */  0x47, 0x89, 0x11, 0x2A, 0xC6, 0xDB, 0x00, 0x6E,  // G..*...n
                /* 0128 */  0x5E, 0x09, 0x8A, 0x1E, 0x07, 0x4A, 0x06, 0x84,  // ^....J..
                /* 0130 */  0x3C, 0x0A, 0xB0, 0x7A, 0x28, 0x20, 0x04, 0x16,  // <..z( ..
                /* 0138 */  0x27, 0x40, 0xE3, 0x38, 0x05, 0xD3, 0x99, 0x00,  // '@.8....
                /* 0140 */  0x6D, 0x02, 0xBC, 0x09, 0x30, 0x27, 0xC0, 0x16,  // m...0'..
                /* 0148 */  0x86, 0x80, 0x82, 0x9C, 0x59, 0x94, 0x20, 0x11,  // ....Y. .
                /* 0150 */  0x42, 0x31, 0x88, 0x0A, 0x05, 0x18, 0x43, 0x14,  // B1....C.
                /* 0158 */  0xCA, 0x3B, 0x41, 0x8C, 0xCA, 0x20, 0x74, 0x82,  // .;A.. t.
                /* 0160 */  0x08, 0x14, 0x3D, 0x78, 0x98, 0xD6, 0x40, 0x74,  // ..=x..@t
                /* 0168 */  0x89, 0xF0, 0xC8, 0xB1, 0x47, 0x00, 0x9F, 0x19,  // ....G...
                /* 0170 */  0xCE, 0xE9, 0x04, 0x1F, 0x01, 0xDE, 0x16, 0x4C,  // .......L
                /* 0178 */  0xE0, 0x79, 0xBF, 0x24, 0x1C, 0x6A, 0xD8, 0x03,  // .y.$.j..
                /* 0180 */  0x8E, 0x1A, 0xE3, 0x28, 0x12, 0x58, 0xD0, 0x33,  // ...(.X.3
                /* 0188 */  0x42, 0x16, 0x40, 0x14, 0x09, 0x1E, 0x75, 0x64,  // B.@...ud
                /* 0190 */  0xF0, 0xE1, 0xC0, 0x23, 0x3B, 0x72, 0xCF, 0xF0,  // ...#;r..
                /* 0198 */  0x04, 0x82, 0x1C, 0xC2, 0x11, 0x3C, 0x36, 0x3C,  // .....<6<
                /* 01A0 */  0x15, 0x78, 0x0C, 0xEC, 0xBA, 0xE0, 0x73, 0x80,  // .x....s.
                /* 01A8 */  0x8F, 0x09, 0x78, 0xD7, 0x80, 0x9A, 0xF3, 0xD3,  // ..x.....
                /* 01B0 */  0x01, 0x9B, 0x72, 0x38, 0xCC, 0x70, 0x3D, 0xFD,  // ..r8.p=.
                /* 01B8 */  0x70, 0x27, 0x70, 0xD2, 0x06, 0x64, 0xB3, 0xF3,  // p'p..d..
                /* 01C0 */  0xE0, 0x70, 0xE3, 0x3C, 0x99, 0x23, 0x2B, 0x55,  // .p.<.#+U
                /* 01C8 */  0x80, 0xD9, 0x13, 0x82, 0x4E, 0x13, 0x3E, 0x73,  // ....N.>s
                /* 01D0 */  0xB0, 0xBB, 0xC0, 0xF9, 0xF4, 0x0C, 0x49, 0xE4,  // ......I.
                /* 01D8 */  0x0F, 0x02, 0x35, 0x32, 0x43, 0xFB, 0x2C, 0xF0,  // ..52C.,.
                /* 01E0 */  0xEA, 0x61, 0xC8, 0x87, 0x85, 0xC3, 0x62, 0x62,  // .a....bb
                /* 01E8 */  0xCF, 0x1E, 0x74, 0x3C, 0xE0, 0x3F, 0x25, 0x3C,  // ..t<.?%<
                /* 01F0 */  0x6C, 0x78, 0xFA, 0x9E, 0xAF, 0x09, 0xA2, 0x3D,  // lx.....=
                /* 01F8 */  0x8F, 0x80, 0xE1, 0xFF, 0x7F, 0x1E, 0x81, 0x39,  // .......9
                /* 0200 */  0x9C, 0x07, 0x84, 0x27, 0x07, 0x76, 0x80, 0xC0,  // ...'.v..
                /* 0208 */  0x1C, 0x48, 0x80, 0xC9, 0xF9, 0x02, 0x77, 0x28,  // .H....w(
                /* 0210 */  0xF0, 0x10, 0xF8, 0x00, 0x1E, 0x25, 0xCE, 0xD1,  // .....%..
                /* 0218 */  0x4A, 0x67, 0x86, 0x3C, 0xB9, 0x80, 0x2D, 0xFB,  // Jg.<..-.
                /* 0220 */  0x1B, 0x40, 0x07, 0x0F, 0xE7, 0x06, 0x91, 0x8D,  // .@......
                /* 0228 */  0x57, 0x80, 0x09, 0x74, 0x38, 0xB1, 0x1E, 0x20,  // W..t8.. 
                /* 0230 */  0x4D, 0x14, 0x0C, 0x04, 0xD3, 0xD3, 0x6B, 0x00,  // M.....k.
                /* 0238 */  0x3E, 0x15, 0x38, 0x37, 0x89, 0x92, 0x0F, 0x8C,  // >.87....
                /* 0240 */  0xC2, 0x39, 0xEB, 0x79, 0x84, 0x82, 0x18, 0xD0,  // .9.y....
                /* 0248 */  0x41, 0x20, 0xE4, 0xE4, 0xA0, 0x80, 0x3A, 0xAA,  // A ....:.
                /* 0250 */  0xF8, 0x3C, 0x72, 0xAA, 0x0F, 0x3D, 0x9E, 0x94,  // .<r..=..
                /* 0258 */  0x47, 0xE1, 0xAB, 0x8A, 0x0F, 0x21, 0x3E, 0x4F,  // G....!>O
                /* 0260 */  0x78, 0xF4, 0x3E, 0x29, 0xF0, 0xEF, 0x8C, 0xAF,  // x.>)....
                /* 0268 */  0x0E, 0x46, 0xB7, 0x9A, 0xE3, 0x0A, 0x0A, 0xCC,  // .F......
                /* 0270 */  0x67, 0x11, 0x4E, 0x50, 0xD7, 0x6D, 0x01, 0xFA,  // g.NP.m..
                /* 0278 */  0x29, 0xE0, 0x08, 0x3C, 0x94, 0x77, 0x92, 0xC7,  // )..<.w..
                /* 0280 */  0x90, 0x04, 0xF5, 0x9D, 0x16, 0x40, 0x01, 0xE4,  // .....@..
                /* 0288 */  0x9B, 0x81, 0x4F, 0x02, 0x21, 0xFE, 0xFF, 0x4F,  // ..O.!..O
                /* 0290 */  0x07, 0x1E, 0xC3, 0xC3, 0x80, 0xD1, 0x8C, 0xCE,  // ........
                /* 0298 */  0xC3, 0x4F, 0x16, 0x15, 0x77, 0xB2, 0x14, 0xC4,  // .O..w...
                /* 02A0 */  0x93, 0x75, 0x94, 0xC9, 0xA2, 0x67, 0xE2, 0xAB,  // .u...g..
                /* 02A8 */  0x85, 0x27, 0x74, 0x4A, 0x41, 0xCE, 0xD1, 0x13,  // .'tJA...
                /* 02B0 */  0xF6, 0x55, 0x04, 0xD6, 0xF9, 0x20, 0xE4, 0x8B,  // .U... ..
                /* 02B8 */  0x81, 0xA7, 0x61, 0x38, 0x4F, 0x96, 0xC3, 0x79,  // ..a8O..y
                /* 02C0 */  0xB2, 0x7C, 0x2C, 0xBE, 0x6A, 0xC0, 0x1F, 0x2D,  // .|,.j..-
                /* 02C8 */  0x96, 0xA0, 0xC0, 0xD9, 0x82, 0x1C, 0x1E, 0x13,  // ........
                /* 02D0 */  0x6F, 0x54, 0xF4, 0x46, 0xE4, 0xE1, 0xF1, 0xCB,  // oT.F....
                /* 02D8 */  0x81, 0xE7, 0xF3, 0x8C, 0x70, 0x94, 0x6F, 0x12,  // ....p.o.
                /* 02E0 */  0x38, 0x8C, 0xC7, 0x12, 0x0F, 0xD1, 0x97, 0x23,  // 8......#
                /* 02E8 */  0x58, 0x13, 0x39, 0x69, 0xDF, 0x16, 0x4E, 0x36,  // X.9i..N6
                /* 02F0 */  0xE8, 0x4B, 0x10, 0xBB, 0x1C, 0x01, 0xBF, 0x88,  // .K......
                /* 02F8 */  0x26, 0x86, 0xC1, 0x22, 0x2D, 0x45, 0x11, 0x17,  // &.."-E..
                /* 0300 */  0x45, 0x61, 0x7C, 0xC5, 0x82, 0xFD, 0xFF, 0xBF,  // Ea|.....
                /* 0308 */  0x62, 0x01, 0x16, 0x04, 0x0F, 0x1B, 0x34, 0x87,  // b.....4.
                /* 0310 */  0x83, 0x97, 0x1E, 0x36, 0x6B, 0x38, 0x07, 0x99,  // ...6k8..
                /* 0318 */  0xD3, 0xF1, 0x48, 0x4E, 0x1B, 0xC6, 0x1D, 0x0B,  // ..HN....
                /* 0320 */  0xFE, 0x9D, 0xEA, 0xA9, 0xCA, 0xD3, 0x8A, 0xF2,  // ........
                /* 0328 */  0x64, 0xF5, 0x7A, 0xE5, 0x63, 0x96, 0xA1, 0xCE,  // d.z.c...
                /* 0330 */  0xE0, 0x1D, 0xCB, 0xB7, 0x3C, 0x4F, 0x21, 0x4A,  // ....<O!J
                /* 0338 */  0x9C, 0x97, 0x2D, 0x76, 0xC7, 0x32, 0x48, 0x50,  // ..-v.2HP
                /* 0340 */  0x23, 0x3F, 0x68, 0x31, 0x94, 0xE0, 0xF1, 0xDE,  // #?h1....
                /* 0348 */  0xB1, 0x00, 0x6F, 0xFF, 0xFF, 0x3B, 0x16, 0x60,  // ..o..;.`
                /* 0350 */  0xFC, 0x04, 0xC1, 0x09, 0x7C, 0xC7, 0x02, 0x1C,  // ....|...
                /* 0358 */  0xC5, 0x7E, 0x37, 0xE8, 0x4A, 0x45, 0xEE, 0x58,  // .~7.JE.X
                /* 0360 */  0x28, 0x0E, 0xAB, 0xB9, 0x63, 0x41, 0x9C, 0x28,  // (...cA.(
                /* 0368 */  0xE6, 0x8A, 0x05, 0x86, 0xFF, 0xFF, 0x15, 0x0B,  // ........
                /* 0370 */  0xE0, 0x75, 0xC0, 0x2B, 0x16, 0x68, 0xFE, 0xFF,  // .u.+.h..
                /* 0378 */  0x57, 0x2C, 0xF0, 0x5E, 0x8E, 0x80, 0xDF, 0x09,  // W,.^....
                /* 0380 */  0xD1, 0x77, 0x0D, 0x7E, 0x9A, 0xB6, 0xA2, 0xBB,  // .w.~....
                /* 0388 */  0x06, 0x94, 0x19, 0xBE, 0x07, 0xF9, 0xB0, 0x13,  // ........
                /* 0390 */  0x2C, 0xD2, 0xA3, 0x8D, 0x6F, 0x49, 0xE1, 0x7C,  // ,...oI.|
                /* 0398 */  0xDB, 0x00, 0xD8, 0xF2, 0xFF, 0xBF, 0x6D, 0x00,  // ......m.
                /* 03A0 */  0x4C, 0x19, 0xBF, 0x6F, 0x1B, 0xC0, 0x4F, 0xA1,  // L..o..O.
                /* 03A8 */  0x4D, 0x9F, 0x1A, 0x8D, 0x5A, 0x35, 0x28, 0x53,  // M...Z5(S
                /* 03B0 */  0xA3, 0x4C, 0x83, 0x5A, 0x7D, 0x2A, 0x35, 0x66,  // .L.Z}*5f
                /* 03B8 */  0x4C, 0xC9, 0xC1, 0xCE, 0x77, 0x0C, 0x2A, 0x6C,  // L...w.*l
                /* 03C0 */  0x65, 0x1A, 0x9A, 0x63, 0x81, 0xD0, 0x10, 0xC7,  // e..c....
                /* 03C8 */  0x26, 0x19, 0x01, 0x51, 0x22, 0x10, 0x01, 0x59,  // &..Q"..Y
                /* 03D0 */  0xFD, 0x6F, 0x42, 0x40, 0xCE, 0x02, 0x22, 0x20,  // .oB@.." 
                /* 03D8 */  0x2B, 0x58, 0x9A, 0xC0, 0x9D, 0xFF, 0xD8, 0x28,  // +X.....(
                /* 03E0 */  0x40, 0xA2, 0x02, 0x84, 0x29, 0x7D, 0x93, 0x09,  // @...)}..
                /* 03E8 */  0xD4, 0xB2, 0x41, 0x04, 0xF4, 0xFF, 0x3F, 0x42,  // ..A...?B
                /* 03F0 */  0xD9, 0x00, 0x62, 0x82, 0x41, 0x04, 0x64, 0x91,  // ..b.A.d.
                /* 03F8 */  0x3E, 0x80, 0x98, 0x62, 0x10, 0x01, 0x59, 0xDD,  // >..b..Y.
                /* 0400 */  0xA3, 0x40, 0x40, 0xD6, 0x0A, 0x22, 0x20, 0xFF,  // .@@.." .
                /* 0408 */  0xFF, 0x01                                       // ..
            })
        }

        Scope (\_SB.PCI0.LPC.EC.HKEY)
        {
            Mutex (BFWM, 0x00)
            Method (MHCF, 1, NotSerialized)
            {
                Local0 = \BFWC (Arg0)
                \_SB.PCI0.LPC.EC.BSWR = (Arg0 >> 0x05)
                Return (Local0)
            }

            Method (MHPF, 1, NotSerialized)
            {
                Name (RETB, Buffer (0x25){})
                Acquire (BFWM, 0xFFFF)
                If ((SizeOf (Arg0) <= 0x25))
                {
                    \BFWB = Arg0
                    If (\BFWP ())
                    {
                        \_SB.PCI0.LPC.EC.CHKS ()
                        \BFWL ()
                    }

                    RETB = \BFWB
                }

                Release (BFWM)
                Return (RETB) /* \_SB_.PCI0.LPC_.EC__.HKEY.MHPF.RETB */
            }

            Method (MHIF, 1, NotSerialized)
            {
                Name (RETB, Buffer (0x0A){})
                Acquire (BFWM, 0xFFFF)
                \BFWG (Arg0)
                RETB = \BFWB
                Release (BFWM)
                Return (RETB) /* \_SB_.PCI0.LPC_.EC__.HKEY.MHIF.RETB */
            }

            Method (MHDM, 1, NotSerialized)
            {
                \BDMC (Arg0)
            }
        }

        Scope (\_SB.PCI0.LPC.EC.HKEY)
        {
            Method (PSSG, 1, NotSerialized)
            {
                Return (\PSIF (0x00, 0x00))
            }

            Method (PSSS, 1, NotSerialized)
            {
                Return (\PSIF (0x01, Arg0))
            }

            Method (PSBS, 1, NotSerialized)
            {
                Return (\PSIF (0x02, Arg0))
            }

            Method (BICG, 1, NotSerialized)
            {
                Return (\PSIF (0x03, Arg0))
            }

            Method (BICS, 1, NotSerialized)
            {
                Return (\PSIF (0x04, Arg0))
            }

            Method (BCTG, 1, NotSerialized)
            {
                Return (\PSIF (0x05, Arg0))
            }

            Method (BCCS, 1, NotSerialized)
            {
                Return (\PSIF (0x06, Arg0))
            }

            Method (BCSG, 1, NotSerialized)
            {
                Return (\PSIF (0x07, Arg0))
            }

            Method (BCSS, 1, NotSerialized)
            {
                Return (\PSIF (0x08, Arg0))
            }

            Method (BDSG, 1, NotSerialized)
            {
                Return (\PSIF (0x09, Arg0))
            }

            Method (BDSS, 1, NotSerialized)
            {
                Return (\PSIF (0x0A, Arg0))
            }
        }

        Scope (\_SB.PCI0.LPC.EC.HKEY)
        {
            Method (GILN, 0, NotSerialized)
            {
                Return ((0x02 | \ILNF))
            }

            Method (SILN, 1, NotSerialized)
            {
                If ((0x01 == Arg0))
                {
                    \ILNF = 0x01
                    BBLS = 0x00
                    Return (0x00)
                }
                ElseIf ((0x02 == Arg0))
                {
                    \ILNF = 0x00
                    BBLS = 0x01
                    Return (0x00)
                }
                Else
                {
                    Return (0x01)
                }
            }

            Method (GLSI, 0, NotSerialized)
            {
                If (\H8DR)
                {
                    Return ((0x02 + \_SB.PCI0.LPC.EC.HPLD))
                }
                ElseIf ((\RBEC (0x46) & 0x04))
                {
                    Return (0x03)
                }
                Else
                {
                    Return (0x02)
                }
            }
        }

        Scope (\_SB.PCI0.LPC.EC.HKEY)
        {
            Method (GDLN, 0, NotSerialized)
            {
                Return ((0x02 | \PLUX))
            }

            Method (SDLN, 1, NotSerialized)
            {
                If ((0x01 == Arg0))
                {
                    \PLUX = 0x01
                    Return (0x00)
                }
                ElseIf ((0x02 == Arg0))
                {
                    \PLUX = 0x00
                    Return (0x00)
                }
                Else
                {
                    Return (0x01)
                }
            }
        }

        Scope (\_SB.PCI0.LPC.EC)
        {
            Device (CINC)
            {
                Name (_HID, "PNP0C60" /* Display Sensor Device */)  // _HID: Hardware ID
                Name (_CID, "PNP0C60" /* Display Sensor Device */)  // _CID: Compatible ID
                Method (_STA, 0, Serialized)  // _STA: Status
                {
                    If ((OSYS >= 0x07DD))
                    {
                        Return (0x0F)
                    }

                    Return (0x00)
                }
            }
        }

        Device (EPC)
        {
            Name (_HID, EisaId ("INT0E0C"))  // _HID: Hardware ID
            Name (_STR, Unicode ("Enclave Page Cache 1.0"))  // _STR: Description String
            Name (_MLS, Package (0x01)  // _MLS: Multiple Language String
            {
                Package (0x02)
                {
                    "en", 
                    Unicode ("Enclave Page Cache 1.0")
                }
            })
            Name (RBUF, ResourceTemplate ()
            {
                QWordMemory (ResourceConsumer, PosDecode, MinNotFixed, MaxNotFixed, NonCacheable, ReadWrite,
                    0x0000000000000000, // Granularity
                    0x0000000000000000, // Range Minimum
                    0x0000000000000000, // Range Maximum
                    0x0000000000000000, // Translation Offset
                    0x0000000000000001, // Length
                    ,, _Y25, AddressRangeMemory, TypeStatic)
            })
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                CreateQWordField (RBUF, \_SB.EPC._Y25._MIN, EMIN)  // _MIN: Minimum Base Address
                CreateQWordField (RBUF, \_SB.EPC._Y25._MAX, EMAX)  // _MAX: Maximum Base Address
                CreateQWordField (RBUF, \_SB.EPC._Y25._LEN, ELEN)  // _LEN: Length
                EMIN = \_PR.EMNA /* External reference */
                ELEN = \_PR.ELNG /* External reference */
                EMAX = ((\_PR.EMNA + \_PR.ELNG) - 0x01)
                Return (RBUF) /* \_SB_.EPC_.RBUF */
            }

            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                Name (BUFX, Package (0x09)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                })
                If ((Arg0 == ToUUID ("c60fac0c-fd9e-4273-9a3f-938f2327035e") /* Unknown UUID */))
                {
                    If ((0x00 == ToInteger (Arg1)))
                    {
                        Switch (ToInteger (Arg2))
                        {
                            Case (0x00)
                            {
                                Return (Buffer (0x01)
                                {
                                     0x02                                             // .
                                })
                            }
                            Case (0x01)
                            {
                                BUFX [0x00] = SEC0 /* \SEC0 */
                                BUFX [0x01] = SEC1 /* \SEC1 */
                                BUFX [0x02] = SEC2 /* \SEC2 */
                                BUFX [0x03] = SEC3 /* \SEC3 */
                                BUFX [0x04] = SEC4 /* \SEC4 */
                                BUFX [0x05] = SEC5 /* \SEC5 */
                                BUFX [0x06] = SEC6 /* \SEC6 */
                                BUFX [0x07] = SEC7 /* \SEC7 */
                                BUFX [0x08] = SEC8 /* \SEC8 */
                                Return (BUFX) /* \_SB_.EPC_._DSM.BUFX */
                            }

                        }

                        Return (0x00)
                    }

                    Return (0x00)
                }

                Return (0x00)
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((\_PR.EPCS != 0x00))
                {
                    Return (0x0F)
                }

                Return (0x00)
            }
        }

        Device (PSM)
        {
            Name (_HID, EisaId ("INT3420") /* Intel Bluetooth RF Kill */)  // _HID: Hardware ID
            Name (_UID, 0x00)  // _UID: Unique ID
            Name (_STR, Unicode ("Power Sharing Manager"))  // _STR: Description String
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                If ((PSME == 0x01))
                {
                    Return (0x0F)
                }
                Else
                {
                    Return (0x00)
                }
            }

            Name (SPLX, Package (0x03)
            {
                0x00, 
                Package (0x03)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                }, 

                Package (0x03)
                {
                    0x80000000, 
                    0x80000000, 
                    0x80000000
                }
            })
            Method (SPLC, 0, Serialized)
            {
                DerefOf (SPLX [0x01]) [0x00] = \PDT1
                DerefOf (SPLX [0x01]) [0x01] = \PLM1
                DerefOf (SPLX [0x01]) [0x02] = \PTW1
                DerefOf (SPLX [0x02]) [0x00] = \PDT2
                DerefOf (SPLX [0x02]) [0x01] = \PLM2
                DerefOf (SPLX [0x02]) [0x02] = \PTW2
                Return (SPLX) /* \_SB_.PSM_.SPLX */
            }

            Name (DPLX, Package (0x03)
            {
                0x00, 
                Package (0x03)
                {
                    0x80000000, 
                    0x80000000, 
                    Package (0x06)
                    {
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000
                    }
                }, 

                Package (0x03)
                {
                    0x80000000, 
                    0x80000000, 
                    Package (0x06)
                    {
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000, 
                        0x80000000
                    }
                }
            })
            Method (DPLC, 0, Serialized)
            {
                DerefOf (DPLX [0x01]) [0x00] = \DDT1
                DerefOf (DPLX [0x01]) [0x01] = \DDP1
                DerefOf (DerefOf (DPLX [0x01]) [0x02]) [0x00]
                     = \DLI1
                DerefOf (DerefOf (DPLX [0x01]) [0x02]) [0x01]
                     = \DPL1
                DerefOf (DerefOf (DPLX [0x01]) [0x02]) [0x02]
                     = \DTW1
                DerefOf (DerefOf (DPLX [0x01]) [0x02]) [0x03]
                     = \DMI1
                DerefOf (DerefOf (DPLX [0x01]) [0x02]) [0x04]
                     = \DMA1
                DerefOf (DerefOf (DPLX [0x01]) [0x02]) [0x05]
                     = \DMT1
                DerefOf (DPLX [0x02]) [0x00] = \DDT2
                DerefOf (DPLX [0x02]) [0x01] = \DDP2
                DerefOf (DerefOf (DPLX [0x02]) [0x02]) [0x00]
                     = \DLI2
                DerefOf (DerefOf (DPLX [0x02]) [0x02]) [0x01]
                     = \DPL2
                DerefOf (DerefOf (DPLX [0x02]) [0x02]) [0x02]
                     = \DTW2
                DerefOf (DerefOf (DPLX [0x02]) [0x02]) [0x03]
                     = \DMI2
                DerefOf (DerefOf (DPLX [0x02]) [0x02]) [0x04]
                     = \DMA2
                DerefOf (DerefOf (DPLX [0x02]) [0x02]) [0x05]
                     = \DMT2
                Return (DPLX) /* \_SB_.PSM_.DPLX */
            }
        }
    }

    Scope (\_SB.PCI0.RP09.PXSX)
    {
        Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
        {
            If (PCIC (Arg0))
            {
                Return (PCID (Arg0, Arg1, Arg2, Arg3))
            }

            If ((Arg0 == ToUUID ("1730e71d-e5dd-4a34-be57-4d76b6a2fe37") /* Unknown UUID */))
            {
                If ((Arg2 == Zero))
                {
                    If ((Arg1 == Zero))
                    {
                        Return (Buffer (0x01)
                        {
                             0x03                                             // .
                        })
                    }
                    Else
                    {
                        Return (Buffer (0x01)
                        {
                             0x00                                             // .
                        })
                    }
                }

                If ((Arg2 == One))
                {
                    Switch (DerefOf (Arg3 [0x00]))
                    {
                        Case (0x01)
                        {
                            If (CondRefOf (\_SB.SLPB))
                            {
                                Notify (\_SB.SLPB, 0x80) // Status Change
                            }
                        }
                        Case (0x04)
                        {
                            If (CondRefOf (\_SB.SLPB))
                            {
                                Notify (\_SB.SLPB, 0x02) // Device Wake
                            }
                        }

                    }
                }

                Return (0x00)
            }
            ElseIf ((Arg0 == ToUUID ("7574eb17-d1a2-4cc2-9929-4a08fcc29107") /* Unknown UUID */))
            {
                Switch (Arg2)
                {
                    Case (0x00)
                    {
                        If ((Arg1 == Zero))
                        {
                            Return (Buffer (0x01)
                            {
                                 0x07                                             // .
                            })
                        }
                        Else
                        {
                            Return (Buffer (0x01)
                            {
                                 0x00                                             // .
                            })
                        }
                    }
                    Case (0x01)
                    {
                        Return (\_SB.PCI0.WHIT ())
                    }
                    Case (0x02)
                    {
                        Return (\_SB.PCI0.SELF ())
                    }
                    Default
                    {
                        Return (Buffer (0x01)
                        {
                             0x00                                             // .
                        })
                    }

                }
            }
            Else
            {
                Return (Buffer (0x01)
                {
                     0x00                                             // .
                })
            }
        }

        OperationRegion (RPXX, PCI_Config, 0x00, 0x10)
        Field (RPXX, AnyAcc, NoLock, Preserve)
        {
            VDID,   32
        }

        OperationRegion (FLDR, PCI_Config, 0x44, 0x06)
        Field (FLDR, ByteAcc, NoLock, Preserve)
        {
            DCAP,   32, 
            DCTR,   16
        }

        Name (SPLX, Package (0x04)
        {
            0x00, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (SPLC, 0, Serialized)
        {
            DerefOf (SPLX [0x01]) [0x00] = \DOM1
            DerefOf (SPLX [0x01]) [0x01] = \LIM1
            DerefOf (SPLX [0x01]) [0x02] = \TIM1
            DerefOf (SPLX [0x02]) [0x00] = \DOM2
            DerefOf (SPLX [0x02]) [0x01] = \LIM2
            DerefOf (SPLX [0x02]) [0x02] = \TIM2
            DerefOf (SPLX [0x03]) [0x00] = \DOM3
            DerefOf (SPLX [0x03]) [0x01] = \LIM3
            DerefOf (SPLX [0x03]) [0x02] = \TIM3
            Return (SPLX) /* \_SB_.PCI0.RP09.PXSX.SPLX */
        }

        PowerResource (WRST, 0x05, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                ADBG ("PXSX _STA")
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                ADBG ("PXSX _ON")
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                ADBG ("PXSX _OFF")
            }

            Method (_RST, 0, NotSerialized)  // _RST: Device Reset
            {
                ADBG ("PXSX _RST")
                If ((DCAP & 0x10000000))
                {
                    Local0 = DCTR /* \_SB_.PCI0.RP09.PXSX.DCTR */
                    Local0 |= 0x8000
                    DCTR = Local0
                }
            }
        }

        Name (_PRR, Package (0x01)  // _PRR: Power Resource for Reset
        {
            WRST
        })
        Name (WANX, Package (0x03)
        {
            0x00, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (WAND, 0, Serialized)
        {
            DerefOf (WANX [0x01]) [0x00] = 0x00
            DerefOf (WANX [0x01]) [0x01] = \TRD0
            DerefOf (WANX [0x01]) [0x02] = \TRL0
            DerefOf (WANX [0x02]) [0x00] = 0x01
            DerefOf (WANX [0x02]) [0x01] = \TRD1
            DerefOf (WANX [0x02]) [0x02] = \TRL1
            Return (WANX) /* \_SB_.PCI0.RP09.PXSX.WANX */
        }

        Name (WRDX, Package (0x03)
        {
            0x00, 
            Package (0x02)
            {
                0x80000000, 
                0x8000
            }, 

            Package (0x02)
            {
                0x80000000, 
                0x8000
            }
        })
        Method (WRDD, 0, Serialized)
        {
            DerefOf (WRDX [0x01]) [0x00] = \WDM1
            DerefOf (WRDX [0x01]) [0x01] = \CID1
            DerefOf (WRDX [0x02]) [0x00] = \WDM2
            DerefOf (WRDX [0x02]) [0x01] = \CID2
            Return (WRDX) /* \_SB_.PCI0.RP09.PXSX.WRDX */
        }

        Name (WRDY, Package (0x02)
        {
            0x00, 
            Package (0x0C)
            {
                0x07, 
                0x80, 
                0x80, 
                0x80, 
                0x80, 
                0x80, 
                0x80, 
                0x80, 
                0x80, 
                0x80, 
                0x80, 
                0x80
            }
        })
        Method (WRDS, 0, Serialized)
        {
            DerefOf (WRDY [0x01]) [0x01] = \STXE
            DerefOf (WRDY [0x01]) [0x02] = \STX0
            DerefOf (WRDY [0x01]) [0x03] = \STX1
            DerefOf (WRDY [0x01]) [0x04] = \STX2
            DerefOf (WRDY [0x01]) [0x05] = \STX3
            DerefOf (WRDY [0x01]) [0x06] = \STX4
            DerefOf (WRDY [0x01]) [0x07] = \STX5
            DerefOf (WRDY [0x01]) [0x08] = \STX6
            DerefOf (WRDY [0x01]) [0x09] = \STX7
            DerefOf (WRDY [0x01]) [0x0A] = \STX8
            DerefOf (WRDY [0x01]) [0x0B] = \STX9
            Return (WRDY) /* \_SB_.PCI0.RP09.PXSX.WRDY */
        }

        Method (WIST, 0, Serialized)
        {
            If (CondRefOf (VDID))
            {
                Switch (VDID)
                {
                    Case (0x095A8086)
                    {
                        Return (0x01)
                    }
                    Case (0x095B8086)
                    {
                        Return (0x01)
                    }
                    Case (0x31658086)
                    {
                        Return (0x01)
                    }
                    Case (0x31668086)
                    {
                        Return (0x01)
                    }
                    Case (0x08B18086)
                    {
                        Return (0x01)
                    }
                    Case (0x08B28086)
                    {
                        Return (0x01)
                    }
                    Case (0x08B38086)
                    {
                        Return (0x01)
                    }
                    Case (0x08B48086)
                    {
                        Return (0x01)
                    }
                    Case (0x24F38086)
                    {
                        Return (0x01)
                    }
                    Case (0x24F48086)
                    {
                        Return (0x01)
                    }
                    Case (0x24F58086)
                    {
                        Return (0x01)
                    }
                    Case (0x24F68086)
                    {
                        Return (0x01)
                    }
                    Default
                    {
                        Return (0x00)
                    }

                }
            }
            Else
            {
                Return (0x00)
            }
        }
    }

    Scope (\_SB.PCI0.EXP3.PXSX)
    {
        OperationRegion (RPXX, PCI_Config, 0x00, 0x10)
        Field (RPXX, AnyAcc, NoLock, Preserve)
        {
            VDID,   32
        }

        OperationRegion (FLDR, PCI_Config, 0x44, 0x06)
        Field (FLDR, ByteAcc, NoLock, Preserve)
        {
            DCAP,   32, 
            DCTR,   16
        }

        Name (SPLX, Package (0x04)
        {
            0x00, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (SPLC, 0, Serialized)
        {
            DerefOf (SPLX [0x01]) [0x00] = \DOM1
            DerefOf (SPLX [0x01]) [0x01] = \LIM1
            DerefOf (SPLX [0x01]) [0x02] = \TIM1
            DerefOf (SPLX [0x02]) [0x00] = \DOM2
            DerefOf (SPLX [0x02]) [0x01] = \LIM2
            DerefOf (SPLX [0x02]) [0x02] = \TIM2
            DerefOf (SPLX [0x03]) [0x00] = \DOM3
            DerefOf (SPLX [0x03]) [0x01] = \LIM3
            DerefOf (SPLX [0x03]) [0x02] = \TIM3
            Return (SPLX) /* \_SB_.PCI0.EXP3.PXSX.SPLX */
        }

        PowerResource (WRST, 0x05, 0x0000)
        {
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                ADBG ("PXSX _STA")
            }

            Method (_ON, 0, NotSerialized)  // _ON_: Power On
            {
                ADBG ("PXSX _ON")
            }

            Method (_OFF, 0, NotSerialized)  // _OFF: Power Off
            {
                ADBG ("PXSX _OFF")
            }

            Method (_RST, 0, NotSerialized)  // _RST: Device Reset
            {
                ADBG ("PXSX _RST")
                If ((DCAP & 0x10000000))
                {
                    Local0 = DCTR /* \_SB_.PCI0.EXP3.PXSX.DCTR */
                    Local0 |= 0x8000
                    DCTR = Local0
                }
            }
        }

        Name (_PRR, Package (0x01)  // _PRR: Power Resource for Reset
        {
            WRST
        })
        Name (WANX, Package (0x03)
        {
            0x00, 
            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }, 

            Package (0x03)
            {
                0x80000000, 
                0x80000000, 
                0x80000000
            }
        })
        Method (WAND, 0, Serialized)
        {
            DerefOf (WANX [0x01]) [0x00] = 0x00
            DerefOf (WANX [0x01]) [0x01] = \TRD0
            DerefOf (WANX [0x01]) [0x02] = \TRL0
            DerefOf (WANX [0x02]) [0x00] = 0x01
            DerefOf (WANX [0x02]) [0x01] = \TRD1
            DerefOf (WANX [0x02]) [0x02] = \TRL1
            Return (WANX) /* \_SB_.PCI0.EXP3.PXSX.WANX */
        }

        Name (WRDX, Package (0x03)
        {
            0x00, 
            Package (0x02)
            {
                0x80000000, 
                0x8000
            }, 

            Package (0x02)
            {
                0x80000000, 
                0x8000
            }
        })
        Method (WRDD, 0, Serialized)
        {
            DerefOf (WRDX [0x01]) [0x00] = \WDM1
            DerefOf (WRDX [0x01]) [0x01] = \CID1
            DerefOf (WRDX [0x02]) [0x00] = \WDM2
            DerefOf (WRDX [0x02]) [0x01] = \CID2
            Return (WRDX) /* \_SB_.PCI0.EXP3.PXSX.WRDX */
        }

        Name (WRDY, Package (0x02)
        {
            0x00, 
            Package (0x0C)
            {
                0x07, 
                0x80, 
                0x80, 
                0x80, 
                0x80, 
                0x80, 
                0x80, 
                0x80, 
                0x80, 
                0x80, 
                0x80, 
                0x80
            }
        })
        Method (WRDS, 0, Serialized)
        {
            DerefOf (WRDY [0x01]) [0x01] = \STXE
            DerefOf (WRDY [0x01]) [0x02] = \STX0
            DerefOf (WRDY [0x01]) [0x03] = \STX1
            DerefOf (WRDY [0x01]) [0x04] = \STX2
            DerefOf (WRDY [0x01]) [0x05] = \STX3
            DerefOf (WRDY [0x01]) [0x06] = \STX4
            DerefOf (WRDY [0x01]) [0x07] = \STX5
            DerefOf (WRDY [0x01]) [0x08] = \STX6
            DerefOf (WRDY [0x01]) [0x09] = \STX7
            DerefOf (WRDY [0x01]) [0x0A] = \STX8
            DerefOf (WRDY [0x01]) [0x0B] = \STX9
            Return (WRDY) /* \_SB_.PCI0.EXP3.PXSX.WRDY */
        }

        Method (WIST, 0, Serialized)
        {
            If (CondRefOf (VDID))
            {
                Switch (VDID)
                {
                    Case (0x095A8086)
                    {
                        Return (0x01)
                    }
                    Case (0x095B8086)
                    {
                        Return (0x01)
                    }
                    Case (0x31658086)
                    {
                        Return (0x01)
                    }
                    Case (0x31668086)
                    {
                        Return (0x01)
                    }
                    Case (0x08B18086)
                    {
                        Return (0x01)
                    }
                    Case (0x08B28086)
                    {
                        Return (0x01)
                    }
                    Case (0x08B38086)
                    {
                        Return (0x01)
                    }
                    Case (0x08B48086)
                    {
                        Return (0x01)
                    }
                    Case (0x24F38086)
                    {
                        Return (0x01)
                    }
                    Case (0x24F48086)
                    {
                        Return (0x01)
                    }
                    Case (0x24F58086)
                    {
                        Return (0x01)
                    }
                    Case (0x24F68086)
                    {
                        Return (0x01)
                    }
                    Default
                    {
                        Return (0x00)
                    }

                }
            }
            Else
            {
                Return (0x00)
            }
        }
    }

    Scope (\_SB.PCI0)
    {
        Name (PCIG, ToUUID ("e5c937d0-3553-4d7a-9117-ea4d19c3434d") /* Device Labeling Interface */)
        Method (PCID, 4, Serialized)
        {
            If ((Arg0 == PCIG))
            {
                If ((Arg1 >= 0x03))
                {
                    If ((Arg2 == 0x00))
                    {
                        Return (Buffer (0x02)
                        {
                             0x01, 0x03                                       // ..
                        })
                    }

                    If ((Arg2 == 0x08))
                    {
                        Return (0x01)
                    }

                    If ((Arg2 == 0x09))
                    {
                        Return (Package (0x05)
                        {
                            0xC350, 
                            Ones, 
                            Ones, 
                            0xC350, 
                            Ones
                        })
                    }
                }
            }

            Return (Buffer (0x01)
            {
                 0x00                                             // .
            })
        }
    }

    Scope (\_SB.PCI0)
    {
        Method (PCIC, 1, Serialized)
        {
            If ((ECR1 == 0x01))
            {
                If ((Arg0 == PCIG))
                {
                    Return (0x01)
                }
            }

            Return (0x00)
        }
    }

    Name (PNVB, 0xB7FC9C98)
    Name (PNVL, 0x0205)
    OperationRegion (PNVA, SystemMemory, PNVB, PNVL)
    Field (PNVA, AnyAcc, Lock, Preserve)
    {
        RCRV,   32, 
        PCHS,   16, 
        PCHG,   16, 
        RPA1,   32, 
        RPA2,   32, 
        RPA3,   32, 
        RPA4,   32, 
        RPA5,   32, 
        RPA6,   32, 
        RPA7,   32, 
        RPA8,   32, 
        RPA9,   32, 
        RPAA,   32, 
        RPAB,   32, 
        RPAC,   32, 
        RPAD,   32, 
        RPAE,   32, 
        RPAF,   32, 
        RPAG,   32, 
        RPAH,   32, 
        RPAI,   32, 
        RPAJ,   32, 
        RPAK,   32, 
        NHLA,   64, 
        NHLL,   32, 
        ADFM,   32, 
        SBRG,   32, 
        GPEM,   32, 
        G2L0,   32, 
        G2L1,   32, 
        G2L2,   32, 
        G2L3,   32, 
        G2L4,   32, 
        G2L5,   32, 
        G2L6,   32, 
        G2L7,   32, 
        G2L8,   32, 
        G2L9,   32, 
        PML1,   16, 
        PML2,   16, 
        PML3,   16, 
        PML4,   16, 
        PML5,   16, 
        PML6,   16, 
        PML7,   16, 
        PML8,   16, 
        PML9,   16, 
        PMLA,   16, 
        PMLB,   16, 
        PMLC,   16, 
        PMLD,   16, 
        PMLE,   16, 
        PMLF,   16, 
        PMLG,   16, 
        PMLH,   16, 
        PMLI,   16, 
        PMLJ,   16, 
        PMLK,   16, 
        PNL1,   16, 
        PNL2,   16, 
        PNL3,   16, 
        PNL4,   16, 
        PNL5,   16, 
        PNL6,   16, 
        PNL7,   16, 
        PNL8,   16, 
        PNL9,   16, 
        PNLA,   16, 
        PNLB,   16, 
        PNLC,   16, 
        PNLD,   16, 
        PNLE,   16, 
        PNLF,   16, 
        PNLG,   16, 
        PNLH,   16, 
        PNLI,   16, 
        PNLJ,   16, 
        PNLK,   16, 
        U0C0,   32, 
        U1C0,   32, 
        ADPM,   32, 
        XHPC,   8, 
        XRPC,   8, 
        XSPC,   8, 
        XSPA,   8, 
        HPTB,   32, 
        HPTE,   8, 
        SMD0,   8, 
        SMD1,   8, 
        SMD2,   8, 
        SMD3,   8, 
        SMD4,   8, 
        SMD5,   8, 
        SMD6,   8, 
        SMD7,   8, 
        SMD8,   8, 
        SMD9,   8, 
        SMDA,   8, 
        SIR0,   8, 
        SIR1,   8, 
        SIR2,   8, 
        SIR3,   8, 
        SIR4,   8, 
        SIR5,   8, 
        SIR6,   8, 
        SIR7,   8, 
        SIR8,   8, 
        SIR9,   8, 
        SIRA,   8, 
        SB00,   32, 
        SB01,   32, 
        SB02,   32, 
        SB03,   32, 
        SB04,   32, 
        SB05,   32, 
        SB06,   32, 
        SB07,   32, 
        SB08,   32, 
        SB09,   32, 
        SB0A,   32, 
        SB10,   32, 
        SB11,   32, 
        SB12,   32, 
        SB13,   32, 
        SB14,   32, 
        SB15,   32, 
        SB16,   32, 
        SB17,   32, 
        SB18,   32, 
        SB19,   32, 
        SB1A,   32, 
        GPEN,   8, 
        SGIR,   8, 
        NIT1,   8, 
        NIT2,   8, 
        NIT3,   8, 
        NPM1,   8, 
        NPM2,   8, 
        NPM3,   8, 
        NPC1,   8, 
        NPC2,   8, 
        NPC3,   8, 
        NL11,   16, 
        NL12,   16, 
        NL13,   16, 
        ND21,   8, 
        ND22,   8, 
        ND23,   8, 
        ND11,   32, 
        ND12,   32, 
        ND13,   32, 
        NLR1,   16, 
        NLR2,   16, 
        NLR3,   16, 
        NLD1,   32, 
        NLD2,   32, 
        NLD3,   32, 
        NEA1,   16, 
        NEA2,   16, 
        NEA3,   16, 
        NEB1,   16, 
        NEB2,   16, 
        NEB3,   16, 
        NEC1,   16, 
        NEC2,   16, 
        NEC3,   16, 
        NRA1,   16, 
        NRA2,   16, 
        NRA3,   16, 
        NMB1,   32, 
        NMB2,   32, 
        NMB3,   32, 
        NMV1,   32, 
        NMV2,   32, 
        NMV3,   32, 
        NPB1,   32, 
        NPB2,   32, 
        NPB3,   32, 
        NPV1,   32, 
        NPV2,   32, 
        NPV3,   32, 
        Offset (0x1E6), 
        SXRB,   32, 
        SXRS,   32, 
        CIOE,   8, 
        CIOI,   8, 
        TAEN,   8, 
        TIRQ,   8, 
        XWMB,   32, 
        EMH4,   8, 
        EMDS,   8, 
        CSKU,   8, 
        ITA0,   16, 
        ITA1,   16, 
        ITA2,   16, 
        ITA3,   16, 
        ITS0,   8, 
        ITS1,   8, 
        ITS2,   8, 
        ITS3,   8
    }

    Scope (\_SB)
    {
        Name (GCOM, Package (0x02)
        {
            Package (0x08)
            {
                0x00AF0000, 
                0x00AF0000, 
                0x00AE0000, 
                0x00AE0000, 
                0x00AE0000, 
                0x00AC0000, 
                0x00AC0000, 
                0x00AD0000
            }, 

            Package (0x0A)
            {
                0x00AF0000, 
                0x00AF0000, 
                0x00AE0000, 
                0x00AE0000, 
                0x00AE0000, 
                0x00AE0000, 
                0x00AE0000, 
                0x00AE0000, 
                0x00AC0000, 
                0x00AD0000
            }
        })
        Name (GPPG, Package (0x02)
        {
            Package (0x08)
            {
                0x18, 
                0x18, 
                0x18, 
                0x18, 
                0x18, 
                0x18, 
                0x08, 
                0x0C
            }, 

            Package (0x0A)
            {
                0x18, 
                0x18, 
                0x18, 
                0x18, 
                0x0D, 
                0x18, 
                0x18, 
                0x18, 
                0x0B, 
                0x0C
            }
        })
        Name (PCFG, Package (0x02)
        {
            Package (0x08)
            {
                0x0400, 
                0x04C0, 
                0x0400, 
                0x04C0, 
                0x0580, 
                0x0400, 
                0x04C0, 
                0x0400
            }, 

            Package (0x0A)
            {
                0x0400, 
                0x04C0, 
                0x0400, 
                0x04C0, 
                0x0580, 
                0x05E8, 
                0x06A8, 
                0x0768, 
                0x0400, 
                0x0400
            }
        })
        Name (HOWN, Package (0x02)
        {
            Package (0x08)
            {
                0xD0, 
                0xD4, 
                0xD0, 
                0xD4, 
                0xD8, 
                0xD0, 
                0xD4, 
                0xD0
            }, 

            Package (0x0A)
            {
                0xD0, 
                0xD4, 
                0xD0, 
                0xD4, 
                0xD8, 
                0xDC, 
                0xE0, 
                0xE4, 
                0xD0, 
                0xD0
            }
        })
        Name (POWN, Package (0x02)
        {
            Package (0x08)
            {
                0x20, 
                0x30, 
                0x20, 
                0x30, 
                0x40, 
                0x20, 
                0x30, 
                0x20
            }, 

            Package (0x0A)
            {
                0x20, 
                0x2C, 
                0x20, 
                0x2C, 
                0x38, 
                0x40, 
                0x4C, 
                0x58, 
                0x20, 
                0x20
            }
        })
        Name (GPEO, Package (0x02)
        {
            Package (0x08)
            {
                0x0140, 
                0x0144, 
                0x0140, 
                0x0144, 
                0x0148, 
                0x0140, 
                0x0144, 
                0x0140
            }, 

            Package (0x0A)
            {
                0x0140, 
                0x0144, 
                0x0140, 
                0x0144, 
                0x0148, 
                0x014C, 
                0x0150, 
                0x0154, 
                0x0140, 
                0x0140
            }
        })
        Name (GPES, Package (0x0A)
        {
            0x00, 
            0x00, 
            0x00, 
            0x00, 
            0x00, 
            0x00, 
            0x00, 
            0x00, 
            0x00, 
            0x00
        })
        Name (RXEV, Package (0x0A)
        {
            0xFFFFFFFFFFFFFFFF, 
            0xFFFFFFFFFFFFFFFF, 
            0xFFFFFFFFFFFFFFFF, 
            0xFFFFFFFFFFFFFFFF, 
            0xFFFFFFFFFFFFFFFF, 
            0xFFFFFFFFFFFFFFFF, 
            0xFFFFFFFFFFFFFFFF, 
            0xFFFFFFFFFFFFFFFF, 
            0xFFFFFFFFFFFFFFFF, 
            0xFFFFFFFFFFFFFFFF
        })
        Method (GNUM, 1, NotSerialized)
        {
            Local1 = GNMB (Arg0)
            Local2 = GGRP (Arg0)
            Return ((Local1 + (Local2 * 0x18)))
        }

        Method (INUM, 1, NotSerialized)
        {
            If ((PCHS == 0x02))
            {
                Local0 = 0x00
            }
            Else
            {
                Local0 = 0x01
            }

            Local1 = GNMB (Arg0)
            Local2 = GGRP (Arg0)
            Local3 = 0x00
            While ((Local3 < Local2))
            {
                Local1 += DerefOf (DerefOf (GPPG [Local0]) [Local3])
                Local3++
            }

            Return ((0x18 + (Local1 % 0x60)))
        }

        Method (GGRP, 1, Serialized)
        {
            Local0 = ((Arg0 & 0x00FF0000) >> 0x10)
            Return (Local0)
        }

        Method (GNMB, 1, Serialized)
        {
            Return ((Arg0 & 0xFFFF))
        }

        Method (GGPE, 1, NotSerialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Local2 = ((GPEM >> (Local0 * 0x02)) & 0x03)
            If ((Local2 == 0x00))
            {
                Return (0x6F)
            }
            Else
            {
                Return ((((Local2 - 0x01) * 0x20) + Local1))
            }
        }

        Method (GADR, 2, NotSerialized)
        {
            If ((PCHS == 0x02))
            {
                Local0 = 0x00
            }
            Else
            {
                Local0 = 0x01
            }

            Local1 = (DerefOf (DerefOf (GCOM [Local0]) [Arg0]) + 
                SBRG)
            Local2 = DerefOf (DerefOf (Arg1 [Local0]) [Arg0])
            Return ((Local1 + Local2))
        }

        Method (GPC0, 1, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Local2 = (GADR (Local0, PCFG) + (Local1 * 0x08))
            OperationRegion (PDW0, SystemMemory, Local2, 0x04)
            Field (PDW0, AnyAcc, NoLock, Preserve)
            {
                TEMP,   32
            }

            Return (TEMP) /* \_SB_.GPC0.TEMP */
        }

        Method (SPC0, 2, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Local2 = (GADR (Local0, PCFG) + (Local1 * 0x08))
            OperationRegion (PDW0, SystemMemory, Local2, 0x04)
            Field (PDW0, AnyAcc, NoLock, Preserve)
            {
                TEMP,   32
            }

            TEMP = Arg1
        }

        Method (GPC1, 1, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Local2 = ((GADR (Local0, PCFG) + (Local1 * 0x08)) + 
                0x04)
            OperationRegion (PDW1, SystemMemory, Local2, 0x04)
            Field (PDW1, AnyAcc, NoLock, Preserve)
            {
                TEMP,   32
            }

            Return (TEMP) /* \_SB_.GPC1.TEMP */
        }

        Method (SPC1, 2, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Local2 = ((GADR (Local0, PCFG) + (Local1 * 0x08)) + 
                0x04)
            OperationRegion (PDW1, SystemMemory, Local2, 0x04)
            Field (PDW1, AnyAcc, NoLock, Preserve)
            {
                TEMP,   32
            }

            TEMP = Arg1
        }

        Method (SRXO, 2, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Local2 = (GADR (Local0, PCFG) + (Local1 * 0x08))
            OperationRegion (PDW0, SystemMemory, Local2, 0x04)
            Field (PDW0, AnyAcc, NoLock, Preserve)
            {
                    ,   28, 
                TEMP,   1, 
                Offset (0x04)
            }

            TEMP = Arg1
        }

        Method (GGIV, 1, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Local2 = (GADR (Local0, PCFG) + (Local1 * 0x08))
            OperationRegion (PDW0, SystemMemory, Local2, 0x04)
            Field (PDW0, AnyAcc, NoLock, Preserve)
            {
                    ,   1, 
                TEMP,   1, 
                Offset (0x04)
            }

            Return (TEMP) /* \_SB_.GGIV.TEMP */
        }

        Method (GGOV, 1, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Local2 = (GADR (Local0, PCFG) + (Local1 * 0x08))
            OperationRegion (PDW0, SystemMemory, Local2, 0x04)
            Field (PDW0, AnyAcc, NoLock, Preserve)
            {
                TEMP,   1, 
                Offset (0x04)
            }

            Return (TEMP) /* \_SB_.GGOV.TEMP */
        }

        Method (SGOV, 2, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Local2 = (GADR (Local0, PCFG) + (Local1 * 0x08))
            OperationRegion (PDW0, SystemMemory, Local2, 0x04)
            Field (PDW0, AnyAcc, NoLock, Preserve)
            {
                TEMP,   1, 
                Offset (0x04)
            }

            TEMP = Arg1
        }

        Method (GGII, 1, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Local2 = (GADR (Local0, PCFG) + (Local1 * 0x08))
            OperationRegion (PDW0, SystemMemory, Local2, 0x04)
            Field (PDW0, AnyAcc, NoLock, Preserve)
            {
                    ,   23, 
                TEMP,   1, 
                Offset (0x04)
            }

            Return (TEMP) /* \_SB_.GGII.TEMP */
        }

        Method (SGII, 2, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Local2 = (GADR (Local0, PCFG) + (Local1 * 0x08))
            OperationRegion (PDW0, SystemMemory, Local2, 0x04)
            Field (PDW0, AnyAcc, NoLock, Preserve)
            {
                    ,   23, 
                TEMP,   1, 
                Offset (0x04)
            }

            TEMP = Arg1
        }

        Method (GPMV, 1, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Local2 = (GADR (Local0, PCFG) + (Local1 * 0x08))
            OperationRegion (PDW0, SystemMemory, Local2, 0x04)
            Field (PDW0, AnyAcc, NoLock, Preserve)
            {
                    ,   10, 
                TEMP,   3, 
                Offset (0x04)
            }

            Return (TEMP) /* \_SB_.GPMV.TEMP */
        }

        Method (SPMV, 2, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Local2 = (GADR (Local0, PCFG) + (Local1 * 0x08))
            OperationRegion (PDW0, SystemMemory, Local2, 0x04)
            Field (PDW0, AnyAcc, NoLock, Preserve)
            {
                    ,   10, 
                TEMP,   3, 
                Offset (0x04)
            }

            TEMP = Arg1
        }

        Method (GHPO, 1, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            OperationRegion (PREG, SystemMemory, GADR (Local0, HOWN), 0x04)
            Field (PREG, AnyAcc, NoLock, Preserve)
            {
                TEMP,   32
            }

            Return (((TEMP >> Local1) & 0x01))
        }

        Method (SHPO, 2, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            OperationRegion (PREG, SystemMemory, GADR (Local0, HOWN), 0x04)
            Field (PREG, AnyAcc, NoLock, Preserve)
            {
                TEMP,   32
            }

            TEMP = ((TEMP & ~(0x01 << Local1)) | (
                Arg1 << Local1))
        }

        Method (GGPO, 1, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Local2 = (GADR (Local0, POWN) + ((Local1 >> 0x03) * 0x04
                ))
            OperationRegion (PREG, SystemMemory, Local2, 0x04)
            Field (PREG, AnyAcc, NoLock, Preserve)
            {
                TEMP,   32
            }

            Return (((TEMP >> ((Local1 & 0x07) * 0x04)) & 
                0x03))
        }

        Method (SGRA, 2, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Local2 = (GADR (Local0, PCFG) + (Local1 * 0x08))
            OperationRegion (PDW0, SystemMemory, Local2, 0x04)
            Field (PDW0, AnyAcc, NoLock, Preserve)
            {
                    ,   20, 
                TEMP,   1, 
                Offset (0x04)
            }

            TEMP = Arg1
        }

        Method (SGWP, 2, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Local2 = ((GADR (Local0, PCFG) + (Local1 * 0x08)) + 
                0x04)
            OperationRegion (PDW0, SystemMemory, Local2, 0x04)
            Field (PDW0, AnyAcc, NoLock, Preserve)
            {
                    ,   10, 
                TEMP,   4, 
                Offset (0x04)
            }

            TEMP = Arg1
        }

        Method (UGP1, 1, Serialized)
        {
            OperationRegion (GPPX, SystemMemory, GADR (Arg0, GPEO), 0x24)
            Field (GPPX, AnyAcc, NoLock, Preserve)
            {
                STSX,   32, 
                Offset (0x20), 
                GENX,   32
            }

            If ((((GPEM >> (Arg0 * 0x02)) & 0x03) == 
                0x00))
            {
                GPES [Arg0] = (STSX & GENX)
            }
            Else
            {
                GPES [Arg0] = 0x00
            }
        }

        Method (UGPS, 0, Serialized)
        {
            If ((PCHS == 0x01))
            {
                Local0 = 0x0A
            }
            Else
            {
                Local0 = 0x08
            }

            While (Local0)
            {
                Local0--
                UGP1 (Local0)
            }
        }

        Method (CGP1, 2, Serialized)
        {
            If ((((GPEM >> (Arg0 * 0x02)) & 0x03) == 
                0x00))
            {
                OperationRegion (GPPX, SystemMemory, GADR (Arg0, GPEO), 0x04)
                Field (GPPX, AnyAcc, NoLock, Preserve)
                {
                    STSX,   32
                }

                STSX = Arg1
            }
        }

        Method (CGPS, 0, Serialized)
        {
            If ((PCHS == 0x01))
            {
                Local0 = 0x0A
            }
            Else
            {
                Local0 = 0x08
            }

            While (Local0)
            {
                Local0--
                CGP1 (Local0, 0xFFFFFFFF)
            }
        }

        Method (CGLS, 0, Serialized)
        {
            If ((PCHS == 0x01))
            {
                Local0 = 0x0A
            }
            Else
            {
                Local0 = 0x08
            }

            While (Local0)
            {
                Local0--
                If ((Local0 == 0x09))
                {
                    Local1 = G2L9 /* \G2L9 */
                }
                ElseIf ((Local0 == 0x08))
                {
                    Local1 = G2L8 /* \G2L8 */
                }
                ElseIf ((Local0 == 0x07))
                {
                    Local1 = G2L7 /* \G2L7 */
                }
                ElseIf ((Local0 == 0x06))
                {
                    Local1 = G2L6 /* \G2L6 */
                }
                ElseIf ((Local0 == 0x05))
                {
                    Local1 = G2L5 /* \G2L5 */
                }
                ElseIf ((Local0 == 0x04))
                {
                    Local1 = G2L4 /* \G2L4 */
                }
                ElseIf ((Local0 == 0x03))
                {
                    Local1 = G2L3 /* \G2L3 */
                }
                ElseIf ((Local0 == 0x02))
                {
                    Local1 = G2L2 /* \G2L2 */
                }
                ElseIf ((Local0 == 0x01))
                {
                    Local1 = G2L1 /* \G2L1 */
                }
                ElseIf ((Local0 == 0x00))
                {
                    Local1 = G2L0 /* \G2L0 */
                }
                Else
                {
                    Continue
                }

                CGP1 (Local0, Local1)
            }
        }

        Method (CAGS, 1, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            If ((((GPEM >> (Local0 * 0x02)) & 0x03) == 
                0x00))
            {
                OperationRegion (GPPX, SystemMemory, GADR (Local0, GPEO), 0x04)
                Field (GPPX, AnyAcc, NoLock, Preserve)
                {
                    STSX,   32
                }

                Local3 = STSX /* \_SB_.CAGS.STSX */
                Local2 = (0x01 << Local1)
                STSX |= Local2
            }
        }

        Method (ISME, 1, NotSerialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Return (((DerefOf (GPES [Local0]) >> Local1) & 0x01))
        }

        Method (DIPI, 1, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Local2 = (GADR (Local0, PCFG) + (Local1 * 0x08))
            OperationRegion (PDW0, SystemMemory, Local2, 0x04)
            Field (PDW0, AnyAcc, NoLock, Preserve)
            {
                    ,   9, 
                RDIS,   1, 
                    ,   15, 
                RCFG,   2, 
                Offset (0x04)
            }

            If ((RCFG != 0x02))
            {
                Local3 = DerefOf (RXEV [Local0])
                Local3 &= ~(0x03 << (Local1 * 0x02))
                RXEV [Local0] = (Local3 | (RCFG << (Local1 * 0x02)
                    ))
                RCFG = 0x02
                RDIS = 0x01
            }
        }

        Method (UIPI, 1, Serialized)
        {
            Local0 = GGRP (Arg0)
            Local1 = GNMB (Arg0)
            Local2 = (GADR (Local0, PCFG) + (Local1 * 0x08))
            OperationRegion (PDW0, SystemMemory, Local2, 0x04)
            Field (PDW0, AnyAcc, NoLock, Preserve)
            {
                    ,   9, 
                RDIS,   1, 
                    ,   15, 
                RCFG,   2, 
                Offset (0x04)
            }

            Local3 = ((DerefOf (RXEV [Local0]) >> (Local1 * 0x02
                )) & 0x03)
            If ((Local3 != 0x02))
            {
                RDIS = 0x00
                RCFG = Local3
            }
        }
    }

    Name (SPTH, 0x01)
    Name (SPTL, 0x02)
    Method (PCHV, 0, NotSerialized)
    {
        If ((PCHS == 0x01))
        {
            Return (SPTH) /* \SPTH */
        }

        If ((PCHS == 0x02))
        {
            Return (SPTL) /* \SPTL */
        }

        Return (0x00)
    }

    Scope (\_SB.PCI0)
    {
        Device (PRRE)
        {
            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_UID, "PCHRESV")  // _UID: Unique ID
            Name (_STA, 0x03)  // _STA: Status
            Method (_CRS, 0, Serialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFD000000,         // Address Base
                        0x00AC0000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFDAD0000,         // Address Base
                        0x00010000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFDB00000,         // Address Base
                        0x00500000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFE000000,         // Address Base
                        0x00020000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFE036000,         // Address Base
                        0x00006000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFE03D000,         // Address Base
                        0x003C3000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFE410000,         // Address Base
                        0x003F0000,         // Address Length
                        )
                })
                Return (BUF0) /* \_SB_.PCI0.PRRE._CRS.BUF0 */
            }
        }

        Device (IOTR)
        {
            Name (_HID, EisaId ("PNP0C02") /* PNP Motherboard Resources */)  // _HID: Hardware ID
            Name (_UID, "IoTraps")  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Local0 = Buffer (0x02)
                    {
                         0x79, 0x00                                       // y.
                    }
                Name (BUF0, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x0000,             // Range Minimum
                        0x0000,             // Range Maximum
                        0x01,               // Alignment
                        0xFF,               // Length
                        _Y26)
                })
                Name (BUF1, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x0000,             // Range Minimum
                        0x0000,             // Range Maximum
                        0x01,               // Alignment
                        0xFF,               // Length
                        _Y27)
                })
                Name (BUF2, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x0000,             // Range Minimum
                        0x0000,             // Range Maximum
                        0x01,               // Alignment
                        0xFF,               // Length
                        _Y28)
                })
                Name (BUF3, ResourceTemplate ()
                {
                    IO (Decode16,
                        0x0000,             // Range Minimum
                        0x0000,             // Range Maximum
                        0x01,               // Alignment
                        0xFF,               // Length
                        _Y29)
                })
                CreateWordField (BUF0, \_SB.PCI0.IOTR._CRS._Y26._MIN, AMI0)  // _MIN: Minimum Base Address
                CreateWordField (BUF0, \_SB.PCI0.IOTR._CRS._Y26._MAX, AMA0)  // _MAX: Maximum Base Address
                CreateWordField (BUF1, \_SB.PCI0.IOTR._CRS._Y27._MIN, AMI1)  // _MIN: Minimum Base Address
                CreateWordField (BUF1, \_SB.PCI0.IOTR._CRS._Y27._MAX, AMA1)  // _MAX: Maximum Base Address
                CreateWordField (BUF2, \_SB.PCI0.IOTR._CRS._Y28._MIN, AMI2)  // _MIN: Minimum Base Address
                CreateWordField (BUF2, \_SB.PCI0.IOTR._CRS._Y28._MAX, AMA2)  // _MAX: Maximum Base Address
                CreateWordField (BUF3, \_SB.PCI0.IOTR._CRS._Y29._MIN, AMI3)  // _MIN: Minimum Base Address
                CreateWordField (BUF3, \_SB.PCI0.IOTR._CRS._Y29._MAX, AMA3)  // _MAX: Maximum Base Address
                AMI0 = ITA0 /* \ITA0 */
                AMA0 = ITA0 /* \ITA0 */
                AMI1 = ITA1 /* \ITA1 */
                AMA1 = ITA1 /* \ITA1 */
                AMI2 = ITA2 /* \ITA2 */
                AMA2 = ITA2 /* \ITA2 */
                AMI3 = ITA3 /* \ITA3 */
                AMA3 = ITA3 /* \ITA3 */
                If ((ITS0 == 0x01))
                {
                    ConcatenateResTemplate (Local0, BUF0, Local1)
                    Local0 = Local1
                }

                If ((ITS1 == 0x01))
                {
                    ConcatenateResTemplate (Local0, BUF1, Local1)
                    Local0 = Local1
                }

                If ((ITS2 == 0x01))
                {
                    ConcatenateResTemplate (Local0, BUF2, Local1)
                    Local0 = Local1
                }

                If ((ITS3 == 0x01))
                {
                    ConcatenateResTemplate (Local0, BUF3, Local1)
                    Local0 = Local1
                }

                Return (Local0)
            }
        }

        Device (PPMC)
        {
            Name (_ADR, 0x001F0002)  // _ADR: Address
            Method (_DSM, 4, Serialized)  // _DSM: Device-Specific Method
            {
                If (PCIC (Arg0))
                {
                    Return (PCID (Arg0, Arg1, Arg2, Arg3))
                }

                Return (0x00)
            }

            OperationRegion (PMCB, PCI_Config, 0x00, 0x0100)
            Field (PMCB, AnyAcc, NoLock, Preserve)
            {
                VDID,   32, 
                Offset (0x40), 
                Offset (0x41), 
                ACBA,   8, 
                Offset (0x48), 
                    ,   12, 
                PWBA,   20
            }
        }
    }

    Scope (\)
    {
        Method (PCRR, 2, Serialized)
        {
            Local0 = ((Arg0 << 0x10) + Arg1)
            Local0 += SBRG
            OperationRegion (PCR0, SystemMemory, Local0, 0x04)
            Field (PCR0, DWordAcc, Lock, Preserve)
            {
                DAT0,   32
            }

            Return (DAT0) /* \PCRR.DAT0 */
        }

        Method (PCRW, 3, Serialized)
        {
            Local0 = ((Arg0 << 0x10) + Arg1)
            Local0 += SBRG
            OperationRegion (PCR0, SystemMemory, Local0, 0x04)
            Field (PCR0, DWordAcc, Lock, Preserve)
            {
                DAT0,   32
            }

            DAT0 = Arg2
            OperationRegion (PCR1, SystemMemory, (SBRG + 0x00C73418), 0x04)
            Field (PCR1, DWordAcc, Lock, Preserve)
            {
                DAT1,   32
            }

            Local1 = DAT1 /* \PCRW.DAT1 */
        }

        Method (PCRO, 3, Serialized)
        {
            Local0 = PCRR (Arg0, Arg1)
            Local1 = (Local0 | Arg2)
            PCRW (Arg0, Arg1, Local1)
        }

        Method (PCRA, 3, Serialized)
        {
            Local0 = PCRR (Arg0, Arg1)
            Local1 = (Local0 & Arg2)
            PCRW (Arg0, Arg1, Local1)
        }

        Method (PCAO, 4, Serialized)
        {
            Local0 = PCRR (Arg0, Arg1)
            Local1 = ((Local0 & Arg2) | Arg3)
            PCRW (Arg0, Arg1, Local1)
        }

        Name (PMBV, 0x00)
        Method (PMBS, 0, NotSerialized)
        {
            If ((PMBV == 0x00))
            {
                PMBV = (\_SB.PCI0.PPMC.ACBA << 0x08)
            }

            Return (PMBV) /* \PMBV */
        }

        Name (PWRV, 0x00)
        Method (PWRM, 0, NotSerialized)
        {
            If ((PWRV == 0x00))
            {
                PWRV = (\_SB.PCI0.PPMC.PWBA << 0x0C)
            }

            Return (PWRV) /* \PWRV */
        }

        Name (TCBV, 0x00)
        Method (TCBS, 0, NotSerialized)
        {
            If ((TCBV == 0x00))
            {
                TCBV = (\_SB.PCI0.SMBU.TCOB << 0x05)
            }

            Return (TCBV) /* \TCBV */
        }

        OperationRegion (PMIO, SystemIO, PMBS (), 0x80)
        Field (PMIO, ByteAcc, NoLock, Preserve)
        {
            Offset (0x01), 
            PBSS,   1, 
            Offset (0x40), 
                ,   17, 
            GPEC,   1
        }

        OperationRegion (PMLP, SystemIO, (\PMBS () + 0x80), 0x20)
        Field (PMLP, ByteAcc, NoLock, Preserve)
        {
            Offset (0x10), 
            Offset (0x11), 
            GE08,   1, 
                ,   8, 
            GE17,   1, 
                ,   17, 
            GE35,   1, 
                ,   9, 
            GE45,   1, 
            Offset (0x16), 
            GE48,   1, 
                ,   2, 
            GE51,   1, 
            Offset (0x20)
        }

        Field (PMLP, ByteAcc, NoLock, WriteAsZeros)
        {
            Offset (0x01), 
            GS08,   1, 
                ,   8, 
            GS17,   1, 
                ,   17, 
            GS35,   1, 
                ,   9, 
            GS45,   1, 
            Offset (0x06), 
            GS48,   1, 
                ,   2, 
            GS51,   1, 
                ,   2, 
            GS54,   1, 
            GS55,   1, 
            Offset (0x10)
        }

        OperationRegion (TCBA, SystemIO, TCBS (), 0x10)
        Field (TCBA, ByteAcc, NoLock, Preserve)
        {
            Offset (0x04), 
                ,   9, 
            CPSC,   1
        }

        OperationRegion (PWMR, SystemMemory, \PWRM (), 0x0800)
        Field (PWMR, AnyAcc, NoLock, Preserve)
        {
            Offset (0xE0), 
            Offset (0xE2), 
            DWLE,   1, 
            HWLE,   1
        }

        OperationRegion (PMST, SystemMemory, PWRV, 0x80)
        Field (PMST, DWordAcc, NoLock, Preserve)
        {
            Offset (0x18), 
                ,   25, 
            USBP,   1, 
            Offset (0x1C), 
            Offset (0x1F), 
            PMFS,   1, 
            Offset (0x20), 
            MPMC,   32, 
                ,   20, 
            UWAB,   1
        }
    }

    Scope (\_SB.PCI0)
    {
        Name (LTRN, 0x00)
        Name (OBFN, 0x00)
        Name (LMSL, 0x00)
        Name (LNSL, 0x00)
    }

    Name (\_S0, Package (0x04)  // _S0_: S0 System State
    {
        0x00, 
        0x00, 
        0x00, 
        0x00
    })
    Name (\_S3, Package (0x04)  // _S3_: S3 System State
    {
        0x05, 
        0x05, 
        0x00, 
        0x00
    })
    Name (\_S4, Package (0x04)  // _S4_: S4 System State
    {
        0x06, 
        0x06, 
        0x00, 
        0x00
    })
    Name (\_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x07, 
        0x07, 
        0x00, 
        0x00
    })
    Method (\_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        Local0 = 0x01
        If ((Arg0 == \SPS))
        {
            Local0 = 0x00
        }

        If (((Arg0 == 0x00) || (Arg0 >= 0x06)))
        {
            Local0 = 0x00
        }

        If (Local0)
        {
            \SPS = Arg0
            \_SB.PCI0.LPC.EC.HKEY.MHKE (0x00)
            If (\_SB.PCI0.LPC.EC.KBLT)
            {
                \UCMS (0x0D)
            }

            If ((Arg0 == 0x01))
            {
                \FNID = \_SB.PCI0.LPC.EC.HFNI
                \_SB.PCI0.LPC.EC.HFNI = 0x00
                \_SB.PCI0.LPC.EC.HFSP = 0x00
            }

            If ((Arg0 == 0x03))
            {
                \VVPD (0x03)
                \TRAP ()
                \ACST = \_SB.PCI0.LPC.EC.AC._PSR ()
                If ((\FNWK == 0x01))
                {
                    If (\H8DR)
                    {
                        \_SB.PCI0.LPC.EC.HWFN = 0x00
                    }
                    Else
                    {
                        \MBEC (0x32, 0xEF, 0x00)
                    }
                }
            }

            If ((Arg0 == 0x04))
            {
                If (VDSP)
                {
                    SHA1 = Zero
                }

                \_SB.SLPB._PSW (0x00)
                \TRAP ()
                \AWON (0x04)
            }

            If ((Arg0 == 0x05))
            {
                \TRAP ()
                \AWON (0x05)
            }

            If ((Arg0 >= 0x04))
            {
                \_SB.PCI0.LPC.EC.HWLB = 0x00
            }
            Else
            {
                \_SB.PCI0.LPC.EC.HWLB = 0x01
            }

            If ((Arg0 >= 0x03))
            {
                \_SB.PCI0.LPC.EC.HCMU = 0x01
            }

            If ((Arg0 != 0x05)){}
            \_SB.PCI0.LPC.EC.HKEY.WGPS (Arg0)
            If (CondRefOf (\_SB.TPM.PTS))
            {
                \_SB.TPM.PTS (Arg0)
            }
        }
    }

    Name (WAKI, Package (0x02)
    {
        0x00, 
        0x00
    })
    Method (\_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        ADBG ("_WAK")
        If (((Arg0 == 0x00) || (Arg0 >= 0x05)))
        {
            Return (WAKI) /* \WAKI */
        }

        \SPS = 0x00
        \_SB.PCI0.LPC.EC.HCMU = 0x00
        \_SB.PCI0.LPC.EC.EVNT (0x01)
        \_SB.PCI0.LPC.EC.HKEY.MHKE (0x01)
        \_SB.PCI0.LPC.EC.FNST ()
        \UCMS (0x0D)
        \LIDB = 0x00
        \PMMD = \_SB.PCI0.LPC.EC.CMMD
        If ((\PMMD >= 0x07))
        {
            \PMMD = 0x00
        }

        \LVMD = \_SB.PCI0.LPC.EC.CMMD
        If (((\LVMD == 0x00) || (\LVMD >= 0x07)))
        {
            \LVMD = 0x01
        }
        ElseIf (((\LVMD == 0x02) || (\LVMD == 0x03)))
        {
            \LVMD = 0x02
        }
        Else
        {
            \LVMD = 0x03
        }

        If ((Arg0 == 0x01))
        {
            \FNID = \_SB.PCI0.LPC.EC.HFNI
        }

        If ((Arg0 == 0x03))
        {
            \NVSS (0x00)
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

            \IOEN = 0x00
            \IOST = 0x00
            If ((\ISWK == 0x01))
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

            \VCMS (0x01, \_SB.LID._LID ())
            \AWON (0x00)
            If (\CMPR)
            {
                Notify (\_SB.SLPB, 0x02) // Device Wake
                \CMPR = 0x00
            }
        }

        If ((Arg0 == 0x04))
        {
            \NVSS (0x00)
            \_SB.PCI0.LPC.EC.HSPA = 0x00
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

            \IOEN = 0x00
            \IOST = 0x00
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
        Notify (\_TZ.THM0, 0x80) // Thermal Status Change
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
                Local0 = (0x2013 | Local0)
                \_SB.PCI0.LPC.EC.HKEY.MHKQ (Local0)
            }
        }

        If ((Arg0 == 0x04))
        {
            Local0 = 0x00
            Local1 = \CSUM (0x00)
            If ((Local1 != \CHKC))
            {
                Local0 = 0x01
                \CHKC = Local1
            }

            Local1 = \CSUM (0x01)
            If ((Local1 != \CHKE))
            {
                Local0 = 0x01
                \CHKE = Local1
            }

            If (Local0)
            {
                Notify (\_SB, 0x00) // Bus Check
            }
        }

        If (((Arg0 == 0x03) || (Arg0 == 0x04)))
        {
            ADBG ("_WAK0")
            \_SB.PCI0.LPC.EC.HKEY.ANGN = 0x00
            If (((\_SB.LID._LID () == 0x01) || (\_SB.PCI0.LPC.EC.AC._PSR () == 0x01)))
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
        Return (WAKI) /* \WAKI */
    }

    Scope (\_SI)
    {
        Method (_SST, 1, NotSerialized)  // _SST: System Status
        {
            If ((Arg0 == 0x00))
            {
                \_SB.PCI0.LPC.EC.LED (0x00, 0x00)
                \_SB.PCI0.LPC.EC.LED (0x0A, 0x00)
                \_SB.PCI0.LPC.EC.LED (0x07, 0x00)
            }

            If ((Arg0 == 0x01))
            {
                If ((\SPS || \WNTF))
                {
                    \_SB.PCI0.LPC.EC.BEEP (0x05)
                }

                \_SB.PCI0.LPC.EC.LED (0x00, 0x80)
                \_SB.PCI0.LPC.EC.LED (0x0A, 0x80)
                \_SB.PCI0.LPC.EC.LED (0x07, 0x00)
            }

            If ((Arg0 == 0x02))
            {
                \_SB.PCI0.LPC.EC.LED (0x00, 0xC0)
                \_SB.PCI0.LPC.EC.LED (0x0A, 0xC0)
                \_SB.PCI0.LPC.EC.LED (0x07, 0xC0)
            }

            If ((Arg0 == 0x03))
            {
                If ((\SPS > 0x03))
                {
                    \_SB.PCI0.LPC.EC.BEEP (0x07)
                }
                ElseIf ((\SPS == 0x03))
                {
                    \_SB.PCI0.LPC.EC.BEEP (0x03)
                }
                Else
                {
                    \_SB.PCI0.LPC.EC.BEEP (0x04)
                }

                If ((\SPS == 0x03)){}
                Else
                {
                    \_SB.PCI0.LPC.EC.LED (0x00, 0x80)
                    \_SB.PCI0.LPC.EC.LED (0x0A, 0x80)
                }

                \_SB.PCI0.LPC.EC.LED (0x07, 0xC0)
                \_SB.PCI0.LPC.EC.LED (0x00, 0xC0)
                \_SB.PCI0.LPC.EC.LED (0x0A, 0xC0)
            }

            If ((Arg0 == 0x04))
            {
                \_SB.PCI0.LPC.EC.BEEP (0x03)
                \_SB.PCI0.LPC.EC.LED (0x07, 0xC0)
                \_SB.PCI0.LPC.EC.LED (0x00, 0xC0)
                \_SB.PCI0.LPC.EC.LED (0x0A, 0xC0)
            }
        }
    }

    Scope (\_GPE)
    {
        Method (_L17, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            Local0 = \_SB.PCI0.LPC.EC.HWAC
            \RRBF = Local0
            Sleep (0x0A)
            If ((Local0 & 0x02)){}
            If ((Local0 & 0x04))
            {
                Notify (\_SB.LID, 0x02) // Device Wake
            }

            If ((Local0 & 0x08))
            {
                Notify (\_SB.SLPB, 0x02) // Device Wake
            }

            If ((Local0 & 0x10))
            {
                Notify (\_SB.SLPB, 0x02) // Device Wake
            }

            If ((Local0 & 0x40)){}
            If ((Local0 & 0x80))
            {
                Notify (\_SB.SLPB, 0x02) // Device Wake
            }
        }

        Method (_L69, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            If (\_SB.PCI0.EXP1.PSPX)
            {
                \_SB.PCI0.EXP1.PSPX = 0x01
                \_SB.PCI0.EXP1.PMSX = 0x01
                Notify (\_SB.PCI0.EXP1, 0x02) // Device Wake
            }

            If (\_SB.PCI0.EXP2.PSPX)
            {
                \_SB.PCI0.EXP2.PSPX = 0x01
                \_SB.PCI0.EXP2.PMSX = 0x01
                Notify (\_SB.PCI0.EXP2, 0x02) // Device Wake
            }

            If (\_SB.PCI0.EXP3.PSPX)
            {
                \_SB.PCI0.EXP3.PSPX = 0x01
                \_SB.PCI0.EXP3.PMSX = 0x01
                Notify (\_SB.PCI0.EXP3, 0x02) // Device Wake
            }

            If (\_SB.PCI0.EXP5.PSPX)
            {
                \_SB.PCI0.EXP5.PSPX = 0x01
                \_SB.PCI0.EXP5.PMSX = 0x01
                Notify (\_SB.PCI0.EXP5, 0x02) // Device Wake
            }

            If (\_SB.PCI0.RP09.PSPX)
            {
                \_SB.PCI0.RP09.PSPX = 0x01
                \_SB.PCI0.RP09.PMSX = 0x01
                Notify (\_SB.PCI0.RP09, 0x02) // Device Wake
            }
        }

        Method (_L61, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
        }

        Method (_L62, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            \_SB.PCI0.LPC.SWGE = 0x00
        }

        Method (_L66, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            If (\_SB.PCI0.GFX0.GSSE (\_SB.PCI0.GFX0.GSCI ())){}
            Else
            {
                \_SB.PCI0.SMBU.CPSC = 0x01
            }
        }

        Name (GPFG, 0x00)
        Method (_L34, 0, NotSerialized)  // _Lxx: Level-Triggered GPE, xx=0x00-0xFF
        {
            If ((GPFG && \_SB.PCI0.LPC.NFCI))
            {
                GPFG = 0x00
                Notify (\_SB.PCI0.SMBU.NFC, 0xC0) // Hardware-Specific
            }
        }
    }

    Scope (\_SB.PCI0.LPC.EC.HKEY)
    {
        Method (MHQT, 1, NotSerialized)
        {
            If ((\WNTF && \TATC))
            {
                If ((Arg0 == 0x00))
                {
                    Local0 = \TATC
                    Return (Local0)
                }
                ElseIf ((Arg0 == 0x01))
                {
                    Local0 = \TDFA
                    Local0 += (\TDTA << 0x04)
                    Local0 += (\TDFD << 0x08)
                    Local0 += (\TDTD << 0x0C)
                    Local0 += (\TNFT << 0x10)
                    Local0 += (\TNTT << 0x14)
                    Return (Local0)
                }
                ElseIf ((Arg0 == 0x02))
                {
                    Local0 = \TCFA
                    Local0 += (\TCTA << 0x04)
                    Local0 += (\TCFD << 0x08)
                    Local0 += (\TCTD << 0x0C)
                    Return (Local0)
                }
                ElseIf ((Arg0 == 0x03)){}
                ElseIf ((Arg0 == 0x04))
                {
                    Local0 = \TATW
                    Return (Local0)
                }
                Else
                {
                    Noop
                }
            }

            Return (0x00)
        }

        Method (MHAT, 1, NotSerialized)
        {
            If ((\WNTF && \TATC))
            {
                Local0 = (Arg0 & 0xFF)
                If (!ATMV (Local0))
                {
                    Return (0x00)
                }

                Local0 = ((Arg0 >> 0x08) & 0xFF)
                If (!ATMV (Local0))
                {
                    Return (0x00)
                }

                \TCFA = (Arg0 & 0x0F)
                \TCTA = ((Arg0 >> 0x04) & 0x0F)
                \TCFD = ((Arg0 >> 0x08) & 0x0F)
                \TCTD = ((Arg0 >> 0x0C) & 0x0F)
                ATMC ()
                If ((\_PR.CFGD & 0x0100))
                {
                    Local1 = \FTPS
                    If ((Arg0 & 0x00010000))
                    {
                        If (\_PR.CLVL)
                        {
                            \FTPS = \CTPR
                            \FTPS++
                        }
                        Else
                        {
                            \FTPS = 0x01
                        }
                    }
                    ElseIf (\_PR.CLVL)
                    {
                        \FTPS = \CTPR
                    }
                    Else
                    {
                        \FTPS = 0x00
                    }

                    If ((\FTPS ^ Local1))
                    {
                        If ((\OSPX || \CPPX))
                        {
                            \PNTF (0x80)
                        }
                    }
                }

                Local2 = \SCRM
                If ((Arg0 & 0x00040000))
                {
                    \SCRM = 0x01
                    \_SB.PCI0.LPC.EC.HFSP = 0x07
                }
                Else
                {
                    \SCRM = 0x00
                    \_SB.PCI0.LPC.EC.HFSP = 0x80
                }

                Local3 = \ETAU
                If ((Arg0 & 0x00020000))
                {
                    \ETAU = 0x01
                }
                Else
                {
                    \ETAU = 0x00
                }

                Return (0x01)
            }

            Return (0x00)
        }

        Method (MHGT, 1, NotSerialized)
        {
            If ((\WNTF && \TATC))
            {
                Local0 = 0x01000000
                If ((\_PR.CFGD & 0x0100))
                {
                    Local0 |= 0x08000000
                }

                If (\SCRM)
                {
                    Local0 |= 0x10000000
                }

                If (\ETAU)
                {
                    Local0 |= 0x04000000
                }

                If ((\CTPR < \FTPS))
                {
                    Local0 |= 0x02000000
                }

                Local0 += (\TSFT << 0x10)
                Local0 += (\TSTT << 0x14)
                Local1 = (Arg0 & 0xFF)
                If (!ATMV (Local1))
                {
                    Local0 |= 0xFFFF
                    Return (Local0)
                }

                Local1 = (Arg0 & 0x0F)
                If ((Local1 == 0x00))
                {
                    Local0 += \TIF0
                }
                ElseIf ((Local1 == 0x01))
                {
                    Local0 += \TIF1
                }
                ElseIf ((Local1 == 0x02))
                {
                    Local0 += \TIF2
                }
                Else
                {
                    Local0 += 0xFF
                }

                Local1 = ((Arg0 >> 0x04) & 0x0F)
                If ((Local1 == 0x00))
                {
                    Local0 += (\TIT0 << 0x08)
                }
                ElseIf ((Local1 == 0x01))
                {
                    Local0 += (\TIT1 << 0x08)
                }
                ElseIf ((Local1 == 0x02))
                {
                    Local0 += (\TIT2 << 0x08)
                }
                Else
                {
                    Local0 += (0xFF << 0x08)
                }

                Return (Local0)
            }

            Return (0x00)
        }

        Method (ATMV, 1, NotSerialized)
        {
            Local1 = (Arg0 & 0x0F)
            Local0 = \TNFT
            If ((Local1 >= Local0))
            {
                Return (0x00)
            }

            Local2 = ((Arg0 >> 0x04) & 0x0F)
            Local0 = \TNTT
            If ((Local2 >= Local0))
            {
                Return (0x00)
            }

            If (\TATL)
            {
                If ((Local1 ^ Local2))
                {
                    Return (0x00)
                }
            }

            Return (0x01)
        }

        Method (MHCT, 1, NotSerialized)
        {
            Local0 = 0x00
            If (\SPEN)
            {
                Local0 = \LWST
                Local0++
                Local0 <<= 0x08
            }

            Local1 = 0x08
            Local1 <<= 0x08
            If ((Arg0 == 0xFFFFFFFF))
            {
                Local1 |= \TPCR
                If (\SPEN)
                {
                    Local0 |= \PPCR
                    If (!(\_PR.CFGD && 0x02000000))
                    {
                        Local1 |= 0x80
                    }

                    If (!(\_PR.CFGD && 0x08000000))
                    {
                        Local1 |= 0x40
                    }
                }
                Else
                {
                    Local1 |= 0xC0
                }
            }
            Else
            {
                If (((\OSPX || \CPPX) && \SPEN))
                {
                    Local2 = (Arg0 & 0x00FF0000)
                    Local2 >>= 0x10
                    Local0 |= Local2
                    If ((Local2 ^ \PPCR))
                    {
                        \PPCA = Local2
                        \PNTF (0x80)
                    }
                }

                If (\WVIS)
                {
                    Local2 = (Arg0 & 0x1F)
                    Local1 |= Local2
                    If ((Local2 ^ \TPCR))
                    {
                        \TPCA = Local2
                        \PNTF (0x82)
                    }
                }
            }

            Local0 <<= 0x10
            Local0 |= Local1
            Return (Local0)
        }

        Method (DYTC, 1, Serialized)
        {
            Local0 = Arg0
            Local1 = 0x00
            ADBG (Concatenate ("DYTC STT=", ToHexString (Local0)))
            If ((\WNTF && \TATC))
            {
                Switch (ToInteger ((Local0 & 0x01FF)))
                {
                    Case (0x00)
                    {
                        Local1 = (0x01 << 0x08)
                        Local1 |= (0x03 << 0x1C)
                        Local1 |= 0x01
                    }
                    Case (0x01)
                    {
                        Local2 = ((Local0 >> 0x0C) & 0x0F)
                        Local3 = ((Local0 >> 0x10) & 0x0F)
                        Local4 = ((Local0 >> 0x14) & 0x01)
                        Switch (Local2)
                        {
                            Case (0x01)
                            {
                                If ((Local3 != 0x0F))
                                {
                                    Local1 = (0x05 << 0x01)
                                    ADBG (Concatenate ("DYTC END=", ToHexString (Local1)))
                                    Return (Local1)
                                }

                                If ((Local4 == 0x00))
                                {
                                    \VCQL = 0x00
                                }
                                Else
                                {
                                    \VCQL = 0x01
                                }
                            }
                            Case (0x03)
                            {
                                Switch (Local3)
                                {
                                    Case (0x00)
                                    {
                                        If ((Local4 != 0x01))
                                        {
                                            Local1 = (0x05 << 0x01)
                                            ADBG (Concatenate ("DYTC END=", ToHexString (Local1)))
                                            Return (Local1)
                                        }
                                    }
                                    Case (0x01)
                                    {
                                        If ((Local4 != 0x01))
                                        {
                                            Local1 = (0x05 << 0x01)
                                            ADBG (Concatenate ("DYTC END=", ToHexString (Local1)))
                                            Return (Local1)
                                        }
                                    }
                                    Case (0x01)
                                    {
                                        If ((Local4 != 0x01))
                                        {
                                            Local1 = (0x05 << 0x01)
                                            ADBG (Concatenate ("DYTC END=", ToHexString (Local1)))
                                            Return (Local1)
                                        }
                                    }
                                    Case (0x0F)
                                    {
                                        If ((Local4 != 0x00))
                                        {
                                            Local1 = (0x05 << 0x01)
                                            ADBG (Concatenate ("DYTC END=", ToHexString (Local1)))
                                            Return (Local1)
                                        }
                                    }
                                    Default
                                    {
                                        Local1 = (0x05 << 0x01)
                                        ADBG (Concatenate ("DYTC END=", ToHexString (Local1)))
                                        Return (Local1)
                                    }

                                }

                                If ((Local4 == 0x00))
                                {
                                    \VMYH = 0x00
                                }
                                Else
                                {
                                    \VMYH = 0x01
                                }
                            }
                            Case (0x04)
                            {
                                If ((Local3 != 0x0F))
                                {
                                    Local1 = (0x05 << 0x01)
                                    ADBG (Concatenate ("DYTC END=", ToHexString (Local1)))
                                    Return (Local1)
                                }

                                If ((Local4 == 0x00))
                                {
                                    \VSTP = 0x00
                                }
                                Else
                                {
                                    \VSTP = 0x01
                                }
                            }
                            Case (0x05)
                            {
                                If ((Local3 != 0x0F))
                                {
                                    Local1 = (0x05 << 0x01)
                                    ADBG (Concatenate ("DYTC END=", ToHexString (Local1)))
                                    Return (Local1)
                                }

                                If ((Local4 == 0x00))
                                {
                                    \VCQH = 0x00
                                }
                                Else
                                {
                                    \VCQH = 0x01
                                }
                            }
                            Case (0x00)
                            {
                                If ((Local3 != 0x0F))
                                {
                                    Local1 = (0x05 << 0x01)
                                    ADBG (Concatenate ("DYTC END=", ToHexString (Local1)))
                                    Return (Local1)
                                }
                            }
                            Default
                            {
                                Local1 = (0x01 << 0x01)
                                ADBG (Concatenate ("DYTC END=", ToHexString (Local1)))
                                Return (Local1)
                            }

                        }

                        If ((\VSTP == 0x01))
                        {
                            \CICF = 0x04
                            If ((\_PR.CLVL > 0x01))
                            {
                                \_SB.PCI0.PL1S (0x44)
                            }

                            \FLPF (0x01)
                            NVST (0x36)
                        }
                        ElseIf ((\VMYH == 0x01))
                        {
                            \CICF = 0x03
                            If ((Local3 == 0x00))
                            {
                                \CICM = 0x00
                                If ((\_PR.CLVL > 0x01))
                                {
                                    \_SB.PCI0.PL1S (0x50)
                                }

                                \FLPF (0x00)
                            }
                            ElseIf ((Local3 == 0x01))
                            {
                                \CICM = 0x01
                                If ((\_PR.CLVL > 0x01))
                                {
                                    \_SB.PCI0.PL1S (0x50)
                                }

                                \FLPF (0x00)
                            }
                            ElseIf ((Local3 == 0x02))
                            {
                                \CICM = 0x02
                                If ((\_PR.CLVL > 0x01))
                                {
                                    \_SB.PCI0.PL1S (0x70)
                                }

                                \FLPF (0x00)
                            }
                        }
                        ElseIf ((\VCQL == 0x01))
                        {
                            \CICF = 0x01
                            If ((\_PR.CLVL > 0x01))
                            {
                                \_SB.PCI0.PL1S (0x50)
                            }

                            \FLPF (0x00)
                            NVST (0x3C)
                        }
                        ElseIf ((\VCQH == 0x01))
                        {
                            \CICF = 0x05
                            If ((\_PR.CLVL > 0x01))
                            {
                                \_SB.PCI0.PL1S (0x78)
                            }

                            \FLPF (0x00)
                        }
                        Else
                        {
                            \CICF = 0x00
                            If ((\_PR.CLVL > 0x01))
                            {
                                \_SB.PCI0.PL1S (0x70)
                            }

                            \FLPF (0x00)
                            NVST (0x3C)
                        }

                        Local5 = \VSTD
                        Local5 |= (\VCQL << 0x01)
                        Local5 |= (\VTIO << 0x02)
                        Local5 |= (\VMYH << 0x03)
                        Local5 |= (\VSTP << 0x04)
                        Local5 |= (\VCQH << 0x05)
                        Local5 |= (\VDCC << 0x06)
                        Local5 |= (\VSFN << 0x07)
                        Local5 |= (\VDMC << 0x08)
                        Local1 = (\CICF << 0x08)
                        If ((\CICF != 0x03))
                        {
                            \CICM = 0x0F
                        }

                        Local1 |= (\CICM << 0x0C)
                        Local1 |= (Local5 << 0x10)
                        Local1 |= 0x01
                    }
                    Case (0x02)
                    {
                        Local5 = \VSTD
                        Local5 |= (\VCQL << 0x01)
                        Local5 |= (\VTIO << 0x02)
                        Local5 |= (\VMYH << 0x03)
                        Local5 |= (\VSTP << 0x04)
                        Local5 |= (\VCQH << 0x05)
                        Local5 |= (\VDCC << 0x06)
                        Local5 |= (\VSFN << 0x07)
                        Local5 |= (\VDMC << 0x08)
                        Local1 = (\CICF << 0x08)
                        If ((\CICF != 0x03))
                        {
                            \CICM = 0x0F
                        }

                        Local1 |= (\CICM << 0x0C)
                        Local1 |= (Local5 << 0x10)
                        Local1 |= 0x01
                    }
                    Case (0x03)
                    {
                        Local1 = (FCAP << 0x10)
                        Local1 |= 0x01
                    }
                    Case (0x04)
                    {
                        Local1 = (MCAP << 0x10)
                        Local1 |= 0x01
                    }
                    Case (0x0100)
                    {
                        Local1 = (0x1001 << 0x10)
                        Local1 |= 0x01
                    }
                    Case (0x01FF)
                    {
                        \VCQL = 0x00
                        \VTIO = 0x00
                        \VMYH = 0x00
                        \VSTP = 0x00
                        \VCQH = 0x00
                        \VDCC = 0x00
                        \VSFN = 0x00
                        \VDMC = 0x00
                        \CICF = 0x00
                        If ((\_PR.CLVL > 0x01))
                        {
                            \_SB.PCI0.PL1S (0x70)
                        }

                        \FLPF (0x00)
                        NVST (0x3C)
                        \CICM = 0x0F
                        Local5 = \VSTD
                        Local5 |= (\VCQL << 0x01)
                        Local5 |= (\VTIO << 0x02)
                        Local5 |= (\VMYH << 0x03)
                        Local5 |= (\VSTP << 0x04)
                        Local5 |= (\VCQH << 0x05)
                        Local5 |= (\VDCC << 0x06)
                        Local5 |= (\VSFN << 0x07)
                        Local5 |= (\VDMC << 0x08)
                        Local1 = (\CICF << 0x08)
                        Local1 |= (\CICM << 0x0C)
                        Local1 |= (Local5 << 0x10)
                        Local1 |= 0x01
                    }
                    Default
                    {
                        Local1 = (0x02 << 0x01)
                    }

                }
            }
            Else
            {
                Local1 = (0x04 << 0x01)
            }

            ADBG (Concatenate ("DYTC END=", ToHexString (Local1)))
            Return (Local1)
        }

        Name (GPTL, 0x3C)
        Name (ANGN, 0x00)
        Method (NVST, 1, NotSerialized)
        {
            \_SB.PCI0.LPC.EC.HKEY.GPTL = Arg0
            If ((ANGN && (\_SB.PCI0.LPC.EC.VPON != 0x00)))
            {
                If (CondRefOf (\_SB.PCI0.RP09.PEGP.CPPC))
                {
                    \_SB.PCI0.RP09.PEGP.NVST ()
                }
            }
        }
    }

    Scope (\_SB.PCI0)
    {
        Method (PL1S, 1, NotSerialized)
        {
            ADBG (Concatenate ("PL1S Value=", ToHexString (Arg0)))
            ADBG (Concatenate ("PL1S PTDP =", ToHexString (\_SB.PCI0.PTDP)))
            ADBG (Concatenate ("PL1S CTNL =", ToHexString (\_SB.PCI0.CTNL)))
            If ((\_SB.PCI0.PTDP == Arg0))
            {
                \_SB.PCI0.CTCN ()
            }
            ElseIf ((\_SB.PCI0.PTDP > Arg0))
            {
                If ((\_PR.CLVL > 0x01))
                {
                    If ((\_SB.PCI0.CTNL >= 0x01))
                    {
                        \PT1D = Arg0
                        \_SB.PCI0.CTCD ()
                    }
                }
            }
            ElseIf ((\_SB.PCI0.PTDP < Arg0))
            {
                If ((\_PR.CLVL > 0x02))
                {
                    If ((\_SB.PCI0.CTNL >= 0x02))
                    {
                        \PT2D = Arg0
                        \_SB.PCI0.CTCU ()
                    }
                }
            }
        }
    }

    Scope (\_SB.PCI0.LPC.EC)
    {
        Method (ATMC, 0, NotSerialized)
        {
            If ((\WNTF && \TATC))
            {
                If (HPAC)
                {
                    Local0 = \TCFA
                    Local1 = \TCTA
                    Local2 = ((Local1 << 0x04) | Local0)
                    Local3 = (Local2 ^ ATMX) /* \_SB_.PCI0.LPC_.EC__.ATMX */
                    ATMX = Local2
                    If ((\TCTA == 0x00))
                    {
                        \TCRT = \TCR0
                        \TPSV = \TPS0
                    }
                    ElseIf ((\TCTA == 0x01))
                    {
                        \TCRT = \TCR1
                        \TPSV = \TPS1
                    }
                    Else
                    {
                    }
                }
                Else
                {
                    Local0 = \TCFD
                    Local1 = \TCTD
                    Local2 = ((Local1 << 0x04) | Local0)
                    Local3 = (Local2 ^ ATMX) /* \_SB_.PCI0.LPC_.EC__.ATMX */
                    ATMX = Local2
                    If ((\TCTD == 0x00))
                    {
                        \TCRT = \TCR0
                        \TPSV = \TPS0
                    }
                    ElseIf ((\TCTD == 0x01))
                    {
                        \TCRT = \TCR1
                        \TPSV = \TPS1
                    }
                    Else
                    {
                    }
                }

                If (Local3)
                {
                    If (\_SB.PCI0.LPC.EC.HKEY.DHKC)
                    {
                        \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6030)
                    }
                }

                Notify (\_TZ.THM0, 0x81) // Thermal Trip Point Change
            }
        }
    }

    Scope (\_TZ)
    {
        ThermalZone (THM0)
        {
            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                Return (\TCRT)
            }

            Method (_TMP, 0, NotSerialized)  // _TMP: Temperature
            {
                If (\H8DR)
                {
                    Local0 = \_SB.PCI0.LPC.EC.TMP0
                    Local1 = \_SB.PCI0.LPC.EC.TSL2
                    Local2 = \_SB.PCI0.LPC.EC.TSL3
                }
                Else
                {
                    Local0 = \RBEC (0x78)
                    Local1 = (\RBEC (0x8A) & 0x7F)
                    Local2 = (\RBEC (0x8B) & 0x7F)
                }

                If ((Local0 == 0x80))
                {
                    Local0 = 0x30
                }

                If (Local2)
                {
                    \TSDL ()
                    Return (\TCRT)
                }

                If (!\_SB.PCI0.LPC.EC.HKEY.DHKC)
                {
                    If (Local1)
                    {
                        \TSDL ()
                        Return (\TCRT)
                    }
                }

                Return (C2K (Local0))
            }
        }

        Method (C2K, 1, NotSerialized)
        {
            Local0 = ((Arg0 * 0x0A) + 0x0AAC)
            If ((Local0 <= 0x0AAC))
            {
                Local0 = 0x0BB8
            }

            If ((Local0 > 0x0FAC))
            {
                Local0 = 0x0BB8
            }

            Return (Local0)
        }
    }

    Scope (\_SB.PCI0.LPC.EC)
    {
        Method (_Q40, 0, NotSerialized)  // _Qxx: EC Query, xx=0x00-0xFF
        {
            Notify (\_TZ.THM0, 0x80) // Thermal Status Change
            If (\H8DR)
            {
                Local1 = \_SB.PCI0.LPC.EC.TSL2
            }
            Else
            {
                Local1 = (\RBEC (0x8A) & 0x7F)
            }

            If (\_SB.PCI0.LPC.EC.HKEY.DHKC)
            {
                If (Local1)
                {
                    \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6022)
                }
            }

            If (VIGD)
            {
                Noop
            }
            Else
            {
                \VTHR ()
            }

            If ((\_PR.CFGD & 0x01))
            {
                If ((\OSPX || \CPPX))
                {
                    \PNTF (0x80)
                }
                Else
                {
                    Local2 = (\_SB.PCI0.LPC.EC.TSL0 & 0x77)
                    If (Local2)
                    {
                        \STEP (0x09)
                    }
                    Else
                    {
                        \STEP (0x0A)
                    }
                }
            }
        }
    }

    Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
    {
        \GPIC = Arg0
    }

    OperationRegion (SMI0, SystemIO, 0xB2, 0x01)
    Field (SMI0, ByteAcc, NoLock, Preserve)
    {
        APMC,   8
    }

    Field (MNVS, AnyAcc, NoLock, Preserve)
    {
        Offset (0xFC0), 
        CMD,    8, 
        ERR,    32, 
        PAR0,   32, 
        PAR1,   32, 
        PAR2,   32, 
        PAR3,   32
    }

    Mutex (MSMI, 0x00)
    Method (SMI, 5, Serialized)
    {
        Acquire (MSMI, 0xFFFF)
        CMD = Arg0
        ERR = 0x01
        PAR0 = Arg1
        PAR1 = Arg2
        PAR2 = Arg3
        PAR3 = Arg4
        APMC = 0xF5
        While ((ERR == 0x01))
        {
            Sleep (0x01)
            APMC = 0xF5
        }

        Local0 = PAR0 /* \PAR0 */
        Release (MSMI)
        Return (Local0)
    }

    Method (RPCI, 1, NotSerialized)
    {
        Return (SMI (0x00, 0x00, Arg0, 0x00, 0x00))
    }

    Method (WPCI, 2, NotSerialized)
    {
        SMI (0x00, 0x01, Arg0, Arg1, 0x00)
    }

    Method (MPCI, 3, NotSerialized)
    {
        SMI (0x00, 0x02, Arg0, Arg1, Arg2)
    }

    Method (RBEC, 1, NotSerialized)
    {
        Return (SMI (0x00, 0x03, Arg0, 0x00, 0x00))
    }

    Method (WBEC, 2, NotSerialized)
    {
        SMI (0x00, 0x04, Arg0, Arg1, 0x00)
    }

    Method (MBEC, 3, NotSerialized)
    {
        SMI (0x00, 0x05, Arg0, Arg1, Arg2)
    }

    Method (RISA, 1, NotSerialized)
    {
        Return (SMI (0x00, 0x06, Arg0, 0x00, 0x00))
    }

    Method (WISA, 2, NotSerialized)
    {
        SMI (0x00, 0x07, Arg0, Arg1, 0x00)
    }

    Method (MISA, 3, NotSerialized)
    {
        SMI (0x00, 0x08, Arg0, Arg1, Arg2)
    }

    Method (VEXP, 0, NotSerialized)
    {
        SMI (0x01, 0x00, 0x00, 0x00, 0x00)
    }

    Method (VUPS, 1, NotSerialized)
    {
        SMI (0x01, 0x01, Arg0, 0x00, 0x00)
    }

    Method (VSDS, 2, NotSerialized)
    {
        SMI (0x01, 0x02, Arg0, Arg1, 0x00)
    }

    Method (VDDC, 0, NotSerialized)
    {
        SMI (0x01, 0x03, 0x00, 0x00, 0x00)
    }

    Method (VVPD, 1, NotSerialized)
    {
        SMI (0x01, 0x04, Arg0, 0x00, 0x00)
    }

    Method (VNRS, 1, NotSerialized)
    {
        SMI (0x01, 0x05, Arg0, 0x00, 0x00)
    }

    Method (GLPW, 0, NotSerialized)
    {
        Return (SMI (0x01, 0x06, 0x00, 0x00, 0x00))
    }

    Method (VSLD, 1, NotSerialized)
    {
        SMI (0x01, 0x07, Arg0, 0x00, 0x00)
    }

    Method (VEVT, 1, NotSerialized)
    {
        Return (SMI (0x01, 0x08, Arg0, 0x00, 0x00))
    }

    Method (VTHR, 0, NotSerialized)
    {
        Return (SMI (0x01, 0x09, 0x00, 0x00, 0x00))
    }

    Method (VBRC, 1, NotSerialized)
    {
        SMI (0x01, 0x0A, Arg0, 0x00, 0x00)
    }

    Method (VBRG, 0, NotSerialized)
    {
        Return (SMI (0x01, 0x0E, 0x00, 0x00, 0x00))
    }

    Method (VCMS, 2, NotSerialized)
    {
        Return (SMI (0x01, 0x0B, Arg0, Arg1, 0x00))
    }

    Method (VBTD, 0, NotSerialized)
    {
        Return (SMI (0x01, 0x0F, 0x00, 0x00, 0x00))
    }

    Method (VHYB, 2, NotSerialized)
    {
        Return (SMI (0x01, 0x10, Arg0, Arg1, 0x00))
    }

    Method (VDYN, 2, NotSerialized)
    {
        Return (SMI (0x01, 0x11, Arg0, Arg1, 0x00))
    }

    Method (UCMS, 1, NotSerialized)
    {
        Return (SMI (0x02, Arg0, 0x00, 0x00, 0x00))
    }

    Method (BHDP, 2, NotSerialized)
    {
        Return (SMI (0x03, 0x00, Arg0, Arg1, 0x00))
    }

    Method (STEP, 1, NotSerialized)
    {
        SMI (0x04, Arg0, 0x00, 0x00, 0x00)
    }

    Method (TRAP, 0, NotSerialized)
    {
        SMI (0x05, 0x00, 0x00, 0x00, 0x00)
    }

    Method (CBRI, 0, NotSerialized)
    {
        SMI (0x05, 0x01, 0x00, 0x00, 0x00)
    }

    Method (BCHK, 0, NotSerialized)
    {
        Return (SMI (0x05, 0x04, 0x00, 0x00, 0x00))
    }

    Method (BYRS, 0, NotSerialized)
    {
        SMI (0x05, 0x05, 0x00, 0x00, 0x00)
    }

    Method (LCHK, 1, NotSerialized)
    {
        Return (SMI (0x05, 0x06, Arg0, 0x00, 0x00))
    }

    Method (BLTH, 1, NotSerialized)
    {
        Return (SMI (0x06, Arg0, 0x00, 0x00, 0x00))
    }

    Method (PRSM, 2, NotSerialized)
    {
        Return (SMI (0x07, 0x00, Arg0, Arg1, 0x00))
    }

    Method (ISOC, 1, NotSerialized)
    {
        Return (SMI (0x07, 0x03, Arg0, 0x00, 0x00))
    }

    Method (EZRC, 1, NotSerialized)
    {
        Return (SMI (0x07, 0x04, Arg0, 0x00, 0x00))
    }

    Method (WGSV, 1, NotSerialized)
    {
        Return (SMI (0x09, Arg0, 0x00, 0x00, 0x00))
    }

    Method (SWTT, 1, NotSerialized)
    {
        If (SMI (0x0A, 0x02, Arg0, 0x00, 0x00))
        {
            If (\_SB.PCI0.LPC.EC.HKEY.DHKC)
            {
                \_SB.PCI0.LPC.EC.HKEY.MHKQ (0x6030)
            }
        }
    }

    Method (TSDL, 0, NotSerialized)
    {
        Return (SMI (0x0A, 0x03, 0x00, 0x00, 0x00))
    }

    Method (FLPF, 1, NotSerialized)
    {
        Return (SMI (0x0A, 0x04, Arg0, 0x00, 0x00))
    }

    Method (CSUM, 1, NotSerialized)
    {
        Return (SMI (0x0E, Arg0, 0x00, 0x00, 0x00))
    }

    Method (NVSS, 1, NotSerialized)
    {
        Return (SMI (0x0F, Arg0, 0x00, 0x00, 0x00))
    }

    Method (WMIS, 2, NotSerialized)
    {
        Return (SMI (0x10, Arg0, Arg1, 0x00, 0x00))
    }

    Method (AWON, 1, NotSerialized)
    {
        Return (SMI (0x12, Arg0, 0x00, 0x00, 0x00))
    }

    Method (PMON, 2, NotSerialized)
    {
        Local0 = SizeOf (Arg0)
        Name (TSTR, Buffer (Local0){})
        TSTR = Arg0
        \DBGB = TSTR /* \PMON.TSTR */
        SMI (0x11, Arg1, 0x00, 0x00, 0x00)
    }

    Method (UAWS, 1, NotSerialized)
    {
        Return (SMI (0x13, Arg0, 0x00, 0x00, 0x00))
    }

    Method (BFWC, 1, NotSerialized)
    {
        Return (SMI (0x14, 0x00, Arg0, 0x00, 0x00))
    }

    Method (BFWP, 0, NotSerialized)
    {
        Return (SMI (0x14, 0x01, 0x00, 0x00, 0x00))
    }

    Method (BFWL, 0, NotSerialized)
    {
        SMI (0x14, 0x02, 0x00, 0x00, 0x00)
    }

    Method (BFWG, 1, NotSerialized)
    {
        SMI (0x14, 0x03, Arg0, 0x00, 0x00)
    }

    Method (BDMC, 1, NotSerialized)
    {
        SMI (0x14, 0x04, Arg0, 0x00, 0x00)
    }

    Method (PSIF, 2, NotSerialized)
    {
        Return (SMI (0x14, 0x05, Arg0, Arg1, 0x00))
    }

    Method (FNSC, 2, NotSerialized)
    {
        Return (SMI (0x14, 0x06, Arg0, Arg1, 0x00))
    }

    Method (AUDC, 2, NotSerialized)
    {
        Return (SMI (0x14, 0x07, Arg0, Arg1, 0x00))
    }

    Method (SYBC, 2, NotSerialized)
    {
        Return (SMI (0x14, 0x08, Arg0, Arg1, 0x00))
    }

    Method (KBLS, 2, NotSerialized)
    {
        Return (SMI (0x14, 0x09, Arg0, Arg1, 0x00))
    }

    Method (UBIS, 1, NotSerialized)
    {
        Return (SMI (0x15, 0x00, Arg0, 0x00, 0x00))
    }

    Method (DIEH, 1, NotSerialized)
    {
        Return (SMI (0x16, 0x00, Arg0, 0x00, 0x00))
    }

    Method (OUTP, 2, NotSerialized)
    {
        SMI (0x17, Arg0, Arg1, 0x00, 0x00)
    }

    Method (SCMP, 2, NotSerialized)
    {
        Local0 = SizeOf (Arg0)
        If ((Local0 != SizeOf (Arg1)))
        {
            Return (One)
        }

        Local0++
        Name (STR1, Buffer (Local0){})
        Name (STR2, Buffer (Local0){})
        STR1 = Arg0
        STR2 = Arg1
        Local1 = Zero
        While ((Local1 < Local0))
        {
            Local2 = DerefOf (STR1 [Local1])
            Local3 = DerefOf (STR2 [Local1])
            If ((Local2 != Local3))
            {
                Return (One)
            }

            Local1++
        }

        Return (Zero)
    }

    Name (SPS, 0x00)
    Name (OSIF, 0x00)
    Name (WNTF, 0x00)
    Name (WXPF, 0x00)
    Name (WVIS, 0x00)
    Name (WIN7, 0x00)
    Name (WIN8, 0x00)
    Name (WSPV, 0x00)
    Name (LNUX, 0x00)
    Name (H8DR, 0x00)
    Name (MEMX, 0x00)
    Name (ACST, 0x00)
    Name (FMBL, 0x01)
    Name (FDTP, 0x02)
    Name (FUPS, 0x03)
    Name (FNID, 0x00)
    Name (RRBF, 0x00)
    Name (NBCF, 0x00)
    Scope (\_SB.PCI0.XHCI)
    {
        Name (UPWR, 0x00)
        Name (USPP, 0x00)
    }

    Scope (\_SB.PCI0.XHCI.URTH)
    {
        Method (PS0X, 0, Serialized)
        {
            \_SB.PCI0.XHCI.USPP = 0x00
        }

        Method (PS2X, 0, Serialized)
        {
            OperationRegion (XHCM, SystemMemory, (ToInteger (MEMB) & 0xFFFFFFFFFFFF0000), 0x0600)
            Field (XHCM, DWordAcc, NoLock, Preserve)
            {
                Offset (0x02), 
                XHCV,   16, 
                Offset (0x480), 
                HP01,   1, 
                Offset (0x490), 
                HP02,   1, 
                Offset (0x530), 
                SP00,   1, 
                Offset (0x540), 
                SP01,   1
            }

            If ((XHCV == 0xFFFF))
            {
                Return (Zero)
            }

            If (((HP01 == 0x00) && (SP00 == 0x00)))
            {
                \_SB.PCI0.XHCI.USPP |= 0x02
            }

            If (((HP02 == 0x00) && (SP01 == 0x00)))
            {
                \_SB.PCI0.XHCI.USPP |= 0x04
            }
        }

        Method (PS3X, 0, Serialized)
        {
        }
    }
}

