# **[GW2IE](GW2IE.md) Meeting 18** **-- Mon-Thurs 05-08 May 2014 -- Logical Model**

## **Participants**

- Click here for the [Doodle poll](http://doodle.com/cmizkh6u6meznesz)

## Confirmed Attendees

- Bruce Simons; (CSIRO staying at Hotel Adlon, <http://adlon-vienna.at/en/willkommen/index.html>)
- Jessica Lucido; (USGS staying at Hotel Artis)
- Alexander Kmoch (U Auckland / Salzburg; place tbd)
- Peter Dahlhaus (Federation University Australia, staying at Hotel Adlon. 3/5 - 11/5)
- Sylvain Grellet (BRGM staying at Hotel Adlon) : arriving May 5th (around noon) - leaving the 7th mid-afternoon
- Eric Boisvert (GSC staying at Hotel Artis) 3 -9 May
- Boyan Brodaric (GSC)
- Bernhard Wagner (Geological Surveys of Germany)
- Gerhard Schubert (Geological Survey of Austria)
- Hermann Klug (U Salzburg)

## **Venue**

- **Host:** Geological Survey of Austria (Gerhard Schubert)
- **Address:**
  - Geologische Bundesanstalt
  - Neulinggasse 38
  - 1030 Wien
  - 3\. Stock Neubau (4th floor new building), Conference room 3.35.00
- **Location Map:** [in English](http://www.geologie.ac.at/en/about-us/our-building/standort/)

## **Accomodations**

- [Kibi...](http://www.kibirooms.at/hotel/en)
- [Hotel Artis...](http://www.artis-hotels.at/en/artis_hotel_vienna_rennweg/home/index.html)
- [Marriot...](http://www.marriott.de/hotels/travel/viese-imperial-riding-school-renaissance-vienna-hotel/)
- [Sunnhof...](http://www.yelp.at/biz/s%C3%BCnnhof-wien)


- Also try: [Vienna hotel finder](http://www.trivago.de/wien-44232/hotel)

## **Agenda**

- Proposed:
  - Mon 5 May : Wrap up: conceptual model development
    - Flow
    - Wells
    - INSPIRE compatibility check
  - Tues 6 May: Progress: logical model development (GML/XML)
    - GeosciML link
    - O&M link
    - cardinalities (logical vs conceptual)
    - auto-generate compatibility
  - Wed 7 May am: Progress: logical model development (GML/XML)
    - same as above
  - Wed 7 May pm: Planning: use case implementations, schema development
  - Thurs 8 May am: TBD
  - Fri 9 May: optional for small group work for anyone remaining

## **Results**

- Conceptual Model
  - completed mid-week
    - see [GWML2 CM 1.0](GWML2-CM-Model.md)
  - major revisions:
    - fluid body: added constituent relation
    - groundwater flow: revised interFlow, intraFlow, and water budget
    - wells: revised wells and springs
- Logical Model
  - completed significant portion of first draft at end of week
    - see [GWML2 LM 1.0 pdf](GWML2-UML-Model.md)
  - major items:
    - pattern: identify voidable properties and others
      - voidable properties may not have empty values: explicitly require a null value to indicate empty/unknown
      - non-voidable properties may have empty values
    - Hydrogeological Units, Groundwater Properties
      - pattern: used [OM_Measurement](OM_Measurement.md) for properties requiring soft-typing, uom, and method metadata (how the value was calculated)
        - e.g. gwUnitProperty, gwPermeability, gwPorosity (there are many kinds of permeability, porosity, etc., that can be calculated in various ways)
      - use GeoSciML PhysicalProperties for EarthMaterial properties (not [OM_Measurement](OM_Measurement.md)) to avoid extending GeoSciML
    - Fluid Body
      - use Observations & Measurements to encode water quality constituents, i.e. Material, Chemical, and Biologic
      - then [GW_ChemicalConstituent](GW_ChemicalConstituent.md), etc., are features-of-interest for the observation
    - Wells
      - Lithology Logs: use O&M to encode Logs
      - Boreholes and WellConstruction: use GWML1 package
- Use-Case Implementations
  - confirmed participants
  - reviewed and confirmed objectives
  - note: use case 5 well underway with INSPIRE - GWML2 CM 1.0 mapping
- Workplan (aggressive)
  - end May: complete logical model
  - mid June: generate XSD, XML instances
  - early July: compete draft report (contains conceptual model, logical model, XML conformance classes and instances)
  - July: review draft report
  - early Aug: submit draft report to HDWG for feedback at HDWG annual meeting Aug 2014 in NY

## **Photos**

\<img alt="[GW2IE_Vienna2014_Photo1](GW2IE_Vienna2014_Photo1.md).JPG" height="730" src="<https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/05-08May2014--GW2IEMeeting18/GW2IE_Vienna2014_Photo1.JPG>" width="1094" /\> \<img alt="[GW2IE_Vienna2014_Photo2](GW2IE_Vienna2014_Photo2.md).JPG" height="730" src="<https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/05-08May2014--GW2IEMeeting18/GW2IE_Vienna2014_Photo2.JPG>" width="1094" /\>
