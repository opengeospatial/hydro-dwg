# [WaterML2](WaterML2) implementation of USGS Rating Shifts

# Pre-reading links

- [Rating Shifts - understanding the concepts](RatingsShiftsQuebec)
- [Implementation options investigation](RatingShiftsImplementationOptions)
- [Glossary of terms](ClassDefinitionsAndGlossary)

# A [WaterML2](WaterML2) Conversion is used to define a rating.

[WaterML2](WaterML2) stream discharge rating tables though a generalised 'conversion'. Below is a diagram of the conversion concept.

The conversion/ratings concept is quite straight forward:

- Rating tables enable the conversion from an observed property to a derived property.
- A rating curve is a curvilinear relationship defined by nodes with linear interpolation between nodes
- Conversion have a start date of application.

The are more complex requirements that are also implemented, but the above points are the core concept.

\<img alt="RGS.Conversion.png" height="300" src="<https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/WaterML2RatingShiftsImplementationConcepts/RGS.Conversion.png>" title="RGS.Conversion.png" width="494" /\>

# USGS Rating shifts are a form of [WaterML2](WaterML2) conversion

In its simplest form, the USGS method of calculating flow involves adjusting the river level data prior to converting into derived flow. This is illustrated in the conversion chain diagram below.

\<img alt="Conversion.Shift.Flow.png" height="300" src="<https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/WaterML2RatingShiftsImplementationConcepts/Conversion.Shift.Flow.png>" title="Conversion.Shift.Flow.png" width="311" /\>

A [WaterML2](WaterML2) conversion can be used for implementing both the Rating Shift and the Discharge rating.

- For more information on how a [WaterML2](WaterML2) conversion can be applied to complete a rating shift see the document [RatingsShiftsQuebec](RatingsShiftsQuebec)
- The definition of the work flow described above is not in scope for WML2.P2

[WaterML2](WaterML2) Implementing multiple conversions

It is common practice in information systems to define a single conversion period for each [ParamterFrom](ParamterFrom) and [ParameterTo](ParameterTo) ([FromTo](FromTo)) combinations for an monitoring point. The HDWG RGS group decided that this convention would not be followed for WML2.P2 ratings, see [Implementation options investigation](RatingShiftsImplementationOptions) for alternatives.

The WML2.P2 implementation will allow a [ConversionPeriod](ConversionPeriod) to define the period of application for multiple [FromTo](FromTo) combinations. This approach has been taken to simplify the usage of WML2.P2 document in the application to USGS rating shifts methods.

Points to note:

- A [WaterML2](WaterML2).P2 Conversion period with multiple [FromTo](FromTo) combinations can always be disaggregated to enable storage into system that do not support multiple combinations.
- Where a work flow required knowledge of several conversions concurrently, (e.g. USGS Rating shifts) this method supports concise delivery of the data with the ability to understand all conversions in data order without having to traverse multiple data structures.
- The is Nil impact on a the use of a single [FromTo](FromTo) combination

\<img alt="[ConversionGroup](ConversionGroup).[TwoConversions](TwoConversions).png" src="<https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/WaterML2RatingShiftsImplementationConcepts/ConversionGroup.TwoConversions.png>" style="background-color: transparent; line-height: 22px;" title="[ConversionGroup](ConversionGroup).[TwoConversions](TwoConversions).png" /\>

-- PaulSheahan - 21 Nov 2013
