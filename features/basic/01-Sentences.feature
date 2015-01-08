Feature: Basic Sentence Parsing

  This feature is about parsing BMS at its most basic level.

  Scenario: Parsing a BMS file with standard sentences
    Given a BMS file as follows
      """
      #TITLE BY MY SIDE
      #ARTIST flicknote
      #00101:0100010001
      This is a comment
      """
    Then there should be 2 header sentences
    And there should be 1 channel sentence

  Scenario: Parsing a malformed command line
    Given a BMS file as follows
      """
      #TITLE BY MY SIDE
      #ARTIST:flicknote
      """
    Then there should be 1 header sentence

