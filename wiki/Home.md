# Welcome to the Hydrology Domain Working Group

## Overview

The ability to easily exchange water information in a timely and useful fashion is becoming increasingly important. Water information in general is both highly spatial and highly temporal in nature. Water information is also an exemplar of the kinds of environmental information that is required to be shared across organizational and jurisdictional boundaries, which is facilitated by OGC's interoperability standards.

The Hydrology Domain Working Group is a domain working group in the Open Geospatial Consortium (OGC). It brings together interested parties to develop and promote the technology for greatly improving the way in which water information is described and shared. This working group is hosted by the OGC and co-chaired by a representative from the World Meteorological Organization's (WMO) Commission for Observation, Infrastructure and Information Systems (INFCOM). The Hydrology Domain Working Group coordinates efforts with other earth-science DWGs (Meteorology, Oceans, etc.) through the Earth System Science DWG.

The purpose of the Hydro DWG is to provide a venue and mechanism for seeking technical and institutional solutions to the challenge of describing and exchanging data about the state and location of water resources, both above and below the ground surface. The path to adoption is through OGC papers and standards, advanced to ISO where appropriate, and also through WMO INFCOM, mainly through JET-HYDMON. While WMO Technical Commissions have the recognized mandate to publish and promote standards in this area, OGC contributes to the process with its resources and experience in guiding collaborative development among disparate participants in a rapidly evolving technological environment. The OGC Hydrology DWG provides a means of developing candidate standards for submission to ISO and for adoption by INFCOM as appropriate.

The Hydro DWG is intended to be a public forum for communication, and both the [email list](https://lists.opengeospatial.org/mailman/listinfo/hydro.dwg) and this wiki are open to interested parties.

Please see the current [Hydro DWG Charter](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/WebHome/Hydrology_DWG_Charter.doc) and the [home page of the Hydro DWG on the OGC portal](http://portal.opengeospatial.org/index.php?m=projects&a=view&project_id=301&tab=0) for further details.

## About this wiki

This wiki is an archive of the OGC Hydrology DWG's TWiki, imported December 2025. Page markdown is converted from `Source2025/` in the [main repo](https://github.com/opengeospatial/hydro-dwg). Binary attachments are split across two places: the imported legacy attachments stay in the companion repo [`hydro-dwg-wiki-docs`](https://github.com/opengeospatial/hydro-dwg-wiki-docs), and any new attachments added going forward live on the [`wiki-docs`](https://github.com/opengeospatial/hydro-dwg/tree/wiki-docs) orphan branch of this repo.

## Contributing

<details>
<summary><b>How to edit pages, add new pages, or upload attachments</b></summary>

### Edit an existing page

Click **Edit** on any wiki page, change the markdown, and save. No clone required for routine edits.

### Add a new page

Either:

- In the wiki sidebar, click **New Page**, give it a name, write markdown, save. The filename matches the title (spaces become hyphens in the URL).
- Or, from a clone: `git clone https://github.com/opengeospatial/hydro-dwg.wiki.git`, add a `.md` file, commit, push.

Page-to-page links use plain markdown with **no** `.md` extension: `[See GWML2](GWML2-UML-Model)`.

### Attach an image

In the page editor, drag the image into the text area. GitHub uploads it automatically and inserts the markdown.

### Attach a PDF, PPTX, DOCX, or other non-image file

New non-image attachments go on the **`wiki-docs`** orphan branch of this repo, organized by topic folder. (Legacy imported attachments stay in [`hydro-dwg-wiki-docs`](https://github.com/opengeospatial/hydro-dwg-wiki-docs); don't add new content there.)

1. Go to <https://github.com/opengeospatial/hydro-dwg> and switch the branch dropdown to `wiki-docs`.
2. Navigate into the relevant topic folder, or create a new one matching your page name.
3. Click **Add file → Upload files**, drag your attachment in, and commit directly to `wiki-docs` (no PR required).
4. In your wiki page, link to it using the raw URL:
   `https://raw.githubusercontent.com/opengeospatial/hydro-dwg/wiki-docs/{TopicFolder}/{filename}`

### Reporting issues with imported content

The TWiki → markdown conversion is imperfect. If you spot broken links, missing attachments, or rendering glitches, open an issue on the [main repo](https://github.com/opengeospatial/hydro-dwg/issues).

For more detail — including link conventions, naming guidance, what the `wiki-docs` orphan branch is, and how to regenerate the wiki from source — see the [Contributing](Contributing) page.

</details>

## Published Standards

- [OGC® WaterML](http://www.opengeospatial.org/standards/waterml)
- [WaterML2: Part 1 - Timeseries](https://portal.opengeospatial.org/files/?artifact_id=57222)
- [WaterML2: Part 2 - Ratings, Gaugings and Sections](http://docs.opengeospatial.org/is/15-018r2/15-018r2.html)
- [WaterML2: Part 3 - Surface Hydrology Features (HY_Features)](http://docs.opengeospatial.org/is/14-111r6/14-111r6.html)
- [WaterML2: Part 4 - GroundWaterML 2 (GWML2)](http://docs.opengeospatial.org/is/16-032r2/16-032r2.html)

## Resources

- [HydroDWG](HydroDWG)
  - [Mailing list](https://lists.opengeospatial.org/mailman/listinfo/hydro.dwg)
  - [OGC Portal page](http://portal.opengeospatial.org/?m=projects&a=view&project_id=301) (login required)
  - [WorkPlan](HydroDWGWorkPlan)
- WaterML 2.0 Part 1 - time series
  - [Presentation](WaterML2)
  - [WaterML2 tools and testing support](WaterMLToolsAndTesting)
- [WaterML2.0 Part 2 - ratings and gaugings](WaterML2Part2)
- INSPIRE documents
  - [Guidelines for the use of Observations & Measurements and Sensor Web Enablement-related standards in INSPIRE](http://inspire.ec.europa.eu/id/document/tg/d2.9-o&m-swe)
  - [Technical Guidance for implementing download services using the OGC Sensor Observation Service and ISO 19143 Filter Encoding](http://inspire.ec.europa.eu/id/document/tg/download-sos)
- [GroundWater Information Networks endpoints](GINsForWMOCHy)
  - [Vocabularies used by GWML2 endpoints](GWML2Vocabularies)
- [SurfaceWater Information Networks endpoints](surfacewaterendpoints)
- OGC blog entry: [10 successful years of the Hydrology Domain Working Group](http://www.opengeospatial.org/blog/2879)

## Standards Working Groups (SWGs)

- [TimeSeriesML 1.0 SWG](https://portal.opengeospatial.org/?m=projects&a=view&project_id=470) (login required)
- [GroundWater SWG](GroundWaterSWG)
- [Hydrologic Features SWG](https://portal.opengeospatial.org/index.php?m=projects&a=view&project_id=494&tab=2&artifact_id=65388) (login required) — [Charter](http://www.opengeospatial.org/projects/groups/hydrofeatswg)

## Research Data Alliance Global Water Information IG

- [RDA_GWIIG](RDA_GWIIG) — Dedicated subsection

## Meetings

**First 5 years**: [Meetings 2008 - 2013](HdwgMtgs2008to2013)

**Meetings 2014 and later**:

- [OGC TC Meeting - Arlington](ArlingtonTc2014) — 24-28 March 2014
- [OGC TC Meeting - Geneva](GenevaTc2014) — 10-14 June 2014
- [5th Hydrology DWG Workshop 2014 - New York](NewYorkWorkshop2014) — 11-15 August 2014
- [Training workshop at 11th International Hydroinformatics Conference](HDWGWorkshopAtHIC2014) — Standardization of Water Data Exchange: [WaterML](WaterML) 2.0 and Beyond — New York — 16 August 2014
- [OGC TC Meeting - Boulder](BoulderTc2015) — 3 June 2015
- [OGC Water Data Summit - Boulder TC](BoulderTc2015Summit) — 3 June 2015
- [OGC TC Meeting - Nottingham](NottinghamTC2015) — 17 September 2015
- [6th Hydrology DWG Workshop 2015 - Orleans](OrleansWorkshop2015) — 21-25 September 2015
- [OGC TC Meeting - Sydney](SydneyTC2015) — 2 December 2015
- [OGC TC Meeting - Washington](WashingtonTC2016) — March 2016
- [7th Hydrology DWG Workshop 2016 - Koblenz](WorkshopKoblenz2016) — 13-17 June 2016
- [OGC TC Meeting - Dublin](DublinTC2016) — June 2016
- [OGC TC Meeting - Delft](DelftTC2017) — March 2017
- [8th Hydrology DWG Workshop 2017 - Tuscaloosa](WorkshopTuscaloosa2017) — 20-23 June 2017
- [OGC TC Meeting - St John's](StJohnsTC2017) — June 2017
- [OGC TC Meeting - Palmerston North](PalmerstonTC2017) — December 2017
- [OGC TC Meeting - Orleans](OrleansTC2018) — March 2018
- [OGC TC Meeting - Stuttgart](StuttgartTC2018) — September 2018
- [9th Hydrology DWG Workshop 2018 - Geneva](WorkshopGeneva2018) — 17-20 September 2018
- [OGC TC Meeting - Charlotte](CharlotteTC2018) — December 2018
- [OGC TC Meeting - Leuven](LeuvenTC2019) — June 2019
- [Session on HDWG during the ISDE11 - Florence](http://www.digitalearth2019.eu/programme/) — September 2019 — [conference paper](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/WebHome/water-data-standards-ISDE11-paper.pdf)
- [HydroDWG Seminar January 2021](HydroDWGSeminarJan2021)
- [HydroDWG Seminar March 2021 - WQ Data](HydroDWGSeminarMarch2021)
- [HydroDWG Seminar August 2021 - Mainstems](https://external.ogc.org/twiki_public/HydrologyDWG/HydroDWGSeminarAugust2021)
- [HydroDWG OGC Member Meeting - December 2021](https://external.ogc.org/twiki_public/HydrologyDWG/HydroDWGOGCMemberMeetingDecember2021)
- [HydroDWG OGC Member Meeting - March 2022](https://external.ogc.org/twiki_public/HydrologyDWG/HydroDWGOGCMemberMeetingMarch2022)
- [GWML2 Workshop March 2022](GWML2WorkshopMarch2022)
- [Water Quality Workshop March 2022](https://external.ogc.org/twiki_public/HydrologyDWG/WaterQualityWorkshopSprint2022)
- [HydroDWG OGC Member Meeting - June 2022](https://external.ogc.org/twiki_public/HydrologyDWG/HydroDWGOGCMemberMeetingJune2022)
- [HydroDWG OGC Member Meeting - October 2022](https://external.ogc.org/twiki_public/HydrologyDWG/HydroDWGOGCMemberMeetingOctober2022)
- [HydroDWG OGC Member Meeting - February 2023](https://external.ogc.org/twiki_public/HydrologyDWG/HydroDWGOGCMemberMeetingFebruary2023)
- [HydroDWG Spring 2023 - May 2023](https://external.ogc.org/twiki_public/HydrologyDWG/HdwgSpring2023)
- [HydroDWG Spring 2024 - June 2024](https://external.ogc.org/twiki_public/HydrologyDWG/HydroDWGOGCMemberMeetingJune2024)

## Interoperability Experiments

- [Water Quality Interoperability Experiment](WaterQualityIE)
- [Groundwater Interoperability Experiment](GroundwaterInteroperabilityExperiment)
- [Groundwater Interoperability Experiment 2](GroundwaterInteroperabilityExperiment2)
- [Surfacewater Interoperability Experiment](SurfacewaterInteroperabilityExperiment)
- [Hydrologic Forecasting Interoperability Experiment](HydrologicForecastingInteroperabilityExperiment)
- [RGS Interoperability Experiment](RGSInteropExperiment)
- [ELFIE (Environmental Linked Features Interoperability Experiment)](http://www.opengeospatial.org/projects/initiatives/elfie)
  - [Wiki](https://github.com/opengeospatial/ELFIE/wiki) (login required)

## [Related Projects](RelatedProjects)

## [Documents from Members](HydroDWGDocuments)
