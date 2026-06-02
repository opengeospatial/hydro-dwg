# GWML 2 Final Entities List

This page shows the official gwml 2 feature list, as agreed upon while discussing the [scope and definitions](gwml2ConsolFeatureList) of a global set of features related to groundwater.

## Index of Entities

Hydrogeologically-bound land and rock bodies

- [Hydrogeologic Unit](#HydrogeologicUnit)
- [Aquifer System](#AquiferSystem)
- [Aquifer](#Aquifer)
- [Groundwater Basin](#GroundwaterBasin)

Flow, barriers and boundaries

- [Confining Bed](#ConfiningBed)
- [Groundwater Dam](#GroundwaterDam)
- [Groundwater Divide](#GroundwaterDivide)
- [Groundwater Flow](#GroundwaterFlow)
- [Groundwater Flow System](#GroundwaterFlowSystem)

Surfaces

- [Groundwater Level](#GroundwaterLevel)
- [Hydrogeologic Surface](#HydrogeologicSurface)

Hydrogeologic Properties

- [Aquifer Properties](#AquiferProperties)
- [Hydrogeological Unit Yield](#HydrogeologicUnitYield)
- [Groundwater Volume](#GroundwaterVolume)

Groundwater Quality and Properties

- [Groundwater Quality Description](#GroundwaterQualityDescription)
- [Groundwater Body Physical Properties](#GroundwaterBodyPhysicalProperties)
- [Groundwater Chemistry](#GroundwaterChemistry)
- [Groundwater Biology](#GroundwaterBiology)

Groundwater Quantities

- [Recharge Location](#RechargeLocation)
- [Discharge Location](#DischargeLocation)
- [Zone of Contribution](#ZoneOfContribution)
- [Groundwater Body](#GroundwaterFlow)
- [Hydrogeologic Void Space](#HydrogeologicVoidSpace)
- [Water Budget](#WaterBudget)

Management Areas

- [Groundwater Management Area](#GroundwaterManagementArea)

Groundwater Ecosystems

- [Groundwater Dependent Ecosystem](#GroundwaterDependentEcosystem)

Groundwater Sampling Features and Wells

- [Water Well](#WaterWell)
- [Spring](#Spring)
- [Well Log](#WellLog)
- [Monitoring Site](#MonitoringSite)
- [Well Yield](#WellYield)

## Entity List

cellspacing = "2" cellborder="0" tablewidth="100%" valign="baseline"

| Theme | Feature | Definition | Notes / Comments |
|:---|:---|:---|:---|
| **Hydrogeologically-bound land and rock bodies** |  |  |  |
|  | \<a name="[HydrogeologicUnit](HydrogeologicUnit)"\>Hydrogeologic Unit | Hydrogeologic unit (1) Any soil or rock unit or zone which by virtue of its hydraulic properties has a distinct influence on the storage or movement of groundwater (after ANS, 1980). |  |
|  | \<a name="[AquiferSystem](AquiferSystem)"\>Aquifer system | Aquifer system - A body of permeable and poorly permeable material that functions regionally as a water-yielding unit; it comprises two or more permeable beds separated at least locally by confining beds that impede groundwater movement but do not greatly affect the regional hydraulic continuity of the system; includes both saturated and unsaturated parts of permeable material (after ASCE, 1985). | **COMMENT \[ID\]:** a system is not a really "body" |
|  | \<a name="Aquifer"\>Aquifer | A formation, group of formations, or part of a formation that contains sufficient saturated permeable material to yield significant quantities of water to wells and springs (after Lohman and others, 1972). |  |
|  | \<a name="[GroundwaterBasin](GroundwaterBasin)"\>Groundwater Basin | A large hydrogeologically defined body of ground typically consisting of hydraulically connected hydrogeological units, \<font face="Arial" size="2"\>whose waters are flowing to a common or multiple outlets, and which is delimited by a groundwater divide. \</font\> | Should we add the notion of common / multiple outlets and the gw divide? |
| **Flow, barriers and boundaries** |  |  |  |
|  | \<a name="[ConfiningBed](ConfiningBed)"\>Confining Bed | A layer of rock having very low porosity and in consequence hydraulic conductivity that hampers the movement of water into and out of an aquifer (\<a href="<http://pubs.usgs.gov/wsp/2220/report.pdf>" rel="nofollow" title="Heath 1983"\>Heath 1983) |  |
|  | \<a name="[GroundwaterDam](GroundwaterDam)"\>Groundwater Dam | Body of material which is impermeable or has only low permeability and which occurs below the surface in such a position that it impedes groundwater flow. IGH0553 | In scope, but for a future version |
|  | \<a name="[GroundwaterDivide](GroundwaterDivide)"\>Groundwater Divide | Line on a water table or piezometric surface on either side of which the groundwater flow diverges. IGH0556 |  |
|  | \<a name="[GroundwaterFlow](GroundwaterFlow)"\>Groundwater Flow | Movement of water in an aquifer. IGH0557 |  |
|  | \<a name="[GroundwaterFlowSystem](GroundwaterFlowSystem)"\>Groundwater Flow System | Flow path of groundwater from recharge to discharge location, through hydrogeological units. |  |
| **Surface** |  |  |  |
|  | \<a name="[GroundwaterLevel](GroundwaterLevel)"\>Groundwater Level |  **Conflicting and multiple definitions for groundwater level**  The standing water level (SWL) measured at a particular time in a groundwater bore or piezometer. The measurement may be stated as depth below ground (natural surface) or measured from a designated point on the well head. In a piezometer or in a sub-artesian bore the groundwater level is related to pressure at a point in the aquifer (i.e. the head at the screened interval). In an artesian bore the value may be a negative number. - **missing reference**  | An internationally recognized vetical datum should be used to express the value. |
|  | \<a name="[HydrogeologicSurface](HydrogeologicSurface)"\>Hydrogeologic Surface | A surface that represents the interpolated groundwater table, or other surface of a body of groundwater, for a local or regional area - **missing reference** |  |
| **Hydrogeologic Properties** |  |  |  |
|  | \<a name="[AquiferProperties](AquiferProperties)"\> [Aquifer Properties](aquiferProperties) | A measured or calculated physical or hydraulic property of an aquifer such as hydraulic conductivity, Transmissivity, Storativity, porosity, effective porosity, Specific Yield (drainable porosity) and Retention (non-drainable porosity), Specific Capacity (it is well parameter), etc. usually measured at a well or series of wells (based on \<a href="<http://pubs.usgs.gov/wsp/wsp2220/>" rel="nofollow" title="Heath 1983"\>Heath 1983, Freeze & Cherry 1979, Fetter 2001) (it can be also measured in laboratory on base of aquifer samples) |  |
|  | \<a name="[HydrogeologicUnitYield](HydrogeologicUnitYield)"\>Hydrogeologic Unit Yield | Hydrogeological unit yield (aquifer yield) is the maximum rate of withdrawal that can be sustained by an aquifer. Expressed as m\<sup\>3\</sup\>. **(NRCan aquifer yield definition)** |  |
|  | \<a name="[GroundwaterVolume](GroundwaterVolume)"\>Groundwater Volume | Description of the volume/quantity of water present in an aquifer at a certain time | To be considered as a property during modeling |
| **Groundwater Quality and Properties** |  |  |  |
|  | \<a name="[GroundwaterQualityDescription](GroundwaterQualityDescription)"\> [Groundwater Quality Description](groundwaterQualityDescription) | A normative quality description is an assesment based upon some guideline edited by a government or a quality standard. |  |
|  | \<a name="[GroundwaterBodyPhysicalProperties](GroundwaterBodyPhysicalProperties)"\> [Groundwater Body Physical Properties](groundwaterBodyProperties) | A list of properties that characterize the groundwater body |  |
|  | \<a name="[GroundwaterChemistry](GroundwaterChemistry)"\> [Groundwater Chemistry](groundwaterChemistry) | The characterisation of the chemical composition of the groundwater, both natural and man-made. |  |
|  | \<a name="[GroundwaterBiology](GroundwaterBiology)"\> [Groundwater Biology](groundwaterBiology) | The characterisation of the biological composition of the groundwater, both natural and man-made. | Covers both Stygofauna and Microbiological components of groundwater. |
| **Groundwater Quantities** |  |  |  |
|  | \<a name="[RechargeLocation](RechargeLocation)"\>Recharge Location | An area representing the hydrogeologic unit which contributes water to an aquifer, either by direct infiltration or by runoff and subsequent infiltration. IGH0685 |  |
|  | \<a name="[DischargeLocation](DischargeLocation)"\>Discharge Location | Groundwater discharge is the removal of water from the saturated zone of a drainage basin across the watertable surface, together with the associated flow toward the water table in the saturated zone. In discharge areas the groundwater flow direction is upward and hydraulic head in the aquifer systems increases with depth. Two principal types of discharge can be differentiated and recognised in the field: point (focal) discharge (springs, seeps, streams and lakes) and diffuse discharge (evaporation from shallow water tables and biological discharge). (taken from \<a href="<http://www.publish.csiro.au/pid/413.htm>" rel="nofollow" title="Salama 1998"\>Salama R.B.(ed.) 1998). |  |
|  | \<a name="[ZoneOfContribution](ZoneOfContribution)"\>Zone of Contribution | The area surrounding a pumping well or other discharge site that encompasses all areas and features that supply groundwater to the well or discharge site. - **add reference** (taken from wiki discussion) |  |
|  | \<a name="[GroundwaterBody](GroundwaterBody)"\>Groundwater Body | A distinct body of groundwater that may be within a container such as an aquifer, system of aquifers, or water well. - **add reference** (taken from wiki discussion) |  |
|  | \<a name="[HydrogeologicVoidSpace](HydrogeologicVoidSpace)"\>Hydrogeologic Void space | Spaces in the rock body - **need more precise definition**(new feature) |  |
|  | \<a name="[WaterBudget](WaterBudget)"\>Water Budget | An accounting of the inflow, outflow, and storage changes of water in a hydrologic unit - **better definition required ??** | (as a property of a HGU) |
| **Management Areas** |  |  |  |
|  | \<a name="[GroundwaterManagementArea](GroundwaterManagementArea)"\>Groundwater Management Area | Management Restriction Or Regulation Zone - **need more precise definition** (taken from wiki discussion) |  |
| **Groundwater Ecosystem** |  |  |  |
|  | \<a name="[GroundwaterDependentEcosystem](GroundwaterDependentEcosystem)"\>Groundwater Dependant Ecosystem | Natural ecosystems that require access to groundwater to meet all or some of their water requirements on a permanent or intermittent basis, so as to maintain their communities of plants and animals, ecosystem processes and ecosystem services. Source: \<a href="<http://nwc.gov.au/__data/assets/pdf_file/0006/19905/GDE-toolbox-part-1.pdf>" rel="nofollow" target="\_top"\>Richardson, S., et al., (2011). Australian groundwater-dependent ecosystem toolbox part 1: assessment framework, Waterlines report, National Water Commission, Canberra | (test the relevancy of the feature while modeling) |
| **Groundwater Sampling Features and Wells** |  |  |  |
|  | \<a name="[WaterWell](WaterWell)"\>Water Well | A shaft or hole sunk, dug or drilled into the Earth to extract water. IGH1379 |  |
|  | \<a name="Spring"\>Spring | Any natural situation where groundwater flows to the surface of the earth. Thus, a spring is a site where the aquifer surface meets the ground surface. - **need more precise definition** (taken from wiki discussion) |  |
|  | \<a name="[WellLog](WellLog)"\>Well Log | Recording of the geologic units found along the water well (GWML 1). |  |
|  | \<a name="[MonitoringSite](MonitoringSite)"\>Monitoring Site | Observation well used to watch for the advent of an anticipated condition, generally undesirable, such as the advance of the salt-water front in a coastal area where salt-water encroachment is occurring, or the movement of a pollutant injected into a disposal well. IGH0806 |  |
|  | \<a name="[WellYield](WellYield)"\>Well Yield | Estimated or calculated yield from a well - **need more precise definition**(new feature) | As a property of a water well? |

-- FrancoisLetourneau - 25 Jun 2013
