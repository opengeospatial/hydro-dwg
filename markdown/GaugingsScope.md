# Gaugings scope

1.  **Gaugings by themselves or in relation to ratings?**
    1.  A block of all [RatingObservations](RatingObservations.md) with reference to rating
    2.  A rating contains relevant [RatingObservations](RatingObservations.md)
    3.  Inline or external block
2.  **[RatingObservations](RatingObservations.md) status**
    1.  Included in rating deveopment
    2.  Excluded from rating development
    3.  rgs-27
3.  **Specific attributes/metadata, e.g.**
    1.  Control conditions, weed growth, ice, etc.
        1.  rgs-29
    2.  Flow, Sediment, Quality, Ecological types as meta types?
        1.  rgs-31
4.  **Use of instance for identifying specific sensors/devices from a measuring point/location**
5.  **Definition of rating observations that are relevant to a rating**
    1.  [RatingObservations](RatingObservations.md) that occur in the rating period of application?
    2.  Out of period [RatingObservations](RatingObservations.md) that are used?
    3.  rgs-27
6.  **Generically an x-y result?**
    1.  rgs-33
7.  **Is the method of creating the gauging in scope? Details of the observations taken to determine the result?**
    1.  rgs-29
8.  **On site measurement (site visit)**
    1.  rgs-28
9.  **Handle simulated gaugings (from a model)?**
    1.  Yes, procedure would describe the method of creation.
    2.  rgs-29
10. **Synchronisation. E.g. where gauging takes an hour, is it being synced with the stage. Begin and end gauge height.**
    1.  Gauging start and end time
    2.  Gauging application time
    3.  rgs-29
11. **Name**
    1.  [RatingPairs](RatingPairs.md)
    2.  \_\_RatingObservations\_\_
    3.  [GaugeObservations](GaugeObservations.md)
    4.  [ControlObservation](ControlObservation.md)
    5.  Gauging
12. **Observers assessment of [RatingObservation](RatingObservation.md) quality or usability - text description.**
13. **Quality**
    1.  Very subjective -- egos get in the way! (Staff completing gaugings assessing their work as good)
    2.  Adherence to organisational standards
    3.  Good measurement of bad conditions?
    4.  Nominal range of uncertainty (0-5, 5-10, 10-15%) & a quality category
    5.  Need to be able to handle future methods for tracking uncertainty (e.g. ADCP estimation)
14. **Core required types**
    1.  Stream state, rising, falling, steady
    2.  Begin, end date, Discharge date (applied time)
    3.  Used outside its period of applicablity
    4.  Control conditions (clear, blocked, backwater affected etc.), conditions that are different from
        1.  Could be booleans, yes/no
    5.  Information that assists in deciding if the rating observation should be used in rating
    6.  Gauge height change during gauging
    7.  Aggregation method
        1.  Weighting discharge against the stage change period
    8.  Measurement procedure used
        1.  Volumetric
        2.  A-V, ADCP
        3.  Mechanical meter
        4.  Tracer
        5.  Beer bottle
    9.  How to ensure we know what gaugings are being ????

-- PaulSheahan - 06 Jul 2012
