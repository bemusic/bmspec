Feature: Basic Info

  This feature describes basic song information parsing in the normal case.

  Scenario: Parsing basic song information
    Given a BMS file as follows
      """
      #TITLE BY MY SIDE
      #ARTIST flicknote
      #GENRE Trance Core
      #DIFFICULTY 2
      #PLAYLEVEL 5
      """
    Then song title should be "BY MY SIDE"
    And song artist should be "flicknote"
    And song genre should be "Trance Core"
    And song should have difficulty 2
    And song should have play level 5
