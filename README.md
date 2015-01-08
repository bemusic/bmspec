bmspec
======

__This is NOT the official BMS specification.__
This project aims to specify the BMS file format in a way that can be automatically tested.


Example
-------

Specification for BMS will be written in Gherkin language, like this:

```cucumber
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
```

Then implementors can execute this specification using [Cucumber](http://cukes.info/).



Resources
---------

- [Be-Music Source on Wikipedia](http://en.wikipedia.org/wiki/Be-Music_Source)
- [What is BMS?](https://github.com/lifthrasiir/angolmois/wiki/What-is-BMS%3F) on Angolmois Wiki
* [BMS command memo](http://hitkey.nekokan.dyndns.info/cmds.htm) is the most comprehensive documentation of BMS file format available, which covers different behaviors.


Structure
---------

Since BMS file format has been applied to multiple games,
not all implementors implement all features.

Instead, implementations can check with each feature to see whether they support it or not.


1. basic
    - Basic parsing of comments, headers, and channel sentences.
    - Basic song information
        - `#TITLE`
            - Implicit subtitles
        - `#SUBTITLE`
            - Multiple subtitles
        - `#MAKER`
        - `#GENRE`, `#GENLE`
    - Channel sentences.
        - Basic channel merging.
        - `#xxx01` BGM channel layering.
        - `#xxx02` Time signature commands.
    - BPM changes.
        - `#xxx03` BPM changes.
        - `#xxx08` Extended BPM changes.
    - STOP commands.
        - `#xxx09` Stop BPM sequences.
        - `#STP xxx.yyy zzzz`
2. longnote
    - `#LNTYPE 1`
    - `#LNOBJ xx`
3. bga
    - `#BMPxx`
    - `#xxx04` BGA-base
    - `#xxx07` BGA-layer

