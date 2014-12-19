Feature: Header Sentence Parsing

  Scenario: Standard header
    Given a BMS file as follows
      """
      #TITLE BY MY SIDE
      #ARTIST flicknote
      """
    Then the header "TITLE" should have value "BY MY SIDE"
    And the header "ARTIST" should have value "flicknote"

  Scenario: Header with multiple spaces as delimiter
    Given a BMS file as follows
      """
      #TITLE      BY MY SIDE
      """
    Then the header "TITLE" should have value "BY MY SIDE"

  Scenario: Indented header
    Given a BMS file as follows
      """
      #TITLE BY MY SIDE
        #ARTIST flicknote
      """
    Then the header "TITLE" should have value "BY MY SIDE"
    And the header "ARTIST" should have value "flicknote"

  Scenario: Case-insensitive header
    Given a BMS file as follows
      """
      #Title BY MY SIDE
      #Artist flicknote
      """
    Then the header "TITLE" should have value "BY MY SIDE"
    And the header "ARTIST" should have value "flicknote"

  Scenario: Duplicated header lines
    Given a BMS file as follows
      """
      #TiTlE BEAT MUSIC SEQUENCE
      #tItLe BY*MY*SIDE
      """
    Then the header "TITLE" should have value "BY*MY*SIDE"

