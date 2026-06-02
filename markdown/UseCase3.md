# **Use Case 3 -- Environmental**

## Participants

-  [P.Dahlhaus](Main.PeterDahlhaus) (Lead), A.Macleod, [BruceSimons](BruceSimons) (CSIRO), Alex Kmoch (GNS / [Z_GIS](Z_GIS))

## Abstract

The role of groundwater in sustaining environmental values is of growing importance, particularly in arid countries such as Australia. Groundwater dependent ecosystems (GDE) include rivers, lakes, wetlands, estuaries, seeps, springs, [phreatophytic vegetation](http://en.wikipedia.org/wiki/Phreatophyte), [cavernicolous](http://en.wiktionary.org/wiki/cavernicolous) ecology and [stygofauna](http://www.environment.gov.au/soe/2006/publications/emerging/fauna/index.html). The key parameters are the depth to watertable, consistency of groundwater levels, groundwater fluxes to surface water, groundwater chemistry and groundwater biology.

In many parts of Australia it is recognised that GDEs are vulnerable to the pressures on groundwater resources from activities such as mining, agriculture, urban and commercial developments. Within the Great Artesian Basin, the potential impacts of coal-seam gas extraction on groundwater and GDEs is of particular concern.

An initial attempt at creating a national inventory of GDEs has recently been published as an interactive GDE Atlas on the Australian Bureau of Meteorology website <http://www.bom.gov.au/water/groundwater/gde/map.shtml>.

In some states, such as Victoria, proposed changes to legislation will provide a risk management framework to provide:

- Protection of high-value GDEs when setting or adjusting permissible consumptive volumes,
- The highest level of protection will be given to GDEs with high environmental values and a high risk of being affected by changes in groundwater levels,
- GDEs with high environmental values that rely on regional and intermediate scale groundwater flow systems will be considered in groundwater management planning, and
- GDEs with high environmental values that rely on the surface expression of local scale groundwater flow systems will be assessed on a site-by-site basis in the licensing regime.

## Objective

Serving the appropriate groundwater information to allow environmental managers, water managers and legislators to assess the risks to GDEs.

## Actors

Water authorities, government departments, research organisations.

## Actions

- A water authority assessing a groundwater licence application finds the nearest GDEs to investigate their types and environmental values.
- A government department assesses the history of groundwater fluctuations around a GDE with high environmental values.
- A research organisation investigates the groundwater heads, gradients and chemistry to determine the groundwater capture zone around a GDE at two points in time.

## Entities (Features, Observations, Properties)

-  \_Groundwater discharge feature:\_ point discharge (springs), line discharge (stream baseflow), areal discharge (seep, wetland, diffuse, biological)
  -  \_general:\_ id, type, name, location, length, area
  -  \_environmental value:\_ status
- Groundwater levels (phreatic and potentiometric)
- Groundwater chemistry: sample ID, date, method, field analyses (pH, EC, DO, etc.), laboratory analyses (major ions, minor ions, elements, etc.), isotopes, tracers.
- Groundwater biology: microbiology, stygofauna

## Web Clients

- UB Client: for displaying GDE, water well and aquifer surfaces on a map and displaying GDE, water well and aquifer information.

cellspacing = "2" cellborder="0" tablewidth="100%" valign="baseline"

| Web Service | Input Database | Output Schema | Implementer |
|:---|:---|:---|:---|
| WMS | [BoM](BoM) /DSE | N/A | FedUni |
| WFS | [BoM](BoM) /DSE/DPI | GWML2 - with discharge feature | FedUni |
| SOS | DSE/DPI/UB | [WaterML2](WaterML2) | FedUni |
| WFS (SOS?) | DSE/UB/DPI | hydrochemistry - O&M? GWML2? | FedUni |
| WFS (SOS?) | DSE? | groundwater biology - O&M? GWML2? | FedUni |
| SOS | from \<a href="<http://ggw.gns.cri.nz/ggwdata/>" title="NGMP"\>NGMP database (New Zealand) | hydrochemistry | [WaterML2](WaterML2).0 / OM2.0 |

-- AlexKmoch - 25 Aug 2015

-- BoyanBrodaric - 24 Oct 2012

<http://external.opengis.org/twiki_public/HydrologyDWG/GwIe2UseCase3Discussion>

-- BruceSimons - 31 Oct 2012
