Feature: Subtitles

  Subtitles can be derived from `#TITLE`.

  http://hitkey.nekokan.dyndns.info/cmds.htm#TITLE-IMPLICIT-SUBTITLE

  Scenario Outline: Implicit subtitle
    Given a BMS file as follows
      """
      #TITLE <Value>
      """
    Then song title should be "<Title>"
    And song subtitle should be "<Subtitle>"
    Examples:
      | Value                      | Title      | Subtitle |
      | BY MY SIDE-Tutorial-       | BY MY SIDE | Tutorial |
      | BY MY SIDE～Tutorial～     | BY MY SIDE | Tutorial |
      | BY MY SIDE(Tutorial)       | BY MY SIDE | Tutorial |
      | BY MY SIDE[Tutorial]       | BY MY SIDE | Tutorial |
      | BY MY SIDE<Tutorial>       | BY MY SIDE | Tutorial |
