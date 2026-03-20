## Overview

In order to design the API/service interface for the RGS IE, there is a need to determine the service calls required. There are a number of way the service interface can be defined including:

- Navigation around the underlying data model
- Navigation around a domain conceptual model
- Value added calls the execute commonly required functions

The [Activity Plan](%PUBURL%/HydrologyDWG/RGSInteropExperiment/RGS_IE_Activity_Plan.docx) defines 3 use cases:

- Delivery of latest rating table
- Exposing rating tables for analysis and educational purposes
- Retrieval of full rating history

The service calls implemented will need to support the Activity plan use cases though the interoperability scenarios that we have defined for the experiment : [RGSIEScenarioPlanning](RGSIEScenarioPlanning.md).

The IE standardisation objective is around the RGS model rather than the interface. That said, **we have identified that there is a logical follow on body of work to look at standardising interfaces** for [WaterML2](WaterML2.md) , optimised for domain usage.

As we are not looking at standardising the interface, the primary purpose of the interfaces defined is to support the IE. Since the IE objectives are related to real work usage of this data, the resulting interfaces should have ongoing relevance to the exchange of RGS data, tho they may be minimally functional.

The objective of this page is the list possible user questions that the UI may need to support though a single or multiple requests. The list will then be used to determine the minimal API call requirements.

## User position : I know what I want, give it to me

Assumption :

- Calls are executed against a single montoring site.
- Calls receive 'from' and 'to' paramters in the call string
-

Ratings

| Capablity | Must have | Nice to have | Not required |
|:---|:---|:---|:---|
| Get: The latest rating | yes |  |  |
| Get: The latest rating and its latest shift | yes |  |  |
| Get: The conversion periods | yes |  |  |
| Get: Conversion tables X,X,X,X | yes |  |  |
| Get: Full conversion system |  | yes |  |

### Gaugings

| Capablity                       | Must have | Nice to have | Not required |
|:--------------------------------|:----------|:-------------|:-------------|
| Get: The latest gauging         | yes       |              |              |
| Get: All Gaugings               |           | yes          |              |
| Get: All Gaugings (with filter) |           | yes          |              |
| Get : Gauging X,X,X,X           | yes       |              |              |
|                                 |           |              |              |

Prefer filter after the fact.

### Sections

| Capablity                          | Must have | Nice to have | Not required |
|:-----------------------------------|:----------|:-------------|:-------------|
| Get: All sections                  |           | yes          |              |
| Get: All sections (with filter)    |           | yes          |              |
| Get : Section X,X,X,X              | yes       |              |              |
| Get : The latest section of type X |           | yes          |              |
|                                    |           |              |              |

### Range Values

| Capablity             | Must have | Nice to have | Not required |
|:----------------------|:----------|:-------------|:-------------|
| Get: Range periods    | yes       |              |              |
| Get: Range table X    | yes       |              |              |
| Get: All range tables |           | yes          |              |
|                       |           |              |              |
|                       |           |              |              |

## User position : I know what is available, I want to know what has changed

### Ratings

| Capablity | Must have | Nice to have | Not required |
|:---|:---|:---|:---|
| Ask: What is the latest rating. Has the latest rating changed (since this date)? | X |  |  |
| Ask: What is the latest rating and its latest shift | X |  |  |
| [Ask](AsK.md): Have there been any changes to the rating periods since I last checked? (since this date) | X |  |  |
| Ask: Have there been any changes to my list of the rating tables since I last checked? Multiple of the first call.  | X |  |  |
|  |  |  |  |

### Gaugings

| Capablity | Must have | Nice to have | Not required |
|:---|:---|:---|:---|
| Ask: Has the list of gaugings for rating X changed since date X |  | X (may be tricky) |  |
| Ask : Have there been any new gaugings since this date? | X |  |  |
| Ask : Have there been any new gaugings since this date? (with filter e.g. Since date X,In stage range X-Y,by method ) |  | X (adds complexity to implement..) | X |
|  |  |  |  |
|  |  |  |  |

### Sections

| Capablity | Must have | Nice to have | Not required |
|:---|:---|:---|:---|
| Ask: Has there been a new (type X) section since date Y | X |  |  |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |

### Range Values

| Capablity | Must have | Nice to have | Not required |
|:---|:---|:---|:---|
| Ask: Have there been any changes to the range periods since I last checked |  | X |  |
| Ask: Have there been any changes to my list of the range tables since I last checked |  | X |  |
|  |  |  |  |
| Tend to be more static data. For critical use cases it's likely these will be retrieved anyway. |  |  |  |
|  |  |  |  |

## User position : I want to explore what is available in order to determine what I want

### Ratings

| Capablity | Must have | Nice to have | Not required |
|:---|:---|:---|:---|
| Ask : What is the list of From-To combinations that conversions exist  | X |  |  |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |

### Gaugings

| Capablity | Must have | Nice to have | Not required |
|:---|:---|:---|:---|
| Ask : What is the list of From-To combinations that conversion observations exist for? | X |  |  |
| Ask : When was the last gauging or gaugings after this point?  What is the result? Does this form a query to another call?  | X |  |  |
| Ask :Give me a list of gaugings where a filter condition is met. e.g.: \<ul\> \<li\>above 5.34m\</li\> \<li\>Deviation \>10%\</li\> \<li\>Method = Ice bore\</li\> \</ul\>Most filters have a work around (do it client side). Any performance considerations? One site with 6k+ gaugings. Lots with 2000k+, normally 200-800.  |  | X |  |
| Ask: Give me a list of gaugings in period X and stage range Y |  | X |  |
| Ask: Give me a list of gaugings not used in conversion X |  | X |  |
| Ask: What gaugings are used in conversion X Inclusion/exclusion: Is it for calibration or validation of the rating curve?  |  | X |  |

### Sections

| Capablity | Must have | Nice to have | Not required |
|:---|:---|:---|:---|
| Ask: List of sections, Type X completed in period Y |  | X |  |
| Ask:List cross sections completed in period X |  | X |  |
| Ask :What is the list of section types available |  | X |  |
| What are the identifiers for all the sections? (then follow up with subsequent queries) | X |  |  |
|  |  |  |  |

### Range Values

| Capablity | Must have | Nice to have | Not required |
|:---|:---|:---|:---|
| Ask : What is the list of parameterFrom combinations that range values exist for | X |  |  |
|  |  |  |  |

-- PaulSheahan - 25 Oct 2013
