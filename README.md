bmspec
======

__This is NOT the official BMS specification.__
This project aims to specify the BMS file format in a way that can be automatically tested.


Example
-------

Here's how Gherkin language looks like:

```cucumber
  Scenario: Time signature
    Given a BMS file as follows
      """
      #00102:0.750
      #00111:0104
      #00211:02
      #00311:03
      """
    Then object 01 should be at beat 4
     And object 02 should be at beat 7
     And object 03 should be at beat 11
     And object 04 should be at beat 5.5
```

[Cucumber](http://cukes.info/) can parse this language
to validate the BMS implementation.
For example, see the [bms-js][] project.

[bms-js]: https://github.com/bemusic/bms-js/



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

