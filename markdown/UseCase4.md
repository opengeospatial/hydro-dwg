# **Use Case 4 -- Scientific**

## Participants

- J.Lucido (lead), Dave Blodgett (USGS), [Janusz Michalak](Main.JanuszMichalak) (PTIP & Warsaw University), Alex Kmoch (GNS / [Z_GIS](Z_GIS))

## Discussion Page

- For discussion about this use case please add comments to [this page](GWIE2UC4DiscussionPage).

## Abstract

This use case involves the delivery of information required to help determine the flow of groundwater within a particular terrain, likely for input into a computational flow modeling software, and model results. It involves the delivery of hydrogeologic and geophysical properties associated with hydrogeologic units (such as key aquifer properties), the delivery of observations related to those units, well characteristics (driller's log), information about the related water bodies and in some cases water use information.

## Objective

Included in [GW2IE](GroundwaterInteroperabilityExperiment2) Use Case

Full Groundwater Flow Modeling Use Case

- Delivery of data for use in groundwater flow modeling software (e.g. MODFLOW, FEFLOW or ASPAR)
  - Data necessary for groundwater flow models: (May decide to incorporate only some of these data types)
    - Data to complete Soil-Water Balance Model (hydrology & terrestrial info: precipitation, temperature, land cover, land use, evapotransporation, runoff)
    - Water body characteristics & observations (stream flow, gw levels, sw levels)
    - Water use (pumping rates, diversion schedules)
    - Geophysical analysis (well construction, rock lithology and fractures, permeability and porosity, and water quality)
- Delivery of groundwater flow model output
  - Coverage of heads & fluxes
  - Time series of flow and/or water level at points (wells & springs)

## Actors

- Groundwater modelers
- Hydrogeologists

## Actions

- Discovering, searching, displaying, analyzing and downloading characteristics for all groundwater bodies in a study area
- Collecting geological, hydrogeological, physical and use/consumption data about each groundwater body
- Completing a soil-water balance
- Completing spatial and temporal analyses
- Calculating heads & fluxes in space and time
- Calculating timeseries of flow or water level at points where data was collected (wells & springs)
- Visualization of gw flow and storage in time and space

## Entities (Features, Observations, Properties)

Entities depend on type of model and the discretion of modelers and scientists. They include all or a subset of the following

- water wells:
  - \_general\_: id, source, location, elevation, length, water level, well purpose
  - \_well construction\_: drill date, well casing intervals, sealing component intervals, screen intervals
  - \_logs\_: depth interval, lithologies, porosity, hydraulic conductivity
  - \_water quantity\_: storage, water levels
- aquifers:
  - \_general\_: name, area,
  - \_geology\_: formations, lithologies
  - \_properties\_: confinement, media, water storage, sediment thickness, aquifer thickness, porosity, conductivity
  - \_water balance\_: aquifer recharge, aquifer discharge
  - \_water use\_: yield, usage type

## Web Clients

There are many potential clients for receiving this information including, but not limited to: GSC Client, US NGWMN client, US state or local agency websites

cellspacing = "2" cellborder="0" tablewidth="100%" valign="baseline"

| Web Service | Input Database | Output Schema | Implementer |
|:---|:---|:---|:---|
| WMS | wells, aquifers? | N/A | USGS & others? |
| WFS | hydrogeology & geology | GWML2--wells, aquifers | USGS & others? |
| SOS | well & aquifer observations | [WaterML2](WaterML2) --water levels, storage | USGS & others? |
| WPS | WFS (GWML2), SOS ([WaterML2](WaterML2).) ... WCS (DEM ..) | a basic MODFLOW grid or computed values, e.g. zone budget, DRASTIC vulnerability values? | GNS |

-- AlexKmoch - 02 Jul 2015

-- BoyanBrodaric - 24 Oct 2012

For discussion about this use case please add comments to [this page](GWIE2UC4DiscussionPage). Documents for discussion are listed below.

-- JanuszMichalak - 20 Nov 2012

- [UseCaseForFlowModel_Intro.docx](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/UseCase4/UseCaseForFlowModel_Intro.docx): Introduction to [GW2IE](GroundwaterInteroperabilityExperiment2) UC4: Scientific -- data for groundwater flow models (initial draft version)
- [UseCaseforFlowModel_P_Wojda.doc](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/UseCase4/UseCaseforFlowModel_P_Wojda.doc): Hydrogeological data model use case for INSPIRE prepared by Piotr Wojda (start point for development)

-- JessicaLucido - 20 Nov 2012

-- DavidBlodgett and [JessicaLucido](JessicaLucido) - 21 Nov 2012
