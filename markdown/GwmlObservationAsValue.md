# [OM_Observation](OM_Observation.md) used as property values

There are a couple of things that needs to be set in the way we encode [OM_Observation](OM_Observation.md), specially when we use them as property values.

There are two cases when we use [OM_Observation](OM_Observation.md) as values

1.  When using relatedObservation on any sub types of [SF_SamplingFeature](SF_SamplingFeature.md)
2.  Using a specific property (such as [GW_FluidBody](GW_FluidBody.md)/gwBodyVolume)

[OM_Observation](OM_Observation.md) has a mandatory featureOfInterest that is supposed to point back to the feature that is the “bearer of the property”. In case 2) , the bearer of the property is obviously the feature having this property, so technically, we should constrain featureOfInterest to link back to that feature

Eg: we should technically have this

\<img alt="obs_as_value.png" height="190" src="<https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/GwmlObservationAsValue/obs_as_value.png>" title="obs_as_value.png" width="449" /\>

Issues: (Question in red)

## Cases where the bearer of property is not a feature

([GW_WaterBudget](GW_WaterBudget.md) for instance, is a Type, not a Feature), so we can’t use featureOfInterest to link it back

In this case, we should point back to the refers to this Type ? In case of [WaterBudget](WaterBudget.md), who does ?

## Same Observation shared by multiple properties

nothing prevents more than one property to point to the same Observation (by reference), which becomes a problem for the featureOfInterest (foi is 1..1). It can be done schematically even if does not make sense logically. Should we have a clause that says “[OM_Observation](OM_Observation.md) that are values of explicit properties will use featureOfInterest to identify the legitimate bearer of properties. Reference to [OM_Observation](OM_Observation.md) from an explicit property when the property bearer is not the owner is invalid” (should it be invalid ?, or can it have another meaning)

## [ObservedProperty](ObservedProperty.md)

[OM_Observation](OM_Observation.md) also has an observedProperty. Technically, this should be a reference to the property (the property type, not a specific instance of the property) this observation is about. We have several options (which one should we use)

1.  Use a reference to schemas - like this "<http://ngwd-bdnes.cits.nrcan.gc.ca/service/gwml/schemas/2.1/gwml2-well.xsd#GW_WellType.gwWellConstructedDepth> (there are no good way to link to a property, it has no identity - (apparently, new ISO 19109 will change this)
2.  Use a good old vocabulary unrelated to domain schema - with the benefit of having more precise definition of the phenomena than the schema provide

-- EricBoisvert - 07 Jul 2015
