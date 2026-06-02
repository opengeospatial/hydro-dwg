| OGC Service | Provider | Features | URL | [WxS](WxS) server | [DataBase](DataBase) |
|:---|:---|:---|:---|:---|:---|
| WMS | GSC | NA | <http://gin.gw-info.net/service/gin/wms/mediator/gin_en> | GIN Mediator | Postgresl 9.3 + others |
| WFS | GSC | Wells, Aquifers,... |  |  |  |
| SOS | GSC | ?? | <http://gin.gw-info.net/GinService/sos/gw?request=GetCapabilities&service=SOS&ACCEPTVERSIONS=2.0.0> | GIN Mediator | Postgresl 9.3 + others |
| WFS | [BoM](BoM) /CSIRO | [GW_AquiferSystem](GW_AquiferSystem), [GW_Well](GW_Well),[GW_Aquifer](GW_Aquifer),Borehole | <http://gwservices.it.csiro.au:8080/geoserver/ows?service=wfs&version=1.1.0&request=GetCapabilities> | Tomcat 8.0 Geoserver 2.6.2+app-schema | [PostgreSQL](PostgreSQL) 9.3 |
| WFS | [B](BoM)RGM | [GW_Aquifer](GW_Aquifer), [GW_AquiferSystem](GW_AquiferSystem),[GW_Well](GW_Well),Borehole | <https://wfspoc.brgm-rec.fr/constellation/WS/wfs/BRGM:GWML2?service=WFS&version=2.0.0&request=GetCapabilities> | Tomcat 8.0 Geomatys Constellation | [PostGIS](PostGIS) 9.1 and 9.3 |
| SOS | USGS | Water Levels | <http://cida.usgs.gov/ngwmn_cache/sos?request=GetCapabilities&service=SOS&AcceptVersions=2.0.0> | Tomcat | Oracle 11g |
| WMS | USGS | Wells, Aquifers | <http://cida.usgs.gov/ngwmn-geoserver/ows?service=wms&version=1.3.0&request=GetCapabilities> typeName = ngwmn:[VW_GWDP_GEOSERVER](VW_GWDP_GEOSERVER), ngwmn:aquifrp025, ngwmn:[NAT_AQFR_ALLUV_GLACL_SPATIAL](NAT_AQFR_ALLUV_GLACL_SPATIAL) | [GeoServer](GeoServer) | Oracle 11g |
| WFS | USGS | Wells | <http://cida-test.er.usgs.gov/ngwmn_cache/wfs?version=1.1.0&service=wfs&REQUEST=GetFeature> | custom java solution | distributed system |
| WFS | [FedUni](FedUni) | [GW_Well](GW_Well) [GW_Aquifer](GW_Aquifer) [OM_Observation](OM_Observation) [GW_FluidBody](GW_FluidBody) [GW_Spring](GW_Spring) [GW_Discharge](GW_Discharge) [GW_Recharge](GW_Recharge) | <http://data.vvg.org.au:8080/geoserver/wfs?version=1.1.0&request=GetCapabilities> <http://data.vvg.org.au:8080/geoserver/wfs?service=WFS&request=getFeature&typeName=gwml2:GW_Aquifer&outputFormat=gml32&maxFeatures=3> \<font face="Calibri,sans-serif" size="2"\>[http://data.vvg.org.au:8080/geoserver/wfs?version=1.1.0&request=getFeature&typeName=om:OM_Observation&outputFormat=gml32&featureID=feduni.borehole.observation.46081.27001.1](https://owa.csiro.au/owa/redir.aspx?SURL=WZ-pGne0Z2eUpZl0t-vd0rk4DhlRNTahi2sZgGmpN94ii8ytlKPSCGgAdAB0AHAAOgAvAC8AZABhAHQAYQAuAHYAdgBnAC4AbwByAGcALgBhAHUAOgA4ADAAOAAwAC8AZwBlAG8AcwBlAHIAdgBlAHIALwB3AGYAcwA_AHYAZQByAHMAaQBvAG4APQAxAC4AMQAuADAAJgByAGUAcQB1AGUAcwB0AD0AZwBlAHQARgBlAGEAdAB1AHIAZQAmAHQAeQBwAGUATgBhAG0AZQA9AG8AbQA6AE8ATQBfAE8AYgBzAGUAcgB2AGEAdABpAG8AbgAmAG8AdQB0AHAAdQB0AEYAbwByAG0AYQB0AD0AZwBtAGwAMwAyACYAZgBlAGEAdAB1AHIAZQBJAEQAPQBmAGUAZAB1AG4AaQAuAGIAbwByAGUAaABvAGwAZQAuAG8AYgBzAGUAcgB2AGEAdABpAG8AbgAuADQANgAwADgAMQAuADIANwAwADAAMQAuADEA&URL=http%3a%2f%2fdata.vvg.org.au%3a8080%2fgeoserver%2fwfs%3fversion%3d1.1.0%26request%3dgetFeature%26typeName%3dom%3aOM_Observation%26outputFormat%3dgml32%26featureID%3dfeduni.borehole.observation.46081.27001.1)\</font\> <http://data.vvg.org.au:8080/geoserver/wfs?version=1.1.0&request=getFeature&typeName=gwml2:GW_FluidBody&maxFeatures=2&outputFormat=gml32> \<font face="Calibri,sans-serif" size="2"\><http://data.vvg.org.au:8080/geoserver/wfs?version=1.1.0&request=getFeature&typeName=gwml2w:GW_Spring&outputFormat=gml32&maxFeatures=2>\</font\> \<font face="Calibri,sans-serif" size="2"\><http://data.vvg.org.au:8080/geoserver/wfs?version=1.1.0&request=getFeature&typeName=gwml2f:GW_Discharge&outputFormat=gml32&maxFeatures=2>\</font\> \<font face="Calibri,sans-serif" size="2"\><http://data.vvg.org.au:8080/geoserver/wfs?version=1.1.0&request=getFeature&typeName=gwml2f:GW_Recharge&outputFormat=gml32&maxFeatures=2>\</font\> | Geoserver |  [MySQL](MySQL)   [PostGIS](PostGIS) 9.3 |
| WFS | [G](FedUni)NS / [Z_GIS](Z_GIS) | [GW_Well](GW_Well), [GW_Spring](GW_Spring),[GW_MonitoringSite](GW_MonitoringSite),[GW_ManagementArea](GW_ManagementArea),[GW_Aquifer](GW_Aquifer)(System) | <http://portal.smart-project.info/gs-smart/wfs?request=GetCapabilities&service=WFS> | Geoserver 2.7+app-schema,Tomcat 7 | [PostgreSQL](PostgreSQL) 9.x / shape-files and property files |
| SOS | [G](FedUni)NS / [Z_GIS](Z_GIS) | [WaterML2](WaterML2).0, O&M2.0 | <http://portal.smart-project.info/sos-smart/service/kvp?request=GetCapabilities&service=SOS> | 52North SOS 4.0.0,Tomcat 7 | [PostgreSQL](PostgreSQL) 9.x |
| WPS | [G](FedUni)NS / [Z_GIS](Z_GIS) | inputs from WFS and SOS above | <http://portal.smart-project.info/wps/WebProcessingService?Request=GetCapabilities&Service=WPS> | 52North WPS 3.2.0,Tomcat 7 |  |

-- AlexKmoch - 25 Aug 2015

-- BoyanBrodaric - 12 May 2015

-- BruceSimons - 18 May 2015

-- JessicaLucido - 20 May 2015

-- SylvainGrellet - 08 Jun 2015

-- JessicaLucido - 07 Jul 2015
