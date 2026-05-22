##

# **Discussion for GWML2 CM 0.2**

------------------------------------------------------------------------

Please note that GWML2 CM 0.2 is strictly a "seed" model, intended to kick-off discussion and stimulate revision.

-- BoyanBrodaric - 21 Nov 2013

------------------------------------------------------------------------

Boyan. a great job putting together a starting point. I'll try to start the general discussion by making some ad hoc detailed comments based on a less than thorough analysis.

1.  Class stereotypes are missing. I thought they may all be [FeatureTypes](FeatureTypes.md). However, a number of classes (e.g. [GW_HydrogeoProperty](GW_HydrogeoProperty.md), [GW_Porosity](GW_Porosity.md), [GW_Yield](GW_Yield.md), [GW_ManagementProperty](GW_ManagementProperty.md), [GW_Divide](GW_Divide.md)) are probably [DataTypes](DataTypes.md). For [GL_EarthMaterial](GL_EarthMaterial.md), [GeoSciML](GeoSciML.md):[EarthMaterial](EarthMaterial.md) is not a [FeatureType](FeatureType.md) (to raise that old argument again); - (**keeping [FeatureTypes](FeatureTypes.md) vs [DataTypes](DataTypes.md) out of the conceptual model - BB 29/11/13)**
2.  I am confused by [GW_HydrogeoVoid](GW_HydrogeoVoid.md). Thinking it was a void I didn't understand why it is unrelated to [GL_EarthMaterial](GL_EarthMaterial.md) as [GeoSciML](GeoSciML.md) has Voids as a type of [EarthMaterial](EarthMaterial.md); It looks like [GW_HydrogeoVoid](GW_HydrogeoVoid.md) is the 'non-rock' material (void) that may or may not be filled with groundwater ([GW_Body](GW_Body.md)). If so, is there any other way of associating a [GW_Body](GW_Body.md) with a [GW_HydrogeoBody](GW_HydrogeoBody.md) apart from via the [GW_HydrogeoVoid](GW_HydrogeoVoid.md)? If not, is the gwBodyUnit property reqired? This would tend to make the [GW_HydrogeoVoid](GW_HydrogeoVoid.md) 'central' to the model, being the space in the [GW_HydrogeoUnit](GW_HydrogeoUnit.md) filled or potentially filled with groundwater (the [GW_Body](GW_Body.md)); (**see below)**
3.  [GW_BodyProperty](GW_BodyProperty.md) is a soft-type class to capture properties not specified in [GW_Body](GW_Body.md). An alternative is perhaps to replace [OM_Observation](OM_Observation.md) with [GW_BodyProperty](GW_BodyProperty.md) and gwBodyProperty with gwBodyObservation; (**to be further discussed**)
4.  Nillable properties should have \<\<voidable\>\> stereotypes and nillable tags; **(part of the logical model discussion)**
5.  [GW_Basin](GW_Basin.md) uses gwDivide as a property, [GW_BodySurface](GW_BodySurface.md) uses gwSurfaceDivide as an association property. In XML these end up the same but are two ways of doing the same thing in UML. For consistency and simplicity let's use the [GW_Basin](GW_Basin.md) pattern; **(TBD)**
6.  [GW_AquiferSystem](GW_AquiferSystem.md) in the UML can consist of [GW_Aquifer](GW_Aquifer.md), [GW_ConfingBed](GW_ConfingBed.md), other [GW_AquiferSystem](GW_AquiferSystem.md) and [GW_Basin](GW_Basin.md). Should this be restricted to exclude [GW_Basin](GW_Basin.md)? **(resolved 9/12/13**)
7.  [GW_HydrogeoUnit](GW_HydrogeoUnit.md):gw:[UniitVulnerability](UniitVulnerability.md) to gw:[UnitVulnerability](UnitVulnerability.md); **(resolved 9/12/13**)

-- BruceSimons - 29 Nov 2013

------------------------------------------------------------------------

Bruce -- good points. Some comments:

1. The class stereotypes are excluded because they are (essentialy) GML artifacts and thus should be part of the logical model, not the conceptual model. The conceptual model deals with the semantics of physical reality, whereas the logical model adds technological and human concerns (e.g. GML stereotypes, nillable). To my mind, conceptually, the relation between a property such as porosity and an earth material holds, regardless of the interpretation of an Earth Material as a lump of substance or as an abstract type. Obviously to be discussed more.

2. I agree voids are likely to see limited use, and should not be central. They were included in the entity list, I believe, to cover cases such as "determine the amount of \[water held in fractures / space occupied by fractures\] in an aquifer or in the sandstone layer of an aquifer", where fractures are essentially one example of a void (a space in the rock). CM 0.2 says:

- \<div class="[WYSIWYG_NBNL](WYSIWYG_NBNL.md)" style="padding-left: 30px;"\>hg units contain gw bodies (and the inverse)\</div\>
- \<div class="[WYSIWYG_NBNL](WYSIWYG_NBNL.md)" style="padding-left: 30px;"\>hg units or earth materials host voids (and the inverse)\</div\>
- \<div class="[WYSIWYG_NBNL](WYSIWYG_NBNL.md)" style="padding-left: 30px;"\>gw bodies are contained in voids (and the inverse)\</div\>

None of these relations or entities are more central than others -- they form a gw 'holy trinity' -- although in practice I suspect the void portions will be used less, limited to specific cases. **(see below)**

3. I don't follow your comment. If you are referring to specific classes from O&M, then same comment as (1) above -- those are to be included in the logical model. If not, please elaborate. (**to be further discussed**)

4. Same as above, nillable is a concern for the logical model. **(resolved)**

5. Hmm, please elaborate... are you suggesting we don't use associations anywhere, just properties? I think this would reduce visual clarity. **(TBD)**

6. Good question. To be discussed. Also: is the unit part relation necessary? I.e. can units be nested (gwUnitpartOf) outside of an [AquiferSystem](AquiferSystem.md) (e.g. do aquifers contain aquifers?), or is it that once things are nested they form an [AquiferSystem](AquiferSystem.md)? **(resolved 9/12/13**)

7. Done.

-- BoyanBrodaric - 29 Nov 2013

------------------------------------------------------------------------

The "seed" CM 0.2 in my view is a very good basis for the model so I think a good job was done. Therefore just a few remarks to some points in the following:

1.  [GW_HydrogeoVoid](GW_HydrogeoVoid.md): since [GW_Porosity](GW_Porosity.md) is a defined property of [GW_HydrogeoUnit](GW_HydrogeoUnit.md), the void space available for the groundwater body in my view would be defined by the [GW_HydrogeoUnit](GW_HydrogeoUnit.md) and its geometry. It seems to me that the association between [GW_Body](GW_Body.md) and [GW_HydrogeoUnit](GW_HydrogeoUnit.md) would be consistent enough to define the available void space. **(Discussed 18/12/13)**
2.  Associations between [GW_Body](GW_Body.md) and [GW_HydrogeoUnit](GW_HydrogeoUnit.md) (figure 1, 3): in my view it is the core association of the model since it defines the relations between the two main domains rock and groundwater. In the INSPIRE model we defined this association through an association between [GW_Body](GW_Body.md) and [GW_AquiferSystem](GW_AquiferSystem.md) (1:1) i.e. "the aquifer system is a collection of aquifers and aquitards – "communicating vessels", that are filled or can be filled with water", where we have a 1:n-relation between the [GW_AquiferSystem](GW_AquiferSystem.md) and [GW_HydrogeoUnit](GW_HydrogeoUnit.md). I would like to suggest discussion of this type of modeling the associations: [GW_HydrogeoUnit](GW_HydrogeoUnit.md) (n) \<-----\> (1) [GW_AquiferSystem](GW_AquiferSystem.md) (1) \<------\> (1) [GW_Body](GW_Body.md) **(see below)**

\<ol start="3"\> \<li\>page13, definition [GW_AquiferSystem](GW_AquiferSystem.md): "a body of material… separated at least locally by confining beds that impede groundwater movement…" Even if this will often be the case, in the modeling sense I think this is a set of hydrogeological units that form a common hydrologic system. Therefore my suggestion is to skip this condition of confining beds in the definition of the [GW_AquiferSystem](GW_AquiferSystem.md). **(Discussed 9/12/13)** \</li\> \<li\>In the INSPIRE-model we defined the [HydrogeochemicalRockType](HydrogeochemicalRockType.md) as a property of the [HydrogeologicalUnit](HydrogeologicalUnit.md), indicating the main chemical properties the [GW_Body](GW_Body.md) will show due to the rock-water interactions (e.g. calcitic, sulfatic etc.). I suggest to include this to the [GW_HydrogeoProperty](GW_HydrogeoProperty.md).\</li\> \</ol\>

Bernhard Wagner - 03 Dec 2013

------------------------------------------------------------------------

Some comments following Bernhard's:

1.  I think the suggestion is to remove [GW_Void](GW_Void.md) because [GW_Body](GW_Body.md) can serve as a proxy for voids. This simplifies the model, but also has disadvantages: it does not allow us to express the total space occupied by fractures or caves in a unit, because the [GW_Body](GW_Body.md) may not fill all the spaces. I don't think any one of these three can be reduced to the other: while the geometry of a [GW_HGU](GW_HGU.md) defines the shape of the Void, they are different, because the HGU is material and the Void is empty space. Likewise the gw body might not fill the void, so is not a proxy, bodies and units are obiously different things, and porosity is a proportion of void to unit and thus not either one. Thus, [GW_Void](GW_Void.md) can be removed at the risk of reducing what can be expressed. Probably will be a long discussion. **(see below)**
2.  To discuss: an implication of [GW_Body](GW_Body.md) being related to [AquiferSystem](AquiferSystem.md) rather than HGU, is that Aquifers or Basins cannot then be filled with a water body. **(resolved 18/12/13)**
3.  Makes sense -- I think the model reflects this.
4.  To discuss: a gw body has certain chemical constituents, but so does the HGU, which is not captured by the model.

\- Re: HGU properties -- do we need to add more, e.g.

- Context: hydrogeological region, relief, hydrography, surface area
- Geology: named units and lithologies
- Aquifers: media (un / consolidated), amount in storage
- Properties: thickness (surficial / bedrock), avg well depth, avg gw depth, conductivity (surficial vs bedrock)
- etc.

-- BoyanBrodaric - 09 Dec 2013

------------------------------------------------------------------------

##### Some comments/questions from the [BoM](BoM.md) hydrogeos on v0.2.1.

###### [GW_HydrogeoUnit](GW_HydrogeoUnit.md) properties:

A1. Is there a relationship between [GW_ManagementProperty](GW_ManagementProperty.md) and [GW_ManagementArea](GW_ManagementArea.md)? **(resolved 18/12/13)**

A2. How does the [GW_HydrogeoUnit](GW_HydrogeoUnit.md) property **gwPorosityVoid** ([GW_HydrogeoUnit](GW_HydrogeoUnit.md):gwUnitProperties - [GW_HydrogeoProperty](GW_HydrogeoProperty.md):gwPorosity - [GW_Porosity](GW_Porosity.md):gwPorosityVoid - [GW_HydrogeoVoid](GW_HydrogeoVoid.md)) differ from **gwUnitVoid**:[GW_HydrogeoVoid](GW_HydrogeoVoid.md)? **(see below)**

A3. **gwUnitThickness** is the same as [GeoSciML](GeoSciML.md) [GeologicUnit](GeologicUnit.md):unitThickness, but [GeoSciML](GeoSciML.md) [GeologicFeature](GeologicFeature.md):occurrence, for example, is not included. I suggest including all the geologic properties (stratigraphy, lithology, genesis, composition) required in the conceptual model. **(see below)**

A4. **gwUnitName** included, also include **gwUnitDescription**(neither specified in [GeoSciML](GeoSciML.md) as inherited from GML); **(see below)**

A5. Is **gwUnitThickness** a range or average thickness (or a spatial layer)? **(part of Measurement [DataType](DataType.md) discussion)**

**A6. [GW_RechargeLocation](GW_RechargeLocation.md):**can be complex or simplified, could be outcrop area, or include all losing stream reaches etc.

**A7. [GW_DischargeLocation](GW_DischargeLocation.md):**If this includes wells also, then in most cases, wells intersect the entire aquifer, if only a well field, then need minimum density/ or extraction for definition of a well-field.

###### [GWHydrogeoUnit](GWHydrogeoUnit.md) vs [GW_Body](GW_Body.md)

The following are [GW_HydrogeoUnit](GW_HydrogeoUnit.md) properties, but seem to be related to [GW_Body](GW_Body.md):

B1. **gwUnitWaterBudget:** Is this about the gwBody? Is this an annual water budget? **(resolved 18/12/13)**

B2. **Vulnerability Type:**is the vulnerability only to pollution? What about over-extraction? Is there a vulnerability type and a measure of the vulnerability? If low, medium, high etc, what are the terms for determining vulnerability? Is this about the water or the aquifer itself, including the geology, being vulnerable? If about the water should it be in gwBody?

B3. **[GW_InFLow](GW_InFLow.md):**Annual Inflow or average? Shouldn't this relate to the gwBody as it is about the water, not the rock? **(discussed 18/12/13)**

**B4. [GW_OutFlow](GW_OutFlow.md):**Annual Outflow or average? Include all wells? Does this relate to the gwBody as it is about the water, not the rock? **(discussed 18/12/13)**

B5. What is the relationship between the [GW_HydrogeoProperty](GW_HydrogeoProperty.md):**gwStorativity** and [GW_Body](GW_Body.md). From the description "*Storativity is the volume of water released from storage per unit decline in hydraulic head in the aquifer, per unit area of the aquifer. (gwml1)*" gwStorativity seems to be about the [GW_Body](GW_Body.md). **(see below)**

###### General comments

C1. Many of the properties will require additional metadata about how the measurements were made, published values etc

C2 Does the Measurement [DataTypes](DataTypes.md) include Ranges? **(part of Measurement [DataType](DataType.md) discussion)**

-- BruceSimons - 17 Dec 2013

------------------------------------------------------------------------

### [HydrogeoUnit](HydrogeoUnit.md) - [HydrogeoVoid](HydrogeoVoid.md) relationship

Below is a diagram of my proposal at 18 December 2013 meeting treating the hydraulic properties as properties of the Unit-Void relationship.This allows both [GW_HydrogeoUNit](GW_HydrogeoUNit.md) and [GW_HydrogeoVoid](GW_HydrogeoVoid.md) to potentially be instantiated as separate features, both or either with the [GW_HydrogeoPropertys](GW_HydrogeoPropertys.md). It appears to me that at least gwPorosity is part of the relationship between void and unit and should be modelled accordingly.

\<img alt="Proposed association class between [GW_HydrogeoUnit](GW_HydrogeoUnit.md) and [GW_HydrogeoVoid](GW_HydrogeoVoid.md)" height="687" src="<https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/GWML2_CM_0-2_Discussion/HydrogeoUnit-HydrogeoVoid_BS.jpg>" title="[HydrogeoUnit](HydrogeoUnit.md)-[HydrogeoVoid_BS](HydrogeoVoid_BS.md).jpg" width="1184" /\>

I have also moved the specific 'geology' properties (gwName, gwThickness) to the [GL_GeologicUnit](GL_GeologicUnit.md) class and added other geologic properties we expect to be provided here.

-- BruceSimons - 19 Dec 2013

------------------------------------------------------------------------

### Outstanding issues from the above points (19/12/13)

"Is it necessary to associate the [GW_Body](GW_Body.md) with the [GW_HydrogeoUnit](GW_HydrogeoUnit.md) apart from via the [GW_HydrogeoVoid](GW_HydrogeoVoid.md)? (BS point 2 29/11/13). Traditionally the voids and units are treated together. Separating them out requires further considering the relationship between the water ([GW_Body](GW_Body.md)), the container ([GW_HydrogeoUnit](GW_HydrogeoUnit.md)) and the spaces ([GW_HydrogeoVoid](GW_HydrogeoVoid.md));

"In the INSPIRE-model we defined the [HydrogeochemicalRockType](HydrogeochemicalRockType.md) as a property of the [HydrogeologicalUnit](HydrogeologicalUnit.md), indicating the main chemical properties the [GW_Body](GW_Body.md) will show due to the rock-water interactions (e.g. calcitic, sulfatic etc.). I suggest to include this to the [GW_HydrogeoProperty](GW_HydrogeoProperty.md)." (see Bernhard Wagner - 03 Dec 2013 point 4)

Measurement [DataType](DataType.md) - a range or average or ...?

Vulnerability Type - is the vulnerability only to pollution? What about over-extraction? Is there a vulnerability type and a measure of the vulnerability? If low, medium, high etc, what are the terms for determining vulnerability? Is this about the water or the aquifer itself, including the geology, being vulnerable? If about the water should it be in gwBody?

Recharge and discharge location - recharge can be complex or simplified, could be outcrop area, or include all losing stream reaches etc. If Discharge includes wells, then in most cases, wells intersect the entire aquifer, if only a well field, then need minimum density/ or extraction for definition of a well-field.

[GW_HydrogeoUnit](GW_HydrogeoUnit.md) and [GW_HydrogeoVoid](GW_HydrogeoVoid.md) association properties - **Resolved (16/1/14)**

[GW_Yield](GW_Yield.md) relatiionships - **Resolved (16/1/14)**

-- BruceSimons - 19 Dec 2013

------------------------------------------------------------------------

Hmm.. This model does not allow, for example. to represent "typical" hydrogeo property of an Earth material, because the properties must be expressed in the context of a given unit and its void. But maybe it's ok, because we can always represent it in O&M (and maybe this is where it should be in this particular case).

I also need to point out that [HydraulicConductivity](HydraulicConductivity.md) is a property of the fluid (salt water does not have the same K than fresh water). My original position was that "water" was the fluid in context and it was just overkill to model it otherwise, but maybe it should be discussed.

-- EricBoisvert - 14 Jan 2014

------------------------------------------------------------------------

A comment to the [GW_ManagementArea](GW_ManagementArea.md): in context of the Water Framework Directive, groundwater managemant areas are linked to groundwater bodies, which is implemented in the INSPIRE-model also ([DataSpecification](DataSpecification.md), Fig. 13 on page 43). In present [CM_0](CM_0.md).2 it is linked to [HydroGeoUnit](HydroGeoUnit.md).

-- [BernhardWagner](BernhardWagner.md) - 14 Jan 2014

------------------------------------------------------------------------

Comment to [GW_ManagementArea](GW_ManagementArea.md): In NZ groundwater management and regulation typically happens on "groundwater catchment" basis. These catchments and the main aquifers are also within single New Zealand regions (i.e. the regions have the mandate for environmental resources management). [GW_ManagementArea](GW_ManagementArea.md) would basically relate to [GW_Basin](GW_Basin.md) here, I think.

How/why is the [GW_Yield](GW_Yield.md) directly related to the [GWHydroGeoVoid](GWHydroGeoVoid.md)?

-- AlexKmoch - 15 Jan 2014

------------------------------------------------------------------------

In relation to Eric's comment on Hydraulic Conductivity... it is the capacity of the rock to transmit water. \_"It is expressed as the volume of water at the existing kinematic viscosity that will move in unit time under a unit hydraulic gradient through a unit area measured at right angles to the direction of flow"\_ Heath (1983) USGS WSP 2220. It is a property of the media (cf: fluid) measured as a rate (L/T).

In relation to [GW_ManagementArea](GW_ManagementArea.md)... it is often logically related to the Earth geometry (aquifer, basin, etc.) but can be any specified 3-dimensional space, for example a restricted-use zone in an aquifer (because of pollution) or a recharge management area for a confined aquifer, etc. Conceptually, it should be as flexible as possible.

-- PeterDahlhaus - 16 Jan 2014

------------------------------------------------------------------------

See diagram below for proposed changes arising from meeting 10 discussions (Jan 16). Note the main change required several properties to be associated with all of units, voids, and bodies. Experiments revealed some more refinements, reflected in the proposal below.

Summary of changes:

- Name changes (**new**):
  - "[GW_Body](GW_Body.md)" to "[GW_FluidBody](GW_FluidBody.md)" (to be explicit that units can contain bodies of various fluids, e.g. water, oil, gas,...)
  - "gwPorosityProportion" to "gwPorosity" (for consistency)
  - "gwYieldQuantity" to "gwYield" (for consistency)
- Cardinatlity changes (**new**):
  - gwVoidUnit to 1...\* (each void must have a host unit)
  - gwUnitFluidBody to 0...\* (a hg unit could contain multiple distinct fluid bodies, e.g. water, oil, gas,...)
- Other changes:
  - restricted permeability to 'intrisic permeability' which measures the connectivity of voids and thier openings, hence is a property of units-voids only
  - remaining properties (conductivity, etc.) involve units, voids and bodies, but can be modeled as properties of the unit-fluidBody relation (for simplicity). A complete representation might include a relation from these properties to Void, but that is already achieved indirectly via hg unit, which is less precise but could suffice (its also aligned with traditional usage in which these properties are primarily associated with the unit).
  - earth materials (lithologies) can have unit-void or unit-fluidBody properties. But, typical properties then require the instantiation of typical units, bodies, and voids, however that seems inherent in many of the definitions in any case (e.g. using a unit area of a hg unit, etc.)

\<img alt="[GWML2_CM_0](GWML2_CM_0.md).23_meeting10_revisions2.jpg" height="747" src="<https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/GWML2_CM_0-2_Discussion/GWML2_CM_0.23_meeting10_revisions2.jpg>" width="797" /\>

-- BoyanBrodaric 20 Jan 2014

Any reason for having [GW_Porosity](GW_Porosity.md) as a separate class rather than just having the 'gwPorosityType' and 'gwPorosity' as properties of [GW_UnitVoidProperty](GW_UnitVoidProperty.md)'? An XML encoding of the current pattern would appear unnecessarly redundant:

```
<GW_UnitVoidProperty>
    <gwPorosity>
        <GW_Porosity>
            <gwPorosityType></gwPorosityType>
            <gwPorosity></gwPorosity>
        </GW_Porosity>
    </gwPorosity>
</GW_UnitVoidProperty>
```

-- BruceSimons - 21 Jan 2014

### Outstanding Issues (21 Jan 2014)

"In the INSPIRE-model we defined the **[HydrogeochemicalRockType](HydrogeochemicalRockType.md)** as a property of the [HydrogeologicalUnit](HydrogeologicalUnit.md), indicating the main chemical properties the [GW_Body](GW_Body.md) will show due to the rock-water interactions (e.g. calcitic, sulfatic etc.). I suggest to include this to the [GW_HydrogeoProperty](GW_HydrogeoProperty.md)." (see Bernhard Wagner - 03 Dec 2013 point 4)

**Measurement [DataType](DataType.md)** - a range or average or ...?

**Vulnerability Type** - is the vulnerability only to pollution? What about over-extraction? Is there a vulnerability type and a measure of the vulnerability? If low, medium, high etc, what are the terms for determining vulnerability? Is this about the water or the aquifer itself, including the geology, being vulnerable? If about the water should it be in gwBody?

**Recharge and discharge location** - recharge can be complex or simplified, could be outcrop area, or include all losing stream reaches etc. If Discharge includes wells, then in most cases, wells intersect the entire aquifer, if only a well field, then need minimum density/ or extraction for definition of a well-field.

-- BruceSimons - 21 Jan 2014

### Comments from [BoM](BoM.md) Hydrogeologists (30/1/2014)

Just some comments for your next meeting.

Comments: general – very complicated and detailed. Still trying to wrap our heads around the void, fluid body and HGU. The information in groundwater fluid body is generally derived from numbers that are derived themselves and has huge errors associated with it.

**[GW_FluidBody](GW_FluidBody.md)**

\- Groundwaterbody shape and volume will require assumptions on how the volume was calculated, the method to determine the groundwater level surface.

\- gwBodyAge – again the method used to determine this (carbon dating etc), the age range, the accuracy and the date

\- gwBodyFlow – not entirely sure what this relates to. Is it a flow net or direction, or flow volume (discharge/ recharge body), flow rate (m/s), velocity?

\- gwBodyQuality – assume points to a vocab and we could populate the vocab based on beneficial use criteria

\- gwBodyCondition – we don't have a vocab of our own at this stage. Probably wouldn't use INSPIRE without consultation

**[GW_unitFluidProperty](GW_unitFluidProperty.md)**

\- gwStorativity – as mentioned earlier, we believe this should be called [StorageProperties](StorageProperties.md) which is more inclusive. Storativity related to confined aquifers. Storgae properties is inclusive of specific storage, specific yield and storativity.

\- As above, with all properties (hydraulic conductivity, transmissivity and storage) requires metadata and could include published ranges or calculations.

\- gwYield – the definition relates to a management property rather than fluid property. Sustainable yield/ safe yield etc relates to the groundwater management of volume/year. This is generally an arbitrary number based on politics and community issues. We think this should be related to a pump test and would include the pump test method including time etc.

**gwFlowSystem relationships**

what is the difference between the gwBodyFlow and the gw_FlowProcess?

What is the difference between the recharge feature and the recharge location and how they function?

Discharge/ recharge feature – assume it includes type of feature and type of recharge (diffuse, point source etc), source of water for recharge (irrigation, rainfall, surface water feature)

Eloise & Jill

#### Response to [BoM](BoM.md) comments:

**gwBodyFlow and th gw_FlowProcess:**

[GW_FluidBody](GW_FluidBody.md):gwBodyFlow is defined as “Flow details for the gw body.” It has data type [GW_Flow](GW_Flow.md)

[GW_Flow](GW_Flow.md):gwFlowBody is defined as “The body of water that is flowing.” It has data type [GW_FluidBody](GW_FluidBody.md).

It looks like a circular dependency between these two that needs sorting, possibly deleting [GW_FluidBody](GW_FluidBody.md):gwBodyFlow is required.

[Gw_FlowProcess](Gw_FlowProcess.md) examples are: evapotranspiration, evaporation, transpiration, runoff, baseflow, pumping, infiltration, injection, etc.

**recharge feature and the recharge location:**

[GW_RechargeLocation](GW_RechargeLocation.md):gwRechargeFeature is defined as “Physical feature where the recharge occurs.” I assume this will be some feature (swamp, sinkhole,...) where the [GW_HydrogeoUnit](GW_HydrogeoUnit.md) is re-charged.

**Discharge/ recharge feature**

[GW_Flow](GW_Flow.md) (via [GW_FlowSystem](GW_FlowSystem.md)) provides the properties associated with the recharge/discharge. gwFlowRechargeLocation and gwFlowDischargeLocation appear to duplicate gwInFlowLocation and gwOutFlowLocation

-- BruceSimons - 29 Jan 2014

### More response to the [BoM](BoM.md) comments:

I agree that some [GW_FluidBody](GW_FluidBody.md) properties like the gwBodyAge and gwBodyFlow will require some thinking. They will inevitably be a range of numbers or a qualitative descriptor.

In respect to [GW_unitFluidProperty](GW_unitFluidProperty.md) I use the definition of Storativity (S) that says that it is the amount of water released from storage by a unit decline in head over a unit area, same as that used in the [Model Documentation](http://external.opengis.org/twiki_public/pub/HydrologyDWG/GWML2-CM-Model/GWML2_CM_0.2.pdf) (page 22). It is calculated as S = Specific Yield (Sy) + depth of water (h) x Specific Storage (or Elastic Storage) (Ss) - or S = Sy + hSs - in unconfined conditions and thickness (b) x the Specific Storage (Ss) in confined conditions - or S = bSs. Heath (1983 Basic Groundwater Hydrology, USGS WSP 2220) uses the term Storage Coefficient \_"The volume of water released from storage in a unit prism of an aquifer when the head is lowered a unit distance."\_ That might be a more acceptable term? It's the same thing really.

gwYield should not be confused with Well Yield. In this case it is aquifer yield, which in the [Features List](Gwml2FinalFeaturesList.md) is defined as \_"...the maximum rate of withdrawal that can be sustained by an aquifer. Expressed as m3."\_ I agree that it will be a number set by the combination of science and politics. I don't think that's a problem?

Recharge location is in the [Features List](Gwml2FinalFeaturesList.md) and page 29 of the [Model Document](http://external.opengis.org/twiki_public/pub/HydrologyDWG/GWML2-CM-Model/GWML2_CM_0.2.pdf). Recharge feature might be an injection well, pond, or a losing stream. There might be some thought given to whether it could also be a geological stratum (the ourcrop of a confined aquifer for example).

In relation to Bruce's comment on gwInFlowLocation and gwOutFlowLocation... page 23 of the [model documentation](http://external.opengis.org/twiki_public/pub/HydrologyDWG/GWML2-CM-Model/GWML2_CM_0.2.pdf) talks about a volumetric flow rate. I'm a bit confused by that as well.

-- PeterDahlhaus - 30 Jan 2014

------------------------------------------------------------------------

### gwBodyNaturalContext

- This property needs more explanation. Please provide below.

-- BoyanBrodaric - 24 Feb 2014

- "Easy part"

gwBodyNaturalContext attributes initially refers to Natural background (Natural [GroundWaterBaseline](GroundWaterBaseline.md) - Fond géochimique des aquifères). For a given [GW_ChemicalConstituent](GW_ChemicalConstituent.md) measured in a [GW_FluidBody](GW_FluidBody.md), in order to manage the [GW_FluidBody](GW_FluidBody.md) quality, we need to better understand what causes the presence of the [ChemicalConstituent](ChemicalConstituent.md).

One approach is : theoretically Natural background can be estimated for each [GW_FluidBody](GW_FluidBody.md), [GW_ChemicalConstituent](GW_ChemicalConstituent.md) by [GW_ChemicalConstituent](GW_ChemicalConstituent.md) based on the [GL_EarthMaterial](GL_EarthMaterial.md) of the [GW_HydrogeoUnit](GW_HydrogeoUnit.md).

Projects often end up with info/maps for each [GW_ChemicalConstituent](GW_ChemicalConstituent.md) of the naturally observed values (the Natural background). I will try to circulate slides on this for our next webconf.Natural Background information is highly linked with a notion of confidence threshold because it is sometime hard to differentiate natural VS anthropic causes for some [GW_ChemicalConstituent](GW_ChemicalConstituent.md) values

=\> As it is linked to the [GL_EarthMaterial](GL_EarthMaterial.md) of the [GW_HydrogeoUnit](GW_HydrogeoUnit.md) should that information be in the [GW_UnitFluidProperty](GW_UnitFluidProperty.md) association class ?

=\> Information needed : measurement / link to [GW_ChemicalConstituent](GW_ChemicalConstituent.md) / confidence threshold

- Complexifying the picture

This being said (and hopefully solved) we could also need to differentiate natural VS anthropic causes for [GW_BiologicConstituent](GW_BiologicConstituent.md) and [GW_MaterialConstituent](GW_MaterialConstituent.md).

=\> Do we try and also solve this in the model or do we limit ourselves to the [GW_ChemicalConstituent](GW_ChemicalConstituent.md) only ?

-- SylvainGrellet - 14 Mar 2014

------------------------------------------------------------------------

### Cleaning up [GWML2_CM_0](GWML2_CM_0.md).26

I've reviewed the work we have done to date and I propose that we make the following changes in order to be consistent and explicit about the properties of each class, and aid the transition to the logical model.

#### [GL_GeologicUnit](GL_GeologicUnit.md)

Add 'gwUnitIdentifier' property. Those classes that we expect to have their own identity should have this property added to make it clear that they are objects that we expect to persist in their own right. Will be replaced by gml:identifier in the GML Logical Model.

Add 'gwUnitDescription' property. Will be replaced by gml:description in the GML Logical Model.

Add 'gwUnitMetadata' property. To capture metadata information as per [GW_ManagementArea](GW_ManagementArea.md)/gwAreaMetadata.

Change 'unitName' cardinality from 1..1 to 1..\* to deal with multiple names, codes etc. Will be replaced by gml:name in the GML Logical Model, which has cardinality of 0..\*.

Change 'unitName' to 'gwUnitName'.

Change 'shape' to 'gwUnitShape'.

Change 'unitThickness' to 'gwUnitThickness'.

#### [GW_ManagementArea](GW_ManagementArea.md)

Add 'gwAreaIdentifier' property. Those classes that we expect to have their own identity should have this property added to make it clear that they are objects that we expect to persist in their own right. Will be replaced by gml:identifier in the GML Logical Model.

Add 'gwAreaDescription' property. Will be replaced by gml:description in the GML Logical Model.

Change gwAreaName cardinality from 1..1 to 1..\* to deal with multiple names, codes etc. Will be replaced by gml:name in the GML Logical Model, which has cardinality of 0..\*.

#### [GW_HydrogeoVoid](GW_HydrogeoVoid.md)

Add 'gwVoidIdentifier' property. Those classes that we expect to have their own identity should have this property added to make it clear that they are objects that we expect to persist in their own right. Will be replaced by gml:identifier in the GML Logical Model.

Add 'gwVoidDescription' property. Will be replaced by gml:description in the GML Logical Model.

Add 'gwVoidMetadata' property. To capture metadata information.

#### [GW_FluidBody](GW_FluidBody.md)

Add 'gwBodyIdentifier' property. Those classes that we expect to have their own identity should have this property added to make it clear that they are objects that we expect to persist in their own right. Will be replaced by gml:identifier in the GML Logical Model.

Add 'gwBodyDescription' property. Will be replaced by gml:description in the GML Logical Model.

Add 'gwBodyMetadata' property. To capture metadata information.

### [GW_ManagementArea](GW_ManagementArea.md) discussion

Should the top and bottom depths of the [GW_ManagementArea](GW_ManagementArea.md) be defined?

Should the volume of water in the management area be described? Or done via gwAreaFeature/[GW_FluidBody](GW_FluidBody.md)?

Add 'gwAreaType' to capture different types of management areas.

-- BruceSimons - 28 Feb 2014

------------------------------------------------------------------------

Bruce -- thanks for these 'clean-up' ideas. Below are some comments, for more discussion at the next meeting.

- Re: at identifier, description, and metadata attributes to Unit, Void, Fluid Body,a nd Management Area
  - disagree: I view 'Identifier' as a logical artifact not necessary for the CM, but likely in the LM (logical model)
  - agree: 'Description' and 'Metadata'. Note: these seem borderline for the CM, but we have them in other places.


- Re: cardinality on 'name' changed to many
  - agree


- Re: consistency of attribute names, i.e. prefixed with "gw"\*
  - agree


- Re: Management Area
  - add Top/Bottom depths: do not need, already implied in the unit (thickness) or gwAreaShape; not always vertical (some are 2D geographical areas)
  - capture volume of fluid in management area: propogated indirectly via Unit (connected to fluid body)... do we need direct link to fluid body?
  - add type of management area: this sounds like it should be included.

-- BoyanBrodaric

## [GW_Flow](GW_Flow.md) referencing

The concern I started to raise at meeting 16 was to do with the self-referential aspects of [GW_Flow](GW_Flow.md) and [GW_HydrogeoUnit](GW_HydrogeoUnit.md).

An xml implementation of the current Conceptual Model would have references to 4 potentially separate [GW_FluidBody](GW_FluidBody.md) and 8 potentially separate [GW_Flow](GW_Flow.md) features, not including circular referencing:

```
<GW_HydrogeoUnit>
  <gwUnitDischarge>
    <GW_OutFlow> <!-- GW_OutFlow is a subtype of GW_Flow (= GW_Flow 1) -->
      <gwFlowBody>
        <GW_FluidBody> <!-- GW_Flow contains a property specifying the GW_FluidBody -->
          <gwBodyFlow>
            <GW_Flow> <!-- GW_FluidBody contains a property specifying the GW_Flow (= GW_Flow 2) -->
            </GW_Flow>
          </gwBodyFlow>
        </GW_FluidBody>
      </gwFlowBody>
    </GW_OutFlow>
  </gwUnitDischarge>
  <gwUnitRecharge>
    <GW_InFlow> <!-- GW_InFlow is a subtype of GW_Flow (= GW_Flow 3) -->
      <gwFlowBody>
        <GW_FluidBody> <!-- GW_Flow contains a property specifying the GW_FluidBody -->
          <gwBodyFlow>
            <GW_Flow> <!-- GW_FluidBody contains a property specifying the GW_Flow (= GW_Flow 4) -->
            </GW_Flow>
          </gwBodyFlow>
        </GW_FluidBody>
      </gwFlowBody>
    </GW_OutFlow>
  </gwUnitRecharge>
  <gwUnitWaterBudget>
    <GW_WaterBudget>
      <gwBudgetDischarge>
        <GW_Flow> <!-- (= GW_Flow 5) -->
          <gwFlowBody>
            <GW_FluidBody> <!-- GW_Flow contains a property specifying the GW_FluidBody -->
              <gwBodyFlow>
                <GW_Flow> <!-- GW_FluidBody contains a property specifying the GW_Flow (= GW_Flow 6) -->
                </GW_Flow>
              </gwBodyFlow>
            </GW_FluidBody>
          </gwFlowBody>
        </GW_Flow>
      </gwBudgetDischarge>
      <gwBudgetRecharge>
        <GW_Flow> <!-- (= GW_Flow 7) -->
          <gwFlowBody>
            <GW_FluidBody> <!-- GW_Flow contains a property specifying the GW_FluidBody -->
              <gwBodyFlow>
                <GW_Flow> <!-- GW_FluidBody contains a property specifying the GW_Flow (= GW_Flow 8) -->
                </GW_Flow>
              </gwBodyFlow>
            </GW_FluidBody>
          </gwFlowBody>
        </GW_Flow>
      </gwBudgetRecharge>
    </GW_WaterBudget>
  </gwUnitWaterBudget>
</GW_HydrogeoUnit>
```

------------------------------------------------------------------------

This may well be correct, but will require careful explaining with examples for implementers.

## [GW_WaterBudget](GW_WaterBudget.md)

[GW_WaterBudget](GW_WaterBudget.md):gwBudgetDischarge uses [GW_Flow](GW_Flow.md) as data type. Should this be specifically [GW_OutFlow](GW_OutFlow.md)? Similarly gwBudgetRecharge:[GW_Flow](GW_Flow.md) and [GW_InFlow](GW_InFlow.md).

-- BruceSimons - 23 Apr 2014
