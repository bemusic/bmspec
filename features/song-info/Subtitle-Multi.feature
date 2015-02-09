Feature: Subtitles (Multiplex)

  Some songs may have multiple subtitles.

  http://hitkey.nekokan.dyndns.info/cmds.htm#SUBTITLES

  Scenario: Multiple subtitles
    Given a BMS file as follows
      """
      #TITLE BY MY SIDE
      #SUBTITLE (Keyboard)
      #SUBTITLE [TUTORIAL]
      """
    Then song title should be "BY MY SIDE"
    And song subtitle should be:
      """
      (Keyboard)
      [TUTORIAL]
      """
