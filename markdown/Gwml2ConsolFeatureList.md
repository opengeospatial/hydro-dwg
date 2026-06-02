-- FrancoisLetourneau - 19 Dec 2012

# GWML 2 Consolidated Entity List

This page is organised to reflect the consolidated feature list for GWML 2. The features were selected from the [complete feature list](Gwml2EntityList) found in the various groundwater models.

------------------------------------------------------------------------

See [Gwml2ConsolFeatureListDiscussionPage](Gwml2ConsolFeatureListDiscussionPage)

-- JanuszMichalak - 05 Feb 2013

------------------------------------------------------------------------

The discussions from this page resulted in the gwml2FinalFeaturesList page

-- FrancoisLetourneau - 18 Jun 2013

## Index of Entities

Hydrogeologic Units

- [Hydrogeologic Unit](#HydrogeologicUnit)
- [Hydrogeologic Stratum](#HydrogeologicStratum)
- [Aquifer System](#AquiferSystem)
- [Aquifer](#Aquifer)
- [Aquitard](#Aquitard)
- [Confining Bed](#ConfiningBed)
- [Geologic Unit](#GeologicUnit)
- [Groundwater Basin](#GroundwaterBasin)
- [Hydrogeologic Object](#HydrogeologicObject)
- [Hydrogeologic Mapped Feature](#HydrogeologicMappedFeature)

Groundwater Occurences

- [Spring](#Spring)

Hydrogeologic Boundaries

- [Groundwater Divide](#GroundwaterDivide)
- [Hydraulic Boundary](#HydraulicBoundary)
- [Groundwater Dam](#GroundwaterDam)

Hydrogeologic Description

- [Aquifer Parameters](#AquiferParameters)

Groundwater Quantity

- [Groundwater Level](#GroundwaterLevel)
- [Piezometric Surface](#PiezometricSurface)
- [Potentiometric Surface](#PotentiometricSurface)
- [Recharge Area](#RechargeArea)
- [Discharge Area](#DischargeArea)
- [Groundwater Flow](#GroundwaterFlow)
- [Groundwater Body](#GroundwaterBody)
- [Water Body](#WaterBody)
- [Other Water Bodies](#OtherWaterBodies)
- [Groundwater Volume](#GroundwaterVolume)
- [Groundwater Yield](#GroundwaterYield)
- [Reservoir](#Reservoir)
- [Groundwater Layer](#GroundwaterLayer)
- [Cone of Depression](#ConeOfDepression)
- [Zone of Contribution](#ZoneOfContribution)
- [Zone of Influence](#ZoneOfInfluence)

Groundwater Management

- [Water Budget](#WaterBudget)
- [Protected Area](#ProtectedArea)
- [Groundwater Management Zone](#GroundwaterManagementZone)
- [River Basin District](#RiverBasinDistrict)

Groundwater Testing

- [Hydraulic Testing](#HydraulicTesting)

Groundwater Ecosystem

- [Groundwater Dependent Ecosystem](#GroundwaterDependentEcosystem)

Groundwater Quality

- [Groundwater Quality Description](#GroundwaterQualityDescription)
- [Groundwater Composition](#GroundwaterComposition)
- [Groundwater Biology](#GroundwaterBiology)

Groundwater Sampling Features and Wells

- [Water Well](#WaterWell)
- [Well Log](#WellLog)
- [Well Field](#WellField)
- [Monitoring Site](#MonitoringSite)
- [Well Construction Elements](#WellConstructionElements)
- [Pump](#Pump)

## Entity List

cellspacing = "2" cellborder="0" tablewidth="100%" valign="baseline" \| **Scope** \| Feature \| **Definition** \| **Related Term** \| **Use Case** \| **GWML1** \| **Inspire** \| **HY Feat.** \| **Other** \|

|  |  |  |  |  |  |  |  |  |
|----|----|----|----|----|----|----|----|----|
|  | \<a name="[HydrogeologicUnit](HydrogeologicUnit)"\>Hydrogeologic Unit |  |  | u |  |  |  |  |
|  |  | Hydrogeologic unit (1) Any soil or rock unit or zone which by virtue of its hydraulic properties has a distinct influence on the storage or movement of groundwater (after ANS, 1980). |  |  | g |  |  |  |
|  |  | A part of the lithosphere with distinctive parameters for water storage and conduction. |  |  |  | i |  |  |
|  |  | A formation or zone of geological material (rock or soil ) with hydrologically significant characteristics. |  |  |  |  | h |  |
|  | \<a name="[HydrogeologicStratum](HydrogeologicStratum)"\>Hydrogeologic Stratum |  |  |  |  |  |  |  |
|  |  | A layer (stratum) of material (rock or soil) dividing a hydrogeologic unit by water bearing characteristics. Note: refers to the vertical stratification within the hydrogeologic unit. |  |  |  |  | h |  |
|  | \<a name="[AquiferSystem](AquiferSystem)"\>Aquifer System |  |  |  |  |  |  |  |
|  |  | \<ul\> \<li\>Collection of hydrogeological units composing a system of interacting components. By virtue of being a Geologic Unit, it derives from it the 'part' property (GWML 1).\</li\> \<li\>Aquifer system - A body of permeable and poorly permeable material that functions regionally as a water-yielding unit; it comprises two or more permeable beds separated at least locally by confining beds that impede groundwater movement but do not greatly affect the regional hydraulic continuity of the system; includes both saturated and unsaturated parts of permeable material (after ASCE, 1985).\</li\> \<li\> **COMMENT \[ID\]:** a system is not a really "body"\</li\> \</ul\> |  |  | g |  |  |  |
|  |  | \<ol\> \<li\>A collection of aquifers and aquitards, which together constitute the environment of groundwater. - "communicating vessels", that are filled or can be filled with water.\</li\> \<li\>A collection of hydraulically connected aquifers and aquitards, which together constitute the environment of groundwater \<strike\>- "communicating vessels", that are filled or can be filled with water\</strike\>.\</li\> \</ol\> |  |  |  | i |  |  |
|  |  | The topological relationships to be declared between hydrologically connected or interrelated aquifers, including the confining strata. |  |  |  |  | h |  |
|  | \<a name="Aquifer"\>Aquifer |  |  | u |  |  |  |  |
|  |  | A formation, group of formations, or part of a formation that contains sufficient saturated permeable material to yield significant quantities of water to wells and springs (after Lohman and others, 1972). |  |  | g |  |  |  |
|  |  | A wet underground layer of water-bearing permeable rock or unconsolidated materials (gravel, sand, silt, or clay) from which groundwater can be usefully extracted using a water well. |  |  |  | i |  |  |
|  |  | A water-bearing layer of rock that will yield water in a usable quantity to a well or spring (\<a href="<http://pubs.usgs.gov/wsp/2220/report.pdf>" title="Heath 1983"\>Heath, 1983) |  |  |  |  |  | o |
|  |  | ‘Aquifer’ means a subsurface layer or layers of rock or other geological strata of sufficient porosity and permeability to allow either a significant flow of groundwater or the abstraction of significant quantities of groundwater. |  |  |  |  |  | eu_WFD |
|  |  | A permeable water-bearing formation capable of yielding exploitable quantities of water. an aquifer may be part of a system of hydraulically connected aquifers. IGH0064Note: not to be confused with (underground) reservoir which refers to a body of water used for storage. |  |  |  |  | h |  |
|  | \<a name="Aquitard"\>Aquitard | **DISCUSSION** : should we keep aquitard as a separate feature or integrate it into confining bed?  |  |  |  |  |  |  |
|  |  | **COMMENT*:***See underlined fragment of definition below and quotation from Domenico & Schwartz 1998: "the terms aquifer and aquitard are ambiguous". Aquitards play significant roles for water flow in aquifer systems. \[JM\] |  |  |  | i |  |  |
|  | \<a name="[ConfiningBed](ConfiningBed)"\>Confining Bed | \_(merged from aquitard and aquiclude features)\_ | Aquiclude, Aquitard |  |  |  |  |  |
|  |  | \<ol\> \<li\>A layer of rock having very low hydraulic conductivity that hampers the movement of water into and out of an aquifer (\<a href="<http://pubs.usgs.gov/wsp/2220/report.pdf>" title="Heath 1983"\>Heath 1983)\</li\> \<li\>A layer of rock having very low porosity and in consequence hydraulic conductivity that hampers the movement of water into and out of an aquifer (\<a href="<http://pubs.usgs.gov/wsp/2220/report.pdf>" title="Heath 1983"\>Heath 1983)\</li\> \</ol\> |  |  |  |  |  | o |
|  |  | A formation overlying or underlying a much more permeable aquifer. |  |  |  |  | h |  |
|  |  | \<ul\> \<li\>Aquiclude - A hydrogeologic unit which, although porous and capable of storing water, does not transmit it at rates sufficient to furnish an appreciable supply for a well or spring (after WMO, 1974).\</li\> \<li\>Aquitard - a saturated, but poorly permeable bed that impedes ground-water movement and does not yield water freely to wells, \<u\>but which may transmit appreciable water to or from adjacent aquifers and, where sufficiently thick, may constitute an important ground-water storage unit\</u\>. Aquitards are characterized by values of leakance that may range from relatively low to relatively high. Areally extensive aquitards of relatively low leakance may function regionally as boundaries of aquifer flow systems. <http://water.nv.gov/WaterPlanning/dict-1/PDFs/wwords-a.pdf>\</li\> \</ul\> |  |  | g |  |  |  |
|  |  | \<ul\> \<li\>Aquiclude - an impermeable body of rock or stratum of sediment that acts as a barrier to the flow of groundwater.\</li\> \<li\>Aquitard - a saturated, but poorly permeable bed that impedes groundwater movement.\</li\> \</ul\> |  |  |  | i |  |  |
|  |  | \<ul\> \<li\>Aquiclude - a saturated bed, formation, or group of formations of low hydraulic conductivity which yield inappreciable quantities of water to drains, wells, springs and seeps. IGH0063\</li\> \<li\>Aquitard - a geological formation of a rather impervious and semi-confining nature which transmits water at a very slow rate compared with an aquifer. IGH0067\</li\> \</ul\> |  |  |  |  | h |  |
|  | \<a name="[GeologicUnit](GeologicUnit)"\>Geologic Unit |  |  | u |  |  |  |  |
|  |  | A volume of rock with distinct characteristics. |  |  |  | i |  |  |
|  | \<a name="[GroundwaterBasin](GroundwaterBasin)"\>Groundwater Basin | **COMMENT \[ID\]**: area is a 2D representation of a unit. groundwaterbasin is an abstract unit of study or reporting multiple represented in the real world, e.g. an area, groundwater divide, aquifer system, ... |  | u |  |  |  |  |
|  |  | The underground area (?, see comment above, ID) from which groundwater drains. The basins could be separated by geologic or hydrologic boundaries (<http://www.groundwater.org/gi/gwglossary.html#G>) |  |  |  |  |  | o |
|  |  | \<font face="Arial" size="2"\>A groundwater basin (usually a \<a href="<http://www.ga.gov.au/groundwater/groundwater-in-australia/sedimentary-basins.html>" title="GA sedimentary basin"\>sedimentary basin) that covers a large area (?, see commetn above, ID) and delineates a natural hydrogeological province. It may contain several hydrogeologic units, aquifers, confining beds and groundwater systems (based on <http://www.ga.gov.au/groundwater/groundwater-in-australia.html> and <http://vro.dpi.vic.gov.au/dpi/vro/vrosite.nsf/pages/water-vics-gwater-basins> )\</font\> |  |  |  |  |  | o |
|  |  | Groundwater resources of the region are subdivided into groundwater basins on the basis of: (1) a natural boundary that does not change with time, such as one determined by structural features, intervening layers, or aquifer extent; (2) a boundary that may change with time, such as an underground watershed or groundwater divide which may change in response to pumpage or recharge; or (3) a boundary designated solely for administrative or operative reasons. (<http://exact-me.org/overview/p11.htm>) \[BB\] |  |  |  |  |  |  |
|  |  | \<font face="Arial" size="2"\>Physiographic unit containing one large or several connected or interrelated aquifers, whose waters are flowing to a common outlet, and which is delimited by a groundwater divide. IGH0552\</font\> |  |  |  |  |  |  |
|  | \<a name="[HydrogeologicObject](HydrogeologicObject)"\>Hydrogeologic Object |  |  |  |  |  |  |  |
|  |  | An abstract class for man-made facilities or natural features that have an interaction with the hydrogeological system. | Hydrogeological Object Man Made Hydrogeological Object Natural |  |  | i |  |  |
|  | \<a name="[HydroGeologicMappedFeature](HydroGeologicMappedFeature)"\>Hydrogeologic Mapped Feature | **FOR CONSIDERATION:**This feature needs to be defined |  |  |  |  |  |  |
|  |  | A spatial representation of a [GeologicFeature](GeologicFeature). |  |  |  | i |  |  |
|  |  |  |  |  | g |  |  |  |
|  | \<a name="Spring"\>Spring | **FOR CONSIDERATION**: This feature needs to be defined |  | u |  |  |  |  |
|  |  | Type of the HG | Object Natural - there is a code list (e.g. Spring : Any natural situation where groundwater flows to the surface of the earth. Thus, a spring is a site where the aquifer surface meets the ground surface. |  |  |  | i |  |
|  | \<a name="[GroundwaterDivide](GroundwaterDivide)"\>Groundwater Divide | **DISCUSSION**: \_Is it a synonym of groundwater watershed? Groundwater watershed is not a boundary. It is a result of groundwater body state and can be changed in time. \[JM\]\_ |  |  |  |  |  |  |
|  |  | The boundary between two adjacent groundwater basins, which is represented by a high point in the water table. <http://www.groundwater.org/gi/gwglossary.html#D> **COMMENT**: *Term very unclear. Basin is a concept in regional scale.* |  |  | g |  |  |  |
|  |  | **Text replaced\[ID\]**: Line on a water table or piezometric surface on either side of which the groundwater flow diverges. IGH0556 |  |  |  |  | h |  |
|  | \<a name="[HydraulicBoundary](HydraulicBoundary)"\>Hydraulic Boundary |  |  |  |  |  |  |  |
|  |  | A hydrologic feature that prevents the flow of groundwater. Examples include groundwater divides or low permeability material that impedes groundwater flow. <http://www.wrds.uwyo.edu/wrds/deq/whp/whpgloss.html> **COMMENT**: In groundwater hydrodynamics, boundary is surface closing groundwater flow system space (collection of connected together groundwater bodies). Boundary can be formed by ground surface, aquiclude, surface waters (likes and rivers), man-made objects etc. In that case well is a boundary too, it is “internal point boundary”. Different kinds of boundaries have different kinds of conditions, for example definite hydraulic head, velocity (quantity) of flow or linear combination of both. \[JM\] |  |  | g |  |  |  |
|  | \<a name="[GroundwaterDam](GroundwaterDam)"\>Groundwater Dam |  |  |  |  |  |  |  |
|  |  | Body of material which is impermeable or has only low permeability and which occurs below the surface in such a position that it impedes groundwater flow. IGH0553 |  |  |  |  | h |  |
|  | \<a name="[AquiferParameters](AquiferParameters)"\>Aquifer Parameters |  |  |  |  |  |  |  |
|  |  | \<ol\> \<li\>A measured or calculated physical or hydraulic property of an aquifer such as hydraulic conductivity, Transmissivity, Storativity, porosity, effective porosity, Specific Yield and Retention, Specific Capacity, etc. usually measured at a well or series of wells (based on \<a href="<http://pubs.usgs.gov/wsp/wsp2220/>" title="Heath 1983"\>Heath 1983, Freeze & Cherry 1979, Fetter 2001)\</li\> \<li\> A measured or calculated physical or hydraulic property of an aquifer such as hydraulic conductivity, Transmissivity, Storativity, porosity, effective porosity, Specific Yield (drainable porosity) and Retention (non-drainable porosity), Specific Capacity (it is well parameter), etc. usually measured at a well or series of wells (based on \<a href="<http://pubs.usgs.gov/wsp/wsp2220/>" title="Heath 1983"\>Heath 1983, Freeze & Cherry 1979, Fetter 2001) (it can be also measured in laboratory on base of aquifer samples) \</li\> \</ol\>Values of aquifer parameters can be different in different parts of aquifer. The main aquifer parameters are: \<ul\> \<li\>Porosity – part of rock that is void space: *n = V\<sub\>V\</sub\>/V\<sub\>T\</sub\>*, expressed as a decimal fraction.\</li\> \<li\>Effective porosity – concerns connected spaces only: *n\<sub\>e\</sub\>*.\</li\> \<li\>Hydraulic conductivity – proportionality constant (\_K\_) in Darcy’s law:*v\<sub\>d\</sub\> = –K*grad \_h\_,\</li\> \<li\>Transmissivity – Hydraulic conductivity of aquifer profile: \_T = K b\_ (formula for homogeneous aquifer only).\</li\> \<li\>Storativity – storage coefficient (limited to elasticity of volume) of aquifer profile: \_S = S\<sub\>s\</sub\> b\_ (formula for homogeneous aquifer only).\</li\> \<li\>Specific Yield – (drainable porosity) part of water drained under the influence of gravity.\</li\> \<li\>(based on Domenico & Schwartz 1998, Hiscock 2005)\</li\> \</ul\> |  |  |  |  |  |  |
|  | \<a name="[GroundwaterLevel](GroundwaterLevel)"\>Groundwater Level |  **TO BE DISCUSSED**: the four following features need to be evaluated and properly defined (gw level, piezometric surface, piezometric head, potentiometric surface)  **COMMENT:** \_This requires a tighter definition to distinguish between Standing Water Level and Relative Water Level. \[PD\]\_  **COMMENT:**Terms: Groundwater Level, Piezometric Level and Potentiometric Surface are very similar and it is very complex problem. It needs separate discussion. See image attached on the end. The most commonly used (and I think most correct) term is "hydraulic head" as a sum of "elevation head" and "pressure head" expressed in height unites. Groundwater table we can see in wells only. In aquifer this surface is invisible and very difficult to determine. Correct definition is: "surface where pressure in water is equal to pressure of atmospheric air – pressure head is equal zero. It is only one surface in underground and may have very complicated shape. It can run through many aquifers and aquitards in one aquifer system". \[JM\] **COMMENT:**The INSPIRE [PiezometricState](PiezometricState) is not quite an equivalent of Piezometric surface, rather the [PiezometricState](PiezometricState) is the Piezometric surface of a [GroundWaterBody](GroundWaterBody) at a particular time. The INSPIRE definition of piezometric surface is ‘A surface that represents the level to which water will rise in tightly cased wells’ , so the same as GWML1. I think Groundwater body/Groundwater Level/ Piezometric surface/Potentiometric level need a bit of thought! \[JL\] ****COMMENT:****\</b\>In my view two surfaces are sufficient to describe the system: the upper boundary of the groundwater body ([GroundwaterSurface](GroundwaterSurface)?) and the upper boundary of groundwater pressure to athmosphere ([PiezometricHead](PiezometricHead)?) - which are equal in case of unconfined aquifer and differ in confined (incl. artesian) areas. \[BW\]**** |  | u |  |  |  |  |
|  |  | Measurement of the elevation of water in an aquifer. Includes static and dynamic groundwater level (GWML 1). Typically, the groundwater level measurements come from an observation well. **COMMENT**: more precision on static and dynamic required. \[JM\]**COMMENT**: is GW Level a measurement or a feature. **TO BE DISCUSSED**\[JL\]   **COMMENT\[ID\]:** I think of "water level" as an observed property (of a feature) of which a value is estimated using a sampling feature, according to O&M |  |  | g |  |  |  |
|  |  | Hydrogeological Surface: A surface that represents the interpolated groundwater table, or other surface, for a local or regional area.  **COMMENT**: (In INSPIRE model Hydrogeological Surface is not a feature. It is [DataType](DataType) in form of \<\<Union\>\> of 3 coverage types. But coverages belong to features in GML.)  As I know comment from Jessica and David for Use Case 4 interpolated and modeled data are outside scope of [GW2IE](GW2IE) ("only 'observed' data will be required from the standard data model. 'Interpolated' or 'modeled' data is not included."). In consequence all features in form of surface or outlined by surfaces should be omitted here. It concerns contour maps also. \[JM\]  **COMMENT**: Surfaces are prerequisite for determining many features like volume, boundary, flow etc. \[BW\] 3D surfaces \[HK\] | Hydrogeological Surface |  |  | i |  |  |
|  |  | The standing water level (SWL) measured at a particular time in a groundwater bore or piezometer. The measurement may be stated as depth below ground (natural surface) or measured from a designated point on the well head. In a piezometer or in a sub-artesian bore the groundwater level is related to pressure at a point in the aquifer (i.e. the head at the screened interval). In an artesian bore the value may be a negative number. \[HK\] Preferably a simple base datum? |  |  |  |  |  | o |
|  |  | Elevation, at a certain location and time, of the water table or piezometric surface of an aquifer. IGH0559 |  |  |  |  | h |  |
|  | \<a name="[PiezometricSurface](PiezometricSurface)"\>Piezometric Surface |  **COMMENT**: SAME AS POTENTIOMETRIC SURFACE ?? TO BE REVIEWED \[FL\]  **COMMENT**: See comment to Groundwater Level. \[JM\] | Piezometric Level |  |  |  |  |  |
|  |  | A surface that represents the level to which water will rise in tightly cased wells. If the head varies significantly with depth in the aquifer, then there may be more than one potentiometric surface. The water table is a particular potentiometric surface for an unconfined aquifer. <http://www.wrds.uwyo.edu/wrds/deq/whp/whpgloss.html> |  |  | g |  |  |  |
|  |  | The piezometric state of a groundwater body; Groundwater state (level) as a surface. It can be a set of point observations or interpolated to form a coverage. (Description field)  **COMMENT**: In INSPIRE model, Piezometric State is not a feature, it is Data Type. \[JM\] | Piezometric State |  |  | i |  |  |
|  |  | **WMO def Included\[ID\]**:Surface joining points which are at an elevation equal to the piezometric head in a given aquifer.IGH 0908 |  |  |  |  |  |  |
|  | \<a name="[PiezometricHead](PiezometricHead)"\>Piezometric Head |  |  |  |  |  |  |  |
|  |  | \(1\) Elevation to which water will rise in a piezometer connected to a point in an aquifer. IGH0907(2) Sum of the elevation and the pressure head in a liquid, expressed in units of height.IGH0907 |  |  |  |  | h |  |
|  | \<a name="[PotentiometricSurface](PotentiometricSurface)"\>Potentiometric Surface | **COMMENT**: See comment to Groundwater Level and Hydrogeological Surface. \[JM\] |  |  |  |  |  |  |
|  |  | A surface that represents the total head in an aquifer; that is, it represents the height above a datum plane at which the water level stands in tightly cased wells that penetrate the aquifer (\<a href="<http://pubs.usgs.gov/wsp/2220/report.pdf>" title="Heath 1983"\>Heath 1983) |  |  |  |  |  | o |
|  |  | Surface joining points which are at an elevation equal to the piezometric head in a given aquifer. IGH0908 |  |  |  |  | h |  |
|  | \<a name="[RechargeArea](RechargeArea)"\>Recharge Area |  **COMMENT**: I think "Recharge Site" is better term. Site can be planar (area of surface infiltration), linear (infiltration from river for example) or point (karstic ponor) \[JM\]  **COMMENT \[ID\]**: recharge area is a 2D representation (projected onto land surface) of the (contributing) hydrogeologic unit  COMMENT \[HK\]: agree to area | Recharge Site | u |  |  |  |  |
|  |  | Area in which water reaches the groundwater reservoir by surface infiltration. An area in which there is a downward component of hydraulic head in the aquifer. <http://www.wrds.uwyo.edu/wrds/deq/whp/whpgloss.html> |  |  | g |  |  |  |
|  |  | An area representing the hydrogeologic unit which contributes water to an aquifer, either by direct infiltration or by runoff and subsequent infiltration. IGH0685 |  |  |  |  | h |  |
|  | \<a name="[DischargeArea](DischargeArea)"\>Discharge Area |  **COMMENT**: I think "Discharge Site" is better term. \[JM\]  **COMMENT \[ID\]**: discharge area is a 2D representation of the hydrogeologic unit where groundwater is extracted COMMENT \[HK\]: agree to area | Discharge site | u |  |  |  |  |
|  |  | The area or zone where groundwater emerges from the aquifer. The outflow maybe into a stream, lake, spring, wetland, etc. (<http://www.groundwater.org/gi/gwglossary.html#D>) |  |  |  |  |  | o |
|  |  | Groundwater discharge is the removal of water from the saturated zone of a drainage basin across the watertable surface, together with the associated flow toward the water table in the saturated zone. In discharge areas the groundwater flow direction is upward and hydraulic head in the aquifer systems increases with depth. Two principal types of discharge can be differentiated and recognised in the field: point (focal) discharge (springs, seeps, streams and lakes) and diffuse discharge (evaporation from shallow water tables and biological discharge). (taken from \<a href="<http://www.publish.csiro.au/pid/413.htm>" title="Salama 1998"\>Salama R.B.(ed.) 1998). |  |  |  |  |  | o |
|  |  | An area representing the hydrogeologic unit where water is extracted (discharged) from an aquifer, either by processes of evapotranspiration, interflow or extraction. SIMILAR TO IGH0685 |  |  |  |  | h |  |
|  | \<a name="[GroundwaterFlow](GroundwaterFlow)"\>Groundwater Flow |  **COMMENT**: I think Water Flow is a process. Does process belong to feature category? Water flow is expressed by (physical) vector field of velocity. It is interpolated or modeled and as coverage data type belongs to the same category as hydrogeological surface or potentiometric surface. (See comment to Hydrogeological Surface) \[JM\]  **COMMENT \[ID\]**: flow is movement of water, e.g. groundwater, in a containing unit, e.g. aquifer (not area) COMMENT \[HK\]: yes, process, but measurable or to be modelled in e.g. m/s (travel time) |  |  |  |  |  |  |
|  |  | Movement of subsurface water in the saturated zone from areas of recharge to areas of discharge. <http://www.usgs.gov/science/science.php?term=514> |  |  | g |  |  |  |
|  |  | Movement of water in an aquifer. IGH0557 |  |  |  |  | h |  |
|  | \<a name="[GroundwaterBody](GroundwaterBody)"\>Groundwater Body |  |  | u |  |  |  |  |
|  |  | A distinct volume of groundwater within an aquifer or aquifers (Vogt, 2002). The equivalent in the European Water Framework Directive (2000/60/CE, 2000) is "Body of groundwater" defined exactly in the same way. |  |  | g |  |  |  |
|  |  | A distinct volume of groundwater within an aquifer or system of aquifers, which is hydraulically isolated from nearby groundwater bodies.  **COMMENT**: I have a problem with understanding this sentence. "Which" refers to "aquifer or system of aquifers" or to "distinct volume of groundwater"? In second case it is incorrect – groundwater bodies in the same aquifer system are not hydraulically isolated. See image on the end. \[JM\]  **COMMENT\[ID\]**: groundwater body refers to the mass of water (has volume, no shape). (ground)water bodies may be aggregated using a connecting system, in case of GW a system of connected aquifers. | Groundwater Body |  |  | i |  |  |
|  |  | A distinct volume of groundwater within an aquifer or aquifers. NOTE: Based on the different assumptions established in (EU) Member States the delineation of a [WFDGroundWaterBody](WFDGroundWaterBody) boundary can differ from the natural [GroundWaterBody](GroundWaterBody) extent. | WFD Groundwater Body |  |  | i |  |  |
|  |  | A mass of groundwater distinct of other masses of water.Note: groundwater refers to water occupying the saturated zone. IGH1356 |  |  |  |  | h |  |
|  | \<a name="[WaterBody](WaterBody)"\>Water Body |  |  |  |  |  |  |  |
|  |  | A mass of water distinct from other masses of water. Note 1: refers to real-world objects above, on and below the land surface, or a fiction of these. Note 2: water bodies have names within common experience, but different names in different contexts.Note 3: shape and extent of a (liquid) water body are determined by the properties of the containing object, i.e. the occupied landform, the hosting hydrogeologic unit, manmade container, etc.Note 4: shape and extent of a (liquid) open water body are bound to atmospheric pressure exerted on its surface. lakes and rivers levels are tuned to the surrounding water table.Note 5: in the context of observation the water body is the intended object of observation, i.e. sampled feature. IGH1356 |  |  |  |  | h |  |
|  |  | A discrete and significant element of surface water. | WFD Surface Water Body |  |  | i |  |  |
|  | \<a name="[OtherWaterBodies](OtherWaterBodies)"\>Other Water Bodies | **COMMENT**: I think this term is not needed in gwml. It should be replaced by:\<ol\> \<li\>Precipitation as a rainfall and snowfall – parameter (attribute) of ground surface (I think it is important and omitted feature). It can be expressed as single value, range or coverage.\</li\> \<li\>Surface Water Body – strongly interacting with Groundwater Bodies, for example as a base of drainage. \[JM\]\</li\> \</ol\> **NOTE**: OWB resulting from over simplification of features from gwml 1 \[FL\]  **COMMENT\[ID\]:** precipitation is water body (falling hydrometeor), it may be rain, snow, hail, etc. - rainFALL is the measured property (depth of water on a surface). |  |  |  |  |  |  |
|  |  | A mass or a volume of water, constrained geographically and/or structurally. It includes surface and atmospheric water bodies (GWML 1).  **COMMENT**: Mass and volume are not appropriate ways of specification of Other Water Bodies. It can be used as a parameter only but we may find better representation for them. \[JM\]  **COMMENT\[ID\]:** water body refres to the mass of water, has volume no shape. - "other water bodies" is obsolet, because river, lake, etc. are desribed in the relevant contexts  |  |  | g |  |  |  |
|  | \<a name="[GroundwaterVolume](GroundwaterVolume)"\>Groundwater Volume |  **COMMENT**: It is very strange concept for me as a hydrogeologist from the beginning (from 1966). It is similar to volume of water in river! In hydrogeology quantity of water is expressed by quantity of flow. It can be applicable to nonrenewable resources, for example rock oil. Groundwater is renewable. \[JM\]  **COMMENT\[ID\]:** volume refers to a quantity, the amount of space occupied by the water body, i.e. a property of the (ground)water body |  |  |  |  |  |  |
|  |  | Description of the volume of water present in an aquifer (GWML 1).  **COMMENT\[ID\]:** does this mean the quantity? COMMENT\[HK\]: "Description of the volume/quantity of water present in an aquifer at a certin time", at a certain location/extent(3D) in time a certain volume of water is present. The flow (travel time) becomes apparent when analysing time periods |  |  | g |  |  |  |
|  |  | Data container with a single quantity value or a range of quantity values .  **COMMENT**: In INSPIRE Quantity Value is just a union for single value or range measurements – it is not in any way an equivalent of Groundwater Volume. \[JL\]  **COMMENT\[ID\]:** value refers to the result of observation of a quantity of the (ground)water body | Quantity Value |  |  |  |  |  |
|  | \<a name="[GroundwaterYield](GroundwaterYield)"\>Groundwater Yield |  **COMMENT**: It is the most complicated problem. In practice yield refers to specific well. In case of aquifer or aquifer system it can be estimated on base of numerical model only and here are applied terms "potential yield" or "disposable yield". Its value (expressed in m\<sup\>3 \</sup\>per unit of time) depends from many hydrogeological conditions, for example: spatial distribution of present and potential intakes, changes of water quality, constrains arising from nature protection and human settlement protection, etc. \[JM\]  **COMMENT\[ID\]:** yield refers to a quantity, i.e. property of the (ground)water body |  |  |  |  |  |  |
|  |  | Aquifer yield is the maximum rate of withdrawal that can be sustained by an aquifer. Expressed as m\<sup\>3\</sup\> (GWML 1).  **COMMENT\[ID\]:** this is a quantity, i.e. property |  |  |  |  |  |  |
|  | \<a name="Reservoir"\>Reservoir |  **COMMENT**: I think this term is not needed in gwml. **TO BE DISCUSSED.**\[JM\]   **COMMENT\[ID\]:** avoid potential confusion () with groundwater reservoir, which means the containing aquifer |  |  |  |  |  |  |
|  |  | A reservoir is, most broadly, a place or hollow vessel where fluid is kept in reserve, for later use. <http://en.wikipedia.org/wiki/Reservoir> |  |  | g |  |  |  |
|  |  | A body of water, either natural or man-made, used for storage, regulation and control of water resources. Note 1: special concepts of surface or underground reservoirs may be defined by application. Note 2: do not confuse an underground reservoir with groundwater reservoir, which refers to the containing aquifer. IGH1011   |  |  |  |  | h |  |
|  | \<a name="[GroundwaterLayer](GroundwaterLayer)"\>Groundwater Layer |  |  |  |  |  |  |  |
|  |  | Stratification characteristics of the groundwater within the groundwater body.  **COMMENT\[ID\]:** refers to (ground)waterbody --\> water body stratum (see below) |  |  |  |  |  | eu_WFD |
|  |  | Indicates if the [AquiferSystem](AquiferSystem) consists of more than one layer. (Attribute isLayered, boolean value)  **COMMENT\[ID\]:** referring to aquifer as a hydrogeoloigc unit, it is a hydrogeologic stratum. |  |  |  | i |  |  |
|  |  |  **COMMENT\[ID\]:** [HY_Features](HY_Features) includes a "water body stratum" which refers to the vertical stratification within a water body. this def is applicable also to a groundwaterbody. distinct layer within a body of water. |  |  |  |  | h |  |
|  | \<a name="[ConeOfDepression](ConeOfDepression)"\>Cone of Depression |  **COMMENT**: Cone of Depression belongs to State of Groundwater Body. It can be observed in very few points (in Observation Wells or Piezometers). As a whole it is result of interpolation or modeling. \[JM\]  **COMMENT\[ID\]:** deforming the shape of the 3D water body, it should be considered as an observable property of the groundwaterbody. - not sure about this, to be discussed. |  |  |  |  |  |  |
|  |  | A depression in the groundwater table or potentiometric surface that has the shape of an inverted cone and develops around a well from which water is being withdrawn. Its trace (perimeter) on the land surface defines the zone of influence of a well. Also called pumping cone and cone of drawdown. <http://www.wrds.uwyo.edu/wrds/deq/whp/whpgloss.html> |  |  | g |  |  |  |
|  |  | The depression of heads around a pumping well caused by the withdrawal of water (\<a href="<http://pubs.usgs.gov/wsp/2220/report.pdf>" title="Heath 1983"\>Heath 1983) |  |  |  |  |  |  |
|  |  | A depression, in the shape of a cone with convex upward limits, of the piezometric groundwater surface which defines the area of influence of a well. IGH0229 |  |  |  |  | h |  |
|  | \<a name="[ZoneOfContribution](ZoneOfContribution)"\>Zone of Contribution | **COMMENT**: The same comment as to Cone of Depression. \[JM\] |  | u |  |  |  |  |
|  |  | The area surrounding a pumping well, spring, or tunnel that encompasses all areas and features that supply groundwater to the well spring, or tunnel. <http://www.wrds.uwyo.edu/wrds/deq/whp/whpgloss.html> |  |  | g |  |  |  |
|  |  | The capture zone for the water that contributes to a groundwater discharge area.  **COMMENT\[ID\]:** does this mean the grondwaterbasin contributing to a well, i.e. a (groundwater)basin with well as its outfall (topologically) and represented by discharge area ? |  |  |  |  |  | o |
|  | \<a name="[ZoneOfInfluence](ZoneOfInfluence)"\>Zone of Influence | **COMMENT**: I think from hydraulic point of view it is symonym of Cone of Depression. The same comment as to Cone of Depression. \[JM\] |  |  |  |  |  |  |
|  |  | The area of influence, or cone of depression formed when pumping a well or well field. <http://www.wrds.uwyo.edu/wrds/deq/whp/whpgloss.html> |  |  | g |  |  |  |
|  | \<a name="[WaterBudget](WaterBudget)"\>Water Budget | **COMMENT**: I think that Water Budget can be really determined on base of numerical groundwater flow model. Is it in scope of [GW2IE](GW2IE)? \[JM\] |  |  |  |  |  |  |
|  |  | An accounting of the inflow, outflow, and storage changes of water in a hydrologic unit <http://www.usgs.gov/science/science.php?term=1297&type=theme>.  **COMMENT**: What means "hydrologic unit" in this case? \[JM\]  **COMMENT\[ID\]:** assuming that "hydrologic unit" refers to basin (as the unit where hydrologic processes take place), water budget wold be a property of (groundwater)basin? COMMENT\[HK\]: the budget might have many features/representations? |  |  | g |  |  |  |
|  | \<a name="[ProtectedArea](ProtectedArea)"\>Protected Area |  **COMMENT**: in this place I see two different concepts:  \<ol\> \<li\>Area of Groundwater Protection – the first definition.\</li\> \<li\>Protected Site – the second definition (it can be planar, linear or point), for example: national parks, nature or heritage reserves, wetland protection etc. \[JM\]\</li\> \</ol\> **COMMENT**: In INSPIRE Protected Site refers to any protected site – not just those to do with water resources. It also requires there be protecting legislation (which I would think is required in any definition or there isn’t any protection?). \[JL\]  **COMMENT\[ID\]:** I think this is special to INSPIRE and not subject of a generally applicable GWML |  | u |  |  |  |  |
|  |  | The surface and subsurface area surrounding a water well or wellfield through which contaminants are reasonably likely to move toward and reach such water well or well field. <http://www.wrds.uwyo.edu/wrds/deq/whp/whpgloss.html> |  |  | g |  |  |  |
|  |  | An area designated or managed within a framework of international, Community and Member States' legislation to achieve specific conservation objectives. | Protected Site |  |  | i |  |  |
|  | [ManagementRestrictionOrRegulationZone](ManagementRestrictionOrRegulationZone) | Area managed, restricted or regulated in accordance with a legal requirement related to an environmental policy or a policy or activity that may have an impact on the environment at any level of administration (international, European, national, regional and local).  **COMMENT**: There are [ZoneTypeCode](ZoneTypeCode) list and [AdditionalZoneTypeCode](AdditionalZoneTypeCode) list. It includes Groundwater Management Zone and River Basin District, see below. |  |  |  | i |  |  |
|  | \<a name="[GroundwaterManagementZone](GroundwaterManagementZone)"\>Groundwater Management Zone (catchment) |  **COMMENT**: I propose to remove "(catchment)". GMZ (or GMA - Groundwater Management Area) is the most often administrative unit. There is a huge difference between GMZ, surface catchment and groundwater catchment. \[JM\]  **COMMENT\[ID\]:** [HY_Features](HY_Features) defines catchment as the basic unit of study or reporting. in case of hydrologic determination, a catchment is considered a basin wherein all waters are channeled to a common (topological) outfall. in this sense the "groundwater management zone" maybe understood as a catchment, or a basin when it concides with the hydrologic determined unit. COMMENT\[HK\]: administrative unit -\> hydrogeographic unit! Also catchment/basin etyc, see e.g. Maidment regarding scales, basin can consist of many smaller catchments |  |  |  |  |  |  |
|  |  | Distinct area, defined by either political, natural or other reasons, for which water budget is calculated and policies are in place |  |  |  |  |  | o |
|  | \<a name="[RiverBasinDistrict](RiverBasinDistrict)"\>River Basin District |  **COMMENT**: Concept from European Water Framework Directive. I think it is very difficult find its application in other domains. \[JM\]  **COMMENT**: In INSPIRE "River Basin District" is a concept derived from the Water Framework Directive and is defined as "Area of land and sea, made up of one or more neighbouring river basins together with their associated groundwaters and coastal waters, identified under Article 3(1) as the main unit for management of river basins" – so very much a regulatory definition. \[JL\]  **COMMENT\[ID\]:** see "groundwater management zone". furthermore (in basin hierarchy) any catchment/basin may be part of a containing unit (in [HY_Features](HY_Features)). |  | u |  |  |  |  |
|  |  | A body of inland water flowing for the most part on the surface of the land but which may flow underground for part of its course.  **COMMENT**: What means "flow underground of inland water"? Is it applicable for karstik systems only? Are karstic systems in scope of [GW2IE](GW2IE)? \[JM\]  **COMMENT\[ID\]:** an administrative (INSPIRE) unit such as "River Basin District" has nothing to do with the property of water to flow in whatever connecting system, no matter on or below the land surface. -  **COMMENT\[ID\]:** does GWML refers to subterreanean waters and water bodies?  |  |  |  | i |  |  |
|  | \<a name="[HydraulicTesting](HydraulicTesting)"\>Hydraulic Testing |  **COMMENT:** Hydraulic Testing belongs to Observation & Measure Procedures.I think it is not feature. See: 4.11 Observation procedure - method, algorithm or instrument, or system of these which may be used in making an observation (Geographic Information: Observations and Measurements OGC Abstract Specification Topic 20, 2010). \[JM\]**COMMENT:** Tracer Testing could also be added here \[BW\]  **COMMENT\[ID\]:** agree with JM, think that hydraulic testing is a special obs procedure. \[HK\] yes |  |  |  |  |  |  |
|  |  | Series of hydraulic groundwater tests, including packer test, pump testing, slug testing and tracing test. These tests are conducted to evaluate the availability, flow or yield of groundwater (GWML 1). |  |  | g |  |  |  |
|  | \<a name="[GroundwaterDependentEcosystem](GroundwaterDependentEcosystem)"\>Groundwater Dependent Ecosystem (GDE) | **COMMENT\[ID\]:** [HY_Features](HY_Features) provides a means to describe the interaction between a hydroFeature and features of other domains, e.g. ecology. |  | u |  |  |  |  |
|  |  | Ecosystems that rely on groundwater for some or all of their water requirements. Six types of Groundwater Dependent Ecosystems have been identified in Australia: \<ul type="disc"\> \<li\>terrestrial vegetation that relies on the availability of shallow groundwater\</li\> \<li\>wetlands such as paperbark swamp forests and mound springs\</li\> \<li\>river baseflow systems where groundwater discharge provides a significant baseflow component to the river\</li\> \<li\>aquifer and cave ecosystems where life exists independent of sunlight\</li\> \<li\>terrestrial fauna, both native and introduced species, that rely on groundwater as a source of drinking water\</li\> \<li\>estuarine and near-shore marine systems, such as coastal mangroves, salt marshes and sea-grass beds, which rely on the submarine discharge of groundwater.\</li\> \</ul\>(based on GA: <http://www.ga.gov.au/groundwater/understanding-groundwater-resources/groundwater-dependant-ecosystems.html>) COMMENT\[HK\]: fens/low moors, peat bogs/hill moors? |  |  |  |  |  | o |
|  |  | From The Australian GDE Atlas: <http://www.bom.gov.au/water/groundwater/gde/index.shtml> Natural \<a href="<http://www.bom.gov.au/water/awid/id-866.shtml>" title="More information for ecosystem"\>ecosystems that require access to \<a href="<http://www.bom.gov.au/water/awid/id-246.shtml>" title="More information for groundwater"\>groundwater to meet all or some of their water requirements on a permanent or intermittent basis, so as to maintain their communities of plants and animals, \<a href="<http://www.bom.gov.au/water/awid/id-866.shtml>" title="More information for ecosystem"\>ecosystem processes and \<a href="<http://www.bom.gov.au/water/awid/id-866.shtml>" title="More information for ecosystem"\>ecosystem services. Source: [Richardson, S., et al., (2011). Australian groundwater-dependent ecosystem toolbox part 1: assessment framework, Waterlines report, National Water Commission, Canberra](http://nwc.gov.au/__data/assets/pdf_file/0006/19905/GDE-toolbox-part-1.pdf) |  |  |  |  |  |  |
|  | \<a name="[GroundwaterQualityDescription](GroundwaterQualityDescription)"\>Groundwater Quality Description |  **COMMENT**: I think it is data type, not a feature. Very good patter (example) we can find in Water Framework Directive data model: class Chemical Status in package [WFD_GWB_Main](WFD_GWB_Main) of INSPIRE model v.0.4. \[JM\]  **COMMENT\[ID\]:** in case of a distinct value , it is result of observation, i.e. any type of data. - or, does this refer to the description of how the property is structured, e.g. a property composed or derived from 1..n base properties? |  |  |  |  |  |  |
|  |  | A normative quality description is an assesment based upon some guideline edited by a government or a quality standard. It can include things such as "odor" or "color" (GWML 1).  **COMMENT\[ID\]:** this refers to a nominal property, which has no magnitude, or multitude, and usually represents an idea or logic concept. |  |  | g |  |  |  |
|  | \<a name="[GroundwaterComposition](GroundwaterComposition)"\>Groundwater Composition (chem.) |  **COMMENT**: The same problem as for Groundwater Quality Description. I think it is data type, not a feature. \[JM\]  **COMMENT\[ID\]:** see above: "groundwater quality description" |  | u |  |  |  |  |
|  |  | An abstract class that is used to describe a component that can be present in groundwater (GWML 1). |  |  | g |  |  |  |
|  |  | The chemical components present in groundwater (as gasses, solutes or solids) (based on \<a href="<http://pubs.usgs.gov/wsp/wsp2254/>" title="Hem 1985"\>Hem 1985). |  |  |  |  |  | o |
|  |  | characterisation of the chemical composition of the groundwater, including specification of thecontributions from human activity. (Member States may use typologies for groundwater characterisationwhen establishing natural background levels for these bodies of groundwater.) |  |  |  |  |  | eu_WFD |
|  |  | COMMENT: If the groundwater is monitored = [ActiveBorehole](ActiveBorehole) feature that is linked to the [EnvironmentalMonitoringFacilities](EnvironmentalMonitoringFacilities) feature = utilising fully O&M clases |  |  |  | i |  |  |
|  | \<a name="[GroundwaterBiology](GroundwaterBiology)"\>Groundwater Biology |  **COMMENT**: I think it is data type, not a feature. \[JM\]  **COMMENT\[ID\]:** see above: "groundwater quality description" COMMENT\[HK\]: rather a feature with many data types? agree, measurement\>O&M |  | u |  |  |  |  |
|  |  | The biological components present in groundwater (as \<a href="<http://www.environment.gov.au/soe/2006/publications/emerging/fauna/index.html>" title="stygofauna"\>stygofauna, microbes, fungi, etc.). |  |  |  |  |  | o |
|  | \<a name="[WaterWell](WaterWell)"\>Water Well |  **COMMENT**: In GWML only representation of term Well is Water Well. I propose the short for – simply "Well". \[JM\]  **COMMENT**: In INSPIRE model Well is an abstract feature for subtypes Active Well (as defined below) and Observation Well (removed on the end from model by administrative decision for non-understandable reasons).In my opinion Observation Well is important hydrogeological feature (subtype of man-made object and well). It is a base for application of Observations & Measures in scope of groundwater. Piezomiter is the simplest kind of observation well. \[JM\]  **COMMENT\[ID\]:** validate against the definition "sampling feature" within O&M (ISO 19156) | Well | u |  |  |  |  |
|  |  | A water well is an excavation or structure created in the ground by digging, driving, boring or drilling to access water in underground aquifers. <http://en.wikipedia.org/wiki/Water_well> |  |  | g |  |  |  |
|  |  | A well influencing the groundwater resources of the aquifer. - The most common examples of Active Well are: extracting, artificial recharging, or dewatering wells.NOTE: [ActiveWell](ActiveWell) by extracting, recharging or dewatering influences and changes the state of groundwater resources. | Active Well |  |  | i |  |  |
|  |  | A shaft or hole sunk, dug or drilled into the Earth to extract water. IGH1379 |  |  |  |  | h |  |
|  | \<a name="[WellLog](WellLog)"\>Well Log |  **COMMENT**: This role plays borehole in ([GeoSciML](GeoSciML)) and in GWML borehole should be **\<u\>part\</u\>** of well – it is different approach – in [GeoSciML](GeoSciML) borehole is source of information (data) about geologic units only (it is a subtype of Sampling Curve). \[JM\]  **COMMENT\[ID\]:** validate against the concept of "sampling feature" within O&M (ISO 19156) |  | u |  |  |  |  |
|  |  | Recording of the geologic units found along the water well (GWML 1). |  |  | g |  |  |  |
|  | \<a name="[WellField](WellField)"\>Well Field |  **COMMENT**: I am not sure but maybe term "Intake" is more appropriate in this place. For me "field" is associated with extraction of oil. Of course it is perhaps regional difference of the same concept. \[JM\]  **COMMENT\[ID\]:** validate against the concept of "sampling feature" within O&M (ISO 19156) |  |  |  |  |  |  |
|  |  | \(1\) One or more wells producing water from a subsurface source. (2) A tract of land which contains a number of wells for supplying a large municipality or irrigation district <http://water.nv.gov/WaterPlanning/dict-1/PDFs/wwords-w.pdf>. |  |  | g |  |  |  |
|  | \<a name="[MonitoringSite](MonitoringSite)"\>Monitoring Site |  **COMMENT**: It is synonym of Monitoring Station in INSPIRE extended model. \[JM\]  **COMMENT**: In INSPIRE Environmental Monitoring Facility is an equivalent of Monitoring Site, although it is more general not being restricted to groundwater monitoring. It is defined as "A georeferenced object directly collecting and/or processing data, or hosting other [EnvironmentalMonitoringFacility](EnvironmentalMonitoringFacility) objects collecting data about features whose properties (e.g. physical, chemical, biological or other aspects of environmental conditions) are repeatedly observed/measured". \[JL\]  **COMMENT\[ID\]:** validate against the concept of "sampling feature" within O&M (ISO 19156) |  |  |  |  |  |  |
|  |  | A site where a sampling is taken for monitoring various properties (GWML 1).  **COMMENT**: Monitoring can be carried without sampling. \[JM\]  **COMMENT\[ID\]:** validate against the concept of "sampling feature" within O&M (ISO 19156) COMMENT\[HK\]: Measuring -\> O&M |  |  | g |  |  |  |
|  |  | Observation well used to watch for the advent of an anticipated condition, generally undesirable, such as the advance of the salt-water front in a coastal area where salt-water encroachment is occurring, or the movement of a pollutant injected into a disposal well. IGH0806 | Monitor Well, Monitoring Station |  |  |  | h |  |
|  | \<a name="[WellConstructionElements](WellConstructionElements)"\>Well Construction Elements | **COMMENT\[ID\]:** validate against the concept of "sampling feature" within O&M (ISO 19156) |  | u |  |  |  |  |
|  |  | Construction components, use to describe how the well was built. This information are important when assessing result of pump tests. Includes filtration, screen, sealing and well casing (GWML 1). COMMENT\[HK\]: Metadata? |  |  | g |  |  |  |
|  |  | Details on the groundwater bore construction including casing, screen, filter pack, sealing, headworks, capping and development (taken from <http://www.derm.qld.gov.au/water/management/pdf/minimum-const-req.pdf>). |  |  |  |  |  | o |
|  | \<a name="Pump"\>Pump | **COMMENT\[ID\]:** validate against the definition "sampling feature" within O&M (ISO 19156) |  |  |  |  |  |  |
|  |  | A water well pump is a pump that is used in extracting water from a water well. There are many makes of pumps, the foremost being Franklin Electric (American), and Pedrollo (Italian) <http://en.wikipedia.org/wiki/Water_well_pump>. |  |  | g |  |  |  |
|  |  | COMMENT: Use **[ActiveWellTypeValue](ActiveWellTypeValue)**, it is more generic and handle with code lists. |  |  |  | i |  |  |

## Grouping of Entities by Outstanding Issues

------------------------------------------------------------------------

\_Lead = B.[Brodaric\_](Brodaric_)

Rock/Land Body:

-  [Geologic Unit](#GeologicUnit)
  - \[BB\] accept: no conflicts (but defer to [GeoSciML](GeoSciML) entity \[BB\])
  - %GRAY%Agree: BB, PD, EB, ID, BW, BS, NA, CS, RT, FL
  - %GRAY%Disagree: JM, HK
  - %GRAY%Comments: It is already defined in [GeoSciML](GeoSciML) \[JM\].
  - %GRAY%Comments: Include features from e.g [GeoSciML](GeoSciML) into feature model, but use the "external typing"? What about bore hole/lithology then?
  - %GRAY%Comments: clarification--generally needs to be available to a gw model, but agree is out of scope; already handled in [GeoSciML](GeoSciML) \[BB\]
-  [Hydrogeologic Unit](#HydrogeologicUnit)
  - \[BB\] accept: no conflict
  - %GRAY%Agree: BB, PD, EB, ID, BW, BS, JM, NA, CS, RT, FL, HK, AK
  - %GRAY%Disagree:
  - %GRAY%Comments:
-  [Aquifer System](#AquiferSystem)
  - \[BB\] accept: no conflicts
  - %GRAY%Agree: BB, PD, ID, BW, BS, JM, NA, CS, RT, FL, HK, AK
  - %GRAY%Disagree:
  - %GRAY%Comments:
-  [Aquifer](#Aquifer)
  - \[BB\] accept: no conflicts
  - %GRAY%Agree: BB, PD, EB, ID, BW, BS, JM, NA, CS, RT, FL, HK, AK
  - %GRAY%Disagree:
  - %GRAY%Comments:
- [Hydrogeologic Stratum --\> Hydrostratigraphic Unit](#HydrogeologicStratum)
  - \[BB\] delete: as per May meeting discussion--reason: no clear differentiation from Hydrogeo Unit, and not widely used.
  - %GRAY%Agree: BB, BS, BW, JM, NA, CS, RT, FL, HK, AK
  - %GRAY%Disagree:
  - %GRAY%Comment:
  - -----------------------------------------------------------------------
  - Old proposal:
  - \[BB\] replace: with 'Hydrostratigraphic Unit' which is not equivalent, but perhaps more widely used. See [**Seaber (1988)**](http://www.clemson.edu/ces/hydro/murdoch/Courses/Aquifer%2520Systems/documents/Heath%2520and%2520Back%2520books/Chapter%25202.pdf) : “a body of rock distinguished and characterised by its porosity and permeability". It differs from 'Aquifer' in that the boundaries are mainly defined by geologic characteristics with hydrodynamic potential, and hence the presence of a groundwater body is possible but not necessary.
  - %GRAY%Agree: BB,EB, ID, PD, HK, AK
  - %GRAY%Disagree: JM
  - %GRAY%Comments: really necessary? to me it seems to be a specialisation of [HydrogeologicalUnit](HydrogeologicalUnit) \[BW\]
  - %GRAY%Comment: This definition above is outdated. Hydrostratigraphic Unit is Hydrogeologic Unit with large horizontal extent in comparison to thickness \[JM\].
- [Groundwater Basin](#GroundwaterBasin)
  - \[BB\] accept as per May meeting: a large hydrogeologically defined body of \[delete typo: groundwater \[BB\]\] ground typically consisting of hydraulically connected Hydrogeo Units. Differs from Aquifer and Aquifer System by its greater size. Often related to a resource management area.
  - %GRAY%Agree: BB, BS, BW, PD, NA, CS, FL, HK
  - %GRAY%Disagree: JM, ID
  - %GRAY%Comment: During the modelling need to consider whether this is an aggragation of Aquifer Systems or a feature in its own right \[BS\]
  - %GRAY%Comment: It is the same as large Aquifer System. Aquifer Systems can be nested \[JM\]
  - %GRAY%Comment: Groundwater basin is not a body of water, but the unit yielding groundwater, ie. containing the body of gourndwater \[ID\].
  - -------------------------------------
  - Old proposal:
  - \[BB\] move: to 'Management Areas'. Although a basin can have physically defined boundaries, its primary purpose is water resource management
  - %GRAY%Agree: BB
  - %GRAY%Diagree: ID, PD, EB, JM, HK
  - %GRAY%Comments: analog to basin, the groundwater basin is the abstract notion of the hydrology phenomenon with repsect to groundwater. understood as the unit (not only area) where the (geo)hydrologic processes, such as groundwater flow, take place, it is the unit of study/analysis, reporting, or management of groundwater. although the term is often used in the context of water res management, the limitation only to this aspect is too narrowly defined. so, I would prefer to sustain (not move) the term. (ID) Agree with \[ID\] that a basin (for example Australia's Great Artesian Basin (GAB)) is accepted as a hydrogeological entity and a Management Area \[PD\].
  - %GRAY%Comment: Convinced by PD argument. It's a real feature.
  - %GRAY%Comment: Groundwater Basin as a subtype of Aquifer System is real feature. Management Area is fiat and occures only on paper or in database \[JM\].
  - %GRAY%\[FL\] - decide if a common or multiple outlets are possible for a GW basin.
  - %GRAY%\[FL\] - size is not a differenciator for setting a GW basin.
  - %GRAY%\[FL\] - evaluate if there is a need for connection to an aquifer system and how it can connect to surface water.
  - %GRAY%\[FL\] - in some situation, a groundwater basin could be formed by a series of discontinuous areas
  - %GRAY%\[FL\] --\> \*\* need to reach an agreement on definition \*\*
- [Groundwater Dependent Ecosystem](#GroundwaterDependentEcosystem)
  - \[BB\] out of scope: should be included in an ecosystem model; need to ensure 'Hydrogeo Units' can relate to other unit types.
  - %GRAY%Agree: BB,EB, ID, BS, BW, PD, NA, CS, RT, FL, HK, AK
  - %GRAY%Diagree: JM
  - %GRAY%Comments: Can probably be associated with, and adequately described by, [Discharge Location](#DischargeArea) and [Groundwater Biology](#GroundwaterBiology) \[PD\]
  - %GRAY%Comment: It can be used as a placeholder with assotiation from Groundwater Body for future ecosystem model \[JM\].
  - %GRAY%Comment: not best practice to include placeholders for entities that will occur in other models \[BB\]
  - %GRAY%\[FL\] - Definitely needs to connect to something - a feature from an other model ideally.
  - %GRAY%\[FL\] --\> Agreement is to add this feature into the model and evaluate if it is relevant to GW.

Flow--Barriers and Boundaries:

-  [Confining Bed](#ConfiningBed)
  - \[BB\] accept: no conflicts
  - %GRAY%Agree: BB, PD, ID, BW,EB, BS, JM, NA, CS, RT, FL, HK, AK
  - %GRAY%Disagree:
  - %GRAY%Comments: It is subtype or role of Aquiclude enclosing Aquifer System from bottom \[JM\].
- [Aquitard](#Aquitard)
  - \[BB\] delete: difficult to define and is essentially a type of 'Confining Bed', so use this more general term
  - %GRAY%Agree: BB, PD, ID, BW, BS, NA, CS, RT, FL, HK, AK
  - %GRAY%Disagree: JM
  - %GRAY%Comments: are "Aquitard,Aquiclude" roles of Confining beds then ? \[EB\]
  - %GRAY%Comment: Aquitard and Aquiclude are different concepts. Aquitard plays important role in groundwater flow due to it is partialy permeable. Aquiclude is completely non-permeable. See: [http://external.opengis.org/twiki_public/HydrologyDWG/Gwml2ConsolFeatureListDiscussionPage#Topic7](Gwml2ConsolFeatureListDiscussionPage#Topic7) \[JM\]
  - %GRAY%Comment: no argument that they are different, just some consensus the distinctions are not useful \[BB\]
  - %GRAY%\[FL\] --\> out of scope, could be managed however as a property of confining beds.
- [Aquiclude](#Aquiclude)
  - \[BB\] delete: same as above, see 'Aquitard'
  - %GRAY%Agree: BB, PD,EB, ID, BW, BS, NA, CS, RT, FL, HK, AK
  - %GRAY%Disagree: JM
  - %GRAY%Comments: See comment for Aquitard and INSPIRE D2.8.II/III.4 Data Specification on Geology – Draft Guidelines, page 140, Fig. 5 Example of an aquifer system \[JM\]
  - %GRAY%\[FL\] --\> out of scope, could be managed however as a property of confining beds.
- [Groundwater Dam](#GroundwaterDam)
  - \[BB\] delete: equivalent to 'Confining Bed'
  - %GRAY%Agree: BB, PD, ID, BW,EB, BS, CS, RT, FL, HK, AK
  - %GRAY%Disagree: JM
  - %GRAY%Comments:Groundwater Dam is a man-made feature. See: <http://www.rainwaterharvesting.org/methods/modern/gwdams.htm> \[JM
  - %GRAY%Comments: still a useful feature in scope, like wells (also man made)? \[HK, AK
  - %GRAY%\[FL\] - has a gw management role
  - %GRAY%\[FL\] --\> is scope feature but should be modeled in a future phase of gwml
- [Groundwater Divide](#GroundwaterDivide)
  - \[BB\] accept: "Line on a water table or piezometric surface on either side of which the groundwater flow diverges IGH0556 \[ID\]"
  - %GRAY%Agree: BB, PD, ID, BW,EB, BS, JM, NA, CS, RT, FL, HK, AK
  - %GRAY%Diagree:
  - %GRAY%Comments: this is also a temporal feature \[PD\].
  - %GRAY%Comments: serves to seperate groundwater flow systems \[BB\]
  - %GRAY%Comment: It is dynamic element of piezometric/potentiometric surface - dynamic feature and can be inside flow system. See: INSPIRE D2.8.II/III.4 Data Specification on Geology – Draft Guidelines, page 140, Fig. 6 Example of a groundwater flow system \[JM\]
- [Hydraulic Boundary](#HydraulicBoundary)
  - \[BB\] delete: not a primary entity, but a role played by other entities, e.g. confining bed, well, ground surface, \[other surface \[BB\]\]. Should be modeled as an attribute of a primary entity.
  - %GRAY%Agree: BB, PD, ID, BW,EB, BS, NA, CS, RT, FL, HK, AK
  - %GRAY%Disagree: JM
  - %GRAY%Comments: It is surface (in 3D space) separating Aquifer System from surroundings. Concept similar to border of state \[JM\].
- [Groundwater Flow](#GroundwaterFlow)
  - \[BB\] accept: defs agree, and in scope. It is a Process, but one that can possess attributes, e.g. rate
  - %GRAY%Agree: BB, PD, ID, BW,EB, BS, NA, FL, HK, AK
  - %GRAY%Disagree: JM, CS, RT
  - %GRAY%Comments: a process that takes place in the (groundwater)basin. - requires the association with the relevent "hosting" unit (ID)
  - %GRAY%Comment: It is a state of Groundwater Body, result produced by Hydraulic Gradient as a cause \[JM\]
    - %GRAY%is this a description of (1) the movement of a gw body (process), or (2) the static condition of a gw body at a time (state)? \[BB\]
    - %GRAY%If state, then equivalent to properties of gw body and fits below. \[BB\]
  - %GRAY%\[FL\] - could be an associated property of gw body
  - %GRAY%\[FL\] - could albe be modeled using O&M
  - %GRAY%\[FL\] --\> in scope, but will see during the modeling process if this feature is maintained
- Groundwater Flow System **new**
  - \[BB\] accept: flow path of groundwater from recharge to discharge location, through Hydrogeo Units.
  - %GRAY%Agree: BB, BS, BW, PD, JM, NA, CS, RT, FL, HK, AK
  - %GRAY%Disagree:
  - %GRAY%Comments See: INSPIRE D2.8.II/III.4 Data Specification on Geology – Draft Guidelines, page 140, Fig. 6 Example of a groundwater flow system \[JM\]\<hr /\>

\_Lead = P.[Dahlhaus\_](Dahlhaus_)

Surfaces:

- [Groundwater Level](#GroundwaterLevel)
  - \[PD\] accept as a measurement (i.e. O&M)
  - %GRAY%Agree: PD, BB, EB. BS, BW, JM, NA, CS, RT, FL, HK, AK
  - %GRAY%Disagree:
  - %GRAY%Comment: Groundwater Level (however determined) should be kept as a measurement (cf: Feature), therefore covered by O&M \[PD\]
  - %GRAY%Comment: agree, not a surface, but a property of some entity, that can be measured or calculated \[BB\]
  - %GRAY%Comment: can be a measurement of 'depth to' (from measuring point), 'depth to' (from natural surface), 'elevation of' (above datum), or 'total head' (measured at a point), etc. \[PD\]
  - %GRAY%Comment on \[PD\]: Agree, important to define reference point: international standard: (groundwater above mean sea level) \[NA}
  - %GRAY%Comment: It occurs in wells only. In Aquifer (System), it is Piezometric/Potentiometric Surface. See below \[JM\].
- [Piezometric Surface --\> Hydrogeologic Surface](#PiezometricSurface)
  - \[PD\] replace with Hydrogeologic Surface as "A surface that represents the interpolated groundwater table, or other surface \[of a body of groundwater \[BB\]\], for a local or regional area"
  - %GRAY%Agree: PD, BB, EB, BS, BW, FL, HK, AK
  - %GRAY%Disagree:JM
  - %GRAY%Comment: replace with Hydrogeologic Surface? as "A surface that represents the interpolated groundwater table, or other surface, for a local or regional area" which unambiguously covers all the other possibilities (whether the surface represents depth to, elevation of, or pressure at). \[PD\]
  - %GRAY%Comment: ammend def "..., or other surface of a body of groundwater,..." \[BB\]. Agree the ammendment \[PD\].
  - %GRAY%Comment:\`Piezometric surface == coverage of Groudwater Levels \[EB\]
  - %GRAY%Comment: I see misunderstanding here. Concept of Hydrogeologic Surface was used by me in INSPIRE D2.8.II/III.4 Data Specification on Geology – Draft Guidelines as a specific data type for different surfaces in hydrogeological domain. It is most often represented as a coverage (grided data). Piezometric/Potentiometric Surface is something completely different then other hydrogeologic surfaces, for example roof and bottom of aquifer \[JM\]
  - %GRAY%I think the intentions are all th same, but perhaps the name is too general. Propsoe renaming to [GroundwaterBody](GroundwaterBody) Surface? \[BB\]
  - %GRAY%\[FL\] - need to have a general surface feature, with a property to identify its type
  - %GRAY%\[FL\] --\> renamed as hydrogeologic surface.
- [Potentiometric Surface --\> Hydrogeologic Surface](#PotentiometricSurface)
  - \[PD\] replace with Hydrogeologic Surface as "A surface that represents the interpolated groundwater table, or other surface \[of a body of groundwater \[BB\]\], for a local or regional area"
  - %GRAY%Agree: PD, BB, EB, BS, BW, FL, HK, AK
  - %GRAY%Disagree:JM
  - %GRAY%Comment: replace with Hydrogeologic Surface? \[PD\].
  - %GRAY%Comment: Potentiometric Surface is a synonym for Piezometric Surface \[JM\]

Properties:

- [Aquifer Properties](#AquiferParameters)
  - \[PD\] accept (no conflict)
  - %GRAY%Agree: PD, BB, EB, BS, BW, NA, CS, RT, FL
  - %GRAY%Disagree:
  - %GRAY%Comment: should Aquifer Parameters be many separate features? (e.g. Hydraulic Conductivity, Storativity, Transmisivity, Porosity, Effective Porosity, Specific Yield/Retention, Homogeneity/Heterogeneity, Isotropy/Anisotropy, etc.) \[PD\]
  - %GRAY%Comment: given that [Hydraulic Testing](#HydraulicTesting) has been ruled out of scope, do we include the (important) variables measured at the well in here? (e.g. Drawdown, Aquifer Loss, Well Loss, Specific Capacity, etc.). They are not all strictly Aquifer Parameters, as some of them vary according to the efficiency of the bore. Perhaps they are delivered via by O&M? \[PD\]
  - %GRAY%Comment: does this include aquifer type (e.g. fractured rock, porous, dual-porosity, unconfined, confined, semi-unconfined, semi-confined, leaky, delayed response, etc.)? \[PD\] Agree \[NA\]
  - %GRAY%Comment: In the above featurelist the hydrogeological description only include aquifer parameters (changed to Aquifer properties, agree). However aquifer properties further include
    - %GRAY%1. Aquifers geometry (like mean aquifer thickness (m),
    - %GRAY%2.Aquifer lithology,
    - %GRAY%3. Hydraulic setting (3a types of voids: pres fissures, fissured karst) (3b hydraulic condition: confined, semi-confined, unconfined, mixed)
    - %GRAY%4. Mean sources of recharge (precipitation, runoff, influent streams or lakes
    - %GRAY%5. Mean sources of discharge (springs, baseflow, outflow into lakes/sea, evaporation) \[NA\]
  - %GRAY%Full list of properties still to be determined \[BB\]
  - %GRAY%\[FL\] - full list of properties will be shown in a separate wiki page
  - %GRAY%\[FL\] - carefully set the distinction between aquifer and well-based properties, avoid confusion
- [Groundwater Yield](#GroundwaterYield)
  - \[PD\] accept as a Measurement (cf: Feature), i.e. O&M?
  - %GRAY%Agree: PD, BB (as a property of an aquifer), EB, BS, BW, JM, CS, RT, FL, HK, AK
  - %GRAY%Disagree:
  - %GRAY%Comment: Yield is an important property of an aquifer, but is usually an observed or measured parameter of discharge at a well or spring, therefore better suited to O&M? \[PD\]
  - %GRAY%Comment: seems key concept is 'property of an aquifer' -- because in addition to measured, I see it can also be calculated or even modeled numerically \[BB\]
  - %GRAY%Comment: The distinction between O&M and "property" is always a headache. My rule of thumb is when a value can only be represented in a context of a measurement (date, method, etc..), it's O&M. But most of the time you can have both representations (O&M become supporting evidence for the feature property - actually how it is defined in O&M spec.. observedProperty must point to the property of the feature of interest) \[EB\]
  - %GRAY%Comment: In addition to Eric's point, individual yield measurements are delivered via O&M, but if an 'average aquifer yield' is required then it needs to be a property of the aquifer. \[BS\]
  - %GRAY%Comment: Groundwater Yield can concern different features, for example: wells, aquifers, aquifer systems or management areas. It can be changeable in time. I must repeat my comment written previously: "It is the most complicated problem. In practice yield refers to specific well. In case of aquifer or aquifer system it can be estimated on base of numerical model only and here are applied terms "potential yield" or "disposable yield". Its value (expressed in m3 per unit of time) depends from many hydrogeological conditions, for example: spatial distribution of present and potential intakes, changes of water quality, constrains arising from nature protection and human settlement protection, etc. \[JM\]"
  - %GRAY%Comment: must determine which yield is meant. As per JM, seems to be a property of something else, e.g. aquifer yield, well yield. \[BB}
  - %GRAY%\[FL\] - clearly define which yield is refered to
  - %GRAY%\[FL\] --\> split into hydrogeologic yield (aquifer yield) and well yield
- [Groundwater Volume](#GroundwaterVolume)
  - \[PD\] accept, but move to Groundwater Management?
  - %GRAY%Agree: PD, BB (but also include volume property for gw body), EB, BS. HK, AK (but not move to Groundwater Management), NA (but not move to GW Management), FL
  - %GRAY%Disagree:JM
  - %GRAY%Comment: Groundwater volume is usually an administrative quantity for groundwater management, for example the Annual Permissible Consumptive Volume for sustainable use. Unless it means the Storativity of an aquifer? which is covered in Aquifer Parameters \[PD\]
  - %GRAY%Comment: three volumes are described in the comments--(1) property of a management area related to regulated usage, (2) property of an aquifer related to amount of potential storage space (= storativity), and (3) property of a groundwater body related to the amount of space it occupies (perhaps this is rather obscure). I suggest all three are included, with different names, as they are properties of different entities, e.g. (1) Managed Groundwater Volume, (2) Storativity, (3) Groundwater Body Volume \[BB\]
  - %GRAY%Comment: I'm not convinced [GroundwaterVolume](GroundwaterVolume) is an administrative quantity. While the 3 volumes Boyan mentioned may be used for management purposes, surely they are properties of the real-world aquifer, and not human constructs. \[BS\]
  - %GRAY%Comment: But Groundwater Volume is not always coincident with an natural feature (aquifer or basin), it is also a legislated Permissible Consumptive Volume for an administrative area (e.g. Water Supply Protection Area, or Groundwater Management Area) that covers a partial area or volume of much larger aquifer, usually delineated to protect an asset such as a spring, or groundwater dependent lake, stream or ecosystem. \[PD\]
  - %GRAY%Comment: I must repeat my comment written previously: "It is very strange concept for me as a hydrogeologist from the beginning (from 1966). It is similar to volume of water in river! In hydrogeology quantity of water is expressed by quantity of flow. It can be applicable to nonrenewable resources, for example rock oil. Groundwater is renewable." \[JM\]
  - %GRAY%Comemnt: the objection seems to be about (3), which is perhaps more hypothetical than practical \[BB\]
  - %GRAY%\[FL\] - could be refered as a property of gw body.
  - %GRAY%\[FL\] --\> in scope, but need to evaluate the relevancy while doing the modeling process. Could be managed as a property.
- Groundwater Body Properties **new**
  - \[BB\] accept. Similar to 'Aquifer Properties', a list of properties that characterize the groundwater body, e.g. temp, age, volume, etc.
  - %GRAY%Agree: BB, BS, BW, JM, CS, RT, FL, HK, AK
  - %GRAY%Disagree:
  - %GRAY%Comment: as per May meeting discussions. Full list tbd later. \[BB\]
  - %GRAY%Comment: note the 'Groundwater Volume' property for a gw body, as discussed above, would be included here. \[BB\] Agree \[BS\]
  - %GRAY%Comment: I assume that this Feature refers to the fluid, not the media. If so, does it sit better with Quality? = Groundwater Composition =\> Groundwater Parameters? \[PD\] Agree \[NA\]
  - %GRAY%Comment: Depends on the actual feature hierarchy \[HK\]
  - %GRAY%Comment: grouping of entities under quantity/quality is not very important now, just a convenience for this exercise. Will likely not reflect the entity hierarchy in the model. \[BB\]

Quality:

- [Groundwater Quality Description](#GroundwaterQualityDescription)
  - \[PD\] accept as "A normative quality description is an assesment based upon some guideline edited by a government or a quality standard." (e.g. a salinity range)
  - %GRAY%Agree: PD, BB,EB, BS, BW, JM, NA, CS, RT, FL, HK, AK
  - %GRAY%Disagree:
  - %GRAY%Comment: As a Quality statement from data providers it is OK, otherwise it is very difficult to standardise quality infromation even though there is a ISO 19157 new norm on that which should be used - from INSPIRE experience.\[RT\]
- [Groundwater Chemistry](#GroundwaterComposition)
  - \[PD} accept "The characterisation of the chemical composition of the groundwater, both natural and man-made."
  - %GRAY%Agree: PD, BB, EB, BS, BW, JM, NA, CS, RT, FL, HK, AK
  - %GRAY%Disagree:
  - %GRAY%Comment: May be covered by O&M or Chemistry, but needs to be kept as an important component in groundwater descriptions \[PD\].
  - %GRAY%Comment: same issue regarding O&M vs property. We probably need to discuss a pattern here. \[EB\]
  - %GRAY%Comment: same as with the quality - if used as a statement it is OK otherwise O&M should be used.\[RT,CS\]
  - %GRAY%Comment: include non-living organic components? \[BB\]
  - %GRAY%Comment: modeling considerations (e.g. O&M) to be considered later, when modeling. \[BB\]
  - %GRAY%\[FL\] - maintained
- [Groundwater Biology](#GroundwaterBiology)
  - \[PD\] accept as "The characterisation of the biological composition of the groundwater, both natural and man-made."
  - %GRAY%Agree: PD, BB, EB, BS, BW, JM, NA, CS, RT, FL, HK, AK
  - %GRAY%Disagree:
  - %GRAY%Comment: Covers both Stygofauna and Microbiological components of groundwater. May be covered by O&M, but is an important component of groundwater descriptions \[PD\].
  - %GRAY%Comment: "biological composition" should be replaced by "biological cntent" \[JM
  - %GRAY%Comment: same as with the quality - if used as a statement it is OK otherwise O&M should be used.\[RT,CS\]
  - %GRAY%Comment: includes non-living organic components? \[BB\]
  - %GRAY%\[FL\] - maintaned, includes larger organisms / stygofauna
- Groundwater Composition
  - \[BB\] accept: a general concept for "the characterization of the chemical and biological composition of groundwater"
  - %GRAY%Agree: BS, PD, HK, AK (but remane Groundwater Parameters), FL
  - %GRAY%Disagree: JM, CS, RT
  - %GRAY%Comment: covered already by features above? \[BW\]
  - %GRAY%Comment: Should this be Groundwater Parameters? and replace Groundwater Body Properties? as all of the parameters of the fluid (cf. the media) not specifically covered by chemical composition (elements, molecules, compounds) or biology (species) (e.g. Temperature, Electrical Conductivity, Total Dissolved Solids, Total Suspended Solids, pH, Eh, Dissolved Oxygen, Oxidation-Reduction Potential, Biological Oxygen Demand, Colour, Turbidity, Hardness, Aggressiveness, Taste, Odour, Apparent Age, etc.) \[PD\] Agree \[NA\] Call ik Groundwater properties \[NA\]
  - %GRAY%Comment: I see only one type of Grondwater Composition - it is Groundwater Chemistry \[JM\] - CS, RT
  - %GRAY%Comment: there are 2 different concepts here: intrinsic properties of the gw body (age, temp, volume), and the stuff that makes up the gw body (metals, salts, organic matter, organisms)--its constituents. Gw Properties is the former, and GW Composition is intended to be the latter.
  - %GRAY%\[FL\] - splitted into three distinct features: physical (ground water body description), chemical and biological.
  - %GRAY%\[FL\] - chemical and biological are compositional properties.
  - %GRAY%\[FL\] - for each of the splitted features, a list of properties will be compiled in a separate wiki page.
  - %GRAY%\[FL\] --\> splitted into the three features.

------------------------------------------------------------------------

\_Lead = P.[Dahlhaus\_](Dahlhaus_)

Quantity:

- [Recharge Location](#RechargeArea)
  - \[PD\] accept (but it does not sit well with 'Quantity').
  - %GRAY%Agree: PD, ID, EB, BS, BW, JM, CS, RT, FL, HK, AK
  - %GRAY%Disagree
  - %GRAY%Comment: Change to Recharge Site? \[PD\] "site" is widely understood as a point location. (ID) Agree.
  - %GRAY%Comment : Recharge Location ? \[EB\]. 'Location' is best, even though it might be a point (sinkhole), line (stream) or area (strata) \[PD\].
  - %GRAY%Comment: I suggest "Recharge Feature". It is the most often ground surface \[JM\]
- [Discharge Location](#DischargeArea)
  - \[PD\] accept (but it does not site well with 'Quantity').
  - %GRAY%Agree: PD,ID,EB, BS, BW, JM, CS, RT, FL, HK, AK
  - %GRAY%Disagree:
  - %GRAY%Comments: Change to Recharge Site? \[PD\] "site" is widely understood as a point location. (ID) Agree.
  - %GRAY%Comment : Discharge Location ? \[EB\]. 'Location' is best, even though it might be a point (spring), line (stream) or area (diffuse discharge) \[PD\].
  - %GRAY%Comment: I suggest "Discharge Feature" \[JM\]
- [Cone of Depression](#ConeOfDepression)
  - \[PD\] delete in favour of [Zone of Contribution](#ZoneOfContribution) as "The area surrounding a pumping well or other discharge site that encompasses all areas and features that supply groundwater to the well or discharge site."
  - %GRAY%Agree: PD, BS. JM, CS, RT, HK, AK
  - %GRAY%Disagree: EB, FL
  - %GRAY%Comment: My feeling is that "Zone" is the 2D projection of the cone of depression on the surface. Cone is 3D. OR are we just looking at different representations ?. \[EB\]
  - %GRAY%Comment: This is an interpolated Groundwater Surface and should be moved to Surfaces \[PD\] \[BW\]
  - %GRAY%Comment: I don't believe Zone is restricted to 2D but can also be represented by 3D geometries \[BS\]
  - %GRAY%Comment: In reply to EB's disagree... The Cone of Depression (COD) is usually measured in an aquifer test and represented as a (2.5D) surface. The 3D volume of the COD (compared to before pumping) = yield. \[PD\]
  - %GRAY%Comment: It is element of dynamic Piezometric/Potentiometric Surface and can be represented by different geometries. It can be estimated by numerical modeling only. Many cones can be superpositioned together.
  - %GRAY%\[FL\] - the zone of contribution feature can have 2D, 2D1/2 and 3D geometry.
  - %GRAY%\[FL\] --\> deleted feature, refer to Zone of contribution.
- [Zone of Influence](#ZoneOfInfluence)
  - \[PD\] delete in favour of [Zone of Contribution](#ZoneOfContribution) as "The area surrounding a pumping well or other discharge site that encompasses all areas and features that supply groundwater to the well or discharge site."
  - %GRAY%Agree: PD,EB, BS, CS, RT, FL, HK, AK
  - %GRAY%Disagree: JM
  - %GRAY%Comment: This is an interpolated Groundwater Surface and should be moved to Surfaces \[PD\] \[BW\]
  - %GRAY%Comment: Zone of Influence is a different concept then Zone of Contribution. It can be estimated by numerical modeling only. \[JM\]
- [Zone of Contribution](#ZoneOfContribution)
  - \[PD\] accept as "The area surrounding a pumping well or other discharge site that encompasses all areas and features that supply groundwater to the well or discharge site.", and move to Surfaces.
  - %GRAY%Agree: PD, ID, EB, BS, BW, JM, CS, RT, FL, HK ,AK
  - %GRAY%Disagree:
  - %GRAY%Comment: This is an interpolated Groundwater Surface and should be moved to Surfaces \[PD\]
  - %GRAY%Comment: It is not a surface, it is zone. It also can be estimated by numerical modeling only. \[JM\]
  - %GRAY%Comment: It is probably difficult to deliniate.\[CS, RT\]
  - %GRAY%\[FL\] - 2D, 2D1/2 and 3D geometry possible.
- [Groundwater Body](#GroundwaterBody)
  - \[PD\] accept. Suggest definition as "A distinct body of groundwater that may be within an aquifer or system of aquifers."
  - %GRAY%Agree: PD, EB, BS, BW, JM, NA,CS, RT, FL, HK, AK
  - %GRAY%Disagree:
  - %GRAY%Comment: Includes for example, a coastal saltwater wedge or saltwater bulge under a saline lake \[PD\].
  - %GRAY%Comment: wedges or bulges could also be seen as gw bodies that are parts of larger gw bodies \[BB\]
- [Water Body](#WaterBody)
  - \[PD\] delete as out of scope.
  - %GRAY%Agree: PD, EB, BS, BW, JM, NA, CS, RT, FL, HK, AK
  - %GRAY%Disagree:
  - %GRAY%Comment: I assume it is covered elsewhere ([WaterML](WaterML)?) \[PD\] Nope, [WaterML](WaterML) is strickly about monitoring stations and timeseries. IT is actually covered by HY model (Irina+Rob) \[EB\]
  - %GRAY%(Surface) Water Bodies are the most often Discharging Features for Groundwater Bodies. Association between them is very needed \[JM\]
- [Other Water Bodies](#OtherWaterBodies)
  - \[PD\] delete as out of scope.
  - %GRAY%Agree: PD, EB, BS, BW, JM, NA, CS, RT, FL, HK, AK
  - %GRAY%Disagree:
  - %GRAY%Comment: Do we need to consider depth of snow or water (as commented in the above Wiki)? \[PD\]
- [Groundwater Layer](#GroundwaterLayer)
  - \[PD\] delete in favour of [Groundwater Body](#GroundwaterBody) or Hydrostratigraphic Unit (resp. [HydrogeologicUnit](HydrogeologicUnit))
  - %GRAY%Agree: PD, BB, BS, BW, JM, CS, RT, FL, HK, AK
  - %GRAY%Disagree:
  - %GRAY%Comment: This is redundant as it is either 1) a part of a Groundwater Body or 2) a 'layer' that implies stratigraphy (i.e. = Hydrostratigraphic Unit) \[PD\].
  - %GRAY%Comment : I need explanation about Groundwater Layer == Hydrostratigraphic Unit \[EB\]
  - %GRAY%Comment: delete in favor of GW Body \[BB\]
- [Reservoir](#Reservoir)
  - \[PD\] accept as 'Groundwater Reservoir' meaning "The contained space in an Aquifer".
  - %GRAY%Agree: PD, EB, BB, BS, FL, HK, AK
  - %GRAY%Disagree: JM, CS, RT
  - %GRAY%Comment: As a Feature, Groundwater Reservoir may be a conceptual or qualitative term, whereas Porosity, Effective Porosity, Specific Yield and Storativity (i.e. [Aquifer Parameters](#AquiferParameters)) are numbers \[PD\]
  - %GRAY%Comment: redundant with [GroundwaterBody](GroundwaterBody)? \[BW\]
  - %GRAY%Not needed. Redundant with Aquifer or Aquifer System \[JM\] Agree \[NA\], \[CS, RT\]
  - %GRAY%Comment: Reservoir is not = Aquifer, it is a component of an Aquifer. If an Aquifer consists of (1) a rock body, (2) spaces in the rock body, and (3) a gw body that fills some of the spaces, then reservoir = (2) and the various properties are its measures (how much space exists (porosity), how much is fillable (effective porosity), how much is filled (storativity). It is possible to see this entity as the 'porosity related' properties of an aquifer, but conceptually that is a short-cut for properties of its spaces. \[BB\]
  - %GRAY%\[FL\] - related to porosity.
  - %GRAY%\[FL\] --\> renamed as Hydrogeologic Void Space
- [Water Budget](#WaterBudget)
  - \[PD\] delete as out of scope.
  - %GRAY%Agree: PD, BS, BW, NA, HK
  - %GRAY%Disagree: EB, JM, FL
  - %GRAY%Comment: Isn'T required to deal with UC4 ? \[EB\]
  - %GRAY%Comment: A vague term that relates to the the Hydrological Equation (Input - Output = Change in Storage) and is variable in temporal and spatial extent, depending on the scenarios modelled \[PD\]
  - %GRAY%Comment: If required, maybe this gets moved to Management? \[PD\]
  - %GRAY%Comment: It is a set of attribytes related to Aquifer or Aquifer System. It also can be estimated by numerical modeling only. \[JM\]
  - %GRAY%From experience in GW reporting, it is an important element of information that should be attached at least as a property of an aquifer or an aquifer system. \[FL\]
  - %GRAY%Comment: Isn't quite some stuff from UC4 out of scope? However, gw budget should be possible to be expressed adequately \[AK\]
  - %GRAY%%GRAY%Comment: does this amount to specific properties of an aquifer or management area? e.g. %GRAY%precipitation, %GRAY%evapotranspiration, %GRAY%runoff, %GRAY%recharge, discharge, w%GRAY%ell withdrawal \[BB\]
  - %GRAY%\[FL\] - could be managed as a property of an aquifer system or an hydrogeologic unit.
  - %GRAY%\[FL\] --\> Out of scope, should be managed as a property of an AQS or a HGU, will remained as a feature just as a reminder before doing the modeling of gwml (not to forget it).
-  [Spring](#Spring)
  - \[BB, PD\] accept, no conflicts
  - %GRAY%Agree: BB, PD, EB, BS, BW, JM, CS, RT, FL, HK, AK
  - %GRAY%Disagree:
  - %GRAY%Comment: A Spring is just one type of groundwater [Discharge Location](#DischargeArea) \[PD\]
-  [Water Well](#WaterWell)
  - \[BB, PD\] accept, no conflicts
  - %GRAY%Agree: BB, PD, BS, BW, JM, CS, RT, FL, HK, AK
  - %GRAY%Disagree:
  - %GRAY%Comment: In GWML we have only one type of wells: "Water Well" so this term can be simply "Well". There are two subtypes of wells:
    - %GRAY%Active Well - changing state of Groundwater Body in Aquifer System,
    - %GRAY%Observation Well - not changing the state
  - %GRAY%Comment: Worthwile to make a distinction between active well and observation well \[NA\]
  - %GRAY%Comment: \*\[NA\] Ah.. yes , good point. [AbstractionWell](AbstractionWell) (active) participate in the aquifer discharge while observation wells usually don't. \[EB\]
- [Well Log](#WellLog)
  - \[PD\] accept "Recording of the geologic units found along the water well (GWML 1)."
  - %GRAY%Agree: PD,EB, BS, BW, NA, FL, HK
  - %GRAY%Disagree: JM
  - %GRAY%Comment: Some components will be covered by [GeoSciML](GeoSciML) \[PD\]
  - %GRAY%Comment : And O&M. Logs are just linear gml coverages - altought in GWML is was modelled as a linear map (from [GeoSciML](GeoSciML)). GWML can handle both
  - %GRAY%Log concerns borehole only. Borehole is a part of well. Other parts are pump, screen etc. One exception is logining of hydrogeological parameters. For geologic data we can use Borehole Log from [GeoSciML](GeoSciML) \[JM\]
  - %GRAY%Comment: Same issue as with [GeologicUnit](GeologicUnit) - [GeoSciML](GeoSciML), probably just a matter of communication? \[AK\]
  - %GRAY%Comment: this is a modeling discussion---does not appear to be a semantic conflict \[BB\]
- [Well Field](#WellField)
  - \[PD\] accept "An area which contains a number of wells"
  - %GRAY%Agree: PD, EB, BW, NA, HK, AK
  - %GRAY%Disagree: JM
  - %GRAY%Comment: Is this better suited to Management Areas? \[PD\] Agree \[EB\] \[BS\] \[FL\] \[AK\]
  - %GRAY%Comment: Would keep it with the water well (as a specialisation) \[BW\]
  - %GRAY%Comment: It is applicable to Oil or Gas Wells only. In urbanized areas this situation is common. May be "Groundwater Intake" will be better in this case \[JM\]
  - %GRAY%Comment: "Groundwater Intake Area"? {BB\]
  - %GRAY%\[FL\] - it is a collection of wells, it could be managed as a gw management area.
  - %GRAY%\[FL\] - out of scope, will be managed as a property of a gw management area.
- [Monitoring Site](#MonitoringSite)
  - \[PD\] accept \[Suggested definition "A place where hydrogeological conditions are observed" \[BB\]\]
  - %GRAY%Agree: PD, EB, BS, BW, JM, NA, FL, HK, AK
  - %GRAY%Disagree:
  - %GRAY%Comment: Actually a [WaterML](WaterML) feature \[EB\]. During the modelling ensure linking across to the [WaterML2](WaterML2) feature is possible. \[BS\]
  - %GRAY%Comment: "Place" is unclear. I think "Monitoring Well/Station" or Obserwation Well/Station will be better. Very often Station is a collection of wells \[JM\]
  - %GRAY%Comment: I think well/station is too precise, site would also fit sampling sites e.g. springs\<hr /\>

\_Lead = Robert Tomas

Management areas:

\[RT, CS\] Clarification that applies to all features listed below: There are two options for modeling “GW management areas”:

1\) GW Management Area used for protection of water and/or reporting and..?

Implications: 1.

1.  The River Basin District entity cannot be covered inside this GW Man. Area feature - it is linked, but wider
2.  Natural conservation – protection area such as national parks, reservations etc. also cannot be covered inside this GW Man. Area feature. - it is linked but wider \* Agree: \* Disagree:

2\) GW Management Area as a type of a broader “Management Restriction Or Regulation Zone” entity

Implications: 1.

1.  Then River Basin District, general Natural conservation-protection area, as well as GW management area (for protection of water and/or reporting) represent types of this generic feature (in INSPIRE we have created a code list with many possible types..) \* Agree: CS, RT, \* Disagree: \* %GRAY%\[FL\] - scope the feature to a more generic gw management area. \* %GRAY%\[FL\] - need to see while modeling if a relation can be set between gw management area and gw basin \* %GRAY%\[FL\] --\> in scope, but need a more formal definition

- [Protected Area](#ProtectedArea)
  - \[BB\] delete; replace with one "(GW)[ManagementArea](ManagementArea)"
  - %GRAY%Agree: BB, EB, BS, BW, PD, FL, HK, AK
  - %GRAY%Disagree:
  - %GRAY%Comments: propose a general entity that represents different kinds of management areas. Issue is whether the scope should be limited to groundwater or extend to other area types (e.g. surface water management area). See details below. \[BB\]
  - %GRAY%Comments: see discussion paper 'Area management group definitions.docx' \[RT\]
  - %GRAY%Comments: possibly limit scope to groundwater only, but is this common practice? \[BB\]
  - %GRAY%Comments: "the point is that if we call it “[GroundwaterManagementArea](GroundwaterManagementArea)” it already limits the scope to only GW related management areas. Which is probably not correct since management areas (for restrictions, protection, reporting etc..) do not follow the natural “phenomenon” boundaries. Whereas if we call it generically like “[ManagementArea](ManagementArea)” we can include all possible types of management areas (see the code list for different zone types included in the previous document). Also it is closer to the generic “river basin” management area concept which covers not only GW bodies but also surface bodies, drinking water protection zones etc.." \[RT\]
  - %GRAY%Comments: as per May meeting -- general consensus to use GW Management Area, limited to gw managaement, but with link to a more general Management Area entity in some other model \[BB\]
- [Groundwater Management Zone](#GroundwaterManagementZone)
  - \[BB\]: same as above. \[BS\]
  - Agree: RT, CS, HK, AK
  - Disagree:
  - Comments: Replaced by "(GW)[ManagementArea](ManagementArea)" \[RT\]
- [Management Restriction Or Regulation Zone](#ManagementRestrictionOrRegulationZone)
  - \[BB\] same as above. \[BS\]
  - Agree: RT, CS, HK
  - Disagree:
  - Comments: This generic class represents all types of area management-protection, restriction, regulation, reporting etc. entity. It means that this class can cover for instance River basin district, protection areas (including natural preservation types as well as groundwater management area used for protection and reporting which otherwise represent different entities. \[RT\]
- [River Basin District](#RiverBasinDistrict)
  - \[BB\] same as above.
  - Agree: HK
  - Disagree: Out of Scope \[BS\]
  - Comments: Part of the surface hydrology domain rather than the groundwater domain \[BS\]
  - Comments: wider then GW Managment Area - see the clarification above \[RT, CS\]
- [Groundwater Basin](#GroundwaterBasin)
  - \[BB\] same as above.
  - Agree: BS, RT, CS
  - Disagree:
  - Comments: limited to manaagement aspects. See comments above under Rock/Land Body for physical aspects.
  - Comment. This "Groundwater Basin" should not be confused with the Groundwater Basin above that refers to a collection of Aquifer Systems \[BS\]

------------------------------------------------------------------------

Out of Scope:

- Data modeling artefacts:
  - [Hydrogeologic Object](#HydrogeologicObject) -- modeling artefact
  - [Hydrogeologic Mapped Feature](#HydrogeologicMappedFeature)
- Facilities artefacts:
  - [Well Construction Elements](#WellConstructionElements) --
  - [Pump](#Pump)
  - [Hydraulic Testing](#HydraulicTesting)
    - Hydraulic Testing is a procedure in scope of OM related to groundwater body or aquifer. I think we should develop separate grup of concepts related to groundwater OM and based on [WaterML](WaterML) \[JM\]\<hr /\>

-- FrancoisLetourneau - 20 Dec 2012

-- AlexKmoch - 07 Jan 2013

-- FrancoisLetourneau - 09 - 11 Jan 2013

-- ChrisSchubert - 15 Jan 2013

-- RobertTomas - 15 Jan 2013

-- BoyanBrodaric - 01 May 2013

-- EricBoisvert - 23 May 2013

-- BruceSimons - 24 May 2013

-- PeterDahlhaus - 27 May 2013

-- JanuszMichalak - 29 May 2013

-- [Main.NienkeAnsems](Main.NienkeAnsems) - 30 May 2013

-- FrancoisLetourneau - 03 Jun 2013

-- IrinaDornblut - 06 Jun 2013

-- AlexKmoch - 14 Jun 2013

-- HermannKlug - 14 Jun 2013
