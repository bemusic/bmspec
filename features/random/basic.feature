
Feature: Basic RANDOM

  Scenario: Basic RANDOM (Scenario 1)
    Given the random number generator yields 1
    Given a BMS file as follows
      """
      #RANDOM 2
      #IF 1
      #00111:0100
      #ENDIF
      #IF 2
      #00111:0001
      #ENDIF
      """
    Then object 01 should be at beat 4

  Scenario: Basic RANDOM (Scenario 2)
    Given the random number generator yields 2
    Given a BMS file as follows
      """
      #RANDOM 2
      #IF 1
      #00111:0100
      #ENDIF
      #IF 2
      #00111:0001
      #ENDIF
      """
    Then object 01 should be at beat 6

  Scenario: Multiple RANDOM
    Given the random number generator yields 2, 1
    Given a BMS file as follows
      """
      #RANDOM 2
      #IF 1
      #00111:0100
      #ENDIF
      #IF 2
      #00111:0001
      #ENDIF
      #RANDOM 2
      #IF 1
      #00211:0200
      #ENDIF
      #IF 2
      #00211:0002
      #ENDIF
      """
    Then object 01 should be at beat 6
    And object 02 should be at beat 8
