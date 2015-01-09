Feature: BPM Changes

  Some songs change the speed during the song. This is called BPM changes.

  Scenario: BPM Change
    Given a BMS file as follows
      """
      #BPM 60
      #00003:0078
      #00111:01
      """
    Then object 01 should be at 3 seconds

  Scenario: Multiple BPM Changes
    Given a BMS file as follows
      """
      #BPM 100
      #00003:0060C0
      #00011:00010203
      #00111:04
      """
    Then object 01 should be at 0.6 seconds
    Then object 02 should be at 1.216667 seconds
    Then object 03 should be at 1.7375 seconds
    Then object 04 should be at 2.05 seconds

  Scenario: Extended BPM Change
    Given a BMS file as follows
      """
      #BPM 60
      #BPM01 120
      #00008:0001
      #00111:05
      """
    Then object 05 should be at 3 seconds
