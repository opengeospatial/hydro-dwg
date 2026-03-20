# [GW2IE](GW2IE.md) Use Case 4 Discussion page

This page has been created to collect discussions and ideas and keep the main [UseCase4](UseCase4.md) page relatively clean.

-- JanuszMichalak - 20 Nov 2012

## Supporting materials:

- [Interaction of r.gmtg with GRASS and MODFLOW.](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/GWIE2UC4DiscussionPage/1-s2.0-S0098300405001585-main.pdf)

## Discussion:

There is a variety of ways to conduct geophysical analysis of an area or a well, which lead to a variety of types of data (raw vs. derived) and comparison between types of analyses is not always possible. Also, experts are often times needed to make sense of geophysical information and incorporation into groundwater flow models.

Also, there is a move in the groundwater modeling community to un-structured grid analyses the traditional structured, which may have an impact on the format of model outputs and therefore our data model. More investigation is needed in this area.

-- JessicaLucido - 20 Nov 2012

The first point of discussion above implies that, for this use case, only post-interpretation geophysical survey results will be included.

In 20 November meeting, the use case was limited to model inputs specific to the hydrogeological system. This eliminates the second point of discussion above.

An additional constraint on this use case is the only "observed" data will be required from the standard data model. "Interpolated" or "modeled" data is not included.

-- JessicaLucido and Main.[DavidBlodgett](DavidBlodgett.md) - 20-21 Nov 2012

What thematic categories of hydrogeological data are needed for groundwater flow models?

We may divide them to few groups:1. For spatial model of modeled system (aquifer system).2. Data about spatial distribution of hydraulic parameters.3. Data describing state of the system (piezometric state of groundwater bodies).4. Data about natural and human made impact on groundwater bodies (surface water levels, recharge from ground surface, quantities of extracted water by wells etc.).

Almost all hydrogeological data are required for groundwater flow models. Also data from other domains (geology, hydrology/hydrography) are essential.In consequence if we make assumption that “only ‘observed’ data will be required from the standard data model separate use case” **this use case (UC4 Scientific – groundwater flow models) is completely unnecessary**. All these data are mentioned in the other use cases. Especially as " 'interpolated' or 'modeled' data" cannot be taken into consideration.

-- JanuszMichalak - 22 Nov 2012
