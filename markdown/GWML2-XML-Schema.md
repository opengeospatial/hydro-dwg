# **GWML2 XML Schema**

## **Packages**

1.  Version 2.0
    - \<a href="<http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.0/gwml2.xsd>" title="Integrating schema (gwml2.xsd)"\>Integrating schema (gwml2.xsd)
    - [Main (units / aquifers, fluid bodies, voids)](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.0/gwml2-main.xsd)
    - [Constituent (water quality)](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.0/gwml2-constituent.xsd)
    - [Flow (groundwater flow)](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.0/gwml2-flow.xsd)
    - [Well (water wells, monitoring sites, springs)](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.0/gwml2-well.xsd)
    - [WellConstruction (water well construction)](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.0/gwml2-wellconstruction.xsd)
2.  Version 2.1
    - \<a href="<http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.1/gwml2.xsd>" title="Integrating schema (gwml2.xsd)"\>Integrating schema (gwml2.xsd)
    - [Main (units / aquifers, fluid bodies, voids)](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.1/gwml2-main.xsd)
    - [Constituent (water quality)](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.1/gwml2-constituent.xsd)
    - [Flow (groundwater flow)](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.1/gwml2-flow.xsd)
    - [Well (water wells, monitoring sites, springs)](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.1/gwml2-well.xsd)
    - [WellConstruction (water well construction)](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.1/gwml2-wellconstruction.xsd)
3.  Version 2.2
    - \<a href="<http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.2/gwml2.xsd>" title="Integrating schema (gwml2.xsd)"\>Integrating schema (gwml2.xsd)
    - [Main (units / aquifers, fluid bodies, voids)](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.2/gwml2-main.xsd)
    - [Constituent (water quality)](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.2/gwml2-constituent.xsd)
    - [Flow (groundwater flow)](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.2/gwml2-flow.xsd)
    - [Well (water wells, monitoring sites, springs)](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.2/gwml2-well.xsd)
    - [WellConstruction (water well construction)](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.2/gwml2-wellconstruction.xsd)

### Schematron (and XSLT validation tools generated from them)

Schematron files are located here:

<https://xp-dev.com/svn/gwml2/Documents/schematron/>

sch file turned into XSLT that generate SVRL (rule test results)

- [xml-rules.xslt](http://gin.gw-info.net/service/schematron/gen_xslt_gwml/xml-rules.xslt) Must be passed by all instances
- [gwml2-well.xslt](http://gin.gw-info.net/service/schematron/gen_xslt_gwml/gwml2-well.xslt) specific for wells
- [gwml2-well-vertical.xslt](http://gin.gw-info.net/service/schematron/gen_xslt_gwml/gwml2-well-vertical.xslt) specific for vertical wells
- [gwml2-well-gu.xslt](http://gin.gw-info.net/service/schematron/gen_xslt_gwml/gwml2-well-gu.xslt) Geologic unit logs
- [gwml2-well-em.xslt](http://gin.gw-info.net/service/schematron/gen_xslt_gwml/gwml2-well-em.xslt) Earth material logs
- [gwml2-construction.xslt](http://gin.gw-info.net/service/schematron/gen_xslt_gwml/gwml2-construction.xslt) Well construction

The schemas are validating - July 15th 2014 **FL**

Attached modified version of GWML2 Nucleus schema ( [gwml2-nucleus.xsd](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/GWML2-XML-Schema/gwml2-nucleus.xsd)) with [GW_UnitVoidProperty](GW_UnitVoidProperty), [GW_UnitFluidProperty](GW_UnitFluidProperty) and [GW_Mixture](GW_Mixture) association classes correctly encoded. -- [BruceSimons](BruceSimons) - 18 Aug 2014

# **Instance documents**

## **Development**

| Package | Class | Developer |
|:---|:---|:---|
| **Nucleus** | [GW_AquiferSystem](GW_AquiferSystem) | Eric (NRCan), Bruce (NGIS) ... |
|  | [GW_Aquifer](GW_Aquifer) | Bruce ([FedUni](FedUni), NGIS), Sylvain (BRGM) |
|  | [GW_ManagementArea](GW_ManagementArea) | Sylvain (BRGM), Alex (GNS) |
| **Constituent** | [GW_ChemicalConstituent](GW_ChemicalConstituent) | Bruce ([FedUni](FedUni)) |
| **Flow** | [GW_WaterBudget](GW_WaterBudget) | Alex (GNS) in [GW_ManagementArea](GW_ManagementArea) |
| **Well** | [GW_Well](GW_Well) | Eric (NRCan), Alex (GNS), Bruce (NGIS, [FedUni](FedUni)), Sylvain (BRGM) ... |
|  | [GW_MonitoringSite](GW_MonitoringSite) | Sylvain (BRGM), Alex (NZ), ... |
| **Well Construction** | [GW_WellConstruction](GW_WellConstruction) | Eric (NRCan), Bruce (NGIS, [FedUni](FedUni))... |

## **Examples**

Instance documents are located in SVN, : <https://xp-dev.com/svn/gwml2/Documents/instance/> examples below might be out of date

1.  Nucleus package
    - [Aquifer System](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/instances/app_ext_zone.xml): based on [GIN unit](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/GWML2-XML-Schema/app_ext_zone.pdf). \[[EricBoisvert](EricBoisvert) - 10 Jun 2014\]
    - [GW_Aquifer](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/GWML2-XML-Schema/BRGM_Aquifer_light.xml) : based [BDLISA](http://reseau.eaufrance.fr/geotraitements/bdlisa/files/entite/107AK01.pdf) \[[SylvainGrellet](SylvainGrellet) - 08 Aug 2014\]
    - [GW_ManagementArea](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/GWML2-XML-Schema/BRGM_ManagementArea_light.xml) : based on EU Water Framework Directive Ground Water Body \[[SylvainGrellet](SylvainGrellet) - 08 Aug 2014\]
    - \<a href="<https://xp-dev.com/svn/gwml2/Documents/instance/GW_ManagementArea_GNS_uc2.xml>" title="[GW_ManagementArea_GNS_uc2](GW_ManagementArea_GNS_uc2).xml"\>[GW_ManagementArea](GW_ManagementArea) : incl water budget, resembling (ground) water management zone (often congruent with catchments) used in NZ -- [AlexKmoch](AlexKmoch) - 02 Jul 2015
    - [GWML2-GW_Aquifer-FedUni.xml](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/GWML2-XML-Schema/GWML2-GW_Aquifer-FedUni.xml) : [GW_Aquifer](GW_Aquifer) example and mapping comments for Federation University database (with other contained features byReference) -- [BruceSimons](BruceSimons) - 03 Sep 2014
2.  Well package
    - [Water well](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/instances/ab.ww.402557.xml) based on [ab.ww.402557](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gin/wfs/gin?REQUEST=GetFeature&INFO_FORMAT=text/html&FID=ab.ww.402557) ( [GWML 1](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gin/wfs/gin?REQUEST=GetFeature&INFO_FORMAT=text/xml&FID=ab.ww.402557)) - includes construction. \[[EricBoisvert](EricBoisvert) - 10 Jun 2014\]
    - \<a href="<https://xp-dev.com/svn/gwml2/Documents/instance/GW_Well_GNS_uc1.xml>" title="[GW_Well_GNS_uc1](GW_Well_GNS_uc1).xml"\>[GW_Well](GW_Well) in the Horowhenua area (with geology log) -- [AlexKmoch](AlexKmoch) - 02 Jul 2015
    - [GW_Well](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/GWML2-XML-Schema/BRGM_Well_light.xml) based on national [BSS Eau](http://www.ades.eaufrance.fr/FichePtEau.aspx?code=01846X0361/P1&type_pt_eau=2) \[[SylvainGrellet](SylvainGrellet) - 08 Aug 2014\]
    - [GWML2-GW_Well-FedUni.xml](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/GWML2-XML-Schema/GWML2-GW_Well-FedUni.xml) - GWML2 [GW_Well](GW_Well) example and mapping comments for Federation University database (with other contained features byReference) -- [BruceSimons](BruceSimons) - 03 Sep 2014
    - \<a href="<https://xp-dev.com/svn/gwml2/Documents/instance/GW_MonitoringSite_GNS_uc1.xml>" title="[GW_MonitoringSite_GNS_uc1](GW_MonitoringSite_GNS_uc1).xml"\>[GW_MonitoringSite](GW_MonitoringSite) monitoring well, NZ -- [AlexKmoch](AlexKmoch) -- [AlexKmoch](AlexKmoch) - 02 Jul 2015
    - [GWML2-GW_MonitoringSite-FedUni.xml](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/GWML2-XML-Schema/GWML2-GW_MonitoringSite-FedUni.xml) : [GW_MonitoringSite](GW_MonitoringSite) example and mapping comments for Federation University database (with other contained features byReference) -- [BruceSimons](BruceSimons) - 03 Sep 2014
    - \<a href="<https://xp-dev.com/svn/gwml2/Documents/instance/GW_Spring_GNS_uc1.xml>" title="[GW_Spring_GNS_uc1](GW_Spring_GNS_uc1).xml"\>[GW_Spring](GW_Spring) Te Waikoropupu Springs (Pupu Springs, NZ) -- [AlexKmoch](AlexKmoch) -- [AlexKmoch](AlexKmoch) - 02 Jul 2015
    - [GWML2-Spring-FedUni.xml](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/GWML2-XML-Schema/GWML2-Spring-FedUni.xml) : [GW_Spring](GW_Spring) example and mapping comments for Federation University database (with other contained features byReference) -- [BruceSimons](BruceSimons) - 03 Sep 2014
    - [GWML2-GeologyLog-FedUni.xml](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/GWML2-XML-Schema/GWML2-GeologyLog-FedUni.xml) [GW_GeologyLog](GW_GeologyLog) example and mapping comments for Federation University database (with other contained features byReference) -- [BruceSimons](BruceSimons) - 03 Sep 2014
    -  [DataRecord](DataRecord) definitions : [EarthMaterial](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/instances/earthMaterial.xml) and [GeologicUnit](http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/instances/geologicUnit.xm) (According to clause 8.2.1 of OGC 08-094-r1 / SWE Common Data Model)
3.  Well Construction package
    - [GWML2-Borehole-FedUni.xml](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/GWML2-XML-Schema/GWML2-Borehole-FedUni.xml) GWML2 Borehole example and mapping comments for Federation University database (with other contained features byReference) -- [BruceSimons](BruceSimons) - 03 Sep 2014
4.  Constituent package
    - [GWML2-GW_Constituent-FedUni.xml](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/GWML2-XML-Schema/GWML2-GW_Constituent-FedUni.xml) : example and mapping comments for Federation University database (with other contained features byReference) -- [BruceSimons](BruceSimons) - 03 Sep 2014
5.  Flow package
    - \<a href="<https://xp-dev.com/svn/gwml2/Documents/instance/GW_ManagementArea_GNS_uc2.xml>" title="[GW_WaterBudget](GW_WaterBudget) in [GW_ManagementArea_GNS_uc2](GW_ManagementArea_GNS_uc2).xml"\>[GW_WaterBudget](GW_WaterBudget) work in progress (includes [GW_Recharge](GW_Recharge) example) -- [AlexKmoch](AlexKmoch) -- [AlexKmoch](AlexKmoch) - 02 Jul 2015
    - [GWML2-GW_InterFlow_FedUni.xml](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/GWML2-XML-Schema/GWML2-GW_InterFlow_FedUni.xml): Example [GW_Discharge](GW_Discharge), [GW_Recharge](GW_Recharge) based on January 1993 Lake Murdeduke data, [FedUni](FedUni) -- [BruceSimons](BruceSimons) - 08 Aug 2014

- [BRGM_Aquifer_light.xml](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/GWML2-XML-Schema/BRGM_Aquifer_light.xml): Aquifer from national BD LISA (Base de Données des Limites des Systèmes Aquifères) database


- [BRGM_ManagementArea_light.xml](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/GWML2-XML-Schema/BRGM_ManagementArea_light.xml): BRGM [GW_ManagementArea](GW_ManagementArea) based on EU Water Framework Directive Ground Water Body


- [BRGM_Well_light.xml](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/GWML2-XML-Schema/BRGM_Well_light.xml): BRGM from French national BSS (Banque Nationale du Sous-Sol) includes piezometer, construction, link to the Aquifer described above. 1. Related Examples
  - [GWML2-OM_Observation-FedUni.xml](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/GWML2-XML-Schema/GWML2-OM_Observation-FedUni.xml) : [OM_Observation](OM_Observation) water well example observations and mapping comments for Federation University database (with other contained features byReference) -- [BruceSimons](BruceSimons) - 03 Sep 2014
  - [GWML2-SF_Specimen-FedUni.xml](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/GWML2-XML-Schema/GWML2-SF_Specimen-FedUni.xml) : [SF_Specimen](SF_Specimen) water well example specimen and mapping comments for Federation University database (with other contained features byReference) -- [BruceSimons](BruceSimons) - 03 Sep 2014
