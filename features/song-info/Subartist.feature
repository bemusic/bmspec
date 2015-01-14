Feature: Subartist

  Some songs may have sub-artists.

  http://hitkey.nekokan.dyndns.info/cmds.htm#SUBARTIST

  Scenario: Subartists
    Given a BMS file as follows
      """
      #SUBARTIST MOVIE: m
      #SUBARTIST NOTER: n
      #SUBARTIST TESTR: t
      """
    Then song subartist should be:
      """
      MOVIE: m
      NOTER: n
      TESTR: t
      """
