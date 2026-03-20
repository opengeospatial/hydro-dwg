| \# | Model: Conceptual, Logical, XML | Issue | Date | Submitter |
|:---|:---|:---|:---|:---|
| 1 | Logical, XML | Using Constituent as Feature-of-Interest | 11-08-2015 | B. Brodaric |
| 2 | Logical, XML | Linkage between GWML2 and TimeSeriesML | 11-08-2015 | B. Simons |
| 3 | XML | Change documentation to state that we used GML 3.3 | 12-02-2015 | E. Boisvert |

## 1. Using Constituent as Feature-of-Interest

#### Discussion:

[OM_Observation](OM_Observation.md) featureOfInterest can be the samplingFeature ([GW_Well](GW_Well.md)) or the sampledFeature ([GW_Aquifer](GW_Aquifer.md)). For some observed properties (e.g. pH) the former doesn’t make sense, so need to be able to distinguish the two. The featureOfInterest for the observations was mapped to the [GW_Well](GW_Well.md) (i.e. the samplingFeature), but it should be the ultimate featureOfInterest (e.g. the [GW_FluidBody](GW_FluidBody.md).

\<p align="left"\>The Observations & Measurements specification proposes two patterns for featureOfInterest: \<p align="left"\>(1) the feature of interest can either refer to the real world object that is being observed, or \<p align="left"\>(2) to a sampling feature ([SF_SamplingFeature](SF_SamplingFeature.md)) that acts as a proxy for the real world feature (which is then accessible through the sampling feature’s sampledFeature property).  \<p align="left"\>Because the property featureOfInterest has cardinaliy 1..1, a data provider must choose one of these approaches. Problems occur when a sampling feature is chosen: while many observations can refer to the same domain feature, it is impossible to navigate back to the sampling feature. Solutions have been proposed using [OM_Process](OM_Process.md) to document the relationship between the observation and the sampling feature, but they are cumbersome and require much encoding. Consequently, the JSON (OGC 15-100) and RDF encodings for O&M include an extra samplingRegime property that is absent from the GML encoding. In GWML2, there is no restriction on featureOfInterest—it can refer to a real world feature or a sampling feature.

#### Solution:

Put in change request to OGC to modify O&M conceptual model and OMXML to have ultimate featureOfInterest (0..n) and samplingStrategy (0..n) for intermediate sampling features.

## 2. Linkage between GWML2 and TimeSeriesML

#### Discussion:

For [GW_Flow](GW_Flow.md), gwFlowVolumeRate is [OM_Measurement](OM_Measurement.md): that constrains the result to be a gml:Measurement , so a single value with a uom but these may be ranges.

Additionally, the use of [OM_Measurement](OM_Measurement.md) precludes using [TimeSeries](TimeSeries.md) as a result (uses a specialisation of [OM_Observation](OM_Observation.md)). The [GWML2IE](GWML2IE.md) did not investigate whether there were any properties that have data type [OM_Measurement](OM_Measurement.md) that could be a time series.

#### Solution:

Investigate whether there are any properties that require data type to be [OM_Observation](OM_Observation.md).

-- BruceSimons - 08 Oct 2015

-- BoyanBrodaric - 12 Aug 2015

## 3. GML 3.3 encoding

The encoding rule we used (we might want to check if it's all true) is actually GML 3.3 - specially the [CodeType](CodeType.md) -\> gml:[ReferenceType](ReferenceType.md). I always thought it was a INSPIRE thing, it's not. We must change the documentation and state that we used GML 3.3 (GML 3.3 is not a new schema, it's actually an extension of 3.2 + encoding patterns)

-- EricBoisvert - 02 Nov 2015

## 4. [GeoSciML](GeoSciML.md) 4

- Pro
  - All optional properties - consistent with GWML2.0
  - On OGC standardization process
- Con
  - schema will change
  - instance will change
  - service will change
