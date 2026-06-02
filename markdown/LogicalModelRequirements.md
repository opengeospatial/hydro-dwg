# Requirements for the GML encoding of the [GroundWaterML2](GroundWaterML2).0-Core Logical Model

## Requirements

A draft of the [GroundwaterML2](GroundwaterML2).0-Core GML encoding requirements as specified using the OGC template is attached at: [GroundWaterML2-Requirements.docx](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/LogicalModelRequirements/GroundWaterML2-Requirements.docx).

These are summarised in the following UML diagram:

\<img alt="Requirements-GWML2-Core.jpg" height="770" src="<https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/LogicalModelRequirements/Requirements-GWML2-Core.jpg>" title="Requirements-GWML2-Core.jpg" width="781" /\>

-- BruceSimons - 07 Jul 2014

### Defining the Requirements Classes

The **requirements classes** and corresponding **conformance classes**need to be structured such that a conformant implementation need only implement those classes that are necessary. So for example a service implementation delivering a [GW_ManagementArea](GW_ManagementArea) feature will need to meet its requirement class in addition to those that that class is dependent on. This means it may not need to provide information on the [GW_FluidBody](GW_FluidBody) (optional in the UML), but will need to provide, in-line or by reference, a [GW_HydrogeoUnit](GW_HydrogeoUnit) (mandatory in the UML). The content of data types such as '[OM_Measurement](OM_Measurement)' and '[MD_Metadata](MD_Metadata)' may also be specified, either as Requirements or Recommendations.

Components that connect to the implementation therefore have a precise specification of the implementation and can develop their application to match.

## Discussion points:

#### What are Requirements vs Recommendations?

1.  The proposed **pattern**is:
    - the use of Terms from a standard GWML2 vocabulary are "Recommendations";
    - where the data type refers to an observation the "Requirement" is that the result will be one of either a swe:Quantity or a swe:[QuantityRange](QuantityRange); \* What are the requirements classes required "such that a conformant implementation need only implement those classes that are necessary"?

#### What are the Requirements Classes groupings?

The proposed Requirement Classes are to enable the following as independent implementations:

- For **GWML2-Core**, Requirement Classes are suggested to enable any of the following to be configured: 1. Types of [GW_HydrogeoUnit](GW_HydrogeoUnit) ([GW_Basin](GW_Basin), [GW_AquiferSystem](GW_AquiferSystem), [GW_Aquifer](GW_Aquifer), [GW_ConfiningBed](GW_ConfiningBed)); 1. [GW_HydrogeoVoid](GW_HydrogeoVoid) (initial suggestion in Vienna was that this should be in-line with [GW_HydrogeoUnit](GW_HydrogeoUnit), but mandatory association with [GW_FluidBody](GW_FluidBody) means that it must also be in-line with that, or have independent identity). 1. [GW_FluidBody](GW_FluidBody), [GW_Constituent](GW_Constituent), [GW_BodySurface](GW_BodySurface) 1. [GW_Divide](GW_Divide), [GW_BodySurface](GW_BodySurface), [GW_FlowSystem](GW_FlowSystem), [GW_Flow](GW_Flow) 1. [GW_ManagementArea](GW_ManagementArea), [GW_HydrogeoUnit](GW_HydrogeoUnit)
- For **GWML2-Constituent**, Requirement Classes are suggested to enable any of the following to be configured: 1. Types of [GW_Constituent](GW_Constituent) ([GW_BiologicalConstituent](GW_BiologicalConstituent), [GW_MaterialConstituent](GW_MaterialConstituent), [GW_ChemicalConstituent](GW_ChemicalConstituent));
- For **GWML2-Flow**, Requirement Classes are suggested to enable any of the following to be configured: 1. Types of [GW_Flow](GW_Flow) ([GW_InterFlow](GW_InterFlow), [GW_Discharge](GW_Discharge), [GW_Recharge](GW_Recharge), [GW_IntraFlow](GW_IntraFlow));
- For **GWML2-Well**, Requirement Classes are suggested to enable any of the following to be configured: 1. [GW_Well](GW_Well), Borehole, [GW_HydrogeoUnit](GW_HydrogeoUnit); 1. [GW_Well](GW_Well) 1. [GW_MonitoringSite](GW_MonitoringSite) 1. [GW_Spring](GW_Spring), [GW_HydrogeoUnit](GW_HydrogeoUnit)
- For **GWML2-[GeologyLog](GeologyLog)**, Requirement Classes are suggested to enable any of the following to be configured: 1. [GW_GeologyLog](GW_GeologyLog), [GeologicFeature](GeologicFeature),
- For **GWML2-[WellConstruction](WellConstruction)**, Requirement Classes are suggested to enable any of the following to be configured: 1. Borehole, [BoreCollar](BoreCollar) 1. Types of [WellConstruction](WellConstruction) (Screen, Filtration, Casing, Sealing), types of [ConstructionComponent](ConstructionComponent) ([ScreenComponent](ScreenComponent), [FiltrationComponent](FiltrationComponent), [CasingComponent](CasingComponent), [SealingComponent](SealingComponent)), Borehole, [BoreCollar](BoreCollar)

-- BruceSimons - 07 Jul 2014

#### [OM_Measurement](OM_Measurement) result

Do we want to specify that the [OM_Measurement](OM_Measurement):result must be a swe:Quantity or swe:[QuantityRange](QuantityRange) for every [OM_Measurement](OM_Measurement) property?

This will require over-riding the O&M requirement that specifies it must be a gml:[MeasureType](MeasureType):

**<http://www.opengis.net/spec/OMXML/2.0/req/measurement/result-measure>**The XML element om:result SHALL have a value that matches the content model defined by gml:[MeasureType](MeasureType).

If we use swe:Quantity and swe:[QuantityRange](QuantityRange), is it one or the other or both, and do we specifically preclude gml:[MeasureType](MeasureType)?

## Requirements Documentation

- [GroundWaterML2-Requirements.docx](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/LogicalModelRequirements/GroundWaterML2-Requirements.docx): Draft documentation of the [GroundWaterML2](GroundWaterML2).0-Core XML encoding requirements, contained within an OGC Implementation Standard template.

-- BruceSimons - 07 Jul 2014
