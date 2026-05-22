# [HydrologyDWG](HydrologyDWG.md) Web Preferences

The following settings are \_\_web preferences\_\_ of the [HydrologyDWG](HydrologyDWG.WebHome) web. These preferences overwrite the \_\_site-level preferences\_\_ in [TWiki.TWikiPreferences](TWiki.TWikiPreferences) and [TWikiPreferences](TWikiPreferences.md), and can be overwritten by \_\_user preferences\_\_ (your personal topic, eg: Main. in the [Main](Main.WebHome) web).

## Web Preferences Settings

These settings override the defaults for this web only. See [full list of defaults with explanation](TWiki.TWikiPreferences#DefaultWebPreferences). Many of the settings below are commented out. Remove the \# sign to enable a local customisation.

- List of topics of the [HydrologyDWG](HydrologyDWG.md) web:
  - \#Set WEBTOPICLIST =

\<div style='background-color: %WEBBGCOLOR%;float: right'\>  %WEBBGCOLOR%  \</div\>

- Web-specific background color: (Pick a lighter one of the TWiki.[StandardColors](StandardColors.md)).
  - Set WEBBGCOLOR = \#33CCFF
  - \_\_Note:\_\_ This setting is automatically configured when you create a web


- Image, URL and alternate tooltip text of web's logo.
  \_\_Note:\_\_ Don't add your own local logos to the TWiki.[TWikiLogos](TWikiLogos.md) topic; create your own logos topic instead.
  - \#Set WEBLOGOIMG =
  - \#Set WEBLOGOURL =
  - \#Set WEBLOGOALT =


- List this web in the TWiki.[SiteMap](SiteMap.md). If you want the web listed, then set SITEMAPLIST to `on`, do not set NOSEARCHALL, and add the "what" and "use to..." description for the site map. Use links that include the name of the web, i.e. [HydrologyDWG](HydrologyDWG.md).Topic links.
  \_\_Note:\_\_ Unlike other variables, the setting of SITEMAPLIST is **not** inherited from parent webs. It has to be set in **every** web that is to be listed in the TWiki.[SiteMap](SiteMap.md)
  - Set SITEMAPLIST = on
  - Set SITEMAPWHAT = Public Hydrology DWG
  - Set SITEMAPUSETO = ...collaborate on Hydrology
  - \_\_Note:\_\_ Above settings are automatically configured when you create a web


- Exclude web from a `web="all"` search: (Set to `on` for hidden webs).
  - Set NOSEARCHALL =
  - \_\_Note:\_\_ This setting is automatically configured when you create a web


- Prevent automatic linking of [WikiWords](TWiki.WikiWords) and acronyms (if set to `on`); link [WikiWords](WikiWords.md) (if empty); can be overwritten by web preferences:
  - \#Set NOAUTOLINK =
  - \_\_Note:\_\_ You can still use the `[[...][...]]` syntax to link topics if you disabled [WikiWord](WikiWord.md) linking. The `<noautolink> ... </noautolink>` syntax can be used to prevents links within a block of text.


- Default template for **new topics** for this web:
  - [WebTopicEditTemplate](WebTopicEditTemplate.md): Default template for new topics in this web. (Site-level is used if topic does not exist)
  - [TWiki.WebTopicEditTemplate](TWiki.WebTopicEditTemplate): Site-level default topic template


- Comma separated list of **forms** that can be attached to topics in this web. See TWiki.[TWikiForms](TWikiForms.md) for more information.
  - Set WEBFORMS =


- Users or groups who \_\_are not\_\_ / \_\_are\_\_ allowed to \_\_view\_\_ / \_\_change\_\_ / \_\_rename\_\_ topics in the [HydrologyDWG](HydrologyDWG.md) web: (See TWiki.[TWikiAccessControl](TWikiAccessControl.md)). Remove the \# to enable any of these settings. Remember that an empty setting is a valid setting; setting DENYWEBVIEW to nothing means that anyone can view the web.
  - \#Set DENYWEBVIEW =
  - \#Set ALLOWWEBVIEW =
  - \#Set DENYWEBCHANGE =
  - \#Set ALLOWWEBCHANGE = Main.[TWikiAdminGroup](TWikiAdminGroup.md)
  - \#Set DENYWEBRENAME =
  - \#Set ALLOWWEBRENAME = Main.[TWikiAdminGroup](TWikiAdminGroup.md)


- Users or groups allowed to change or rename this topic: (e.g., Main.[TWikiAdminGroup](TWikiAdminGroup.md))
  - \#Set ALLOWTOPICCHANGE = Main.[TWikiAdminGroup](TWikiAdminGroup.md)
  - Set ALLOWTOPICRENAME = Main.[TWikiAdminGroup](TWikiAdminGroup.md)


- Web preferences that are **not** allowed to be overridden by user or topic preferences:
  - Set FINALPREFERENCES = NOSEARCHALL, ATTACHFILESIZELIMIT, WIKIWEBMASTER, WEBCOPYRIGHT, WEBTOPICLIST, DENYWEBVIEW, ALLOWWEBVIEW, DENYWEBCHANGE, ALLOWWEBCHANGE, DENYWEBRENAME, ALLOWWEBRENAME
