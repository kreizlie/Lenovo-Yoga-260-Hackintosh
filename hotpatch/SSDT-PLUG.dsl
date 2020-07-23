// Basic CPU Power Management
DefinitionBlock ("", "SSDT", 2, "ACDT", "CPUPM", 0x00003000)
{
    External (_PR.CPU0, ProcessorObj)

    Scope (_PR.CPU0)
    {
        Method (PMPM, 4, NotSerialized)
        {
           If (LEqual (Arg2, Zero))
           {
               Return (Buffer (One) { 0x03 })
           }

           Return (Package (0x02)
           {
               "plugin-type",
               One
           })
        }

        Method (_DSM, 4, NotSerialized)
        {
            Return (PMPM (Arg0, Arg1, Arg2, Arg3))
        }
    }
}
