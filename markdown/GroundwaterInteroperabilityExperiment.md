# **Groundwater Interoperability Experiment**

## **Description**

This interoperability experiment will advance the development of WaterML 2.0, test its use with various OGC service standards (SOS, WFS, WMS and CSW), as well as investigate its interaction with [GroundwaterML](GroundwaterML.md) (GWML), in the context of sharing groundwater data between the USA and Canada.

The use of O&M compliant WaterML 2.0, GWML and OGC web services for data exchange will allow for easier access and interpretation of water data. We expect the IE will result in further development of WaterML 2.0, including a schema, example instances, and documentation describing the schema. It will also result in a documented evaluation of the compatibility of WaterML 2.0 with OGC services. In particular, the groundwater datasets contain a large number of locations with a small number of observations at each location, so we expect that the project will discover issues related to data discovery (via catalogs) and delivery (via the possibly high overhead of delivering observations). New and upgraded web services amongst participants are also expected, increasing the overall availability of water data and the interoperability of water information systems, particularly between the USA and Canada. Development of client applications is a secondary concern; the focus of work is testing information models and service delivery mechanisms.

Contacts: Main.[BoyanBrodaric](BoyanBrodaric.md) and Main.[NateBooth](NateBooth.md)

## **Meetings**

- [Call 2009-11-03](Call 2009-11-03)
- [Call 2009-11-10](Call 2009-11-10)
- [Call 2009-11-18](Call 2009-11-18)
- [Call 2009-11-24](Call 2009-11-24)
- [Call 2009-12-03](Call 2009-12-03)
- [OGC TC 2009-12-08](OGC%20TC 2009-12-08)
- [AGU 2009-12-16](AGU 2009-12-16)
- [Call 2010-01-14](Call 2010-01-14)
- [Call 2010-02-04](Call 2010-02-04)
- [Call 2010-02-25](Call 2010-02-25)
- [OGC TC 2010-03-08](OGC%20TC 2010-03-08)
- [HDWG Workshop - GW IE 2010-03-15](HDWG%20Workshop%20-%20GW%20IE 2010-03-15)
- [Call 2010-03-24](Call 2010-03-24)
- [Call 2010-05-25](Call 2010-05-25)
- [Call 2010-06-28](Call 2010-06-28)
- [Call 2010-09-09](Call 2010-09-09)
- [Call 2010-10-05](Call 2010-10-05)
- [Call 2010-10-19](Call 2010-10-19)
- [Call 2010-11-02](Call 2010-11-02)
- [Call 2010-11-16](Call 2010-11-16)
- [Call 2010-11-24](Call 2010-11-24)

## **Discussions**

- [General Approach](General Approach)
- [Groundwater ML](Groundwater ML)
- [SamplingFeature](SamplingFeature.md)
- [GwIeGetCapabilitiesBestPractices](GwIeGetCapabilitiesBestPractices.md)
- [GwIeGMLswitchover](GwIeGMLswitchover.md)
- [GwIeSOSProfile](GwIeSOSProfile.md)
- [GwIeSosGaps](GwIeSosGaps.md) Gaps, Issues and recommendations

## **Relevant Documents**

- [Sensor Observation Service](http://www.opengeospatial.org/standards/sos) OGC refrence page
- [Observation and Measurements](http://www.opengeospatial.org/standards/om) OGC reference page
- [Specification of the Sensor Service Architecture (SensorSA)](http://portal.opengeospatial.org/files/?artifact_id=35888) very detailed architecture document.
- [OGC Sensor Web Enablement: Overview and High Level Architecture (OGC 07-165)](http://portal.opengeospatial.org/files/?artifact_id=25562)
- [OGC OWS-6 Sensor Web Enablement (SWE) Engineering Report](http://portal.opengeospatial.org/files/?artifact_id=34147)
- [07-003 (2007) Common datatype used for OGC Sensor Web Enablement (SweCommon)](http://portal.opengeospatial.org/files/?artifact_id=20935&version=1)

## **Schemas**

Attached to this page are self-contained schemas to be used to validate [WaterML](WaterML.md) 2.0 until O&M 2.0 and SWE 2.0 and other dependencies are officially published. The latest version of the working shema can be retrieved from <https://svn.sdsc.edu/repo/WaterML/WaterML2.0/trunk/GeneratedSchema_June_2010> (you need access right)

## **[GroundWaterIEPrivate](GroundWaterIEPrivate.md) Dicussions**

- [GroundWaterIEPrivate](GroundWaterIEPrivate.md)
- [ExperimentUseCaseDiscussion](ExperimentUseCaseDiscussion.md)
  - [SOSLargeCollectionSensorDiscussion](SOSLargeCollectionSensorDiscussion.md)
  - [HTTPPostMethodsDiscussion](HTTPPostMethodsDiscussion.md)
  - [SosTool](SosTool.md)
  - [USGSStandardsIssues](USGSStandardsIssues.md)

## **Participants**

- USGS (United States Geological Survey)
- NRCan (Natural Resources Canada)
- CSIRO (Australian Commonwealth Scientific and Industrial Research Organisation )
- SCSD/CUAHSI (San Diego Supercomputer Center / Consortium of Universities for the Advancement of Hydrologic Science)
- NCSA (National Center for Supercomputing Applications/Illinois State Water Survey, University of Illinois at Urbana-Champaign)
- University of Calgary
- 34 North
- Kisters AG

## **Test client application**

- [NRCan client](http://ngwd-bdnes.cits.nrcan.gc.ca/service/api_ngwds/en/wmc/gie.html)
- [34 North client](http://www.opennrm.org) - Please create a login at <http://www.opennrm.org/login> in order to see the Groundwater Interoperability Experiment / SOS tools. For further instructions please see [ClientInstructions34North](ClientInstructions34North.md)
- [Kister client](http://kiwis.kisters.de)

## **Presentations and Reports**

- [GW_IE_OGC_TC_08Dec09.pdf](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/GroundwaterInteroperabilityExperiment/GW_IE_OGC_TC_08Dec09.pdf): Groundwater Interoperability Experiment status 08Dec09


- [GW_IE_OGC_TC_08Mar10.pdf](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/GroundwaterInteroperabilityExperiment/GW_IE_OGC_TC_08Mar10.pdf): Groundwater Interoperability Experiment status 08Mar10


- [OGC_GWIE_Final_Report_Mar2011.pdf](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/GroundwaterInteroperabilityExperiment/OGC_GWIE_Final_Report_Mar2011.pdf): GWIE 1 final report Mar 2011
