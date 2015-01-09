Feature: STOP

  For more gimmick in game, the notechart can be temporarily paused, using
  the `#STOP` command.

  Scenario: Basic Stop
    Given a BMS file as follows
      """
      #BPM 60
      #STOP11 96
      #00111:01000200
      #00109:00110000
      """
    Then object 01 should be at 4 seconds
     And object 02 should be at 8 seconds

  Scenario: Stop on Non 4/4 Time Signature
    Given a BMS file as follows
      """
      #BPM 60
      #STOP11 96
      #00102:0.75
      #00111:010002
      #00109:001100
      """
    Then object 01 should be at 4 seconds
     And object 02 should be at 8 seconds

  Scenario: Stop on Same Beat as BPM (Stop appears first)
    Given a BMS file as follows
      """
      #BPM 60
      #BPM11 30
      #STOP11 96
      #00111:01000200
      #00109:00110000
      #00108:00110000
      """
    Then object 01 should be at 4 seconds
     And object 02 should be at 11 seconds

  Scenario: Stop on Same Beat as BPM (BPM appears first)
    Given a BMS file as follows
      """
      #BPM 60
      #BPM11 30
      #STOP11 96
      #00111:01000200
      #00108:00110000
      #00109:00110000
      """
    Then object 01 should be at 4 seconds
     And object 02 should be at 11 seconds
