# Instance document

## NRCan

Instance document attached to this page.

- [inst_WaterMonitorinObservation_NRCan.xml](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/WaterML20Instances/inst_WaterMonitorinObservation_NRCan.xml): NRCan / Ontario instance document
- Document validates using schemas available from SVN (see in trunk\\[GeneratedSchema_June_2010](GeneratedSchema_June_2010.md), never mind the import path I use in the instance document, you must get them from SVN)
- Had to copy in new OM2 schemas
- Not much changes beside namespace.
- Must now use URL instead of URN to identify resources
- Optional medata sections to fill
- some minor change in the schema, including adding some mandatory gml:id (were optional in gml 3.1)
- One issue is that this schema uses GML 3.2.1 and GWML is still at gml 3.1.1. This means that if a GWML is serialised inline, you will have a mixture of GML 3.2.1 and GML 3.1.1. In principle, there are no problem from the GML part itself, but I'm not sure about the dependencies (other schemas imported by GWML) that might import different versions of the **same** elements (hence, from different files) prompting the validator to complain that the same tag is declared twice. Anyway, this instance document refers to the [WaterWell](WaterWell.md) by ref (xlink:href).
- [WaterML](WaterML.md) 2.0 profile (OGC 10-126 - Req 2, p. 16) requires that featureOfInterest shall be a specialisation of [SP_SamplingFeature](SP_SamplingFeature.md) (O&M 2). GWML is a O&M 1 SamplingFeature, therefore it is not compliant. It's not a XSD constrain (featureOfInterest is xsd:anyType), but one defined in schematron.

-- EricBoisvert - 17 Jun 2010
