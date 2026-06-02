# WaterML 2.0 Tools and Testing Support

##

## Kisters [WaterML2.org](http://www.waterml2.org/)

## WaterML 2.0 Validation Tools

OGC official repository for [WaterML 2.0.1 executable test suite](https://github.com/opengeospatial/ets-waterml20)

- GML 3.2.1 uses a schematron validator that can help you configure the schematron testing for the WaterML test. See example here:
  - <https://github.com/opengeospatial/ets-gml32/blob/master/src/main/java/org/opengis/cite/iso19136/data/SchematronTests.java>
- Technical contact: Luis Bermudez, OGC (lbermudez \[at\] opengeospatial \[dot\] org)

Various CSIRO tools: see <http://waterml2.csiro.au> (technical contact: Pete Taylor, CSIRO (peter \[dot\] taylor \[at\] csiro \[dot\] au)

- CSIRO [WaterML 2.0.2 Part 1 Validation Service](http://waterml2.csiro.au/part1-validator/)
- CSIRO [WaterML 2.0 Part 2 Validation Service](http://waterml2.csiro.au/validator)
  - developed to support Ratings & Gaugings Interop Experiment, REST API

CSIRO [WaterML](WaterML) 2.0 Part 1 Validation Service now also hosted under: <http://resources.opengeospatial.org/WaterML2Validation/>

- Reloaded all the latest schemas from the OGC repository - so if there are any issues with compatibility of the schemas there with the spec I guess these may be a problem.
- May move to a OGC community github repository for future enhancements and maintenance.

## OGC, SWE and WaterML Code Libraries

### GeoPython OWSlib

[GeoPython OWSlib](http://geopython.github.io/OWSLib/) - library for many OGC web service standards

- WaterML 1.0, 1.1 included; WaterML 2.0 Part 1 pending merge (04-Mar-2016)
- [Tutorial on using OWSLib with SOS2.0 and WaterML2.0 with the Bureau of Met SOS service.](http://nbviewer.jupyter.org/github/peterataylor/bom-water-data-service-example/blob/master/bom-water-sos-example.ipynb)

### PyXB

<http://pythonhosted.org/PyXB/> - a tool to generate classes from schemas

- <https://github.com/pabigot/pyxb/tree/next/pyxb/bundles/opengis>
- <https://github.com/pabigot/pyxb/tree/master/pyxb/bundles/opengis/examples>
- Technical point of contact: David Valentine, SDSC (valentin \[at\] sdsc \[dot\] edu)

This directory adds many of the Geographic Information Systems XML schemas from <http://www.opengeospatial.org/> to PyXB as a bundle. There are over 800 schemas in the OpenGIS domain, with extremely complex interrelationships between them. Translating them is a complex activity, and the resulting bindings and archive files require over 100MB of disk space (including the schemas). As such, bindings are no longer provided in the PyXB distribution. You can generate the bindings by setting the [PYXB_ROOT](PYXB_ROOT) environment variable to the root directory of PyXB (the one in which "setup.py" is found), and running:

cd \${[PYXB_ROOT](PYXB_ROOT)}maintainer/genbundles @pyxb/bundles/opengis/scripts/genbindpython setup.py install

The genbundles invocation will first generate the standard dependencies including W3C versions of namespaces formerly provided by OpenGIS. Then the opengis genbind script will download the latest set of schema from OpenGIS and translate many of the standards. The final step installs the whole system including the new bindings. The namespaces that are currently supported by PyXB are listed at <http://pyxb.sourceforge.net/bundles.html#opengis> . Additional namespaces can be added by modifying the opengis genbind script to include them, and re-running the script.

## Docs and Tutorials

- CSIRO [SWE / SOS 2 Tutorial](https://www.seegrid.csiro.au/wiki/Siss/SensorObservationService2)

## Previous [WaterML 2.0 Public Wiki (2012)](WaterML.WebHome)

-- DavidArctur - 04 Mar 2016
