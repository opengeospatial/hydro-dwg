# **Use Case 1 Implementation**

**Use-Case 1 Contributions:**

| Participant | Web Services | Features | Technologies | Example XML Instances (file name) |
|:---|:---|:---|:---|:---|
| NRcan | WMS, WFS | [GW_HydrogeoUnit](GW_HydrogeoUnit), [GW_Well](GW_Well) | [MapServer](MapServer) WMS, Custom WFS |  |
| BRGM |  |  |  |  |
| CSIRO / BOM |  |  |  |  |
| FedUni |  |  |  |  |
| GNS / UZ | WMS, WFS | [GW_Well](GW_Well), [GW_Spring](GW_Spring),[GW_MonitoringSite](GW_MonitoringSite) | Geoserver 2.7+app-schema,Tomcat 7, [PostgreSQL](PostgreSQL)9.x / shape-files and property files | [GW_Well_GNS_uc1](GW_Well_GNS_uc1).xml, [GW_Spring_GNS_uc1](GW_Spring_GNS_uc1).xml, [GW_MonitoringSite_GNS_uc1](GW_MonitoringSite_GNS_uc1).xml |
| USGS | WMS, WFS | [GW_HydrogeoUnit](GW_HydrogeoUnit), [GW_Well](GW_Well) | [GeoServer](GeoServer) WMS, Custom WFS | [GW_Well_USGS_uc4](GW_Well_USGS_uc4)-mapping.xml, [GW_AquiferSystem_USGS_uc4](GW_AquiferSystem_USGS_uc4)-mapping.xml |

**Use-Case 1 Issues:**

| \# | Participant | Summary | Proposed Solution | Timeline |
|:---|:---|:---|:---|:---|
| 1.1 | USGS | Screen hole size only has one dimension and does not account for non-circular holes, i.e. slits | Expand to two fields: screenHoleLength, screenHoleWidth |  |
| 1.2 |  |  |  |  |
| 1.3 |  |  |  |  |

-- BoyanBrodaric - 26 Oct 2012

-- JessicaLucido - 19 Aug 2015

-- AlexKmoch - 25 Aug 2015
