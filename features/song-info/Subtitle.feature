Feature: Subtitles (Basic)

  Some songs may have subtitles, such as [Beginner].

  http://hitkey.nekokan.dyndns.info/cmds.htm#SUBTITLE

  Scenario: Normal subtitle
    Given a BMS file as follows
      """
      #TITLE BY MY SIDE
      #SUBTITLE [TUTORIAL]
      """
    Then song title should be "BY MY SIDE"
    And song subtitle should be "[TUTORIAL]"
