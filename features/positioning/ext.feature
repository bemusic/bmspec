
Feature: Positioning (#SCROLL) on Extension Lines

  Scenario: Basic Scenario
    Given a BMS file as follows
      """
      #SCROLL02 0.5
      #EXT #001SC:02
      """
    And scrolling speed at beat 4 is 0.5
