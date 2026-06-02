# **Note: incomplete, under construction**

These features are now consolidated in a more [compact list](gwml2ConsolFeatureList).

## Feature List

**From use-cases:**

[Water Well](#waterwell)  [Screen](#screen) [Casing](#casing) [Sealing](#sealing) [Construction Details](#constructionDetails) [Well Log](#wellLog) [Spring](#spring) [Aquifer](#aquifer)  [Geologic Unit](#geologicUnit) [River Basin District](#watershed) [Groundwater Body](#groundwaterBody) [Protected area](#protectedArea) [Groundwater Discharge](#groundwaterDischarge) [Groundwater Level](#groundwaterLevel) [Groundwater Chemistry](#groundwaterChemistry) [Groundwater Biology](#groundwaterBiology)

**Features (or proterties) from GWML 1 not listed in the use cases**

[Packer Testing](#packerTesting) [Pump Testing](#packerTesting) [Slug Testing](#packerTesting) [Tracer Testing](#tracerTest) [Hydrogeologic Unit Categorisation](#hydrogeologicUnitCat) [Groundwater Body](#groundwaterBody1) (partially overlaps the use cases) [Aquifer System](#aquiferSystem) [Aquiclude](#aquiclude) [Aquitard](#aquitard) [Hydrogeologic unit](#hydrogeologicUnit) [Atmospheric Water Body](#atmosphericWaterBody) [WaterQualityMeasurement](#waterQualityMeasurement) (partially overlaps the use cases) [Water Budget](#waterBudget) [Water Flow](#WaterFlow) [Water Flow Direction](#WaterFlowDirection) [Reservoir](#Reservoir) [Filtration](#Filtration) [Filtration Component](#filtrationComponent) [Pump](#pump) [Well Pump Installation](#wellPumpInstallation) [Cone of Depression](#coneOfDepression) [Zone of Contribution](#zoneOfContribution) [Zone of Influence](#zoneOfInfluence) [Drawdown](#drawdown) [Monitoring site](#monitoringSite) [Well Field](#wellField) [Well Borehole Details](#wellBoreholeDetails) [Groundwater divide](#groundwaterDivide) [Hydraulic Boundary](#hydraulicBoundary) [Hydrogeological Context](#hydrogeologicalContext) [Hydrogeological Framework](#hydrogeologicalFramework) [Piezometric Surface](#piezometricSurface) [Recharge Area](#rechargeArea)

**Features from INSPIRE [HydrogeologyCore](HydrogeologyCore) model, draft version 2.9.9**(With small corrections):

[ActiveWell](#I_ActiveWell) [Aquiclude](#I_Aquiclude) [Aquifer](#I_Aquifer) [AquiferSystem](#I_AquiferSystem) [Aquitard](#I_Aquitard) [GroundwaterBody](#I_GroundwaterBody) [HydrogeologicalObject](#I_HydrogeologicalObject) [HydrogeologicalObjectManMade](#I_HydrogeologicalObjectManMade) [HydrogeologicalObjectNatural](#I_HydrogeologicalObjectNatural)  [HydrogeologicalUnit](#I_HydrogeologicalUnit) [ObservationWell](#I_ObservationWell) [Well](#I_Well)

**Selected features from INSPIRE [HydrogeologyExtension](HydrogeologyExtension) model, draft version 2.9.9**(With small corrections):

[FracturedAquifer](FracturedAquifer) [KarsticAqiufer](KarsticAqiufer)[HG_FeatureOccurrence](HG_FeatureOccurrence)[HG_WellLog](HG_WellLog)[HG_LogInterval](HG_LogInterval)[HG_ConeOfDepression](HG_ConeOfDepression)[HG_InfluenceZone](HG_InfluenceZone)[HG_ProtectionZone](HG_ProtectionZone)[HydrogeologicalZone](HydrogeologicalZone)[MineralGroundWaterBody](MineralGroundWaterBody)[MineralSpring](MineralSpring)[MineralWaterAbstractionWell](MineralWaterAbstractionWell)[ThermalGroundWaterBody](ThermalGroundWaterBody)[ThermalSpring](ThermalSpring)[ThermalWaterAbstractionWell](ThermalWaterAbstractionWell)[HG_WellTimeSeriesObservation](HG_WellTimeSeriesObservation)

-- [Main.JanuszMichalak](Main.JanuszMichalak) - 16 Dec 2012

 cellspacing = "2" cellborder="0" tablewidth="100%" valign="baseline"

\* Note for the purposes of the tables below a "Feature" has a location

| Scope | Feature Name | Attribute Name | Data Type | Entity Definition |
|:---|:---|:---|:---|:---|
|  | \<a name="waterWell"\>**Water Well** | N/A | N/A |  |
|  |  | id | URI | the id of the well |
|  |  | contact | metadata | contact for the well |
|  |  | name | text | the name of the well |
|  |  | location | coordinate | geographic location of well |
|  |  | elevation | number uom = m above sea level | elevation of the well |
|  |  | length | number uom = m | total length of the well |
|  |  | water level | number uom = m | measured water depth |
|  |  | well purpose | text | intended use of the well |
|  |  | well status | controlled vocabulary | the status of the water well (e.g. abandoned, decommissioned, flowing, ...) |
|  |  | ... |  |  |
|  | \<a name="screen"\>**Screen** | N/A | N/A |  |
|  |  | screenTop | number uom = m | reference to top of screen depth |
|  |  | screenBottom | number uom = m | reference to bottom of screen depth |
|  |  | ... |  |  |
|  | \<a name="casing"\>**Casing** | N/A | N/A |  |
|  |  | casingTop | number uom = m | reference to top of casing depth |
|  |  | casingBottom | number uom = m | reference to bottom of casing depth |
|  |  | ... |  |  |
|  | **\<a name="sealing"\>Sealing** | N/A | N/A |  |
|  |  | sealingTop | number uom = m | reference to top of sealing depth |
|  |  | sealingBottom | number uom = m | reference to bottom of sealing depth |
|  |  | ... |  |  |
|  | \<a name="constructionDetails"\>**Construction Details** | N/A | N/A |  |
|  |  | drill date | datetime | date of drilling for the well |
|  |  | ... |  |  |
|  | **\<a name="wellLog"\>Well Log** | N/A | N/A |  |
|  |  | id | URI | the ID of the log element |
|  |  | logTop | number uom = m | reference to the top of a log element |
|  |  | logBottom | number uom = m | reference to the bottom of a log element |
|  |  | lithologies | text | identification of the lithologies found in the log element |
|  |  | porosity | number | identification of the porosity of the earth material in the log element |
|  |  | hydraulic conductivity | number | identification of the hydraulic conductivity of the earth material in the log element |
|  |  | ... |  |  |
|  | \<a name="spring"\>**Spring** | N/A | N/A |  |
|  |  | name | text | the name of the spring |
|  |  | ... |  |  |
|  | \<a name="aquifer"\>**Aquifer** | N/A | N/A |  |
|  |  | id | URI | the id of the aquifer |
|  |  | name | text | name of the aquifer |
|  |  | area | number uom = km\<sup\>2\</sup\> | area of an aquifer |
|  |  | confinement | text | description of the confinement of an aquifer |
|  |  | media | text | identification of the aquifer media |
|  |  | water storage | number uom km\<sup\>3\</sup\> | volume of water stored in an aquifer |
|  |  | sediment thickness | number uom m | thickness of the unconsolidated material in an aquifer |
|  |  | aquifer thickness | number uom m | thickness of the aquifer |
|  |  | porosity | number | porosity of the aquifer material |
|  |  | conductivity | number | conductivity of the aquifer material |
|  |  | recharge | number uom mm/yr | annual recharge rate of the aquifer |
|  |  | discharge | number uom mm/yr | annual discharge rate of the aquifer |
|  |  | yield | number uom km\<sup\>3\</sup\> | sustainable yield of an aquifer |
|  |  | usage type | text | identification of the various groundwater usages |
|  |  | groundwater quality | text | identification of the groundwater quality |
|  |  | physical vulnerability | text | identification of the physical vulnerability to contamination of the aquifer |
|  |  | threats | text | identification of the various aquifer threats |
|  |  | ... |  |  |
|  | \<a name="geologicUnit"\>**Geologic Unit** | N/A | N/A |  |
|  |  | formations | text | Identification of the formations in a geologic unit |
|  |  | lithologies | text | Identification of the lithologies in a geologic unit |
|  |  | ... |  |  |
|  | **\<a name="watershed"\>River Basin District** | N/A | N/A |  |
|  |  | id | URI | id of the watershed |
|  |  | national code | text | Code used to identify the watershed |
|  |  | parent watershed id | URI | id of the parent watershed |
|  |  | name | text | name of the watershed |
|  |  | area | number uom km\<sup\>2\</sup\> | area covered by the watershed |
|  |  | ... |  |  |
|  | \<a name="groundwaterBody"\>**Groundwater Body** | N/A | N/A |  |
|  |  | id | URI | id for the groundwater body |
|  |  | national code | text | code used to identify the groundwater body |
|  |  | name | text | name identifying the groundwater body |
|  |  | protected area association | text | identification of the association responsible for the protection of the groundwater body |
|  |  | pressures | text | identification of the pressures the groundwater body is suffering from |
|  |  | impacts | text | identification of the impacts on the groundwater body |
|  |  | reversal trend | text | identification of reversal trends the groundwater body is experiencing |
|  |  | trend upward | text | identification of upward trends the groundwater body is facing |
|  |  | hydrogeological characteristics |  | hydrogeological characteristics: GW layer, area, depth, thickness, depth range, geological formation, capacity, link surface water, link eco system |
|  |  | groundwater layer | numeric ?? | TBD |
|  |  | area | numeric | area of the groundwater body |
|  |  | depth | numeric | depth of the groundwater body |
|  |  | depth range | numeric | two values defining the range of the depth of the groundwater body |
|  |  | thickness | numeric | thickness of the groundwater body |
|  |  | geological formation | text | identification of the geological formation associated with the groundwater body |
|  |  | capacity | numeric | capacity of the groundwater body |
|  |  | linked water surface | text | identification of the linked water surface with the groundwater body |
|  |  | linked ecological system | text | identification of the linked ecological system with the groundwater body |
|  |  | quantitative status | text | statement regarding the quantitative status of the groundwater body |
|  |  | qualitative chemical status | text | statement regarding the qualitative chemical status of the groundwater body |
|  |  | ... |  |  |
|  | \<a name="protectedArea"\>**Protected area** | N/A | N/A |  |
|  |  | id | URI | identification of the protected area |
|  |  | status | text | status of the protected area |
|  |  | type | text | type of protection for the protected area |
|  |  | association type | text | type of association for the protected area |
|  |  | ... |  |  |
|  | \<a name="groundwaterDischarge"\>**Groundwater Discharge** | N/A | N/A |  |
|  |  | id | URI | id of the groundwater discharge feature |
|  |  | name | text | name of the discharge feature |
|  |  | type | text | type of discharge feature (point discharge (springs), line discharge (stream baseflow), areal discharge (seep, wetland, diffuse, biological)) |
|  |  | status | text | Environmental status of the discharge feature |
|  |  | ... |  |  |
|  | \<a name="groundwaterLevel"\>**Groundwater Level** | N/A | N/A |  |
|  |  | id | URI | id of the groundwater level |
|  |  | type | text | type of groundwater level (phreatic, potentiometric) -- include static and dynamic groundwater level. |
|  |  | value | numeric | groundwater level value |
|  |  | ... |  |  |
|  | \<a name="groundwaterChemistry"\>**Groundwater Chemistry** | N/A | N/A |  |
|  |  | id | URI | identification of the chemistry sample |
|  |  | date | date | date when the sample was taken + date when sample was analysed ??? |
|  |  | method | text | description of the analytical method |
|  |  | field analysis | text | field analysis results (pH, EC, DO, etc.) |
|  |  | lab analysis | text | laboratory analysis results (major ions, minor ions, elements, etc.) |
|  |  | isotopes | text | identification of recognised isotopes |
|  |  | tracers | text | identification of tracers in groundwater |
|  | [See here for example of laboratory model](http://www.geosciml.org/geosciml/3.0/documentation/html/GeoSciML/LaboratoryAnalysis-Specimen/LaboratoryAnalysis/package-summary.html) | ... |  |  |
|  | \<a name="groundwaterBiology"\>**Groundwater Biology** | N/A | N/A |  |
|  |  | microbiology | text | identification of microbiological agents in groundwater |
|  |  | stygofauna | text | identification of stygofauna in groundwater |
|  | [See here for example of laboratory model](http://www.geosciml.org/geosciml/3.0/documentation/html/GeoSciML/LaboratoryAnalysis-Specimen/LaboratoryAnalysis/package-summary.html) | ... |  |  |

**Features (or properties) in GWML 1 not listed in the use cases**

cellspacing = "2" cellborder="0" tablewidth="100%" valign="baseline" \* Note for the purposes of the tables below a "Feature" has a location

| Feature Name | Attribute Name | Data Type | Entity Definition |
|:---|:---|:---|:---|
| \<a name="dependantObsCalc"\>**Dependent Observation Calculation** | N/A | N/A | Calculation that depend from another set of observation |
|  | Groundwater Analysis Result | text | Report a collection of values related to groundwater quality (quantitative and qualitative). |
|  | Result Element | text | This class is used to represent one element of the results of a groundwater analysis. |
|  | ... |  |  |
| **\<a name="pumpTesting"\>Packer testing, pump testing, slug testing**﻿ | N/A | N/A | Packer tests consist of isolating specific sections (usually 10 ft) of a bedrock borehole with inflatable packers (bladders) so that water-quality samples can be collected and aquifer tests can be conducted.An aquifer test (or a pumping test) is conducted to evaluate an aquifer by "stimulating" the aquifer through constant pumping, and observing the aquifer's "response" (drawdown) in observation wells.﻿A slug test is a particular type of aquifer test where water is quickly added or removed from a groundwater well, and the change in hydraulic head is monitored through time, to determine the near-well aquifer characteristics.﻿ |
|  | Groundwater test type | text | Code used to refer to a particular hydraulic test, defined in the hydraulicTestCode enumeration. |
|  | Raw Result | text | Pointer to a file where the raw results are (image, file, raw data). Raw, uninterpreted data that is used to produce a result for the Observation |
|  | Duration | time | Duration on which the pump testing is performed. |
|  | Rate | numeric | Rate at which the water is pumped during the pumping test. |
|  | ... |  |  |
| \<a name="racingTest"\>**Tracing test** | N/A | N/A | Tracer tests are used to "trace" the path of flowing water. Tracer tests are conducted in pipelines, lakes, rivers and groundwater. The tracer chemical must be dissolved in water at concentrations that do not significantly change the aqueous density. |
|  | Groundwater Test Type | text | Code used to refer to a particular hydraulic test, defined in the hydraulicTestCode enumeration. |
|  | Raw Result | text | Pointer to a file where the raw results are (image, file, raw data). Raw, uninterpreted data that is used to produce a result for the Observation |
|  | ... |  |  |
| **\<a name="hydrogeologicUnitCat"\>Hydrogeologic unit categorisation** | N/A | N/A | The GWML Categorisation package is used to define classification of hydrogeologic units mostly for local planning purposes. |
|  | Aquifer Vulnerability Classification | text | Two concepts have been introduced that can affect groundwater quality. The land-use activities that take place at the surface can affect groundwater quality, and the physical or geologic characteristics of the vadose zone and aquifer can provide protection from infiltrating contaminants. |
|  | Categorisation | text | Custom classification applied to a hydrogeologic Unit. This classification is usually based on local concerns, such as vulnerability, water availability or other classes related to water usage and protection. |
|  | Hydrogeologic Classification | text | A class used to specify a classification based on characteristic hydrology and geological settings. |
|  | ... |  |  |
| \<a name="groundwaterBody1"\>**Groundwater Body** (partially detailed in the use cases) | N/A | N/A | A distinct volume of groundwater within an aquifer or aquifers (Vogt, 2002). The equivalent in the European Water Framework Directive (2000/60/CE, 2000) is "Body of groundwater" defined exactly in the same way. |
|  | Volume | numeric | Volume of water present in a water body. |
|  | Water Property Description (1) | text | Water Property description are the properties of the [HydrogeologicUnit](HydrogeologicUnit) regarding its water content. Two aspects are considered, First the quantity (the amount of water that is present, as opposed to the amount of water that can potentially be there) and second, the quality of that water. |
|  | Metadata | text | Metadata used to describe the water properties. |
|  | Validity Time | time | Time instant or period at which this value has any validity. |
|  | Water Quality Description (1.1) | text | A list of common properties related to water quality assessment. Head of a substitution list that include Qualitative and Quantitative water quality properties. |
|  | Norm Compliance Result | text | Evaluation of the compliance of this result compared to the norm (eg, below the norm, above the norm, meeting, exceeding..) |
|  | Norm Documentation | text | Identification of a norm (if any) that is should be considered to interpret the result. |
|  | Qualitative Quality Description (1.1.1) | text | A normative quality description is an assesment based upon some guideline edited by a gouvernment or a quality standard. It can include things such as "odor" or "color". |
|  | Quality Topic | text | What is being measured (ie, hardness, suspended material, odor or color) |
|  | Quality Assessment | text | Qualitative assesment of the water, using a normative quality descriptor. |
|  | Water Composition Description (1.1.2) | text | Used to describe the composition of water. |
|  | Composition Category | text | Describe what kind of concentration is represented, such as "Natural quality", "suitability for irrigation", etc.. |
|  | Salinity Category | text | This property refers to the type of salinity that is present in the water. |
|  | Water Composition Component (1.1.2.1) | text | Used to describe a component that can be present in groundwater |
|  | Concentration | numeric | In chemistry, concentration is the measure of how much of a given substance there is mixed with another substance. |
|  | Colloid | text | A colloid is a type of mechanical mixture where one substance is dispersed evenly throughout another. This attribute may be used to name a colloid. |
|  | Colloidal Type | text | A type of colloid, either sol, foam or emulsion. |
|  | Saturation | text | This attribute refers the the saturation of a dissolved component into ground water. The domain values are "pure, unsaturated, saturated, sursaturated". |
|  | Salinity Source | text | The salinity can come from various sources; sea water instrusion (actual or ancien), dissolution of host rock or dissolution of salt during recharge (eg, water circulating through evaporates) |
|  | Dissolved Chemical | text | Name of a dissolved chemical component in groundwater that is not a salt. |
|  | Dissolved Salt | text | Name of a salt component dissolved in groundwater. |
|  | Water Quantity Description (1.2) | text | Used to describe the the quantity of water that is present in an aquifer. |
|  | Qualitative Water Quantity | text | Qualitative description of the water quantity (such as 'wet' or 'dry'). Often the only information recorded in some water well records |
|  | Water Volume Description (1.2.1) | text | Used to describe the volume of water present in an aquifer. |
|  | Volume Type | text | Describes the type of volume that we are refering to eg: dynamicVolume, specificVolume, theoricVolume, gwStorage (static) |
|  | Volume | numeric | Total volume of water in an aquifer. |
|  | Water Yield Description (1.2.2) | text | Used to describe the different yield parameters of an aquifer. |
|  | Safe Yield | numeric | With reference to either a surface- or ground-water supply, the rate of diversion or extraction for*Consumptive Use* which can be maintained indefinitely, within the limits of economic feasibility, under specified conditions of water-supply development. |
|  | Specific Yield | numeric | Specific yield, also known as the drainable porosity, is a ratio, less than or equal to the effectiveporosity, indicating the volumetric fraction of the bulk aquifer volume that a given aquifer will yield when all the water is allowed to drain out of it under the forces of gravity. |
|  | Sustainable Yield | numeric | The groundwater extraction regime, measured over a specified planning timeframe, thatallows acceptable levels of stress and protects dependent economic, social, and environmentalvalues. |
|  | Water Age Description (1.3) | text | The age of the water is generally (always?) the age of infiltration. The infiltration can be in an aquifer different from the aquifer it actually resides in (for example, water infiltrated in a surface aquifer and migrated slowly in a deeper - rock perhaps - aquifer). |
|  | Period of Residence | time | The time period in which a unit of water resides in an aquifer. |
|  | Geologic Event | text | The age of the water, expressed as a geologicEvent. Refer to <http://www.geosciml.org/documentation/geosciml/2.0_rc3/GeoSciML/GeologicAge/GeologicEvent.html> for a complete description of a geologicEvent. |
| \<a name="aquiferSystem"\>**Aquifer System** | N/A | N/A | Collection of hydrogeological units composing a system of interacting components. By virtue of being a [GeologicUnit](GeologicUnit), it derives from it the 'part' property. |
|  | name | text | Name of an aquifer system |
|  | ... |  |  |
| \<a name="aquiclude"\>**Aquiclude** | N/A | N/A | Impermeable beds of geologic material that hinder or prevent groundwater movement. |
|  | name | text | Name of an aquifer system |
|  | ... |  |  |
| \<a name="aquitard"\>**Aquitard** | N/A | N/A | A saturated, but poorly permeable bed that impedes ground-water movement and does not yield water freely to wells, but which may transmit appreciable water to or from adjacent aquifers and, where sufficiently thick, may constitute an important ground-water storage unit. |
|  | name | text | Name of an aquitard |
|  | ... |  |  |
| \<a name="hydrogeologicUnit"\>**Hydrogeologic Unit** | N/A | N/A | Describes the various properties of hydrogeologic units. |
|  | Hydrogeologic Description | text | Properties of the rock that is relevant to the groundwater |
|  | Capacity | numeric | Volumetric capacity of an aquifer to hold water. |
|  | Hydraulic Conductivity | numeric | Hydraulic conductivity can be measured by applying Darcy's law on the material. Such experiments can be conducted by creating a hydraulic gradient between two points, and measuring the flow rate. |
|  | Saturation | numeric | This property displays the saturation of water in a given material. |
|  | Storativity | numeric | Storativity is the volume of water released from storage per unit decline in hydraulic head in the aquifer, per unit area of the aquifer. |
|  | rank | text | TBC |
|  | ... |  |  |
| \<a name="atmosphericWaterBody"\>**Atmospheric Water Body** | N/A | N/A | Quatity of water, in gaseous, liquid or solid phase, present in the atmosphere. |
|  | Volume | numeric | Volume of water present in a water body. |
|  | ... |  |  |
| \<a name="waterQualityMeasurement"\>**Water Quality Measurement** | N/A | N/A | Partially equivalenent to [groundwater chemistry](#groundwaterChemistry) from the use cases |
|  | Calculation | text | Water Quality procedure (from Environment Canada) |
|  | Guideline | text | Prescribed methodology |
|  | Water Quality Index | text | Classification of water quality through an index. This class is a subclass a measurement class. |
|  | Water Specimen | text | This class is a sub-class of a specimen class, which is defined as follows "A Specimen is some physical material sampled from a specified location, typically associated with a Site, such as a Station, a location or interval within a Section, or a location or extent from a [DescriptionExtent](DescriptionExtent) ". |
|  | ... |  |  |
| \<a name="waterBudget"\>**Water Budget** | N/A | N/A | An accounting of the inflow, outflow, and storage changes of water in a hydrologic unit. |
|  | Metadata | text | Metadata associated to a water budget. |
|  | Validity |  | Validity time of the water budget |
|  | ... |  |  |
| \<a name="waterFlow"\>**Water Flow** | N/A | N/A | Movement of subsurface water in the saturated zone from areas of recharge to areas of discharge. |
|  | Flow Process | text | Identification of a particular process in the groundwater cycle. |
|  | Quantity | numeric | Quantity of water transferred during a particular water flow process. |
|  | ... |  |  |
| \<a name="waterFlowDirection"\>**Water Flow Direction** | N/A | N/A | Measurement of the direction of the water flow, at a specific location. |
|  | Result | numeric | A direction of the water flow, expressed as a [CGI_Vector](CGI_Vector) with a direction and a magnitude. |
|  | ... |  |  |
| \<a name="reservoir"\>**Reservoir** | N/A | N/A | A reservoir is, most broadly, a place or hollow vessel where fluid is kept in reserve, for later use. Includes atmospheric reservoir, biologic reservoir, geologic reservoir, surface reservoir, transit reservoir and utility reservoir. |
|  | Capacity | numeric | Capacity of a reservoir to contain water, expressed as a numeric value and the unit of measurment. |
|  | ... |  |  |
| \<a name="filtration"\>**Filtration** | N/A | N/A |  |
|  | Filter Placement Method | text | Process defining the filter placement method. Can be tremie or pour down. |
|  | Filtration Medium | text | Type of filtration mechanism used in the filtration device. Terms can be Natural, Filter pack or Formation stabilizer. |
|  | ... |  |  |
| \<a name="filtrationComponent"\>**Filtration Component** | N/A | N/A | Type of material used to filter the water. |
|  | Position | geometry | This attribute is used to reference the shape of the samplingCurve from which the [WaterWell](WaterWell) derives. |
|  | Grain Size | numeric | Size of the particles of the filtration material. |
|  | Material | text | Identification of the material used in the filtration device. Gravel, pit run, silica sand, washed sand, crushed rock, artificial (unspecified) unknown, other |
|  | ... |  |  |
| \<a name="pump"\>**Pump** | N/A | N/A | A water well pump is a pump that is used in extracting water from a water well. |
|  | Make | text | Brand of the pump |
|  | Model | text | Model of the pump |
|  | Pump Capacity | numeric | Capacity of the pump, expressed as a measurement type (value and UOM) |
|  | Pump Type | text | Identification of the type of pump |
|  | Riser Pipe Diameter | numeric | Identification of the diameter of a riser pipe used in a water pump |
|  | ... |  |  |
| \<a name="wellPumpInstallation"\>**Well Pump Installation** | N/A | N/A | Installation of a pump to a water well. |
|  | Period | time | Period at which the device has been installed. |
|  | Intake Depth | numeric | Depth of the intake of the well, expressed as a value and UOM. |
|  | ... |  |  |
| \<a name="coneOfDepression"\>**Cone of Depression** | N/A | N/A | A depression in the groundwater table or potentiometric surface that has the shape of an inverted cone and develops around a well from which water is being withdrawn. Its trace (perimeter) on the land surface defines the zone of influence of a well. Also called pumping cone and cone of drawdown. |
|  | ID | URI | Identification of the cone of depression |
|  | Centered At | geometry | The planimetric localization of the center of the cone of depression. |
|  | Depth | numeric | The depth of a cone of depression in an aquifer. |
|  | ... |  |  |
| \<a name="zoneOfContribution"\>**Zone of Contribution** | N/A | N/A | The area surrounding a pumping well, spring, or tunnel that encompasses all areas and features that supply groundwater to the well spring, or tunnel. |
|  | ID | URI | Identification of the zone of contribution |
|  | ... |  |  |
| \<a name="zoneOfInfluenc"\>**Zone of Influence** | N/A | N/A | The area of influence, or cone of depression formed when pumping a well or well field. |
|  | ID | URI | Identification of the zone of influence |
|  | ... |  |  |
| \<a name="drawdown"\>**Drawdown** | N/A | N/A | The vertical distance groundwater elevation is lowered, or the amount head is reduced, due to the removal of groundwater. Also the decline in potentiometric surface caused by the withdrawal of water from a hydrogeologic unit. The distance between the static water level and the surface of the cone of depression. A lowering of the water table of an unconfined aquifer or the potentiometric surface of a confined aquifer caused by pumping of groundwater from wells. |
|  | Distance | numeric |  |
|  | ... |  |  |
| \<a name="monitoringSite"\>**Monitoring Site** | N/A | N/A | A site where a sampling is taken for monitoring various properties. |
|  | ID | URI | Identification of the monitoring site. |
|  | ... |  |  |
| \<a name="wellField"\>**Well Field** | N/A | N/A | A tract of land which contains a number of wells for supplying a large municipality or irrigation district. |
|  | ID | URI | Identification of the well field. |
|  | ... |  |  |
| \<a name="weelBoreholeDetails"\>**Well Borehole Details** | N/A | N/A | Used to details specific characteristics of well boreholes.﻿ |
|  | Drilling Fluid | text | Identification of the drilling fluid used for the well borehole. |
|  | ... |  |  |
| \<a name="groundwaterDivide"\>**Groundwater Divide** | N/A | N/A | The boundary between two adjacent groundwater basins, which is represented by a high point in the water table. |
|  | ... |  |  |
| \<a name="hydraulicBoundary"\>**Hydraulic Boundary** | N/A | N/A | A hydrologic feature that prevents the flow of groundwater. Examples include groundwater divides or low permeability material that impedes groundwater flow. |
|  | ... |  |  |
| \<a name="hydrogeologicalContext"\>**Hydrogeological context** | N/A | N/A | General information about the hydrogeologic units, the regional geology, soils, etc that is part of a framework. |
|  | description | text | Description of the context. |
|  | ... |  |  |
| \<a name="hydrogeologicalFramework"\>**Hydrogeological Framework** | N/A | N/A | A collection of hydrogeological units which forms a hydrogeological context. |
|  | hguID | URI | Identification of the hydrogeological units |
|  | ... |  |  |
| \<a name="piezometricSurface"\>**Piezometric Surface** | N/A | N/A | A surface that represents the level to which water will rise in tightly cased wells. If the head varies significantly with depth in the aquifer, then there may be more than one potentiometric surface. The water table is a particular potentiometric surface for an unconfined aquifer. |
|  | ... |  |  |
| \<a name="rechargeArea"\>**Recharge Area** | N/A | N/A | The surface and subsurface area surrounding a water well or wellfield through which contaminants are reasonably likely to move toward and reach such water well or well field. |
|  | ID | URI | Identification of the zone |
|  | ... |  |  |

-- [Main.BoyanBrodaric](Main.BoyanBrodaric) - 27 Nov 2012

-- [Main.BruceSimons](Main.BruceSimons) - 27 Nov 2012

-- [Main.FrancoisLetourneau](Main.FrancoisLetourneau) - 14 dec 2012

**Features from INSPIRE [HydrogeologyCore](HydrogeologyCore) model, draft version 2.9.9**(With small corrections):

\<table align="left" border="0" cellpadding="0" cellspacing="1"\> \<tbody\> \<tr\> \<td\>

###### **Feature Name**

\</td\> \<td align="left"\>

###### **Attribute Name**

\</td\> \<td align="left"\>

###### **Data Type**

\</td\> \<td align="left"\>

###### **Entity Definition**

\</td\> \</tr\> \<tr\> \<td\>

\<a name="[I_ActiveWell](I_ActiveWell)"\>**[ActiveWell](ActiveWell)﻿**(subtype of [Well](#I_Well))\</td\> \<td width="56"\>

N/A\</td\> \<td width="188"\>

N/A\</td\> \<td width="518"\>

A well influencing the groundwater resources (or state)of the groundwater body within the aquifer.Description: The most common examples of Active Well are: extracting, artificial recharging, or dewatering wells.﻿Note: [ActiveWell](ActiveWell) by extracting, recharging or dewatering influences and changes the state of groundwater body.﻿\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

activityType\</td\> \<td width="188"\>

[WellActivityType](WellActivityType) ([CodeList](CodeList))﻿\</td\> \<td width="518"\>

The type of activity carried out by the well.Description: Indicates if the well is used for extracting, recharging, dewatering etc of the groundwater resources.﻿\</td\> \</tr\> \<tr\> \<td\>

**\<a name="[I_Aquiclude](I_Aquiclude)"\>Aquiclude**(subtype of [HydrogeologicalUnit](#I_HydrogeologicalUnit))﻿﻿ ﻿\</td\> \<td width="56"\>

N/A\</td\> \<td width="188"\>

N/A\</td\> \<td width="518"\>

An impermeable body of rock or stratum of sediment that acts as a barrier to the flow of groundwater.Description: A formation which, although porous and capable of absorbing water slowly, will not transmit water fast enough to furnish an appreciable supply for a well or spring. ﻿Aquicludes are characterized by very low values of "leakage" (the ratio of vertical \_Hydraulic\_ *Conductivity*to thickness), so that they transmit only minor inter-aquifer flow and also have very low rates of yield from compressible storage. Therefore, they constitute boundaries of aquifer flow systems.\</td\> \</tr\> \<tr\> \<td\>

\<a name="[I_Aquifer](I_Aquifer)"\>**Aquifer﻿**(subtype of [HydrogeologicalUnit](#I_HydrogeologicalUnit))\</td\> \<td width="56"\>

N/A\</td\> \<td width="188"\>

N/A\</td\> \<td width="518"\>

A wet underground layer of water-bearing permeable rock or unconsolidated materials (gravel, sand, silt, or clay) from which groundwater can be usefully extracted using a water well. It can be zone of fractures related to Geologic Structure – a part of geological formation.Description: An underground geological formation able to store and yield water. Groundwater body flows through aquifers.﻿\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

\*aquiferType\*\</td\> \<td width="188"\>

[AquiferType](AquiferType) (enumeration)﻿\</td\> \<td width="518"\>

The type of aquifer.Description: Water in an Aquifer is, or is not, under pressure. Based on that unconfined, confined, artesian, or subartesian types are distinguished.﻿\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

\*mediaType\*\</td\> \<td width="188"\>

[AquiferMediaType](AquiferMediaType) (enumeration)﻿\</td\> \<td width="518"\>

The classification of the medium in which the groundwater flow occurs.\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

\*isExploited\*\</td\> \<td width="188"\>

Boolean(voidable)﻿\</td\> \<td width="518"\>

Indicates if groundwater from aquifer is exploited by wells or intakes\</td\> \</tr\> \<tr\> \<td\> \</td\> \<td width="56"\>

\*isMainInSystem\*\</td\> \<td width="188"\>

Boolean(voidable)﻿\</td\> \<td width="518"\>

Indicates if aquifer is the main useful aquifer in the aquifer system\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

\*vulnerabilityToPollution\*\</td\> \<td width="188"\>

[QuantityValue](QuantityValue) (voidable)﻿\</td\> \<td width="518"\>

DRASTIC index value or interval of values determining the potential degree of aquifer risk arising from the geological structure, hydrogeological conditions and the existence of real or potential source of contamination.Description: A single value should be used if it is determined directly from the DRASTIC method. If attribute data comes from another data source which is expressed by categorized items, for example: low, moderate or high, interval should be used expressed by lowest and highest value of category. EXAMPLE: ‘Moderate’﻿ means interval from 101 to 140.\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

\*permeabilityCoefficient\*\</td\> \<td width="188"\>

[QuantityValue](QuantityValue) (voidable)﻿\</td\> \<td width="518"\>

The volume of an incompressible fluid that will flow in unit time through a unit cube of a porous substance across which a unit pressure difference is maintained.Description: The parameter represents the hydraulic conductivity of a rock container. Describes the ease with which water can move through pore spaces or fractures. It depends on the intrinsic permeability of the material and on the degree of saturation.﻿Note: Because of their high porosity and permeability, sand and gravel have higher hydraulic conductivity than clay or unfractured granite aquifers.﻿\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

\*storativityCoefficient\*\</td\> \<td width="188"\>

[QuantityValue](QuantityValue) (voidable)﻿\</td\> \<td width="518"\>

The ability of an aquifer to store water.\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

\*hydroGeochemicalRockType\*\</td\> \<td width="188"\>

[HydroGeochemicalRockTerm](HydroGeochemicalRockTerm) ([CodeList](CodeList), voidable)﻿\</td\> \<td width="518"\>

The rock type with respect to the soluble rock components and their hydrogeochemical influence of groundwater.Description: Defines the prevailing geochemical character of natural groundwater within the Aquifer.﻿\</td\> \</tr\> \<tr\> \<td\>

\<a name="[I_AquiferSystem](I_AquiferSystem)"\>**[AquiferSystem](AquiferSystem)**(﻿subtype of [HydrogeologicalUnit](#I_HydrogeologicalUnit))\</td\> \<td width="56"\>

N/A\</td\> \<td width="188"\>

N/A\</td\> \<td width="518"\>

A collection of aquifers and aquitards, which together constitute the environment of groundwater - "communicating vessels", that are filled or can be filled with water.Description: Attributes of Aquifer System and its components determine the feasibility of water collection, its movement, as well as the impact on its chemical state.﻿Note: The Aquifer System components and their attributes (including geometry) are relatively stable over time except in special cases.﻿\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

\*isLayered\*\</td\> \<td width="188"\>

Boolean(voidable)﻿\</td\> \<td width="518"\>

Indicates if the [AquiferSystem](AquiferSystem) consists of more than one layer.\</td\> \</tr\> \<tr\> \<td\>

**\<a name="[I_Aquitard](I_Aquitard)"\>Aquitard﻿**(subtype of [HydrogeologicalUnit](#I_HydrogeologicalUnit))\</td\> \<td width="56"\>

N/A\</td\> \<td width="188"\>

N/A\</td\> \<td width="518"\>

A saturated, but poorly permeable bed that impedes ground-water movement.Description: It does not yield water freely to wells, but may transmit appreciable water to or from adjacent aquifers and, where sufficiently thick, may constitute an important ground-water storage unit. ﻿Aquitards are characterized by values of leakance that may range from relatively low to relatively high. A really extensive aquitard of relatively low leakance may function regionally as boundaries of aquifer flow systems.\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

\*approximatePermeabilityCoefficient\*\</td\> \<td width="188"\>

[QuantityValue](QuantityValue) (voidable)﻿\</td\> \<td width="518"\>

The parameter represents the hydraulic conductivity of a poorly permeable rock or other formation. In that case, a value of permeability is most often approximate.\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

\*approximateStorativityCoefficient\*\</td\> \<td width="188"\>

[QuantityValue](QuantityValue) (voidable)﻿\</td\> \<td width="518"\>

The ability of an aquitard to store water.\</td\> \</tr\> \<tr\> \<td\>

**\<a name="[I_GroundwaterBody](I_GroundwaterBody)"\>[GroundwaterBody](GroundwaterBody)** \</td\> \<td width="56"\>

N/A\</td\> \<td width="188"\>

N/A\</td\> \<td width="518"\>

A distinct volume of groundwater within an aquifer or system of aquifers, which is hydraulically separated from nearby groundwater bodies.Description: Groundwater bodies form the principal management units under the European Water Framework Directive (2000/60/CE, 2000). They should be hydraulically continuous entities, and must be defined on the basis of flow or abstraction, and are inextricably linked to surface water bodies.﻿\</td\> \</tr\> \<tr\> \<td\> \</td\> \<td width="56"\>

\*Id\*\</td\> \<td width="188"\>

Identifier\</td\> \<td width="518"\>

External object identifier of the spatial feature.Note: An external object identifier is a unique object identifier published by the responsible body, which may be used by external applications to reference the spatial feature. The identifier is an identifier of the spatial feature, not an identifier of the real-world phenomenon.﻿\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

\*approximateHorizontalExtend\*\</td\> \<td width="188"\>

[GM_Surface](GM_Surface)(voidable)﻿\</td\> \<td width="518"\>

The geometry defining the approximate boundary of the [GroundWaterBody](GroundWaterBody).\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

\*conditionOfGroundWaterBody\*\</td\> \<td width="188"\>

[ConditionOfGroundwater](ConditionOfGroundwater) (enumeration)﻿\</td\> \<td width="518"\>

The approximate degree of change to groundwater as a result of human activity.\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

\*mineralization\*\</td\> \<td width="188"\>

[WaterTypeValue](WaterTypeValue) (voidable)﻿\</td\> \<td width="518"\>

One of the main chemical characteristics of water. A value is a sum of all water chemical concentration components.\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

\*piezometricState\*\</td\> \<td width="188"\>

[PiezometricState](PiezometricState) (voidable, dataType)﻿\</td\> \<td width="518"\>

Specifies the piezometric state of the [GroundwaterBody](GroundwaterBody).\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

\*beginLifespanVersion\*\</td\> \<td width="188"\>

[DateTime](DateTime) (lifeCycleInfo, voidable)﻿\</td\> \<td width="518"\>

Date and time at which this version of the spatial object was inserted or changed in the spatial data set.\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

\*endLifespanVersion\*\</td\> \<td width="188"\>

[DateTime](DateTime) (lifeCycleInfo, voidable)﻿\</td\> \<td width="518"\>

Date and time at which this version of the spatial object was superseded or retired in the spatial data set.\</td\> \</tr\> \<tr\> \<td\>

\<a name="[I_HydrogeologicalObject](I_HydrogeologicalObject)"\>**[HydrogeologicalObject](HydrogeologicalObject)﻿**(Abstract)

\</td\> \<td width="56"\>

N/A\</td\> \<td width="188"\>

N/A\</td\> \<td width="518"\>

An abstract class for man-made facilities or natural features that have an interaction with the hydrogeological system.Description: Hydrogeological objects may be natural (eg. ﻿spring) or the manmade (eg. wells). The vast majority of hydrogeological objects are manmade. Dynamic object can change state of groundwater body and as consequence state of flow system.\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

\*Id\*\</td\> \<td width="188"\>

Identifier\</td\> \<td width="518"\>

External object identifier of the spatial feature.Note: An external object identifier is a unique object identifier published by the responsible body, which may be used by external applications to reference the spatial feature. The identifier is an identifier of the spatial feature, not an identifier of the real-world phenomenon.﻿\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

\*geometry\*\</td\> \<td width="188"\>

[GM_Primitive](GM_Primitive)\</td\> \<td width="518"\>

The geometry defining the spatial location of the [HydrogeologicalObject](HydrogeologicalObject).\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

\*name\*\</td\> \<td width="188"\>

[PT_FreeText](PT_FreeText)(voidable)﻿\</td\> \<td width="518"\>

The name or code of the [HydrogeologicalObject](HydrogeologicalObject).\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

\*description\*\</td\> \<td width="188"\>

[PT_FreeText](PT_FreeText)(voidable)﻿\</td\> \<td width="518"\>

The description of the [HydrogeologicalObject](HydrogeologicalObject).\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

\*beginLifespanVersion\*\</td\> \<td width="188"\>

[DateTime](DateTime) (lifeCycleInfo, voidable)﻿\</td\> \<td width="518"\>

Date and time at which this version of the spatial object was inserted or changed in the spatial data set.\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

\*endLifespanVersion\*\</td\> \<td width="188"\>

[DateTime](DateTime) (lifeCycleInfo, voidable)﻿\</td\> \<td width="518"\>

Date and time at which this version of the spatial object was superseded or retired in the spatial data set.\</td\> \</tr\> \<tr\> \<td\>

**\<a name="[I_HydrogeologicalObjectManMade](I_HydrogeologicalObjectManMade)"\>[HydrogeologicalObjectManMade](HydrogeologicalObjectManMade)**(﻿abstract, subtype of [HydrogeologicalObject](#I_HydrogeologicalObject))

\</td\> \<td width="56"\>

N/A\</td\> \<td width="188"\>

N/A\</td\> \<td width="518"\>

A man-made hydrogeological object.Description: Examples of manmade hydrogeological objects are: well, groundwater intake, groundwater monitoring station or monitoring well.﻿\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

\*validFrom\*\</td\> \<td width="188"\>

[DateTime](DateTime) (lifeCycleInfo, voidable)﻿\</td\> \<td width="518"\>

Official date and time the hydrogeological object was/will be legally established.Note: This is the date and time the register reference can be used in legal acts.﻿\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

\*validTo\*\</td\> \<td width="188"\>

[DateTime](DateTime) (lifeCycleInfo, voidable)\</td\> \<td width="518"\>

Date and time at which the hydrogeological object legally ceased/will cease to be used.Note: This is the date and time the register reference can no longer be used in legal acts.﻿\</td\> \</tr\> \<tr\> \<td\> \</td\> \<td width="56"\>

\*statusCode\*\</td\> \<td width="188"\>

[StatusCodeType](StatusCodeType) (codeList, voidable)﻿\</td\> \<td width="518"\>

A code defining the formal status of a [HydrogeologicalObjectManMade](HydrogeologicalObjectManMade).\</td\> \</tr\> \<tr\> \<td\>

**\<a name="[I_HydrogeologicalObjectNatural](I_HydrogeologicalObjectNatural)"\>[HydrogeologicalObjectNatural](HydrogeologicalObjectNatural)**(subtype of [HydrogeologicalObject](#I_HydrogeologicalObject))﻿ ﻿\</td\> \<td width="56"\>

N/A\</td\> \<td width="188"\>

N/A\</td\> \<td width="518"\>

[HydrogeologicalObject](HydrogeologicalObject) which was created by natural processes.Description: Examples of natural hydrogeological objects are: a source, vanishing point and geyser.﻿\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

\*naturalObjectType\*\</td\> \<td width="188"\>

[NaturalObjectType](NaturalObjectType) (codeList)﻿\</td\> \<td width="518"\>

The type of natural hydrogeological object.\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

\*waterPersistence\*\</td\> \<td width="188"\>

[WaterPersistenceValue](WaterPersistenceValue) (codeList, voidable)﻿\</td\> \<td width="518"\>

The degree of persistence of water flow.\</td\> \</tr\> \<tr\> \<td\> \</td\> \<td width="56"\>

\*approximateQuantityOfFlow\*\</td\> \<td width="188"\>

Quantity Value(voidable)﻿\</td\> \<td width="518"\>

An approximate value defining the water yield in a natural object.Description: The discharge of water flow for a certain cross-section per time unit.﻿\</td\> \</tr\> \<tr\> \<td\>

**\<a name="[I_HydrogeologicalUnit](I_HydrogeologicalUnit)"\>[HydrogeologicalUnit](HydrogeologicalUnit) ﻿**(abstract)

\</td\> \<td width="56"\>

N/A\</td\> \<td width="188"\>

N/A\</td\> \<td width="518"\>

A part of the lithosphere with distinctive hydraulic parameters for water storage and conduction.\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

\*Id\*\</td\> \<td width="188"\>

Identifier\</td\> \<td width="518"\>

External object identifier of the spatial feature.Note: An external object identifier is a unique object identifier published by the responsible body, which may be used by external applications to reference the spatial feature. The identifier is an identifier of the spatial feature, not an identifier of the real-world phenomenon.﻿\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

\*approximateHorizontalExtend\*\</td\> \<td width="188"\>

[GM_Surface](GM_Surface)\</td\> \<td width="518"\>

The geometry defining the boundary of the [HydrogeologicalUnit](HydrogeologicalUnit).\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

\*name\*\</td\> \<td valign="top" width="188"\>

[PT_FreeText](PT_FreeText)(voidable)﻿\</td\> \<td width="518"\>

The name or code of the [HydrogeologicalUnit](HydrogeologicalUnit).\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

\*description\*\</td\> \<td valign="top" width="188"\>

[PT_FreeText](PT_FreeText)(voidable)﻿\</td\> \<td width="518"\>

The description of the [HydrogeologicalUnit](HydrogeologicalUnit) \</td\> \</tr\> \<tr\> \<td\> \</td\> \<td width="56"\>

\*approximateDepth\*\</td\> \<td width="188"\>

[QuantityValue](QuantityValue) ﻿(voidable)\</td\> \<td width="518"\>

The approximate depth of the [HydrogeologicalUnit](HydrogeologicalUnit) occurrence.\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

\*approximateThickness\*\</td\> \<td width="188"\>

[QuantityValue](QuantityValue) (voidable)﻿\</td\> \<td width="518"\>

The approximate thickness of the [HydrogeologicalUnit](HydrogeologicalUnit).\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

\*beginLifespanVersion\*\</td\> \<td width="188"\>

[DateTime](DateTime) (lifeCycleInfo, voidable)﻿\</td\> \<td width="518"\>

Date and time at which this version of the spatial object was inserted or changed in the spatial data set.\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

\*endLifespanVersion\*\</td\> \<td width="188"\>

[DateTime](DateTime) (lifeCycleInfo, voidable)﻿\</td\> \<td width="518"\>

Date and time at which this version of the spatial object was superseded or retired in the spatial data set.\</td\> \</tr\> \<tr\> \<td\>

**\<a name="[I_ObservationWell](I_ObservationWell)"\>[ObservationWell](ObservationWell) **(subtypeof [Well](#I_Well))﻿

\</td\> \<td width="56"\>

N/A\</td\> \<td width="188"\>

N/A\</td\> \<td width="518"\>

A well drilled in a selected location for the purpose of observing parameters such as water hydraulic state or water chemistry changes.Description: Class [ObservationWell](ObservationWell) realizes class [ObservationWell](ObservationWell) from ISO 19156 standard in hydrogeology domain.﻿\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

\*observationType\*\</td\> \<td width="188"\>

[WellObservationType](WellObservationType) (enumeration)﻿\</td\> \<td width="518"\>

[ObservationWell](ObservationWell) can be a well or piezometer which allow to carry out monitoring and measurement of groundwater (quantitative or chemical) state.Description: The station measurements are used (or not) for EU Water Framework Directive purposes.﻿\</td\> \</tr\> \<tr\> \<td\>

\<a name="[I_Well](I_Well)"\>**Well﻿**(abstract, subtype of [HydrogeologicalObjectManMade](#I_HydrogeologicalObjectManMade))

\</td\> \<td width="56"\>

N/A\</td\> \<td width="188"\>

N/A\</td\> \<td width="518"\>

An excavation where the intended use is for location, acquisition, development, or artificial recharge of groundwater.Source: GWML1﻿\</td\> \</tr\> \</tbody\> \</table\>


**Selected features from INSPIRE [HydrogeologyExtension](HydrogeologyExtension) model, draft version 2.9.9**(With small corrections):

\<table align="left" border="0" cellpadding="0" cellspacing="1"\> \<tbody\> \<tr\> \<td\>

###### **Feature Name**

\</td\> \<td align="left"\>

###### **Attribute Name**

\</td\> \<td align="left"\>

###### **Data Type**

\</td\> \<td align="left"\>

###### **Entity Definition**

\</td\> \</tr\> \<tr\> \<td\>

**[FracturedAquifer](FracturedAquifer)**(subtype of Aquifer)\</td\> \<td width="56"\>

N/A

\</td\> \<td width="188"\>

N/A

\</td\> \<td width="518"\> \</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

**riginOfFractures**

\</td\> \<td width="188"\>

[OriginOfFractures](OriginOfFractures) (codeList)

\</td\> \<td width="518"\>

-- Definition --Genesis of cracks forming [FracturedSystem](FracturedSystem), for example:- related to the fault zone,- caused by weathering processes,- other processes.

\</td\> \</tr\> \<tr\> \<td\>**[KarsticAqiufer](KarsticAqiufer)**(subtype of Aquifer)\</td\> \<td width="56"\>

N/A\</td\> \<td width="188"\>

N/A\</td\> \<td width="518"\> \</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

**soluteRockType**\</td\> \<td width="188"\>

[SoluteRockType](SoluteRockType) (codeList)\</td\> \<td width="518"\>

-- Definition --Determination of the chemical composition of rocks creating karst processes and, consequently, the nature of the voids that collect water and allow it to flow.\</td\> \</tr\> \<tr\> \<td\>

**[HG_FeatureOccurrence](HG_FeatureOccurrence)** \</td\> \<td width="56"\>

N/A \</td\> \<td width="188"\>

N/A \</td\> \<td width="518"\>

-- Definition --[HydrogeologicalFeatureAppearence](HydrogeologicalFeatureAppearence) class is a geometric representation of [HydrogeologicalFeature](HydrogeologicalFeature) calaas. [HydrogeologicalFeature](HydrogeologicalFeature) instance (object) could be represented by many various instances of [HydrogeologicalFeatureAppearence](HydrogeologicalFeatureAppearence) class.-- Note --Class equivalent to [HydrogeologicMappedFeature](HydrogeologicMappedFeature) in GWML model and [GeologicMappedFeature](GeologicMappedFeature) in [GeoSciML](GeoSciML):"Mapped feature more oriented on spatial temporal (although geometries could handle this).A physical hydrogeologic feature represented on a map."Here, meaning of this class is wider then in GWML and similar to [MappedFeature](MappedFeature) class in [GeoSciML](GeoSciML):A [MappedFeature](MappedFeature) is part of a geological interpretation.It provides a link between a notional feature (description package) and one spatial representation of it, or part of it. (Exposures, Surface Traces and Intercepts, etc) \* the specific bounded occurrence, such as an outcrop or map polygon \* the Mapped Feature carries a geometry or shape o the association with a Geologic Feature (legend item) provides specification of all the other descriptors o the association with a Sampling Feature provides the context and dimensionality A Mapped Feature is always associated with some sampling feature - e.g. a mapping surface, a section, a Borehole (see [BoreHolesAndObservation](BoreHolesAndObservation)) etc. As noted on the diagram, if the associated sampling feature is a Borehole, then the shape associated with the [MappedFeature](MappedFeature) will usually be either a point or an interval. This reconciles the 2-D ("map", section) and 1-D (borehole, traverse) viewpoints in a common abstraction." \</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

**geometry** \</td\> \<td width="188"\>

[HG_Geometry](HG_Geometry)(union) \</td\> \<td width="518"\>

-- Definition –Common data union for geometry of feature.-- Note --In GML application it is realised by choice element.XML Schema choice element allows only one of the elements contained in the \<choice\> declaration to be present within the containing element. \</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

**sourceOfGeome** \</td\> \<td width="188"\>

[HG_SourceOfGeometry](HG_SourceOfGeometry)(codeList) \</td\> \<td width="518"\>

-- Definition --Determination of the feature geometry information source or the way of geometry mark. \</td\> \</tr\> \<tr\> \<td\> \</td\> \<td width="56"\>

**Id** \</td\> \<td width="188"\>

Identifier \</td\> \<td width="518"\>

XXX \</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

**description** \</td\> \<td width="188"\>

[PT_FreeText](PT_FreeText) \</td\> \<td width="518"\> \</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

**categoryOfGeometry** \</td\> \<td width="188"\>

[HG_CategoryOfGeometry](HG_CategoryOfGeometry)(codeList) \</td\> \<td width="518"\>

﻿\</td\> \</tr\> \<tr\> \<td\>

**[HG_WellLog](HG_WellLog)** \</td\> \<td width="56"\>

N/A \</td\> \<td width="188"\>

N/A \</td\> \<td width="518"\>

\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

**interval** \</td\> \<td width="188"\>

[HG_LogInterval](HG_LogInterval)(class) \</td\> \<td width="518"\>

\</td\> \</tr\> \<tr\> \<td\>

**[HG_LogInterval](HG_LogInterval)** \</td\> \<td width="56"\>

N/A \</td\> \<td width="188"\>

N/A \</td\> \<td width="518"\> \</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

**[PermeabilityCoefficient](PermeabilityCoefficient)** \</td\> \<td width="188"\>

[QuantityValue](QuantityValue) (voidable) \</td\> \<td width="518"\> \</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

**torativityCoefficient** \</td\> \<td width="188"\>

[QuantityValue](QuantityValue) (voidable) \</td\> \<td width="518"\>

\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

**mediaType** \</td\> \<td width="188"\>

[AquiferMediaType](AquiferMediaType) (codeList, voidable) \</td\> \<td width="518"\>

\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

**vulnerabilityToPollution** \</td\> \<td width="188"\>

[QuantityValue](QuantityValue) (voidable) \</td\> \<td width="518"\>

\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

**piezometricHead** \</td\> \<td width="188"\>

[QuantityValue](QuantityValue) (voidable) \</td\> \<td width="518"\>

﻿\</td\> \</tr\> \<tr\> \<td\> \</td\> \<td width="56"\>

**hydroGeochemicalRockType** \</td\> \<td width="188"\>

[HydroGeochemicalRockTerm](HydroGeochemicalRockTerm) (codeList, voidable) \</td\> \<td width="518"\>

\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\> **litology** \</td\> \<td width="188"\> [LithologyTerm](LithologyTerm) \_Core(codeList, voidable)\</td\> \<td width="518"\>

\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

**numericAgeDate** \</td\> \<td width="188"\>

[NumericAgeRange](NumericAgeRange) \_Core(class, voidable) \</td\> \<td width="518"\>

\</td\> \</tr\> \<tr\> \<td\>

**[HG_ConeOfDepression](HG_ConeOfDepression)**(subtype of [HydrogeologicalZone](HydrogeologicalZone)) \</td\> \<td width="56"\> N/A\</td\> \<td width="188"\>

N/A \</td\> \<td width="518"\>

-- Definition --(from GWML) A cone of depression occurs in an aquifer when ground water is pumped from a well. In an unconfined (water table) aquifer, this is an actual depression of the water levels. In confined (artesian) aquifers, the cone of depression is a reduction in the pressure head surrounding the pumped well (please see earlier articles for discussion of head).<http://en.wikipedia.org/wiki/Cone_of_depression> A depression in the groundwater table or potentiometric surface that has the shape of an inverted cone and develops around a well from which water is being withdrawn. Its trace (perimeter) on the land surface defines the zone of influence of a well. Also called pumping cone and cone of drawdown. (<http://www.wrds.uwyo.edu/wrds/deq/whp/whpgloss.html>)he zone around a well in an unconfined aquifer that is normally saturated, but becomes unsaturated as a well is pumped, leaving an area where the water table dips down to form a cone shape. The shape of the cone is influenced by porosity and the water yield or pumping rate of the well. The land surface overlying the cone of depression is referred to as the area of influence.<http://www.groundwater.org/gi/gwglossary.html#C> \</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\> **centeredAt** \</td\> \<td width="188"\>

[GM_Point](GM_Point) \</td\> \<td width="518"\>

The planimetric localization of the center of the cone of depression.The planimetric shape of a cone of depression os not necessarily circular. This discussion details size and shape characteristic of a cone of depression.The size and shape (slope) of the cone of depression depends on many factors. The pumping rate in the well will affect the size of the cone. Also, the type of aquifer material, such as whether the aquifer is gravel, sand, silt, fractured rocks, karst, etc., also will affect how far the cone extends. The amount of water in storage and the thickness of the aquifer also will determine the size and shape of the cone of depression. As a well is pumped, the cone of depression will extend out and will continue to expand in a radial fashion until a point of equilibrium occurs. This usually is when the amount of water released from storage equals the rate of pumping. This also can occur when recharge to the aquifer equals the amount of water being pumped. We typically think of a cone of depression as being a circular feature surrounding the pumped well. However, aquifer characteristics can affect the shape of the cone of depression. For example, if there is a steep ground-water gradient in the area of pumpage, the cone will tend to be shorter in the upgradient direction and elongated in the downgradient direction. This is because the water is already flowing towards the well from the upgradient direction, so the cone of depression doesn't need to extend as far out to obtain water, whereas the water is flowing away from the well in the downgradient direction, so the cone of depression needs to reach further to obtain water.<http://en.wikipedia.org/wiki/Cone_of_depression> \</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

**depth** \</td\> \<td width="188"\>

[QuantityValue](QuantityValue) \</td\> \<td width="518"\>

The depth of a cone of depression in an aquifer. \</td\> \</tr\> \<tr\> \<td\>

**[HG_InfluenceZone](HG_InfluenceZone)**(subtype of [HydrogeologicalZone](HydrogeologicalZone)) \</td\> \<td width="56"\>

N/A \</td\> \<td width="188"\>

N/A \</td\> \<td width="518"\>

\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

**typeOfInfluence** \</td\> \<td width="188"\>

[TypeOfInfluence](TypeOfInfluence) (codeList) \</td\> \<td width="518"\>-- Definition --(from GWML1)An area that defines a protection zone around a well.\</td\> \</tr\> \<tr\> \<td\>

**[HG_ProtectionZone](HG_ProtectionZone)**(subtype of [HydrogeologicalZone](HydrogeologicalZone)) \</td\> \<td width="56"\>

N/A \</td\> \<td width="188"\>

N/A \</td\> \<td width="518"\>

\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

**typeOfProtection** \</td\> \<td width="188"\>

[HG_TypeOfProtection](HG_TypeOfProtection)(codeList) \</td\> \<td width="518"\>

-- Definition --Types of protected areas around the groundwater intake ([WFD_register](WFD_register), [MS_direct](MS_direct),[MS\_](MS_) indirect). \</td\> \</tr\> \<tr\> \<td\>

**[HydrogeologicalZone](HydrogeologicalZone)**(abstract) \</td\> \<td width="56"\>

N/A \</td\> \<td width="188"\>

N/A \</td\> \<td width="518"\>

-- Definition --Abstraction of Aquifer, Aquitard, Aquiclude and [AquiferSystem](AquiferSystem).-- Description --All common attributes in those classes are specified here \</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

**Id**

\</td\> \<td width="188"\>

Itentifier

\</td\> \<td width="518"\>

XXX

\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

**approximateHorizontalExtend**

\</td\> \<td width="188"\>

XXX \</td\> \<td width="518"\>XXX\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

**name** \</td\> \<td width="188"\>

XXX \</td\> \<td width="518"\>

XXX \</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

**description** \</td\> \<td width="188"\>

XXX \</td\> \<td width="518"\>

XXX \</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

**beginLifespanVersion** \</td\> \<td width="188"\>XXX\</td\> \<td width="518"\>

XXX \</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\> **endLifespanVersion** \</td\> \<td width="188"\>XXX\</td\> \<td width="518"\>

XXX \</td\> \</tr\> \<tr\> \<td\>**[MineralGroundWaterBody](MineralGroundWaterBody)**(subtype of [GroundWaterBody](GroundWaterBody))\</td\> \<td width="56"\>N/A\</td\> \<td width="188"\>

N/A \</td\> \<td width="518"\>

\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

**mineralWaterDescription** \</td\> \<td width="188"\>

[MineralWaterDescription](MineralWaterDescription) (codeList) \</td\> \<td width="518"\>

\</td\> \</tr\> \<tr\> \<td\>

**[MineralSpring](MineralSpring)**(subtype of [HydrogeologicalObjectNatural](HydrogeologicalObjectNatural)) \</td\> \<td width="56"\>

N/A \</td\> \<td width="188"\>N/A\</td\> \<td width="518"\>

\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

**quantityOfMeanDischarge** \</td\> \<td width="188"\>

[QuantityValue](QuantityValue) (voidable) \</td\> \<td width="518"\>

\</td\> \</tr\> \<tr\> \<td\> \</td\> \<td width="56"\>

**springUsage**

\</td\> \<td width="188"\>

[SpringUsageCode](SpringUsageCode) (codeList, voidable) \</td\> \<td width="518"\>

\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

**mineralWaterDescription** \</td\> \<td width="188"\>

[MineralWaterDescription](MineralWaterDescription) (dataType, voidable) \</td\> \<td width="518"\>

\</td\> \</tr\> \<tr\> \<td\>

**[MineralWaterAbstractionWell](MineralWaterAbstractionWell)**(subtype of [ActiveWell](ActiveWell)) \</td\> \<td width="56"\>

N/A \</td\> \<td width="188"\>

N/A \</td\> \<td width="518"\>

A [WaterWell](WaterWell) used for the of abstraction of mineral water from a mineral groundwater body \</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\> \*quantityOfMeanDischarge\*\</td\> \<td width="188"\>

[QuantityValue](QuantityValue) (voidable) \</td\> \<td width="518"\>

\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

**mineralWaterDescription** \</td\> \<td valign="top" width="188"\>

[MineralWaterDescription](MineralWaterDescription) (dataType, voidable) \</td\> \<td width="518"\>

\</td\> \</tr\> \<tr\> \<td\>

**[ThermalGroundWaterBody](ThermalGroundWaterBody)**(subtype of [GroundwaterBody](GroundwaterBody)) \</td\> \<td width="56"\> N/A\</td\> \<td valign="top" width="188"\>

N/A \</td\> \<td width="518"\>

\</td\> \</tr\> \<tr\> \<td\> \</td\> \<td width="56"\>

**temperature** \</td\> \<td width="188"\>

[QuantityValue](QuantityValue) (voidable) \</td\> \<td width="518"\>

\</td\> \</tr\> \<tr\> \<td\>

**[ThermalSpring](ThermalSpring)**(subtype of [HydrogeologicalObjectNatural](HydrogeologicalObjectNatural)) \</td\> \<td width="56"\> N/A\</td\> \<td width="188"\>

N/A \</td\> \<td width="518"\>

-- Definition --Point of mineral water discharge. \</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

**quantityOfMeanDischarge** \</td\> \<td width="188"\>

[QuantityValue](QuantityValue) (voidable) \</td\> \<td width="518"\>

\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

**temperature** \</td\> \<td width="188"\>

[QuantityValue](QuantityValue) (voidable) \</td\> \<td width="518"\>

\</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

**springUsage** \</td\> \<td width="188"\>[SpringUsageCode](SpringUsageCode)(codeList, voidable)\</td\> \<td width="518"\>

\</td\> \</tr\> \<tr\> \<td\>

**[ThermalWaterAbstractionWell](ThermalWaterAbstractionWell)**(subtype of [ActiveWell](ActiveWell)) \</td\> \<td width="56"\>

N/A \</td\> \<td width="188"\>N/A\</td\> \<td width="518"\>

-- Definition --A [WaterWell](WaterWell) used for the of abstraction of mineral water from a mineral groundwater body \</td\> \</tr\> \<tr\> \<td\>

\</td\> \<td width="56"\>

**quantityOfMeanDischarge** \</td\> \<td width="188"\> [QuantityValue](QuantityValue) (voidable)\</td\> \<td width="518"\> \</td\> \</tr\> \<tr\> \<td\> \</td\> \<td width="56"\> \*temperature\*\</td\> \<td width="188"\>[QuantityValue](QuantityValue)(voidable)\</td\> \<td width="518"\> \</td\> \</tr\> \<tr\> \<td\> \</td\> \<td width="56"\> **thermalWaterPurpose**\</td\> \<td width="188"\>[ThermalWaterPurpose](ThermalWaterPurpose)(codeList)\</td\> \<td width="518"\> \</td\> \</tr\> \<tr\> \<td\>**[HG_WellTimeSeriesObservation](HG_WellTimeSeriesObservation)**(subtype of [PointTimeSeriesObservation](PointTimeSeriesObservation))\</td\> \<td width="56"\> N/A\</td\> \<td width="188"\>N/A\</td\> \<td width="518"\> \</td\> \</tr\> \<tr\> \<td\> \</td\> \<td width="56"\> **observationProperty** \</td\> \<td width="188"\>[HG_ObservableProperty](HG_ObservableProperty)(codeList)\</td\> \<td width="518"\> \</td\> \</tr\> \<tr\> \<td\> \</td\> \<td width="56"\> **result** \</td\> \<td width="188"\>[QuantityValue](QuantityValue)\</td\> \<td width="518"\> \</td\> \</tr\> \<tr\> \<td\> \</td\> \<td width="56"\> **phenomenonTypeValue** \</td\> \<td width="188"\>[PhenomenonTypeValue](PhenomenonTypeValue)(codeList)\</td\> \<td width="518"\> \</td\> \</tr\> \</tbody\> \</table\>

xxx

-- JanuszMichalak - 17 Dec 2012
