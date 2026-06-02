## Toulouse Workshop Minutes and Notes

### Agenda

1.  9am Welcome
2.  Confirm/adjust agenda
3.  Review and discussions of best practice use of SOS and O&M for the IE. This work will centre on the best practices discussion paper currently being prepared by Stefan Fuest and his colleagues from Kisters. The objective of this session is to have agreement on the approaches so we can push ahead with the IE. This work is crucial to the success of the IE and [WaterML2](WaterML2)? .0.
4.  Additional demonstrations and discussion of progress by UC1 and UC3.

### Major Outcomes

1.  **Procedure** shall be constrained to to a single conceptual process, either a sensor or algorithm. Eg. Daily mean, daily total etc. This avoids combining the sensor and procedure together like [WaterLevel](WaterLevel)/[DailyAverage](DailyAverage). In this case, the procedure will be [DailyAverage](DailyAverage), and the observed property will be [WaterLevel](WaterLevel).
2.  **FOI** shall be constrained to a sampling feature usually a sampling point in space eg sampling station or point
3.  **[GetCapabilities](GetCapabilities)** is to be viewed as a quick handshake using other queries to further discover sites ([GetFeatureOfInterest](GetFeatureOfInterest)) etc. eg. FOI is the network. Implicit assumption that further queries on FOI return sampling features. This is what the GWIE have done. See below for a bit more information from Stefan's paper.

The above are consistent with the draft [WaterML2](WaterML2).0 specification Some consequences of the above are:

- Inability to traverse the processing chain: until we use [WaterML2](WaterML2).0
- Require more specilaised queries for rating curves, probably from WFS

### Notes

Session 1 was a presentation of the paper by Stefan Fuest on a [SOS usage profile for the hydrology domain](http://external.opengis.org/twiki_public/bin/view/HydrologyDWG/SOSUsageAndServerTypeDiscussion). This formed the baseline for discussion an various aspects on the implementation of SOS for the IE.

It was noted that: An observation offering in SOS is a logical grouping of observations offered by a service which are related in some way. Further, the relationship should be such that the offering is dense, ie. It is unlikely that a query would result in an empty set.

SOS encourages observation offering to be thought of a layer, for hydrology, a layer would be thematic. It is limited to one procedure per feature of interest for the whole network.

Hydrological monitoring networks typically have many measurement nodes or sampling points. Surface water networks on a national scale may be in the 1000's and groundwater network may be in the 100,000's which leads to the problems with [GetCapabilities](GetCapabilities) document sizes.

**Rating Curves** The group had a number of discussion on rating curves with the **recommendation** at the moment that:

- Rating curves should be part of the metadata, not immediately available through the observation.

**[GetCapabilities](GetCapabilities)** from Stefan's paper

|  |  |
|----|----|
| SOS Server Type C (procedure==sensor-type/system) A SOS as intended by the Groundwater IE should use the following structure for the getCapabilities response. Here a procedure is seen as a sensor-type or system. This structure requires additional requests or knowledge to "drill" into the data if you want to do it by sensor instance |  |
| SOS1 | SOS2 |

The outcome here then, is that in the [GetCapabilities](GetCapabilities) document the FOI will be the network see above ([OntarioWellNetwork](OntarioWellNetwork)), and to find sampling features, the SOS getFeatureofInterest is called with a query specification.

**Note** We note and accept the sematic inconsistency between the [GetCapabilities](GetCapabilities) returning a network as FOI and and the [GetFeatueOfInterest](GetFeatueOfInterest) returning a sampling point.

**Deficiencies in [GetCapabilities](GetCapabilities)** The group also concluded that for our SWIE use cases the [GetCapabilities](GetCapabilities) document as it stands is pretty much useless. It would be more useful if it was directly query-able along the axes of O&M. For example we are interested in:

1.  What are the offerings at samplingpoints in a spatial region
2.  What are the offerings at samplingpoints in a region which have a particular observed property
3.  What are the offerings at samplingpoints in a region which have a particular observed property, with a particular procedure.

At this point we are interested in offerings, not necessarily the observations, which once the offering had been identified could be retrieved using the [GetObservation](GetObservation) call.

### Action Items

1.  Start a discussion with the SOS 2 group to allow multiple procedures per offering. I'm not sure how much of a problem this is given the agreement on how getcapabilites is going to be used.
2.  There is a need to develop a compendium of standard patterns of access, i.e. how the different OGC standards are to be used as a suite, for each use case,

WMS, WFS, SOS, CSW etc.

1.  Work towards a joint use case with the Oceans Meteorological domain working group possibly targeting September TC in Boulder as the presentation point.
2.  Update the [WaterML2](WaterML2).0 working group as soon as possible on our discussions.

### Vocabularies

Discussion on Vocabulary was held. It was agreed that

1.  Small Vocabulary is required in the first instance
2.  Suggestion to use WMO keyword list. This requires someone to look at the applicability of the keyword list. The keyword list as sent to the GRDC by Pierre Kerherve (WMO/CBS) in May 2010 is attached below. It is still a working document and not the final.

### Interaction with the Oceans Met DWG.

Oceans Met and Hydrology domain working group interaction. During the course of the workshop and the following DWG meeting on Wednesday, it became clear that both working groups have much in common and a key question is how do we continue to work together?

Both group recognized that a joint goal is to ensure interoperation across both domain working groups as each focuses on one part of the water cycle. The suggestion form Jeremy Tandy was to look to devlop and work on a joint use case.

The suggetion also is to work towards a joint use case, possibly targeting the Sept TC in Boulder.

Maybe a beach water quality use case.

USGS and CSIRO to talk about 2 use case which link domains.

Ideally both domain would use a single profile of SOS allowing interoperation. See [SOS usage profile for the hydrology domain](http://external.opengis.org/twiki_public/bin/view/HydrologyDWG/SOSUsageAndServerTypeDiscussion) for details.

-- PeterFitch - 21 Oct 2010

- [2010_Toulouse_HydroDWG_Update.ppt](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/ToulouseWorkshop/2010_Toulouse_HydroDWG_Update.ppt): SWIE Update


- [Hydro_Workshop_WrapUp.ppt](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/ToulouseWorkshop/Hydro_Workshop_WrapUp.ppt): Workshop [WrapUp](WrapUp)


- [keywords_fromPierreKerherve_20100412.doc](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/ToulouseWorkshop/keywords_fromPierreKerherve_20100412.doc): WMO preliminary keyword list
