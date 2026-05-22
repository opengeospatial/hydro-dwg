# **Use Case 4 Implementation**

Results

\<placeholder\>

Use-Case 4 contributions

\<table border="1" cellpadding="0" cellspacing="0"\> \<tbody\> \<tr\> \<td valign="top" width="70"\>

Participant

\</td\> \<td valign="top" width="65"\>

Web Services

\</td\> \<td valign="top" width="98"\>

Features \</td\> \<td valign="top" width="105"\>

Technologies \</td\> \<td valign="top" width="128"\>

Example XML Instances (File Name) \</td\> \</tr\> \<tr\> \<td valign="top" width="70"\>

USGS \</td\> \<td valign="top" width="65"\>

WMS, WFS, SOS \</td\> \<td valign="top" width="98"\>

[GW_HydrogeoUnit](GW_HydrogeoUnit.md), [GW_Well](GW_Well.md), [GroundWaterLevel](GroundWaterLevel.md)\</td\> \<td valign="top" width="105"\>

[GeoServer](GeoServer.md) WMS, Custom WFS, Custom SOS \</td\> \<td valign="top" width="128"\>

[GW_Well_USGS_uc4](GW_Well_USGS_uc4.md)-mapping.xml, [GW_AquiferSystem_USGS_uc4](GW_AquiferSystem_USGS_uc4.md)-mapping.xml \</td\> \</tr\> \<tr\> \<td valign="top" width="70"\>

GNS / UZ \</td\> \<td valign="top" width="65"\>

WFS, SOS,WPS \</td\> \<td valign="top" width="98"\>[GW_Well](GW_Well.md), [GW_MonitoringSite](GW_MonitoringSite.md)\</td\> \<td valign="top" width="105"\>

Geoserver 2.7+app-schema, 52North SOS 4.0.0, 52North WPS 3.2.0, Tomcat 7 \</td\> \<td valign="top" width="128"\>[GW_ManagementArea_GNS_uc2](GW_ManagementArea_GNS_uc2.md).xml includes a water budget\</td\> \</tr\> \</tbody\> \</table\>

Table UC4.2: Use-Case 4 issues

\<table border="1" cellpadding="0" cellspacing="0"\> \<tbody\> \<tr\> \<td valign="top" width="59"\>

Issue \# \</td\> \<td valign="top" width="73"\>

Participant \</td\> \<td valign="top" width="108"\>

Issue Summary \</td\> \<td valign="top" width="140"\>

Proposed Solution \</td\> \<td valign="top" width="88"\>

Timeline \</td\> \</tr\> \<tr\> \<td valign="top" width="59"\>

4.1 \</td\> \<td valign="top" width="73"\>

USGS

\</td\> \<td valign="top" width="108"\>

Screen hole size only has one dimension and does not account for non-circular holes, i.e. slits

\</td\> \<td valign="top" width="140"\>

Expand to two fields: screenHoleLength, screenHoleWidth

\</td\> \<td valign="top" width="88"\>

\</td\> \</tr\> \<tr\> \<td valign="top" width="59"\>

4.2 \</td\> \<td valign="top" width="73"\>

GNS /UZ

\</td\> \<td valign="top" width="108"\>

mapping from GWML2 features and time-series into domain specific modelling tools is still in early phase \</td\> \<td valign="top" width="140"\>

manual program codes, specific implementations necessary\</td\> \<td valign="top" width="88"\>

\</td\> \</tr\> \<tr\> \<td valign="top" width="59"\>

4.3 \</td\> \<td valign="top" width="73"\>

\</td\> \<td valign="top" width="108"\>

\</td\> \<td valign="top" width="140"\>

\</td\> \<td valign="top" width="88"\>

\</td\> \</tr\> \<tr\> \<td valign="top" width="59"\>

… \</td\> \<td valign="top" width="73"\>

\</td\> \<td valign="top" width="108"\> \</td\> \<td valign="top" width="140"\> \</td\> \<td valign="top" width="88"\> \</td\> \</tr\> \</tbody\> \</table\>

-- BoyanBrodaric - 26 Oct 2012

-- JessicaLucido - 17 Aug 2015

-- AlexKmoch - 25 Aug 2015
