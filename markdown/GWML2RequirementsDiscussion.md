# Requirements Discussion

(Issues and desicions about GWML requirements)

### Requirements class: observations ([OM_Measurement](OM_Measurement))

- featureOfInterest: There are two categories of use of Observation. The first is the common use, stand alone observation that can be linked to using [SamplingFeature](SamplingFeature) -\> relatedObservation , and the other, less common, as a value type of a feature, eg: [GW_HydrogeologicUnit](GW_HydrogeologicUnit).gwUnitProperty OR a [DataType](DataType) ([GW_WaterBudget](GW_WaterBudget)) or a association type ([GW_UnitVoidProperty](GW_UnitVoidProperty).gwPorosity) Should we have those requirements:
  - When an Observation is related to a [SamplingFeature](SamplingFeature), the foi SHALL be the [SamplingFeature](SamplingFeature)
  - When an Observation is a feature's property, the FOI SHALL be that property
  - When an Observation is a [DataType](DataType) property, the FOI SHALL be the feature that uses that [DataType](DataType) . Now, the only case we have is [GW_WaterBudget](GW_WaterBudget), which is not linked to any context, just a collection of in and out interflows - with the understanding that the context of the budget should be derived from this. Shouldn't there be some context feature (a Watershed or something ?
  - When the Observation is the propery of an association type, the FOI SHALL be the participant in this association that is a Feature. If both are, can be either one.

### Requirement classes ([GW_GeologyLog](GW_GeologyLog) and Construction)

I really wish [GW_GeologyLog](GW_GeologyLog) and Construction be independant of [WaterWell](WaterWell) , so they could both be used outside the context of GWML. The onyl thing that "prevents" this so far is that both contain feature that are positionned relative to well's origin (so the well is a sort of CRS). Right now, it's implicit. [GeologyLog](GeologyLog) does not have any property that explicitly specify what is the origin point of fromDepth and toDepth. Ditto for [ConstructionComponent](ConstructionComponent). But technically it should be specified that's its the owner feature reference elevation. For [GW_Well](GW_Well), it's gwWellReferenceElevation. Options are

- Bring [GW_GeologyLog](GW_GeologyLog) and Constructions in the same package (making a dependency between construction and wells cannot be done, because this cause circular reference).
- Put Elevation in its own package, so [GeologicLog](GeologicLog) and Construction can reuse it. Ideally, it should be a type (or a feature) with it's own identity, so [GeologyLog](GeologyLog) and Construction could point to the same **instance** of Elevation.

-- EricBoisvert - 14 Jul 2014
