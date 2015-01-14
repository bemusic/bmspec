Feature: Basic Info

  This feature describes basic song information parsing in the normal case.

  Scenario: Parsing basic song information
    Given a BMS file as follows
      """
      #TITLE BY MY SIDE
      #ARTIST flicknote
      #GENRE Trance Core
      """
    Then song title should be "BY MY SIDE"
    And song artist should be "flicknote"
    And song genre should be "Trance Core"
