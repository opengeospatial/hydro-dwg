# [SamplingFeature](SamplingFeature) Discussion

## What should be the featureOfInterest of an Observation

There was a lot of discussion around the featureOfInterest (foi) of an Observation. The foi of an Observation is **any** feature, which obviously includes any [SamplingFeature](SamplingFeature). There are several arguments for and against using [SamplingFeature](SamplingFeature), but it's beyond the point for this small note. I just realised that there is a gotcha in using either options (foi is the real feature and foi is a [SamplingFeature](SamplingFeature)).

Let's consider this example. We have a Water well that "samples" 3 features: It samples the Aquifer, it also samples the Geologic unit, and it also samples the [WaterBody](WaterBody) (Note we can argue that aquifer and water body are the same thing, but it's not important for this example). At this well (which is a sampling feature), we have 2 Observation. One for Salinity and the other for Porosity. Obviously, salinity is a property of the water and porosity is a property of [GeologicUnit](GeologicUnit) (red lines on the first figure).

Now, if we try to encode all this into O&M and Sampling, we have 2 options

First, use the Well as a foi (foi is a [SamplingFeature](SamplingFeature)). The way to traverse from Observation to feature we are observing is to traverse from Observation/featureOfInterest/[SamplingFeature](SamplingFeature)/sampledFeature/Feature

- foi is a sampling feature:  \<img alt="fois.png" height="720" src="<https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/SamplingFeature/fois.png>" width="960" /\>

Now, since we only have one [SamplingFeature](SamplingFeature), I can't traverse from Observation to the feature because I don't know **which** feature is associated with which Observation.

OK, now let's try the other option. foi is the feature.

\* foi is a feature:  \<img alt="foif.png" height="720" src="<https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/SamplingFeature/foif.png>" width="960" /\>

In this case, I can't traverse from the observation to the [SamplingFeature](SamplingFeature) at all. sampledFeature is unidirectional (bidirectional links are enemy of interoperability, dixit Simon Cox) There seems to be no way to connect those entities for a complete story.

Maybe linking the Observation to **both** [SamplingFeature](SamplingFeature) and the real feature ? Am I missing anything ?

-- EricBoisvert - 15 Jan 2010

Ok see what you mean; not sure I have the exact answer to this but see what comes out.

The first approach is the most appropriate from what I can tell, but as you say the problem is the existence of two sampledFeatures. I think what we need to separate out is the intent of each observation. The observed property of the observation must be a property of the domain feature, so if you split these into two observations and use the samplingFeatureRelation to describe the 'real world' relationships of the three way aquifer-waterbody-geologic unit relationship it might work. Here is an attempt:

<https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/SamplingFeature/FeatureOfInterestDiscussion.jpg>

I've created the sampling points as the measuring locations within the well, depending on the measurement process they could be more complex geometries. These sampling features contain the intent of each observation. The samplingFeatureRelation role describes the nature of the relationship. I have host well here but there may be something else may be more appropriate.

This allows the observation to be understood in context and the more complex feature relations to exist and be traversed, but the relations hold the semantics of how the real world features relate - not sure if this too much of a hidden contract in the design?

-- PeterTaylor - 04 Feb 2010

"The observed property of the observation must be a property of the domain feature". I always had a problem with this rule. It essentially prevent observation to be made on features outside a given domain, unless you are lucky. Actually, this rule contradicts Simon rules (funny, I believe they are both from him) that bidirectional links are enemies of interoperabily. Having a rule that forces a property to exist in a feature to make an observation is just the same kind of contraint than having an explicit link from that feature to a domain specific Observation. This rule would actually prevent an GWML observation on permeability of a Rock because [GeoSciML](GeoSciML) did not implement this property. I don't think it's right.

What you are proposing is to create sub sampling features for each observation. I think it's a lot of mechanic and it adds to user headaches to query that thing. Actually, wouldn't be easier to add a property to Observation (or subtype Observation) so it has both featureOfInterest (the real feature) and relatedSamplingFeature

- Observation that has no feature of interest means that we don't know yet (or will never know) what is the foi
- Observation that has no related sampling feature are "casual" observations
- [SamplingFeatures](SamplingFeatures) keep their birectional link with Observation, so you can traverse [SamplingFeature](SamplingFeature) to featureOfInterest

Actually, this is essentially what you proposed, but using [SamplingFeatureRelation](SamplingFeatureRelation) instead of an extra property. You [SamplingPoint](SamplingPoint) gives you a branching to point directly to the feature (ie, [WaterBody](WaterBody)) and the [SamplingFeature](SamplingFeature) (the Well).

Is this reasonable ?

-- EricBoisvert - 04 Feb 2010

A recent idea I had to resolve this is to bind the sampling-feature into the procedure. It requires a definition of an observation process that allows this, but it is a wild-card in O&M v2. For example:

- Sampling Feature is part of the observation protocol:  \<img alt="[SamplingFeatureExample](SamplingFeatureExample).png" src="<https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/SamplingFeature/SamplingFeatureExample.png>" /\>

-- SimonCox - 05 Feb 2010

OK, therefore, we can

- traverse from Observation to the [SamplingFeature](SamplingFeature) with Observation/procedure/[OM_Process](OM_Process)/samplingRegime/[SamplingFeature](SamplingFeature)
- traverse from [SamplingFeature](SamplingFeature) to Observation using relatedObservation (I added them on your diagram)
- traverse from [SamplingFeature](SamplingFeature) to the real feature with [SamplingFeature](SamplingFeature) /relatedObservation/Observation/featureOfInterest/Feature or [SamplingFeature](SamplingFeature) /sampledFeature/Feature. The "real feature" from either path could be different, most probably, the observation path would lead to a part of the feature pointed by sampledFeature.

Should this become a 'best practice' ? Observation should always point to the real feature (featureOfInterest) while link to [SamplingFeature](SamplingFeature) should alway go through a [OM_Process](OM_Process) ?

- O&M full story:  \<img alt="om_sf_2.png" height="611" src="<https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/SamplingFeature/om_sf_2.png>" width="625" /\>

-- EricBoisvert - 08 Feb 2010

So you find this approach useful? I've had push-back from some others, particularly in the fluid earth community where I guess the sampling-feature is more central to their practice, and the domain-feature generally taken as a given. I carefully removed one sentence from ISO 19156 draft that appeared to disallow this approach, so either strategy is now 'legal', so we are definitely in 'best practice' territory.

-- SimonCox - 09 Feb 2010

It's useful in the way that I could from a SOS connect back to both the sample and what is the (real) featureOfInterest. It's not totally different from Peter's proposal of best practice where he adds a [SubSample](SubSample) for each Observation. This one forces us to create a formal [OM_Process](OM_Process), which I find "slightly" better than creating arbitrary samples because I would find it confusing for users trying to understand what those sub samples really are.

\_guess the sampling-feature is more central to their practice, and the domain-feature generally taken as a given.\_

Well actually, most of the time, we are in the same situation and maybe the whole discussion is moot. Although I understand that when we analyse water at a well, the featureOfInterest should be the aquifer, all the hydrogeologists I discussed with are "well centric" (samplingFeature) and the aquifer is a given. Let's see when the rubber hits the road.

-- EricBoisvert - 09 Feb 2010
