# **Use Case 1 -- Commercial**

## Participants

- B.Brodaric (Lead), E.Boisvert (GSC), L. Chery (BRGM), S. Grellet (BRGM), S.Gabillard (BRGM), Tomasz Nalecz (PGI), Jessica Lucido (USGS), Bruce Simons (CSIRO-[BoM](BoM)), Peter Dahlhaus (FedUni), Alex Kmoch (GNS / [Z_GIS](Z_GIS))

## Discussion Page

- For discussion about this use case please add comments to [this page](UseCase1Discussion).

## Abstract

- The commercial scenario involves serving data to allow water wells and springs to be found on a map, identified, and related information used to estimate the cost to complete a water supply well. For example, a consultant or water well driller could use a web client to investigate the local geology and inspect wells located near the target area. By investigating the the rock materials and water levels at each well in the web client, the consultant could infer the distance and materials to the water table, as well as the expected yield, and the driller could estimate the cost of drilling. The public is also impacted in this scenario, as they are able to assess online water well records and make independent estimates. This not only informs them about drilling potential, but it might also influence property purchases.

## Objective

- Serving water well and aquifer data so it can be used for commerical purposes such as to inform drilling.

## Actors

- Public, Consultants, Drillers

## Actions

- A member of the public finds wells near their home.
- A consutant examines the well-logs and aquifer info and determines there is groundwater potential.
- A driller uses the well-logs and aquier info to estimate depth to water for price estimate.

## Entities (Features, Observations, Properties)

- water wells:
  - \_general\_: id, source, location, elevation, length, water level, well purpopse
  - \_logs\_: depth interval, lithologies, porosity, hydraulic conductivity
- springs, etc.
- aquifers:
  - \_general\_: name, area,
  - \_geology\_: formations, lithologies
  - \_properties\_: confimement, media, water storage, sediment thickness, aquifer thickness, porosity, conductivity
  - \_water balance\_: aquifer recharge, aquifer discharge
  - \_water use\_: yield, usage type, quality
  - \_risk\_: physical vulnerability, threats

## Implementation

cellspacing = "2" cellborder="0" tablewidth="100%" valign="baseline"

| Web Service | Input Database | Output Schema | Implementer |
|:---|:---|:---|:---|
| WMS | GIN (Canada) | N/A | GSC |
| WFS | GIN (Canada) | GWML2--wells, aquifers | GSC |
| WMS | ADES (France) | N/A | BRGM |
| WFS | ADES (France) | GWML2 | BRGM |
| WMS | BSS / BSS Eau (France) | N/A | BRGM |
| WFS | BSS / BSS Eau (France) | GWML2 | BRGM |
| WMS | BDLISA V0 | N/A | BRGM |
| WFS | BDLISA V0 | GWML2 | BRGM |
| WFS | USGS (USA) | GWML2 | USGS |
| WMS | VVG (Ballarat) | GWML2 | FedUni |
| WFS | VVG / BOM (Ballarat) | GWML2 | FedUni |
| Client | VVG (Ballarat) | GWML2 | FedUni |
| Client | GIN (Canada) | N/A | GSC |
| Client | PGI (Poland) | N/A | PGI |
| WMS | NGMP/SOE (New Zealand) | N/A | GNS / [Z_GIS](Z_GIS) |
| WFS | NGMP/SOE (New Zealand) | GWML2 | GNS / [Z_GIS](Z_GIS) |

-- AlexKmoch - 02 Jul 2015

-- BoyanBrodaric - 24 Oct 2012
