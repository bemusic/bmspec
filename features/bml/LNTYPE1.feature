Feature: LNTYPE 1

  Scenario: Long Note Channel
    Given a BMS file as follows
      """
      #00151:0101020203030404
      """
    Then there should be 4 playable notes
     And object 01 should be a long note from beat 4 to 4.5
     And object 02 should be a long note from beat 5 to 5.5
     And object 03 should be a long note from beat 6 to 6.5
     And object 04 should be a long note from beat 7 to 7.5
  
