# Requirements for the GML encoding of the [GroundWaterML2](GroundWaterML2.md).0-Core Logical Model

## Requirements

A draft of the [GroundwaterML2](GroundwaterML2.md).0-Core GML encoding requirements as specified using the OGC template is attached at: [GroundWaterML2-Requirements.docx](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/LogicalModelRequirements/GroundWaterML2-Requirements.docx).

These are summarised in the following UML diagram:

\<img alt="Requirements-GWML2-Core.jpg" height="770" src="<https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/LogicalModelRequirements/Requirements-GWML2-Core.jpg>" title="Requirements-GWML2-Core.jpg" width="781" /\>

-- BruceSimons - 07 Jul 2014

### Defining the Requirements Classes

The **requirements classes** and corresponding **conformance classes**need to be structured such that a conformant implementation need only implement those classes that are necessary. So for example a service implementation delivering a [GW_ManagementArea](GW_ManagementArea.md) feature will need to meet its requirement class in addition to those that that class is dependent on. This means it may not need to provide information on the [GW_FluidBody](GW_FluidBody.md) (optional in the UML), but will need to provide, in-line or by reference, a [GW_HydrogeoUnit](GW_HydrogeoUnit.md) (mandatory in the UML). The content of data types such as '[OM_Measurement](OM_Measurement.md)' and '[MD_Metadata](MD_Metadata.md)' may also be specified, either as Requirements or Recommendations.

Components that connect to the implementation therefore have a precise specification of the implementation and can develop their application to match.

## Discussion points:

#### What are Requirements vs Recommendations?

1.  The proposed **pattern**is:
    - the use of Terms from a standard GWML2 vocabulary are "Recommendations";
    - where the data type refers to an observation the "Requirement" is that the result will be one of either a swe:Quantity or a swe:[QuantityRange](QuantityRange.md); \* What are the requirements classes required "such that a conformant implementation need only implement those classes that are necessary"?

#### What are the Requirements Classes groupings?

The proposed Requirement Classes are to enable the following as independent implementations:

- For **GWML2-Core**, Requirement Classes are suggested to enable any of the following to be configured: 1. Types of [GW_HydrogeoUnit](GW_HydrogeoUnit.md) ([GW_Basin](GW_Basin.md), [GW_AquiferSystem](GW_AquiferSystem.md), [GW_Aquifer](GW_Aquifer.md), [GW_ConfiningBed](GW_ConfiningBed.md)); 1. [GW_HydrogeoVoid](GW_HydrogeoVoid.md) (initial suggestion in Vienna was that this should be in-line with [GW_HydrogeoUnit](GW_HydrogeoUnit.md), but mandatory association with [GW_FluidBody](GW_FluidBody.md) means that it must also be in-line with that, or have independent identity). 1. [GW_FluidBody](GW_FluidBody.md), [GW_Constituent](GW_Constituent.md), [GW_BodySurface](GW_BodySurface.md) 1. [GW_Divide](GW_Divide.md), [GW_BodySurface](GW_BodySurface.md), [GW_FlowSystem](GW_FlowSystem.md), [GW_Flow](GW_Flow.md) 1. [GW_ManagementArea](GW_ManagementArea.md), [GW_HydrogeoUnit](GW_HydrogeoUnit.md)
- For **GWML2-Constituent**, Requirement Classes are suggested to enable any of the following to be configured: 1. Types of [GW_Constituent](GW_Constituent.md) ([GW_BiologicalConstituent](GW_BiologicalConstituent.md), [GW_MaterialConstituent](GW_MaterialConstituent.md), [GW_ChemicalConstituent](GW_ChemicalConstituent.md));
- For **GWML2-Flow**, Requirement Classes are suggested to enable any of the following to be configured: 1. Types of [GW_Flow](GW_Flow.md) ([GW_InterFlow](GW_InterFlow.md), [GW_Discharge](GW_Discharge.md), [GW_Recharge](GW_Recharge.md), [GW_IntraFlow](GW_IntraFlow.md));
- For **GWML2-Well**, Requirement Classes are suggested to enable any of the following to be configured: 1. [GW_Well](GW_Well.md), Borehole, [GW_HydrogeoUnit](GW_HydrogeoUnit.md); 1. [GW_Well](GW_Well.md) 1. [GW_MonitoringSite](GW_MonitoringSite.md) 1. [GW_Spring](GW_Spring.md), [GW_HydrogeoUnit](GW_HydrogeoUnit.md)
- For **GWML2-[GeologyLog](GeologyLog.md)**, Requirement Classes are suggested to enable any of the following to be configured: 1. [GW_GeologyLog](GW_GeologyLog.md), [GeologicFeature](GeologicFeature.md),
- For **GWML2-[WellConstruction](WellConstruction.md)**, Requirement Classes are suggested to enable any of the following to be configured: 1. Borehole, [BoreCollar](BoreCollar.md) 1. Types of [WellConstruction](WellConstruction.md) (Screen, Filtration, Casing, Sealing), types of [ConstructionComponent](ConstructionComponent.md) ([ScreenComponent](ScreenComponent.md), [FiltrationComponent](FiltrationComponent.md), [CasingComponent](CasingComponent.md), [SealingComponent](SealingComponent.md)), Borehole, [BoreCollar](BoreCollar.md)

-- BruceSimons - 07 Jul 2014

#### [OM_Measurement](OM_Measurement.md) result

Do we want to specify that the [OM_Measurement](OM_Measurement.md):result must be a swe:Quantity or swe:[QuantityRange](QuantityRange.md) for every [OM_Measurement](OM_Measurement.md) property?

This will require over-riding the O&M requirement that specifies it must be a gml:[MeasureType](MeasureType.md):

**<http://www.opengis.net/spec/OMXML/2.0/req/measurement/result-measure>**The XML element om:result SHALL have a value that matches the content model defined by gml:[MeasureType](MeasureType.md).

If we use swe:Quantity and swe:[QuantityRange](QuantityRange.md), is it one or the other or both, and do we specifically preclude gml:[MeasureType](MeasureType.md)?

## Requirements Documentation

- [GroundWaterML2-Requirements.docx](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/LogicalModelRequirements/GroundWaterML2-Requirements.docx): Draft documentation of the [GroundWaterML2](GroundWaterML2.md).0-Core XML encoding requirements, contained within an OGC Implementation Standard template.

-- BruceSimons - 07 Jul 2014
