# Australian National Groundwater Information System (NGIS) to GWML2 Mapping

## Background

This page contains various mappings between the Australian National Groundwater Information System (NGIS) standard, as implemented in the Bureau of Meteorology's database, and [GroundWaterML2](GroundWaterML2) (GWML2). The mappings are presented as UML, as annotated instance examples (XML), and as an excel spreadsheet ( [NGIS_GWML_Mapping.xlsx](https://wiki.csiro.au/download/attachments/671386283/NGIS_GWML_Mapping.xlsx?version=1&modificationDate=1412307902717&api=v2)). The UML diagrams are based on the methodology outlined at [ModelMapping](https://wiki.csiro.au/display/SIRF/ModelMapping). The actual UML model contains more information than can be shown in the diagrams.

The mappings were appropriate and valid against GWML2.0 as at 1 October 2014. Subsequent changes to GWML2 have not been incorporated into the mappings presented here.

## GWML2:[GW_Well](GW_Well)

The GWML2 [GW_Well](GW_Well) is "A shaft or hole sunk, dug or drilled into the Earth to extract water.", which equates to the NGIS [NGIS_Bore](NGIS_Bore) feature.

The [GW_Well](GW_Well) feature has associations with its construction components (gwWellConstruction:Borehole), groundwater fluid (gwWellBody:[GW_FluidBody](GW_FluidBody)), hydrogeological unit (gwWellUnit:[GW_HydrogeoUnit](GW_HydrogeoUnit)) and geology log (gwWellGeology:[GW_GeologyLog](GW_GeologyLog)).

These are all shown as separate mappings here, but some (such as gwWellConstruction:Borehole, gwWellBody:[GW_FluidBody](GW_FluidBody), and gwWellGeology:[GW_GeologyLog](GW_GeologyLog)) are likely to be included in-line with the [GW_Well](GW_Well) feature when deployed.

[NGIS-GW_Well-Mapping.jpg](https://wiki.csiro.au/download/attachments/671386283/NGIS-GW_Well-Mapping.jpg?version=1&modificationDate=1412299101057&api=v2) (UML mapping of [NGIS_Bore](NGIS_Bore) to [GW_Well](GW_Well))

[GW_Well_NGIS_uc5-mapping.xml](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/GWML2NGISMapping/GW_Well_NGIS_uc5-mapping.xml) (annotated XML instance of [GW_Well](GW_Well) and Borehole populated from NGIS data)

\<h2 id="Mappings:[NGIStoGWML2](NGIStoGWML2)-GWML2:Borehole"\>GWML2:Borehole\</h2\>

GWML2 Borehole captures data relating to the construction components of the [GW_Well](GW_Well), such as collar, headworks, screens, casings, filters and seals. These components are specified via the bholeConstruction:[WellConstruction](WellConstruction) feature.

Although shown here with a separate UML Mapping and XML instance document, and in a separate application schema in GWML2, it is anticipated that Borehole and [WellConstruction](WellConstruction) will be delivered in-line with [GW_Well](GW_Well) rather than by reference.

The NGIS UML mapping is shown in two parts for presentation purposes:

1.  The [NGIS_ConstructionLog](NGIS_ConstructionLog) to GWML2 Borehole mapping ( [NGIS-Borehole-Mapping.jpg](https://wiki.csiro.au/download/attachments/671386283/NGIS-Borehole-Mapping.jpg?version=1&modificationDate=1412299242533&api=v2));
2.  The [NGIS_ConstructionLog](NGIS_ConstructionLog) to GWML2 [WellConstruction](WellConstruction) components ( [NGIS-Borehole_Component-Mapping.jpg](https://wiki.csiro.au/download/attachments/671386283/NGIS-Borehole_Component-Mapping.jpg?version=1&modificationDate=1412299442463&api=v2));

An XML instance of GWML2 Borehole with construction components based on the NGIS data is contained in the [GW_Well](GW_Well) instance example ( [GW_FluidBody-NGIS_uc5-mapping.xml](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/GWML2NGISMapping/GW_FluidBody-NGIS_uc5-mapping.xml)). \<h2 id="Mappings:[NGIStoGWML2](NGIStoGWML2)-GWML2:[GW_GeologyLog](GW_GeologyLog)"\>GWML2:[GW_GeologyLog](GW_GeologyLog)\</h2\>

[GW_GeologyLog](GW_GeologyLog) is a "specialization of the [OM_Observation](OM_Observation) class to allow defining the log start end depth for coverages."

For NGIS, two types of [GW_GeologyLog](GW_GeologyLog) are provided:

1.  A lithology log based on [NGIS_LithologyLog](NGIS_LithologyLog) ( [NGIS_Lithology-GW_GeologyLog-Mapping.jpg](https://wiki.csiro.au/download/attachments/671386283/NGIS_Lithology-GW_GeologyLog-Mapping.jpg?version=1&modificationDate=1412299932217&api=v2)). The result value for the lithology contains the [MajorLithCode](MajorLithCode), [MinorLithCode](MinorLithCode) and Description properties;
2.  A stratigraphy log based on [NGIS_BoreholeLog](NGIS_BoreholeLog) ( [NGIS_Stratigraphy-GW_GeologyLog-Mapping.jpg](https://wiki.csiro.au/download/attachments/671386283/NGIS_Stratigraphy-GW_GeologyLog-Mapping.jpg?version=1&modificationDate=1412299932177&api=v2)). The result value for the stratigraphic log is a reference (http-URI) to the appropriate [GW_Aquifer](GW_Aquifer) unit based on the HGUNumber and the [NGIS_BoreholeLog](NGIS_BoreholeLog):Description field.

An instance document containing examples of these is conyained in the [GW_Well](GW_Well) instance ( [GW_FluidBody-NGIS_uc5-mapping.xml](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/GWML2NGISMapping/GW_FluidBody-NGIS_uc5-mapping.xml)).

## GWML2:[GW_FluidBody](GW_FluidBody)

"A distinct body of some fluid (liquid, gas) that fills the voids of a container such as an aquifer, system of aquifers, water well, etc; in hydrogeology this body is usually constituted from groundwater, but the model allows for other types of fillers e.g. petroleum."

For NGIS the [GW_FluidBody](GW_FluidBody) information is obtained from properties (HGUTransmissivity, [HGUHydraulicK](HGUHydraulicK), HGUStorage) contained within the [NGIS_HydrogeologicUnit](NGIS_HydrogeologicUnit) table. [GW_FluidBody](GW_FluidBody) is referenced from both the [GW_Well](GW_Well) (gwWellBody) and the [GW_HydrogeoUnit](GW_HydrogeoUnit) (gwUnitFluidBody) features. [GW_FluidBody](GW_FluidBody) could be established as a an independent feature service or contained in-line in both of these features.

The UML NGIS to GWML2 mapping for [GW_FluidBody](GW_FluidBody) is [NGIS-GW_UnitFluid-Mapping.jpg](https://wiki.csiro.au/download/attachments/671386283/NGIS-GW_UnitFluid-Mapping.jpg?version=1&modificationDate=1412299932207&api=v2) and an example instance at [GW_FluidBody-NGIS_uc5-mapping.xml](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/GWML2NGISMapping/GW_FluidBody-NGIS_uc5-mapping.xml).

## GWML2:[GW_HydrogeoUnit](GW_HydrogeoUnit)

The [GW_HydrogeoUnit](GW_HydrogeoUnit) is "Any soil or rock unit or zone which by virtue of its hydraulic properties has a distinct influence on the storage or movement of groundwater". In GWML2 it is an abstract feature, that is made concrete by the [GW_Aquifer](GW_Aquifer), [GW_ConfingBed](GW_ConfingBed), [GW_AquiferSystem](GW_AquiferSystem) and [GW_Basin](GW_Basin) classes.

Features in [NGIS_HydrogeologicUnit](NGIS_HydrogeologicUnit) will, depending on their properties, map to the [GW_Aquifer](GW_Aquifer), [GW_ConfiningBed](GW_ConfiningBed), [GW_AquiferSystem](GW_AquiferSystem) or [GW_Basin](GW_Basin).

It is anticipated that the NGIS WFS will deliver these features as separate features referenced from [GW_Well](GW_Well), rather than in-line.

The NGIS to GWML2 UML mappings for common [GW_HydrogeoUnit](GW_HydrogeoUnit) properties is shown at [NGIS-HydrogeoUnit_Common-Mapping.jpg](https://wiki.csiro.au/download/attachments/671386283/NGIS-HydrogeoUnit_Common-Mapping.jpg?version=1&modificationDate=1412299442470&api=v2).

An XML instance document, containing instances of all four [GW_HydrogeoUnit](GW_HydrogeoUnit) concrete feature types is at ( [GW_HydrogeoUnit_NGIS_uc5-mapping.xml](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/GWML2NGISMapping/GW_HydrogeoUnit_NGIS_uc5-mapping.xml))

### GWML2:[GW_Aquifer](GW_Aquifer)

In GWML 2 a [GW_Aquifer](GW_Aquifer) is "A body of ground that contains, or potentially contains or contained, sufficient saturated permeable material to yield significant quantities of water to wells and springs".

For NGIS this equates to the hydrogeologic unit (HGU) [NGIS_HydrogeologicUnit](NGIS_HydrogeologicUnit) entries where the [HGUAquiferType](HGUAquiferType) is not equal to "Aquitard".

The UML mapping between [NGIS_HydrogeologicUnit](NGIS_HydrogeologicUnit) and [GW_Aquifer](GW_Aquifer) is [NGIS-GW_Aquifer-Mapping.jpg](https://wiki.csiro.au/download/attachments/671386283/NGIS-GW_Aquifer-Mapping.jpg?version=1&modificationDate=1412299442480&api=v2).

### GWML2:[GW_ConfiningBed](GW_ConfiningBed)

A [GW_ConfiningBed](GW_ConfiningBed) is "A layer of rock having very low porosity and in consequence hydraulic conductivity that hampers the movement of water into and out of an aquifer".

For NGIS this is interpreted as a hydrogeologic unit (HGU) [NGIS_HydrogeologicUnit](NGIS_HydrogeologicUnit) entry where the [HGUAquiferType](HGUAquiferType) is equal to "Aquitard".

The UML mapping between [NGIS_HydrogeologicUnit](NGIS_HydrogeologicUnit) and [GW_ConfiningBed](GW_ConfiningBed) is [NGIS-GW_ConfiningBed-Mapping.jpg](https://wiki.csiro.au/download/attachments/671386283/NGIS-GW_ConfiningBed-Mapping.jpg?version=2&modificationDate=1412636696943&api=v2)

### GWML2:[GW_AquiferSystem](GW_AquiferSystem)

"Aquifer system - A body of permeable and poorly permeable material that functions regionally as a water-yielding unit; it comprises two or more permeable beds separated at least locally by confining beds that impede groundwater movement but do not greatly affect the regional hydraulic continuity of the system; includes both saturated and unsaturated parts of permeable material."

For NGIS, [GW_AquiferSystems](GW_AquiferSystems) are considered to equate with hydrogeologic complex (HGC) and National Aquifer Framework HGC ([NafHGC](NafHGC)) entries in [NGIS_HydrogeologicUnit](NGIS_HydrogeologicUnit).

The UML mapping between [NGIS_HydrogeologicUnits](NGIS_HydrogeologicUnits) and [GW_AquiferSystems](GW_AquiferSystems) is [NGIS\_-GW_AquiferSystem-Mapping.jpg](https://wiki.csiro.au/download/attachments/671386283/NGIS_-GW_AquiferSystem-Mapping.jpg?version=1&modificationDate=1412299442437&api=v2).

### GWML2:[GW_Basin](GW_Basin)

"A large hydrogeologically defined body of ground typically consisting of hydraulically connected hydrogeological units, whose waters are flowing to a common or multiple outlets, and which is delimited by a groundwater divide."

For NGIS, [GW_Basins](GW_Basins) are considered to map to provinces ([ProvName](ProvName)) or National Aquifer Framework provences ([NafProvName](NafProvName)) entries in [NGIS_HydrogeologicUnit](NGIS_HydrogeologicUnit).

The UML mapping between [NGIS_HydrogeologicUnits](NGIS_HydrogeologicUnits) and [GW_Basin](GW_Basin) is [NGIS-GW_Basin-Mapping.jpg.](https://wiki.csiro.au/download/attachments/671386283/NGIS-GW_Basin-Mapping.jpg?version=1&modificationDate=1412299932197&api=v2)

## GWML2:[GW_ManagementArea](GW_ManagementArea) (need to update based on May 2015 changes to GWML2).

"Area of ground identified for groundwater management purposes and can be delineated by human factors such as policy or regulation concerns, as well as hydrogeological or hydrological concerns. Does not necessarily align exactly with hydrogeoogical or hydrological boundaries."

Mapping between the NGIS database and [GW_ManagementArea](GW_ManagementArea) is based on initial NGIS schema and has not been validated using actual NGIS data. The UML for the mapping ( [NGIS_ManagementZone.jpg](https://wiki.csiro.au/download/attachments/671386283/NGIS_ManagementZone.jpg?version=1&modificationDate=1412903564767&api=v2)) has been created based on the NGIS online schema. A XML instance document based an anticipated data is at [GWML2-GW_ManagementArea-NGIS.xml](https://wiki.csiro.au/download/attachments/671386283/GWML2-GW_ManagementArea-NGIS.xml?version=1&modificationDate=1412307410570&api=v2).

-- BruceSimons - 21 May 2015
