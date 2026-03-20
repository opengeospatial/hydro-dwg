# Rating conversion transitions / phased change

The reading workshop inclued a requirement for the inclusion of tranistions : \_rgs-13 - "The use of conversion transitions / phased change is in scope"\_

A change in applicable conversion table is controlled by adding records to the conversion period. The conversion period declares the table that is active and the date and time from which it is active. This means that there is an instantaneous switch from one conversion table to the next.

A transition is a method to define the change between two different conversion tables over a period of time rather than instantaneously.

In a stream flow context, conversion tables communicate the relationship between stream level and river flow. Changes in this relationship can be attributed to many things, for example:

1. Accumulation of algae or ice 2. Scouring and aggregation of river bed 3. Construction of a control structure 4. Destruction of a control structure

Item 4 of the change examples above could almost be considered to be an instantaneous event. Items 1-3 occur over a period of time ranging from hours to days. Representing these changes in a rating system that only allows for a change between tables at a specific date and time is problematic as it does not model the natural condition.

An example of this is a stream gauge that has high algae or aquatic weed growth during the warmer months, where the growth has a significant impact on the discharge relationship. Often the relationship can be defined for the ‘no growth’ and ‘full growth’ regimes, however definition of the relations in between these times is problematic from a resource perspective. In these instances the definition of the relationship at the extreme ends is completed and the derivation of flow from level requires a transition period to move in between the conversion tables. It is noted that alternative ultrasonic methods of flow measurement may be a better solution if available.

A common example of the impact of sudden rating changes is where a flood event has caused stream bed scour. The flood water has eroded loose sediment in the stream bed or bank, increasing the cross section area of the control section. This has the effect of ‘lowering’ the conversion table. I.e. the equivalent flow occurs at a lower stage height. Such a change in the control section will initiate a conversion table change. If this change were attributed to a single date and time during the flood event the resulting flow hydrograph would be nonsensical, thus transitioning between the tables during the event produces a more acceptable result. The following three images depict the flood event scenario and the impact on derived flow produced.

Figure 1 : Cross section change an impact on rating table

\<img alt="" height="750" src="<https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/RatingPhasedDuration/rating.transiton.change.jpg>" width="776" /\>

Figure 2 : Ratings applied without transition

\<img alt="" height="484" src="<https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/RatingPhasedDuration/rating.transiton.not-applied.jpg>" width="733" /\>

Figure 3 : Ratings applied with transition

\<img alt="" height="600" src="<https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/RatingPhasedDuration/rating.transiton.applied.jpg>" width="773" /\>

Below is a proposal for transitions and a comparison to the WDTF implementation for the concept.

In this diagram, the numbers in a triangle indicate a rating table number. The triangle is a conversion period entry. The WDTF model requires three converion period enties, the porposed model requires only two. The WDTF model has been confusing the some.

\<img alt="" src="<https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/RatingPhasedDuration/trasnition.model.1.jpg>" /\>

-- PaulSheahan - 08 Feb 2013
