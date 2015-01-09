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

