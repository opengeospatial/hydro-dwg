On 11/3 we discussed some generalities of the IE scope and implementation. Below is a more detailed proposal for what we'd consider for a prototype SOS service. I like much of best practicies discussions by Luis Bermudez and others as part of the Oceans IE here:

<http://www.oostethys.org/best-practices> (Specifically, the argument for REST and to add in getLatest.)

Here are the services I'd like IE participants to consider: **`=`**

- Capabilities
- DescribeSensor
- GetObservation: Latest
- GetObservation: Time Range
- GetObservation: Specific Time
- GetObservation: Bounding Box

I also like what NOAA has up here as an example. It takes POST requests. I'd propose similar output to the [WaterLevel](WaterLevel.md) and [WaterLevel](WaterLevel.md) (timeseries) but via REST: <http://sdf.ndbc.noaa.gov/sos/test.shtml>

One of the possible products from the IE was a dynamic map of latest GW levels across Lake Superior Basin. In my mind, these services and methods would position us for that.

We'd also look at a [WaterML](WaterML.md) or GWML encoding vs the IOOS DIF as is used in <http://sdf.ndbc.noaa.gov/sos/test.shtml>

-- NateBooth - 04 Nov 2009

Regarding service that we should implement, we should follow OGC 06-009r6 (SOS 1.0). There is another version being prepared I think, but current software will probably support 1.0 <http://portal.opengeospatial.org/files/?artifact_id=26667>

[GetObservation](GetObservation.md) for a Time Range and a Specific time, as well as BBOX are covered in the spec, I'm not sure how we'll do the 'latest' use case. Will check the spec.

About RESTful request to SOS, SOS spec does not have a KVP (Key Value Pair) GET syntax. I think RESTful approach is essentially GET (is it ?)

To expose [WaterLevel](WaterLevel.md), we need to name those property through ideous URN. We'll probably need to craft one of those for [WaterLevel](WaterLevel.md)

Something like `urn:ogc:def:property:(some body who own the definition):GroundWaterLevel`

As for unit of measure, hmm.. . Will check the spec if there is a way to actually request for a uom. Worst case scenarion, we can convert the uom to feet.

-- EricBoisvert - 04 Nov 2009

Agree that KVP is a good approach. It was not in SOS version 1.0 but will be in version 2.0, which is currently in development (not in time for us to use though). This will also address issues like getting latest observation. The 52N implementation is POST only as is the most complete implementation available (in terms of conformance to the specification).

Agree we should stick with just getting data (i.e no transactional interfaces supported) ie describeSensor, getobservation. Out of the four filters you mentioned, the bounding box is probably the more complex to implement as you rely on the underlying database implementation of spatial functions (52N use postgis here).

In terms of latest value, the Oostethys guys implemented by setting the service to return the last value if no time filter was specified. This is probably fine as it is pretty rare you would want a null time, i.e. get me all the observations for the given phenom-proc-feature. 52N were going to use the intermediateTime property of GML time, like this:

```
<eventTime>
  <ogc:TM_During>
    <ogc:PropertyName>urn:ogc:data:time:iso8601</ogc:PropertyName>
    <gml:TimeInstant>
      <gml:timePosition indeterminatePosition="now"></gml:timePosition>
    </gml:TimeInstant>
  </ogc:TM_During>
</eventTime>
```

but the version we run does not support this (bug, they used a keyword of 'latest' which isn't supported in GML codelist) - it may be fixed in the development branch.

We are currently using <urn:ogc:def:phenomenon:OGC:waterlevel> for surface water level. There is a common need for defined lists like this for the community (i.e. HDWG) and I know there are some people (Rob Atkinson et al) who are hoping to get some definitions to work with (perhaps from WMO). MMI also provide guidance: <http://marinemetadata.org/community/teams/ont/advancedpractices/uri%C2%A0> around using ontologies.

One of the issues that we (in developing the Water Data Transfer Format) had with capturing groundwater was what is the reference point for the level measurement (including what is positive and negative). We can supply examples of how this was captured using GML CRS constructs and a procedure definition.

It isn't possible to request for particular [UoM](UoM.md) currently unless you define your observedProperty to include a [UoM](UoM.md) (e.g. [WaterCourseLevel_m](WaterCourseLevel_m.md)) but this is probably not the best way to do it.

I'm trying to get a version of the schema to work with/look at. It will be a very early rough cut without too much there (mainly a time series model). Will be in touch soon on this.

-- PeterTaylor - 09 Nov 2009

Peter - regarding reference point for the level measurement - USGS stores and reports GW Levels using "Depth to water level, feet below land surface". Knowing the altitude of the well location we could obviously convert this. But initial suggestion would be to keep a relative datum.

-- NateBooth - 13 Nov 2009

About vertical reference point. I found there is a North American Vertical Datum of 1988 (EPSG:5703), you can check the definition here: <http://www.epsg-registry.org/> BTW: The reference point is Pointe-au-Père, near Rimouski, Québec !

-- EricBoisvert - 24 Nov 2009

The use case has both TimeRange and Specific time. SOS has multiple ways to represent that range

\<img src="<https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/GeneralApproach/sostemporal.png>" alt="sostemporal.png" width='675' height='438' /\>

- overview of possible temporal relationships between existing and given (updated) sensor description with necessary actions on existing description (OGC 09_001 [OpenGIS](OpenGIS.md)® SWE Service Model Implementation Standard, Johannes Echterhoff ed. In prep) **Note that this figure was in context of "sensor update" in the original document**

):

Do we have to implement them all ?

Furthermore, I suspect [TM_Equals](TM_Equals.md) (for a specific time) would need to match an exact time (to the milliseconds). Can't we just use a Time period and bracket the interval accodingly (ex: July 2007 = 2007-07-01T00:00:00 to 2007-07-31T23:59:59) ?

-- EricBoisvert - 27 Nov 2009 - 28 Nov 2009
