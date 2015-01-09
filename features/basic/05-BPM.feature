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

  Scenario: Extended BPM Change
    Given a BMS file as follows
      """
      #BPM 60
      #BPM01 120
      #00008:0001
      #00111:01
      """
    Then object 01 should be at 3 seconds
