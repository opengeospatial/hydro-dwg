# **Discussion Page for** **GWML 2 Consolidated Entity List** ---++ Main topics:

[Topic 1: Hydrogeological data processing chain](#Topic1)

[Topic 2: Surface water point of view versus groundwater point of view](#Topic2)

[Topic 3: Differences between surface watershed and subsurface watershed](#Topic3)

[Topic 4: International Glossary of Hydrogeology](#Topic4)

[Topic 5: Hard data and soft hypotheses in hydrogeology](#Topic5)

[Topic 6: Groundwater table as an ontological metaphor](#Topic6)

[Topic 7: Aqiufer, Aquitard and Aqiclude](#Topic7)

[Topic 8: Groundwater Yield](#Topic8)

[Topic 9: Sampling Feature in GWML](#Topic9)

[Topic 10: Relation between GWML and GeoSciML (more strictly, relation between HydrogeologicUnit and GeologicUnit)](#Topic10)

-- JanuszMichalak - 05 Feb 2013

------------------------------------------------------------------------

------------------------------------------------------------------------

##### \<a name="Topic1"\>**Topic 1: Hydrogeological data processing chain**

\<img alt="" height="709" src="<https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/Gwml2ConsolFeatureListDiscussionPage/processing_chain.svg>" width="1004" /\>

In contemporary hydrogeology, almost all research projects concerning state of groundwater systems are finalized by numerical groundwater flow modeling (last column in table above). It is only way to combine all collected data together in one consistent system. It allows comparing data of different types and from different sources, elimination or calibration of data which are inconsistent with other more reliable data. It is also only way to apply advanced methods of analysis and to achieve the best practical results.

Groundwater flow equation as a basis of numerical modeling is one of most important elements in paradigm of hydrogeology. It influences not only on modeler thinking but also on our notions of hydrogeological phenomena and their interrelationships. It should be applied in all other earlier stages of research projects, from field works to data maintenance in database (columns from first to last but one in table above). Fundamental conception is based on boundary value problem theory in mathematics. The simplest schema is on image below:

\<img alt="[BoundaryProblem](BoundaryProblem)" height="212" src="<https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/Gwml2ConsolFeatureListDiscussionPage/image2.png>" width="319" /\>

Schematic relations between main components of fundamental conceptual model of hydrogeological system. Explanation: \_R'\_ – boundary of system – set of boundary points *r'(x',y',z')*\[belonging to\] *R'* – ground surface, confined bed surface, bottoms of surface waters, screens of wells (as an internal boundaries), etc, \_M'\_ – interior of system – set of interior points *m'(x",y",z"))*\[belonging to\] \_M'\_ – physical space of groundwater flow – a composition of aquifer and aquitards, \_P'\_ – exterior (surroundings) – set of points *p'(x,y,z) )*\[belonging to\] *P'* – surroundings of hydrogeological system, \_c1, c2, c3, c4\_ – impacts of surroundings on interior of hydrogeological system – discharging by surface waters, recharging by infiltration, water abstraction and injection by wells, water exchange between two systems, etc.

Such a point of view allows unambiguously determine:– what impacts on what,– character of impact, – what is a effect (result) and what is a reason (cause).

It all should be clearly expressed in data model for GWML.

-- JanuszMichalak - 06 Feb 2013

------------------------------------------------------------------------

------------------------------------------------------------------------

##### \<a name="Topic2"\>**Topic 2: Surface water point of view versus groundwater point of view**

xxx

------------------------------------------------------------------------

------------------------------------------------------------------------

##### \<a name="Topic3"\>**Topic 3: Differences between surface watershed and subsurface watershed**

xxx

------------------------------------------------------------------------

------------------------------------------------------------------------

##### \<a name="Topic4"\>**Topic 4: International Glossary of Hydrogeology**

There is no International Glossary of Hydrogeology as it is in hydrology (\_International [Glossary\_](Glossary_) of \_Hydrology\_ *).*As I know the most complete and exhaustive glossary of hydrogeology is “Hydrogeological Dictionary” (in Polish: Słownik Hydrogeologiczny): <http://www.mos.gov.pl/g2/kategoriaPliki/2009_04/d6e1baf4ccc946e5c1f7cac62c532e96.pdf>. It contains 1425 terms in five languages (Polish, English, French German and Russian) but definitions and explanations are in Polish only.

------------------------------------------------------------------------

------------------------------------------------------------------------

##### \<a name="Topic5"\>**Topic 5: Hard data and soft hypotheses in hydrogeology**

xxx

------------------------------------------------------------------------

------------------------------------------------------------------------

##### \<a name="Topic6"\>**Topic 6: Groundwater table as an ontological metaphor**

Groundwater table (level), piezometric level, potentiometyric surface, hydraulic head, state of groundwater

------------------------------------------------------------------------

------------------------------------------------------------------------

##### **\<a name="Topic7"\>Topic 7:** **Aqiufer, Aquitard and Aqiclude**

There is no possibility to solve problem of relation between three basic subtypes of Hydrogeological Unit on base of descriptive (textual) short definition. Quantitative comparison is presented below:

Maximal value of hydraulic conductivity (k) for natural rocks (aquifers) is about 200 m/d (about 2.3\*10\<sup\>-3\</sup\> m/s)

Typical value for aqifer (average sand) is about 10 m/d (about 10\<sup\>-4\</sup\> m/s)

Approximate threshold quantity of hydraulic conductivity (k) between aquifer and aquitard is 1 m/d (about 10\<sup\>-5\</sup\> m/s).

Typical value for aqitard (glacial till) is 10\<sup\>-3\</sup\> m/d (about 10\<sup\>-8\</sup\> m/s)

Approximate threshold quantity of hydraulic conductivity (k) between aquitard and aquiclude is 10\<sup\>-4\</sup\> m/d (about 10\<sup\>-9\</sup\> m/s).

Minimal value of hydraulic conductivity (k) for aquiclude is 0 (for example not fractured crystalline rocks).

Approximate rate between typical conductivity of aqifer and aqutard is about 1000. In case of parallel flow role of aqitard can be omitted. But in case of orthogonal flow (horizontal in aqifer and vertical in aquitard) both values can be comparable. See image bellow:

(IMAGE)\<img alt="" height="328" src="<https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/Gwml2ConsolFeatureListDiscussionPage/rysunek-2.png>" width="815" /\>

(source: <http://www.psh.gov.pl/plik/id,6091.pdf> : J. Michalak et al., 2011, page 86)

T\<sup\>B\</sup\>\<sub\>P\</sub\> – horizontal transmissivity of cuboidal fragment of aquifer,

T\<sup\>B\</sup\>\<sub\>Z\</sub\> – vertical transmissivity of cuboidal fragment of aquitard, in case B (on the right) T\<sup\>B\</sup\>\<sub\>Z\</sub\> is equal to T\<sup\>B\</sup\>\<sub\>P\</sub\>.

In case A (on the left) T\<sup\>B\</sup\>\<sub\>P\</sub\> of aquifer is 10 000 times greater than T\<sup\>B\</sup\>\<sub\>Z\</sub\> of aquitard but this case is rather theoretical and case B is fully realistic.

------------------------------------------------------------------------

From the definitions in the consolidated list and the very interesting explanation provided by Janusz above, I start thinking that aquifer / aquitard are just roles assigned in a particular context.

\<img alt="Aquifer as a role" height="463" src="<https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/Gwml2ConsolFeatureListDiscussionPage/aquifer_role.png>" width="500" /\>

(I know we are not supposed to start drawing boxes and model, but I can't represent it otherwise)

-- EricBoisvert - 25 Jan 2013

------------------------------------------------------------------------

[HydrologicRole](HydrologicRole) is a very interesting conception, but in my understanding "role" is rather a property, not a feature. Feature can play more then one role also at the same time.

By the way: Association class cannot be implemented in XML directly. It must be substituted by kind proxy (broker) class, as it is often done in [GeoSciML](GeoSciML).

I propose to return to „traditional” conception as it is on image below:

\<img alt="[HydrogeologicUnit](HydrogeologicUnit)" height="432" src="<https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/Gwml2ConsolFeatureListDiscussionPage/HydrogeologicUnit.png>" width="595" /\>

-- JanuszMichalak - 05 Feb 2013

------------------------------------------------------------------------

Hi Eric,

As I see term "Hydrostratigraphic Unit" (often used in USA and Canada) is a synonym of "Hydrogeological Unit" in Europe.

For me, element "stratigraphic" is confusing in case of hydrogeology. It suggests that it is something layered only. Definition of "stratigraphy" in Wikipedia:

"Stratigraphy is a branch of geology which studies rock layers and layering (stratification). It is primarily used in the study of sedimentary and layered volcanic rocks".

It is very hard use this term to fractured and karstic aquifers.

------------------------------

Definition of **Hydrostratigraphic Unit** in GWML v.1.0:

**Formation**(JM: I think it is synonym of Geologic Unit)**, or part of a formation, or a group**(JM: in UML it is collection) **of formation** in which there are similar hydrologic characteristics that allow for grouping into aquifers and associated confininf layers (Domenico & Schwartz, 1997)Hydrostratigraphic units were originally defined by Maxey (1964) as bodies of rock with considerable lateral extent that act as a reasonably distinct hydrologic system. It is clear from Maxey's definition that hydrostratigraphic units were to be hydraulically continuous, mappable, and scale-independent entities. Mappability, in this case, means the subsurface geology can be subdivided according to permeability (Seaber, 1988). Thus, a single hydrostratigraphic unit may include a formation, part of a formation, or a group of formations.-Maxey, G. B., 1964, Hydrostratigraphic units: Journal of Hydrology, v. 2, p. 124-129.

------------------------------------------------------------------------

Agree. For clarification. [GeologicUnit](GeologicUnit) (in [GeoSciML](GeoSciML)) is just a package of rock delimited by some properties, so it's not only lithostratigraphic unit, but any kind of unit. The same package of rock can be divided in different ways and even cut across different classifications schemes. So, as proposed by Maxey (and also by Lohman,1972) it can be a group or part of (lithostratigraphic) formations.

\-**Lohman, S. W., and others**, 1972, Definitions of selected ground-water terms--Revisions and conceptual refinements: U.S. Geological Survey, Water-Supply Paper 1988, 9 p.

-- EricBoisvert - 04 Feb 2013

------------------------------

More about "Hydrostratigraphic Unit":

A hydrostratigraphic unit can be defined as a **formation, part of a formation, or groups of formations** in which there are similar hydraulic characteristics allowing for grouping into aquifers or confining layers (aquitards). A simple example is an extensive gravel unit deposited during a single fluvial event that could be considered both a geologic unit and also, if saturated, a hydrostratigraphic unit.Many times the boundaries defining a hydrostratigraphic unit overlay those defining a single geologic unit. Several geologic units with similar hydraulic properties also may represent a single hydrostratigraphic unit if they are in direct contact with one another, despite lithologic or age differences. For example, although a Pliocene sand unit in contact with a Pleistocene gravel unit differ lithologically, they could be considered a single hydrostratigraphic unit (an aquifer) because ground water can easily flow between the two. Similarly, a blue clay adjacent to a brown or yellow clay are considered a single hydrostratigraphic unit (an aquitard) even though the colors may indicate different depositional environments, ages, or events. (source: <http://www.mcwra.co.monterey.ca.us/Agency_data/Hydrogeologic%20Reports/Salinas%20Basin%20Ft%20Ord%20Marina/STUDY_AREA_HYDROSTRATIGRAPH.HTM>)

------------------------------

I agree with above definition and it leads to conclusion: "Hydrogeological Unit (or Hydrostratigraphic Unit) is not a subtype of Geologic Unit (inheritance relation)". Correct relation between both feature types is bidirectional association with multiplicity many to many.

-- JanuszMichalak - 04 Feb 2013

------------------------------------------------------------------------

\> As I see term "Hydrostratigraphic Unit" (often used in USA and Canada) is a synonym of "Hydrogeological Unit" in Europe.

You are right, my diagram is incorrect. I should have used **[HydrogeologicUnit](HydrogeologicUnit)**. In GWML , [HydrostratigraphicUnit](HydrostratigraphicUnit) is a subtype of [HydrogeologicUnit](HydrogeologicUnit) (which is a subtype of [GeologicUnit](GeologicUnit))

\> "Hydrogeological Unit (or Hydrostratigraphic Unit) is not a subtype of Geologic Unit (inheritance relation)"

I think this is the core of the discussion to have here. We don't understand that inheritance relation the same way. My interpretation is : Inheritance relation does not mean that [HydrogeologicUnit](HydrogeologicUnit) is bounded by [GeologicUnit](GeologicUnit). It just says it's also a package of rock that is bounded differently.

As you point out: " *A simple example is an extensive gravel unit deposited during a single fluvial event that could be considered both a geologic unit and also, if saturated, a hydrostratigraphic unit*." and this is exactly what the inheritance relationship means: the same package of rock (with the same geologic properties), is bounded using saturation instead of lithologic contact. But it remains a package of rock (thus, inheritance).

-- EricBoisvert - 05 Feb 2013

------------------------------------------------------------------------

More examples where Aquifer as a Hydrogeological Unit is not a Geologic Unit:

\<img alt="Fractured Aquifer" height="350" src="<https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/Gwml2ConsolFeatureListDiscussionPage/fractured_aquifer.png>" width="401" /\>\<img alt="Fractured Thermal Aquifer" height="309" src="<https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/Gwml2ConsolFeatureListDiscussionPage/fractured_thermal_aquifer.png>" width="431" /\>\<img alt="Karstic Aquifer" height="274" src="<https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/Gwml2ConsolFeatureListDiscussionPage/karstic_aquifer.png>" width="634" /\>

-- JanuszMichalak - 05 Feb 2013

------------------------------------------------------------------------

Yes - I understand you point. An Hydrogeologic unit can cut across lithostratigraphic units. The UML does not say that Hydrogeologic unit must be a lithostratigraphic unit. The UML says that Hydrogeologic unit is another way to organise a package of rock, so it's another kind of geologic unit, See picture :

\<img alt="geologic_unit_section.png" height="643" src="<https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/Gwml2ConsolFeatureListDiscussionPage/geologic_unit_section.png>" width="960" /\>

A (Chrono), B (Litho) , and C (Hydrogeologic) are 3 different ways to organise the same package of rock. This is what the UML diagram says. They all are packages of rock

-- EricBoisvert - 06 Feb 2013

------------------------------------------------------------------------

I see we should return to our discussion (stopped few months ago) about relation between GWML and [GeoSciML](GeoSciML). More strictly, relation between [HydrogeologicUnit](HydrogeologicUnit) and [GeologicUnit](GeologicUnit).

So I moved the discusion to new separate topic nr 10 on the end of this page.

-- JanuszMichalak - 06 Feb 2013

------------------------------------------------------------------------

##### \<a name="Topic8"\>**Topic 8: Groundwater Yield**

xxx

------------------------------------------------------------------------

------------------------------------------------------------------------

##### **\<a name="Topic9"\>Topic 9:Sampling Feature in GWML**

xxx

------------------------------------------------------------------------

------------------------------------------------------------------------

##### **\<a name="Topic10"\>Topic 10:** **Relation between GWML and [GeoSciML](GeoSciML) (more strictly, relation between [HydrogeologicUnit](HydrogeologicUnit) and [GeologicUnit](GeologicUnit))**

In [GeoSciML](GeoSciML) [GeologicUnit](GeologicUnit) is a parent class for all underground units: **[GeologicUnit](GeologicUnit)**, [AllostratigraphicUnit](AllostratigraphicUnit), [AlterationUnit](AlterationUnit), [ArtificialGround](ArtificialGround), [BiostratigraphicUnit](BiostratigraphicUnit), [ChronostratigraphicUnit](ChronostratigraphicUnit), [DeformationUnit](DeformationUnit), [ExcavationUnit](ExcavationUnit), **[GeophysicalUnit](GeophysicalUnit)**, [LithodemicUnit](LithodemicUnit), [LithogeneticUnit](LithogeneticUnit), [LithologicUnit](LithologicUnit), [LithostratigraphicUnit](LithostratigraphicUnit), [LithotectonicUnit](LithotectonicUnit), [MagnetostratigraphicUnit](MagnetostratigraphicUnit), [MassMovementUnit](MassMovementUnit), Pedoderm, [PedostratigraphicUnit](PedostratigraphicUnit), [PolarityChronostratigraphicUnit](PolarityChronostratigraphicUnit), also **in GWML: [HydrogeologicUnit](HydrogeologicUnit)**.In consequence every object of type [HydrogeologicUnit](HydrogeologicUnit) (as an instance of class) is also of (sub-) type [GeologicUnit](GeologicUnit). In this case object of type [HydrogeologicUnit](HydrogeologicUnit) we can see as an object of type [GeologicUnit](GeologicUnit) with attribute “geologicUnitType = [HydrogeologicUnit](HydrogeologicUnit) ” and with additional hydrogeological properties.Class [GeologicUnit](GeologicUnit) is not abstract, it can be instantiated. So direct object of this type can exist (with attribute “geologicUnitType = [GeologicUnit](GeologicUnit) ”. In this case boundaries of object of type [HydrogeologicUnit](HydrogeologicUnit) can be different then of type [GeologicUnit](GeologicUnit). We have two types of object: with attribute “geologicUnitType = [HydrogeologicUnit](HydrogeologicUnit) ” and with attribute “geologicUnitType = [GeologicUnit](GeologicUnit) ".I think it is inconsistency concerning the [GeologicUnit](GeologicUnit) concept (and class) in [GeoSciML](GeoSciML) and we must deal with it in GWML. I see the same problem with [GeophysicalUnit](GeophysicalUnit) but in INSPIRE model for subtheme Geophysics is independent from subtheme Geology and in consequence from [GeoSciML](GeoSciML).This inheritance has also inconveniences in practical application: overloading by properties not needed for hydrogeology (quotation from [EricBoisvert](EricBoisvert) e-mail):

```
<?xml version="1.0" encoding="UTF-8"?>
 <gsmlgu:GeologicUnit gml:id="xtest" xmlns:xlink="http://www.w3.org/1999/xlink"
 xmlns:gml="http://www.opengis.net/gml/3.2"
 xmlns:gsmlem="http://xmlns.geosciml.org/EarthMaterial/3.0"
 xmlns:gsml="http://xmlns.geosciml.org/GeoSciML-Core/3.0"
 xmlns:gsmlgu="http://xmlns.geosciml.org/GeologicUnit/3.0"
 xmlns:gsmlpp="http://xmlns.geosciml.org/PhysicalProperties/3.0"
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
 xsi:schemaLocation="http://xmlns.geosciml.org/GeologicUnit/3.0
 http://schemas.geosciml.org/geologicunit/3.0/geologicUnit.xsd">
         <gsml:observationMethod xsi:nil="true" nilReason="missing"/>
         <gsml:purpose>instance</gsml:purpose>
         <gsml:relatedFeature xsi:nil="true" nilReason="missing"/>
         <gsml:classifier xsi:nil="true" nilReason="missing"/>
         <gsml:metadata xsi:nil="true"/>
         <gsmlgu:geologicUnitType xlink:href="http://./HydrostratigraphicUnit"/>
         <gsmlgu:bodyMorphology xsi:nil="true" nilReason="missing"/>
         <gsmlgu:unitComposition xsi:nil="true" nilReason="missing"/>
         <gsmlgu:exposureColor xsi:nil="true" nilReason="missing"/>
         <gsmlgu:outcropCharacter xsi:nil="true" nilReason="missing"/>
         <gsmlgu:rank xsi:nil="true" nilReason="missing"/>
         <gsmlgu:unitThickness xsi:nil="true" nilReason="missing"/>
         <gsmlgu:composition xsi:nil="true" nilReason="missing"/>
         <gsmlgu:metamorphicCharacter xsi:nil="true" nilReason="missing"/>
         <gsmlgu:part xsi:nil="true" nilReason="missing"/>
         <gsmlgu:physicalProperty xsi:nil="true" nilReason="missing"/>
         <gsmlgu:alterationCharacter xsi:nil="true" nilReason="missing"/>
         <gsmlgu:bedding xsi:nil="true" nilReason="missing"/>
         <gsmlgu:geochemistry xsi:nil="true" nilReason="missing"/>
 </gsmlgu:GeologicUnit>
```

To summarize depicted above, I think relation between both classes in form of association is better than in form of inheritance.

-- JanuszMichalak - 06 Feb 2013

------------------------------------------------------------------------

\> In this case boundaries of object of type [HydrogeologicUnit](HydrogeologicUnit) can be different then of type [GeologicUnit](GeologicUnit). We have two types of object: with attribute “geologicUnitType = [HydrogeologicUnit](HydrogeologicUnit) ” and with attribute “geologicUnitType = [GeologicUnit](GeologicUnit) ".

They are two different units (subdividing the same stack of rock). To be honest, I don't understand why "[GeologicUnit](GeologicUnit)" is in the enum. It probably means "unclassified" or "generic". What I would expect to see is a [HydrogeologicUnit](HydrogeologicUnit) geologicUnitType="[HydrogeologicUnit](HydrogeologicUnit)" (at this point it seems redundant because we only have 1 subtype, but we could have more) and a [GeologicUnit](GeologicUnit) geologicUnitType="[LithostratigraphicUnit](LithostratigraphicUnit)". They are two distinct units (or to be more precise, two distinct way to subdivide the same stack of rock).

As for unwanted property - you are right. At the last [GeoSciML](GeoSciML) meeting it has been recognised as being a problem and, we started working on a way to better package [GeoSciML](GeoSciML) to avoid imposing those properties if they are not wanted. [GeoSciML](GeoSciML) 4.0 (the one that will be proposed to OGC) decouples the properties from the main class, so a barebone [GeologicUnit](GeologicUnit) looks like

```
<?xml version="1.0" encoding="UTF-8"?>
 <gsmlgu:GeologicUnit gml:id="xtest" xmlns:xlink="http://www.w3.org/1999/xlink"
 xmlns:gml="http://www.opengis.net/gml/3.2"
 xmlns:gsmlem="http://xmlns.geosciml.org/EarthMaterial/3.0"
 xmlns:gsml="http://xmlns.geosciml.org/GeoSciML-Core/3.0"
 xmlns:gsmlgu="http://xmlns.geosciml.org/GeologicUnit/3.0"
 xmlns:gsmlpp="http://xmlns.geosciml.org/PhysicalProperties/3.0"
 xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
 xsi:schemaLocation="http://xmlns.geosciml.org/GeologicUnit/3.0
 http://schemas.geosciml.org/geologicunit/3.0/geologicUnit.xsd">
         <gsml:observationMethod xsi:nil="true" nilReason="missing"/>
         <gsml:purpose>instance</gsml:purpose>
         <gsml:relatedFeature xsi:nil="true" nilReason="missing"/>
         <gsml:classifier xsi:nil="true" nilReason="missing"/>
         <gsml:metadata xsi:nil="true"/>
         <gsmlgu:geologicUnitType xlink:href="http://./HydrostratigraphicUnit"/>
         <gsmlgu:physicalProperties>
                  <!-- custom property block -->
         </gsmlgu:physicalProperties>
 </gsmlgu:GeologicUnit>
```

Custom property blocks can be substituted to accomodate specific usage or requirements. We haven't tested it and we are still looking into the best way to address this issue - but we are addressing it.

-- EricBoisvert - 06 Feb 2013

------------------------------------------------------------------------

[GeoSciML4](GeoSciML4) - it is very good news. Now, [GeologicUnit](GeologicUnit) looks very similar to \_GeologicFeature\_ class. I see it is going in good direction. (I hope we will have “[EarthUnit](EarthUnit)” or “[GeoscientificUnit](GeoscientificUnit)” in this palace in [GeoSciML5](GeoSciML5).)

\_\>To be honest, I don't understand why "[GeologicUnit](GeologicUnit)" is in the enum.\_

It is consistent with fact that [GeologicUnit](GeologicUnit) is not abstract so can be instantiated. I think it was designed as a pure geologic unit on the beginning and was extended later as a parent class for many other types of unit in scope of geosciences. I hope it will be amended in new version.

In that case, should we direct our works on GWML2 to harmonization with [GeoSciML4](GeoSciML4)?

\_\>[HydrogeologicUnit](HydrogeologicUnit) geologicUnitType="[HydrogeologicUnit](HydrogeologicUnit)" (...) and a [GeologicUnit](GeologicUnit) geologicUnitType="[LithostratigraphicUnit](LithostratigraphicUnit)". They are two distinct units (or to be more precise, two distinct way to subdivide the same stack of rock).\_

I agree with it but we still have [GeologicUnit](GeologicUnit) geologicUnitType="[GeologicUnit](GeologicUnit)".

-- JanuszMichalak - 08 Feb 2013

------------------------------------------------------------------------

\_\>It is consistent with fact that [GeologicUnit](GeologicUnit) is not abstract so can be instantiated. I think it was designed as a pure geologic unit on the beginning and was extended later as a parent class for many other types of unit in scope of geosciences. I hope it will be amended in new version.\_

[GeologicUniType](GeologicUniType) is just a way to "softype" since all geologic unit types (lithostrat, lithodemic, etc.) are just packages of rock whatever the classification system (for instance, a biostratigraphic unit can have a lithology, even if it's not the defining character of a biostratigraphic unit). So it did not make sense to create the subtypes if they did not have any specific properties (some might argue otherwise - Boyan ?). It also allows management of "informal" units. Maybe at the end, [HydrologicUnit](HydrologicUnit) would not even need a hard subtype and just an addition to the list of geologicUnitType.

\_\>I agree with it but we still have [GeologicUnit](GeologicUnit) geologicUnitType="[GeologicUnit](GeologicUnit)".\_

Yeah - it should not be there. it should be "[InformalGeologicUnit](InformalGeologicUnit)" or something like this.

-- EricBoisvert - 08 Feb 2013

------------------------------------------------------------------------

*\>It also allows management of "informal" units.*What exactly means „[InformalGeologicUnit](InformalGeologicUnit)”? It is not clear for me. Should [GeologicUnit](GeologicUnit) be still non-abstract (instantiated)? What version of [GeoSciML](GeoSciML) will be base for GWML3?

-- JanuszMichalak - 11 Feb 2013

An informal unit is an arbitrary package of rock where the delimitation is not constrained by a formal classification system. "High gold grade zone" could be one, it's just defined by the concentration of gold.

[GeologicUnit](GeologicUnit) is still concrete.

\>What version of [GeoSciML](GeoSciML) will be base for GWML3?

[GeoSciML](GeoSciML) 4, since [GeoSciML](GeoSciML) 4 will be an OGC standard and we want to make a OGC standard, it make sense to use v4.

-- EricBoisvert - 11 Feb 2013

------------------------------------------------------------------------

More questions:

What means in this case “formal classification system”? Can we define it in GWML2 specification? Taxonomy of Hydrogeological Units (aquifer, aquitard, aquiclude) is based on value of hydraulic conductivity (k) (see: Topic 7). It is similar to concentration of gold. Somebody else can assume different threshold values. Is it still formal classification system?

Can we know more about [GeoSciML4](GeoSciML4)? For example, time table of development or initial assumptions.

-- JanuszMichalak - 12 Feb 2013

\>. Is it still formal classification system?

No, it's **informal**, but still a classification system.

About [GeoSciML](GeoSciML) 4: see <http://www.ogcnetwork.net/node/212>

-- EricBoisvert - 13 Feb 2013

------------------------------------------------------------------------

Maybe I am wrong, but in consequence I do not see truly formal classification systems applicable to natural features in hydrogeology. All of them are informal.

-- JanuszMichalak - 14 Feb 2013
