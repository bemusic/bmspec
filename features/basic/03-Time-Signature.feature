Feature: Time Signature

  Scenario: Time signature
    Given a BMS file as follows
      """
      #00102:0.750
      #00001:01
      #00002:01
      #00003:01
      """
    Then there should be 3 objects
    And there should be 1 object at beat 0
    And there should be 1 object at beat 4
    And there should be 1 object at beat 7
