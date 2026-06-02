# Stage and Time rating shifts - concept investigation ---+++ ---+++ USGS calculation of flow

The calculation of flow is primarily based on the common approach of passing the time series record though a 'flow rating', the applicable rating table may change over the period of record – a family of rating tables.The trigger for changing rating tables can be due to many things, primarily a physical change on site has caused a change in the level/flow relationship.

In the period between rating changes there is often a need to 'tweak' the rating relationship by small amounts. There may be one or many tweaks of the relationship applied in the course of the ratings application period. There is a need to interpolate the tweaking between tweak definition points.

Tweaking is equivalent to the release of a new rating table with very minor change and a phased change between the rating tables.

A tweak definition may result from a single gauging observation that deviates from the existing rating more than the allowed amount.

In practice the tweaking is implemented by adjusting the incoming stage record rather that adjusting the rating. The process is to adjust the observed river level (called shifting) to the effective river level. \_\_Thus a rating shift is not a shift on the rating, it is a shift on the gage data before being passed through the rating\_\_.

The diagram below illustrates how a rating table is connected to a family of shift tables, the rating may have zero or many shift tables.

\<img alt="[Ratings_and_Shifts\_](Ratings_and_Shifts_)-\_relationship.jpg" height="750" src="<https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/RatingsShiftsQuebec/Ratings_and_Shifts_-_relationship.jpg>" title="[Ratings_and_Shifts\_](Ratings_and_Shifts_)-\_relationship.jpg" width="1064" /\>

### Flow calculation process

| Step | Action |
|:---|:---|
| 1\. Raw gage height |  |
|  | Datum and quality correction |
| 2\. Computed gage height |  |
|  | Determine gage height adjustment (stage shift) to be applied to the computed gage height |
| 3\. Effective stage - shifted gage height |  |
|  | Look up flow rating |
| 4\. Computed flow |  |

\- Need input on best practice USGS shift terminology

The diagram below shows how the effective stage is calulated using the raw gage reading and the stage shift tables.

\<img alt="[Shift_interpolation](Shift_interpolation).jpg" height="761" src="<https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/RatingsShiftsQuebec/Shift_interpolation.jpg>" title="[Shift_interpolation](Shift_interpolation).jpg" width="1163" /\>

#### WMO shift documentation excerpts

#### Taken from : WMO Manual on stream gauging - Volume II Computation of discharge - Rating shifts

###### Shift adjustments varied by time only

\_"The simplest way to vary shift adjustments between discharge measurements is by time interpolation. Time-varied shifts are usually used for periods when stage does not change very much, and the shifting control is affected by a gradual change due to scour or fill. For example, such a condition might be caused by gradual accumulation of falling leaves on a section control."\_

###### shift adjustments varied by stage only

\_"The use of a stage-varied-shift adjustment is equivalent to drawing a new numbered rating curve and may be preferable for temporary rating changes. The shift-variation diagrams shown in Figure II.6.3 are typical stage-only diagrams, as escribed in a previous section. They are applied over a period of time by manually or automatically determining the shift for each stage value for which discharge is computed during the specified time period."\_

###### WMO documentation of applying stage and time shifts

"The interpolation procedure is described in the following step-by-step example:

\_(a) Two shift curves, numbered 001 and 002 for example, are defined graphically for use at dates and times, t\<sub\>1 \</sub\> and t\<sub\>2\</sub\>, respectively;\_

\_(b) An interpolated shift, S\<sub\>n\</sub\>, is required for unit value, G\<sub\>n\</sub\>, at an intermediate date and time, t\<sub\>n\</sub\>;\_

\_(c) The electronic processing system computes the shifts, S\<sub\>1\</sub\> and S\<sub\>2\</sub\>, corresponding to the unit\_

\_value, G\<sub\>n\</sub\>, from each of the shift curves, 001 and 002, respectively;\_

\_(d) The electronic processing system performs an un-weighted, linear time interpolation of shifts\_

\_S\<sub\>1\</sub\> at time t\<sub\>1\</sub\>, and S\<sub\>2\</sub\> at time t\<sub\>2\</sub\>, to obtain the shift, S\<sub\>n\</sub\>, at time t\<sub\>n\</sub\>;\_

\_(e) The same interpolation procedure is used to estimate shifts for all other unit values resulting between times, t\<sub\>1\</sub\> and t\<sub\>2\</sub\>."\_

#### Consideration of WMO doco

After reading thoght the WMO doco, I am confident that the method described above is a compund of both the stage and time shift methods. Either method could be implmented in its own right or both methods implmented together thought a single mechanisim.I propose that the method coumented be implmented in the model.

#### [WaterML2](WaterML2).P2 implications

There are there are several option on implementing the shift paradigm. The options change the location of the computation complexity of determining the shift applied. The complexity could be located at the data providers end or the data receivers end. The rules for determining the 'shift' amount are complex, there is a risk that if the calculation of the shift is passed onto the client, then the rules will not be well understood or correctly applied.

The numbers in the below optins refer to the data steps in the table Flow calculation process

##### Option 1: Provide calculated shift

Supply a WML2 time series of 3 and the rating tables.

##### Option 2: Receiver calculated shift

Supply a WML2 time series of 2 and the rating tables and shifts to enable calculation of 3

##### Option 3: Provide shifted tables

Supply rating tables with stage shifts applied, the user time interpolates between the tables. This is a pragmatic, low complexity approach suggest by Stu. It is acknowldged that the final number will not be teh same as usign the documented approach by may be adequate. Further investigation is required.

### Useful references

###### WMO

A useful reference is the WMO manual of stream gauging 1044 Vol II section 6.11.1 <http://www.wmo.int/pages/prog/hwrp/publications/stream_gauging/1044_Vol_II_en.pdf>

A [excerpt of the rating shift component](http://external.opengis.org/twiki_public/pub/HydrologyDWG/RatingsShiftsQuebec/WMO_Manual_on_stream_gauging_-_Computation_of_discharge_-_Rating_shifts.pdf) of the document is attached to this page.

###### USGS

U.S. Geological Survey, Techniques of Water-Resources Investigations, Book 3, Chapter A13 <http://pubs.usgs.gov/twri/twri3-a13/>

<http://wwwrcamnl.wr.usgs.gov/sws/SWTraining/RatingsWeb/Shift_by_stage.proc.pdf>

[http://wwwrcamnl.wr.usgs.gov/sws/SWTraining/RatingsWeb/Index.html](http://wwwrcamnl.wr.usgs.gov/sws/SWTraining/RatingsWeb/Index.html) <http://wwwrcamnl.wr.usgs.gov/sws/SWTraining/RatingsWeb/RatingShifts/ShiftsDevelopment.swf>

[Section 1](http://pubs.usgs.gov/twri/twri3-a13/pdf/twri_3-A13_a.pdf) Abstract, Introduction, Field data requirements, Datum and gage-height corrections, List of discharge measurements, Discharge ratings [TWIKI copy](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/RatingsShiftsQuebec/Computation_of_Continuous_Records_of_Streamflow_a.pdf)

[Section 2](http://pubs.usgs.gov/twri/twri3-a13/pdf/twri_3-A13_b.pdf) Manual computation of gage-height record, Computation of discharge record [TWIKI copy](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/RatingsShiftsQuebec/Computation_of_Continuous_Records_of_Streamflow_b.pdf)

[Section 3](http://pubs.usgs.gov/twri/twri3-a13/pdf/twri_3-A13_c.pdf) Computation of discharge record (cont'd) Station analysis, Progress documentation, Quality assurance, References cited, Glossary [TWIKI copy](https://raw.githubusercontent.com/opengeospatial/hydro-dwg-wiki-docs/main/RatingsShiftsQuebec/Computation_of_Continuous_Records_of_Streamflow_c.pdf)

-- PaulSheahan - 20 Jun 2013
