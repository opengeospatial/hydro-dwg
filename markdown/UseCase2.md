# **Use Case 2 -- Policy**

## Participants

- R.Tomas (Lead), Chris Schubert, Andrej Abramic (all EC-JRC), Tomasz Nalecz (Polish Geological Institute), Alexander Kmoch (GNS / [Z_GIS](Z_GIS.md)), Sylvain Grellet (BRGM),

## Abstract

The Water Framework Directive 20000/60/EC (WFD) requires all EU member states to achieve and preserve good status for all European waters, including groundwaters. Process to achieve WFD requirements includes definition and delineation of water bodies as management units, environmental monitoring, status assessment and finally developing river basin management plans.

This use case describes process steps and interactions necessary for delivering data required to assess the groundwater bodies and thus fulfill the related EU reporting obligation. The activity includes: collection and evaluation of the geological and hydrogeological characteristics, as well as quantitative and qualitative monitoring of defined chemical and physical indicators and finally groundwater body overall status assessment.

Delineation on WFD groundwater bodies, in many cases, is not done accordingly to their natural boundaries but usually follows administrative units.

In order to better demonstrate interoperability the use case description covers also a cross border scenario. It defines the additional step of synchronizing of the collected information by two different member state water authorities. This integrating approach facilitates, promoted by WFD facilitates a coordinated assessment and planning of potential future measures.

## Discussion Page

- For discussion about this use case please add comments to [this page](UseCase2Discussion.md).

## Objective

The provision of WFD required data and information on the trans-boundary groundwater body.

## Actors

- 1\<sup\>st\</sup\> Member State water authority,
- 2\<sup\>nd\</sup\> Member State water authority
- ...

## Actions

- Step 1: Discovering and collecting initial information on hydrogeological, geological, chemical and physical data about the each groundwater body
- Step 2: Preprocessing, syntactical and semantically transformation of the input information.
- Step 3: Assessment of required output,
- Step 4: Delivering of groundwater module for WFD reports

## Entities (Features, Observations, Properties)

The overview of the main entities necessary for this Use case. For the detailed description of the required WFD-Groundwater bodies properties see the following document\<u\>.\</u\>

- [GW_ManagementArea](GW_ManagementArea.md), e.g. in NZ used as groundwater management zones
- [WFD_Management](WFD_Management.md) Area
  - general characteristics
- WFD River Basin District:
  - general: id, national code, parent river basin districts, name and area measurement
- [WFD_Ground](WFD_Ground.md) Water Body (GWB)
  - general: id (RBC-code), national code, name, location, protected area association
  - pressures: pressure types
  - impacts: impact types
  - other impact: further pressure description, other impact description
  - trend reversal: reversal trend, free text
  - trend upward: upward trend, free text
  - hydrogeological characteristics: GW layer, area, depth, thickness, depth range, geological formation, capacity, link surface water, link eco system
  - quantitative status: quantitative status value, comment
  - chemical status (qualitative): chemical status value, comment
  - protected area status (optional): protected area code (unique), type of protection, Type of association, status value

## Web Clients

|  |  |  |  |
|----|----|----|----|
| **Web Service**  | **Input Database**  | **Output Schema**  | **Implementer**  |
| WMS | gw management area | n/a | GNS |
| WFS | gw management area | GWML2 | GNS |
| WMS | gw managaement area | GWML2 | BRGM |
| Older ideas |  |  |  |
| WMS | geological unit characteristics | N/A |  |
| WFS | geological unit characteristics | [GeoSciML](GeoSciML.md) ? GWML2 (WFD) |  |
| WMS | hydrogeological characteristics | N/A |  |
| WFS | hydrogeological characteristics | GWML2 (WFD) |  |
| CSW | Metadata | Metdadata schema (WFD) |  |
| WFS-SOS ? | chemical monitoring data | O&M ? GWML2 (WFD) |  |
| WFS–SOS ? | physical monitoring data | O&M ? GWML2 (WFD) |  |
| WFS–SOS ? | biological monitoring data ? | O&M ? GWML2 (WFD) |  |
| WFS ? | Final reporting data set | WFD delivery format |  |

-- AlexKmoch - 02 Jul 2015

-- BoyanBrodaric - 24 Oct 2012

- [GW2IE](GW2IE.md) \_WFD_Policy_INSPIRE_Extract Summary:  \<img alt="[GW2IE_WFD_Policy_INSPIRE_Extract_Summary](GW2IE_WFD_Policy_INSPIRE_Extract_Summary.md).png" height="2310" src="<https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/UseCase2/GW2IE_WFD_Policy_INSPIRE_Extract_Summary.png>" width="1255" /\>
