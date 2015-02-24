Feature: WAV Sentence Parsing

  Scenario: Reading WAV sentences
    Given a BMS file as follows
      """
      #TITLE #WAV test case
      #WAV01 index.mp3
      #WAVZZ wow.mp3
      #WAVAA zz.ogg
      """
    Then sound ZZ references file "wow.mp3"
    And sound 01 references file "index.mp3"
    And sound AA references file "zz.ogg"
    And sound 02 is a null reference
