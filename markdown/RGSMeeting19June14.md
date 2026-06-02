# Agenda

1.  Update on services and web client
    1.  IDs, links,
    2.  Addressing objects directly by ID
        1.  Remove the need to address individual objects by identifer. E.g. conversion periods, shifts (bundle together), gaugings.
        2.  Agency to agency exchange
    3.  [ConversionGroup](ConversionGroup): how to identify (MP/from/to).
        1.  Do we get back a rating + shift?
        2.  Do we need a conversion type? Datums, Time, Stage. Requires method/algorithm - the indepth details of conversion process.
    4.  Support for extensible metadata
        1.  "extension" \< - point for expanded metadata. Available at each object?
    5.  Verbosity?
        1.  Applies to extensions, but all objects.
        2.  Move common elements to top
    6.  Embedded objects vs links
        1.  Provide the ID and the link to objects
    7.  Create a list of changes that people agree on
2.  IE Engineering report:
    1.  what needs to be covered
        1.  Input for each scenario
        2.  Challenges in implementation
    2.  timeline
3.  Open API questions:
    - Keying for conversion group (MP/paramFrom/To)
    - Timelines, deliverables -- what next?
    - Success criteria

### Meeting with Europe. 27th June

IE report results

- Review requirements in spreadsheet
- Check against results

Range values

- Example from Matt - parts of curve
- Examples from NOW - cross section examples.

Placeholder for Kisters service

Vocabs for quality, observered properties etc. \<- what gets standarised. Send Matt list of WDTF vocabs.

Fix for latest rating period.

Hosting of validatioin and visualisation service?

## Timeline

- July - August 2014 - Reform [WaterML2](WaterML2).0 Standards Working Group (SWG)
- August 2014 - Final IE engineering report, for publishing via OGC
- November 2014 - Discussion paper detailing the RESTful RGS API
- January 2015 - Draft standard document
- Feb-June - Standards process (RFC, Comment, revision)

-- PeterTaylor - 19 Jun 2014
