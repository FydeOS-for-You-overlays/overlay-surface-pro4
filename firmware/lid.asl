DefinitionBlock ("", "DSDT", 1, "", "", 0x20200825)
{
  Method (\_GPE._L17, 0, Serialized)
  {
    ADBG ("_L17")
    If ((\_SB.GGIV (0x02020017) == Zero))
    {
        \_SB.SGII (0x02020017, Zero)
        Local0 = One
    }
    Else
    {
        \_SB.SGII (0x02020017, One)
        Local0 = Zero
    }

    If ((LIDS != Local0))
    {
        LIDS = Local0
        If ((\_SB.LID0.LOEN == Zero))
        {
            If (IGDS)
            {
                If ((LIDS == Zero))
                {
                    \_SB.PCI0.GFX0.CLID = 0x80000000
                }

                If ((LIDS == One))
                {
                    \_SB.PCI0.GFX0.CLID = 0x80000003
                }
            }

            Notify (\_SB.LID0, 0x80) // Status Change

            Return (Zero)
        }

        If (IGDS)
        {
            If (\_SB.PCI0.GFX0.GLID (LIDS))
            {
                \_SB.PCI0.GFX0.CLID |= 0x80000000 /* External reference */
            }
        }

        Notify (\_SB.LID0, 0x80) // Status Change
    }
  }
}
