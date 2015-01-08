Feature: Time Signature

  Scenario: Time signature
    Given a BMS file as follows
      """
      #00102:0.750
      #00111:0104
      #00211:02
      #00311:03
      """
    Then object 01 should be at beat 4
     And object 02 should be at beat 7
     And object 03 should be at beat 11
     And object 03 should be at beat 5.5
