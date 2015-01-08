
Feature: Basic Object Parsing

  Objects are central to the BMS file format.

  - They make up the song's notecharts, keysounds, and autoplay sounds.
  - They specify the song's BPM changes. 
  - They specify the song's background animation changes.
  - etc.

  Each object is placed on a timeline (measure+fraction) inside a channel.
  The channel determines the object's role. For example:
  
  - Objects in channel 01 are autoplay sounds.
  - Objects in channel 11 are notes for button 1.
  - Objects in channel 03 are for changing BPM.

  Scenario: Reading objects
    Given a BMS file as follows
      """
      #00111:01000002
      #00311:0003
      """
    Then there should be 3 objects
    And object 01 should be on channel 11 at beat 4
    And object 02 should be on channel 11 at beat 7
    And object 03 should be on channel 11 at beat 14
