## Sample Data

**UK Environment Agency**

- Spread sheet of common RGS data [EA_44810_GSDQ_summary.xlsx](http://external.opengis.org/twiki_public/pub/HydrologyDWG/References/EA_44810_GSDQ_summary.xlsx)

**Australian BOM**

-  [WDTF : Ratings and gaugings](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/References/410777_gaugings_and_ratings.xml)
-  [WDTF Sections](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/References/410777_-_sections.xml)
- Monitoring station ACT:410777,
  - Data licencing <http://www.bom.gov.au/water/regulations/report-summary.php?personid=2>
  - Site data : <http://incp.environment.act.gov.au/water/SiteDetails.aspx?sid=410777>

**USGS NWIS** \* \<font face="Verdana" size="2"\> <http://water.usgs.gov/XML/NWIS/5.0/index.html> \</font\>

- <http://water.usgs.gov/XML/NWIS/5.0/Samples/index.html>
- <http://water.usgs.gov/XML/NWIS/5.0/Samples/RatingSummaryRequest.xml>
- <http://water.usgs.gov/XML/NWIS/5.0/Samples/RatingFullPeriodRequest.xml> \* \<u\>Vocabularies\</u\> \*
- \<u\> <http://water.usgs.gov/XML/NWIS/5.0/ReferenceLists/ReferenceListSummary.html> \</u\> \* \<u\>Documentation - XMLspy\</u\> \*
- \<u\> <http://water.usgs.gov/XML/NWIS/5.0/doc/UsgsHydroML.html> \</u\>

## References

USGS : Here is the most recent information on the USGS [HydroML](HydroML) schemas related to those data sets:  [\<font face="Verdana" size="2"\>http://water.usgs.gov/XML/NWIS/5.0/index.html\</font\>](http://water.usgs.gov/XML/NWIS/5.0/index.html)

BOM WDTF [download package](ftp://ftp.bom.gov.au/anon/home/water/WDTF/release-wdtf-package-v1.0.2.zip)<http://www.bom.gov.au/water/regulations/wdtf/index.shtml>

- WMO Manual on Stream Gauging, Volume II – Computation of Discharge, WMO-No. 1044. 2010
- WMO Guide to Hydrological Practices, Volume I.
- USGS - DISCHARGE RATINGS AT GAGING STATIONS \<a href="<http://pubs.usgs.gov/twri/twri3-a10/pdf/twri_3-A10_a.pdf>" title="<http://pubs.usgs.gov/twri/twri3-a10/pdf/twri_3-A10_a.pdf>"\><http://pubs.usgs.gov/twri/twri3-a10/pdf/twri_3-A10_a.pdf>
- NOAA- SHEF format: <http://www.weather.gov/directives/sym/pd01009044curr.pdf> USGS
- [HydroML](HydroML): <http://water.usgs.gov/XML/NWIS/4.11/index.html> [HydroXC](HydroXC): <http://www.weather.gov/oh/hydroxc/schema3.html>
- WDTF: <http://www.bom.gov.au/water/regulations/wdtf/wdtfDownload.shtml>
- River Gauging Station Data Quality Classification (GSDQ). A UK based method for assessing the quality of ratings curves and associated data. In depth and good material for style of metadata required for making detailed assesments of quality (this could be formed as a use case). I've uploaded here (it got taken down from previous link): [River_Gauging_Station_Data_Quality_Classification.pdf](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/References/River_Gauging_Station_Data_Quality_Classification.pdf)
- Deltares page on stage-discharge relationship: <https://publicwiki.deltares.nl/display/HYMOS/03+-+Stage+Discharge>. Contains some good content on methods, metadata requirements, controls etc. e.g. <https://publicwiki.deltares.nl/display/HYMOS/02+Edit+flow+measurements>.

UK Environment Agency pages providing descriptive and actual rating information for users for flood estimation purposes:

- Descriptive: <http://www.environment-agency.gov.uk/hiflows/station.aspx?47004>
- Rating info: <http://www.environment-agency.gov.uk/hiflows/apr.aspx?47004_rating>

Example CEH (UK) pages providing access to daily flow data and associated quality info, currently as text summary (station description):

- <http://www.ceh.ac.uk/data/nrfa/data/station.html?24001>
- <http://www.ceh.ac.uk/data/nrfa/data/station.html?47007> (complex history)

## Uncertainty papers

Here are citations to a couple of recent papers on hydrometric uncertainty. Ultimately, the primary use-case for sharing of ratings gaugings and cross sections is to mitigate for the lack in objective quantification of uncertainty in discharge timeseries. Sophisticated operational and scientific users of discharge data need to inspect how robust the derivation of discharge from stage is in order to establish the confidence with which critical decisions or hypothesis tests can be based. This understanding how the information is of use is germane to design and development of the standard.

- [McMillan](McMillan) , H., Krueger, T. and Freer, J. 2012, Benchmarking observational uncertainties for hydrology: rainfall, river discharge and water quality. Hydrol. Process.. doi: 10.1002/hyp.9384
- Hamilton, AS, Moore, RD. 2012. Quantifying uncertainty in streamflow records. Canadian Water Resources Journal. 37(1):3-21.
- Beven, K., Buytaert, W., & Smith, L. A. (2012). On virtual observatories and modelled realities (or why discharge must be treated as a virtual variable). Hydrological Processes, 26(12), 1905-1908.
- Beven, K., & Westerberg, I. (2011). On red herrings and real herrings: disinformation and information in hydrological inference. Hydrological Processes, 25(10), 1676-1680.
- G. Di Baldassarre and A. Montanari (2009), Uncertainty in river discharge observations: a quantitative analysis. Hydrology and Earth System Sciences.
- José-Luis Guerrero, Ida K. Westerberg, Sven Halldin, Chong-Yu Xu, Lars-Christer Lundin, Temporal variability in stage–discharge relationships, Journal of Hydrology, Volumes 446–447, 26 June 2012, Pages 90-102, ISSN 0022-1694, 10.1016/j.jhydrol.2012.04.031
- Tomkins, Kerrie M. "Uncertainty in streamflow rating curves: methods, controls and consequences." *Hydrological Processes* (2012). (this is a CSIRO paper. I'm looking into using this as a case study for RGS encodings).

-- PeterTaylor - 08 Jun 2012
