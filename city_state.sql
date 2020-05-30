--
-- PostgreSQL database dump
--

-- Dumped from database version 12.3
-- Dumped by pg_dump version 12.3


-- SET statement_timeout = 0;
-- SET lock_timeout = 0;
-- SET idle_in_transaction_session_timeout = 0;
-- SET client_encoding = 'UTF8';
-- SET standard_conforming_strings = on;
-- SELECT pg_catalog.set_config('search_path', '', false);
-- SET check_function_bodies = false;
-- SET xmloption = content;
-- SET client_min_messages = warning;
-- SET row_security = off;


--
-- Name: city_state; Type: DATABASE; Schema: -; Owner: -
--


-- SET statement_timeout = 0;
-- SET lock_timeout = 0;
-- SET idle_in_transaction_session_timeout = 0;
-- SET client_encoding = 'UTF8';
-- SET standard_conforming_strings = on;
-- SELECT pg_catalog.set_config('search_path', '', false);
-- SET check_function_bodies = false;
-- SET xmloption = content;
-- SET client_min_messages = warning;
-- SET row_security = off;

-- SET default_tablespace = '';

-- SET default_table_access_method = heap;

--
-- Name: states; Type: TABLE; Schema: public; Owner: -
--

DROP TABLE IF EXISTS public.states cascade;

CREATE TABLE public.states (
    city text NOT NULL,
    state_id text NOT NULL,
    state_name text NOT NULL,
    county_name text,
    timezone text,
    population integer NOT NULL,
    id integer NOT NULL
);


--
-- Name: states_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE public.states_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: states_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE public.states_id_seq OWNED BY public.states.id;


--
-- Name: states id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.states ALTER COLUMN id SET DEFAULT nextval('public.states_id_seq'::regclass);


--
-- Data for Name: states; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.states (city, state_id, state_name, county_name, timezone, population, id) FROM stdin;
New York	NY	New York	New York	America/New_York	19354925	1
Los Angeles	CA	California	Los Angeles	America/Los_Angeles	12815478	2
Chicago	IL	Illinois	Cook	America/Chicago	8675985	3
Miami	FL	Florida	Miami-Dade	America/New_York	6381969	4
Dallas	TX	Texas	Dallas	America/Chicago	5733262	5
Philadelphia	PA	Pennsylvania	Philadelphia	America/New_York	5637887	6
Houston	TX	Texas	Harris	America/Chicago	5446471	7
Washington	DC	District of Columbia	District of Columbia	America/New_York	5289423	8
Atlanta	GA	Georgia	Fulton	America/New_York	5228753	9
Boston	MA	Massachusetts	Suffolk	America/New_York	4637540	10
Phoenix	AZ	Arizona	Maricopa	America/Phoenix	4081852	11
Seattle	WA	Washington	King	America/Los_Angeles	3643768	12
San Francisco	CA	California	San Francisco	America/Los_Angeles	3603764	13
Detroit	MI	Michigan	Wayne	America/Detroit	3522209	14
San Diego	CA	California	San Diego	America/Los_Angeles	3210317	15
Minneapolis	MN	Minnesota	Hennepin	America/Chicago	2926760	16
Tampa	FL	Florida	Hillsborough	America/New_York	2804243	17
Denver	CO	Colorado	Denver	America/Denver	2787269	18
Brooklyn	NY	New York	Kings	America/New_York	2629153	19
Queens	NY	New York	Queens	America/New_York	2333057	20
Baltimore	MD	Maryland	Baltimore	America/New_York	2170507	21
Riverside	CA	California	Riverside	America/Los_Angeles	2084752	22
St. Louis	MO	Missouri	St. Louis	America/Chicago	2078286	23
Las Vegas	NV	Nevada	Clark	America/Los_Angeles	2073048	24
Portland	OR	Oregon	Multnomah	America/Los_Angeles	2052799	25
San Antonio	TX	Texas	Bexar	America/Chicago	2002533	26
Sacramento	CA	California	Sacramento	America/Los_Angeles	1854701	27
San Jose	CA	California	Santa Clara	America/Los_Angeles	1821902	28
Orlando	FL	Florida	Orange	America/New_York	1776844	29
Cleveland	OH	Ohio	Cuyahoga	America/New_York	1730366	30
Pittsburgh	PA	Pennsylvania	Allegheny	America/New_York	1715300	31
Cincinnati	OH	Ohio	Hamilton	America/New_York	1648257	32
Manhattan	NY	New York	New York	America/New_York	1643737	33
Austin	TX	Texas	Travis	America/Chicago	1638719	34
Kansas City	MO	Missouri	Jackson	America/Chicago	1615624	35
Indianapolis	IN	Indiana	Marion	America/Indiana/Indianapolis	1564702	36
Columbus	OH	Ohio	Franklin	America/New_York	1528317	37
Virginia Beach	VA	Virginia	Virginia Beach	America/New_York	1480386	38
Charlotte	NC	North Carolina	Mecklenburg	America/New_York	1467365	39
Bronx	NY	New York	Bronx	America/New_York	1455723	40
Milwaukee	WI	Wisconsin	Milwaukee	America/Chicago	1377811	41
Providence	RI	Rhode Island	Providence	America/New_York	1206645	42
Jacksonville	FL	Florida	Duval	America/New_York	1156294	43
Salt Lake City	UT	Utah	Salt Lake	America/Denver	1098403	44
Nashville	TN	Tennessee	Davidson	America/Chicago	1076648	45
Memphis	TN	Tennessee	Shelby	America/Chicago	1068876	46
Richmond	VA	Virginia	Richmond	America/New_York	1059910	47
New Orleans	LA	Louisiana	Orleans	America/Chicago	1029126	48
Raleigh	NC	North Carolina	Wake	America/New_York	1018339	49
Louisville	KY	Kentucky	Jefferson	America/New_York	1011699	50
Oklahoma City	OK	Oklahoma	Oklahoma	America/Chicago	956001	51
Bridgeport	CT	Connecticut	Fairfield	America/New_York	938409	52
Buffalo	NY	New York	Erie	America/New_York	926264	53
Hartford	CT	Connecticut	Hartford	America/New_York	914754	54
Fort Worth	TX	Texas	Tarrant	America/Chicago	874171	55
Tucson	AZ	Arizona	Pima	America/Phoenix	868394	56
El Paso	TX	Texas	El Paso	America/Denver	845677	57
Honolulu	HI	Hawaii	Honolulu	Pacific/Honolulu	833674	58
Omaha	NE	Nebraska	Douglas	America/Chicago	827789	59
McAllen	TX	Texas	Hidalgo	America/Chicago	800907	60
Albuquerque	NM	New Mexico	Bernalillo	America/Denver	758526	61
Birmingham	AL	Alabama	Jefferson	America/Chicago	744192	62
Dayton	OH	Ohio	Montgomery	America/New_York	718172	63
Rochester	NY	New York	Monroe	America/New_York	712001	64
Sarasota	FL	Florida	Sarasota	America/New_York	706248	65
Fresno	CA	California	Fresno	America/Los_Angeles	698024	66
Allentown	PA	Pennsylvania	Lehigh	America/New_York	682902	67
Tulsa	OK	Oklahoma	Tulsa	America/Chicago	672057	68
Concord	CA	California	Contra Costa	America/Los_Angeles	654773	69
Cape Coral	FL	Florida	Lee	America/New_York	630137	70
Springfield	MA	Massachusetts	Hampden	America/New_York	628079	71
Colorado Springs	CO	Colorado	El Paso	America/Denver	623949	72
Charleston	SC	South Carolina	Charleston	America/New_York	616088	73
Grand Rapids	MI	Michigan	Kent	America/Detroit	602697	74
Mission Viejo	CA	California	Orange	America/Los_Angeles	600477	75
Albany	NY	New York	Albany	America/New_York	597273	76
Knoxville	TN	Tennessee	Knox	America/New_York	585252	77
Baton Rouge	LA	Louisiana	East Baton Rouge	America/Chicago	583616	78
Bakersfield	CA	California	Kern	America/Los_Angeles	574365	79
Ogden	UT	Utah	Weber	America/Denver	573635	80
New Haven	CT	Connecticut	New Haven	America/New_York	568147	81
Columbia	SC	South Carolina	Richland	America/New_York	566169	82
Akron	OH	Ohio	Summit	America/New_York	565923	83
Provo	UT	Utah	Utah	America/Denver	503698	84
Worcester	MA	Massachusetts	Worcester	America/New_York	499000	85
Mesa	AZ	Arizona	Maricopa	America/Phoenix	496404	86
Palm Bay	FL	Florida	Brevard	America/New_York	489915	87
Toledo	OH	Ohio	Lucas	America/New_York	488675	88
Murrieta	CA	California	Riverside	America/Los_Angeles	483684	89
Wichita	KS	Kansas	Sedgwick	America/Chicago	483060	90
Des Moines	IA	Iowa	Polk	America/Chicago	481225	91
Staten Island	NY	New York	Richmond	America/New_York	476018	92
Long Beach	CA	California	Los Angeles	America/Los_Angeles	469453	93
Greenville	SC	South Carolina	Greenville	America/New_York	467897	94
Little Rock	AR	Arkansas	Pulaski	America/Chicago	442702	95
Harrisburg	PA	Pennsylvania	Dauphin	America/New_York	441583	96
Denton	TX	Texas	Denton	America/Chicago	440149	97
Madison	WI	Wisconsin	Dane	America/Chicago	439556	98
Reno	NV	Nevada	Washoe	America/Los_Angeles	433274	99
Port St. Lucie	FL	Florida	St. Lucie	America/New_York	432592	100
Oakland	CA	California	Alameda	America/Los_Angeles	425198	101
Winston-Salem	NC	North Carolina	Forsyth	America/New_York	416584	102
Indio	CA	California	Riverside	America/Los_Angeles	408100	103
Durham	NC	North Carolina	Durham	America/New_York	407578	104
Syracuse	NY	New York	Onondaga	America/New_York	407262	105
Chattanooga	TN	Tennessee	Hamilton	America/New_York	407185	106
Lancaster	PA	Pennsylvania	Lancaster	America/New_York	404528	107
Spokane	WA	Washington	Spokane	America/Los_Angeles	403046	108
Palm Coast	FL	Florida	Flagler	America/New_York	401760	109
Arlington	TX	Texas	Tarrant	America/Chicago	396397	110
Bonita Springs	FL	Florida	Lee	America/New_York	396223	111
Poughkeepsie	NY	New York	Dutchess	America/New_York	396044	112
Stockton	CA	California	San Joaquin	America/Los_Angeles	394470	113
Oxnard	CA	California	Ventura	America/Los_Angeles	389795	114
Augusta	GA	Georgia	Richmond	America/New_York	389386	115
Scranton	PA	Pennsylvania	Lackawanna	America/New_York	389025	116
Boise	ID	Idaho	Ada	America/Boise	385221	117
Modesto	CA	California	Stanislaus	America/Los_Angeles	381401	118
Kissimmee	FL	Florida	Osceola	America/New_York	374234	119
Youngstown	OH	Ohio	Mahoning	America/New_York	373731	120
Aurora	CO	Colorado	Adams	America/Denver	366626	121
Anaheim	CA	California	Orange	America/Los_Angeles	352500	122
Lancaster	CA	California	Los Angeles	America/Los_Angeles	349221	123
Victorville	CA	California	San Bernardino	America/Los_Angeles	346951	124
Pensacola	FL	Florida	Escambia	America/Chicago	344403	125
Fayetteville	AR	Arkansas	Washington	America/Chicago	341893	126
San Juan	PR	Puerto Rico	San Juan	America/Puerto_Rico	341660	127
Corpus Christi	TX	Texas	Nueces	America/Chicago	341438	128
Jackson	MS	Mississippi	Hinds	America/Chicago	338188	129
Greensboro	NC	North Carolina	Guilford	America/New_York	335591	130
Flint	MI	Michigan	Genesee	America/Detroit	335357	131
Santa Ana	CA	California	Orange	America/Los_Angeles	334139	132
Fort Wayne	IN	Indiana	Allen	America/Indiana/Indianapolis	328567	133
Ann Arbor	MI	Michigan	Washtenaw	America/Detroit	326291	134
Fayetteville	NC	North Carolina	Cumberland	America/New_York	324703	135
Santa Rosa	CA	California	Sonoma	America/Los_Angeles	321911	136
Lansing	MI	Michigan	Ingham	America/Detroit	320931	137
Mobile	AL	Alabama	Mobile	America/Chicago	318087	138
Lexington	KY	Kentucky	Fayette	America/New_York	315942	139
Huntsville	AL	Alabama	Madison	America/Chicago	309719	140
Santa Clarita	CA	California	Los Angeles	America/Los_Angeles	309381	141
Asheville	NC	North Carolina	Buncombe	America/New_York	309253	142
St. Paul	MN	Minnesota	Ramsey	America/Chicago	306624	143
Fort Collins	CO	Colorado	Larimer	America/Denver	303187	144
Antioch	CA	California	Contra Costa	America/Los_Angeles	302888	145
Henderson	NV	Nevada	Clark	America/Los_Angeles	302542	146
Trenton	NJ	New Jersey	Mercer	America/New_York	296872	147
Lakeland	FL	Florida	Polk	America/New_York	291284	148
Shreveport	LA	Louisiana	Caddo	America/Chicago	287435	149
Davenport	IA	Iowa	Scott	America/Chicago	287416	150
Springfield	MO	Missouri	Greene	America/Chicago	287225	151
Plano	TX	Texas	Collin	America/Chicago	286146	152
Rockford	IL	Illinois	Winnebago	America/Chicago	285565	153
Newark	NJ	New Jersey	Essex	America/New_York	285157	154
Lincoln	NE	Nebraska	Lancaster	America/Chicago	285121	155
Round Lake Beach	IL	Illinois	Lake	America/Chicago	284610	156
South Bend	IN	Indiana	St. Joseph	America/Indiana/Indianapolis	281103	157
Savannah	GA	Georgia	Chatham	America/New_York	280085	158
Irvine	CA	California	Orange	America/Los_Angeles	277456	159
Canton	OH	Ohio	Stark	America/New_York	271187	160
Jersey City	NJ	New Jersey	Hudson	America/New_York	270756	161
Chula Vista	CA	California	San Diego	America/Los_Angeles	270474	162
Eugene	OR	Oregon	Lane	America/Los_Angeles	267571	163
Reading	PA	Pennsylvania	Berks	America/New_York	267303	164
Lafayette	LA	Louisiana	Lafayette	America/Chicago	265749	165
St. Petersburg	FL	Florida	Pinellas	America/New_York	263258	166
Lubbock	TX	Texas	Lubbock	America/Chicago	262508	167
Peoria	IL	Illinois	Peoria	America/Chicago	262013	168
Myrtle Beach	SC	South Carolina	Horry	America/New_York	260490	169
Laredo	TX	Texas	Webb	America/Chicago	260247	170
Salem	OR	Oregon	Marion	America/Los_Angeles	259819	171
Columbus	GA	Georgia	Muscogee	America/New_York	259163	172
Montgomery	AL	Alabama	Montgomery	America/Chicago	255911	173
Chandler	AZ	Arizona	Maricopa	America/Phoenix	253461	174
Anchorage	AK	Alaska	Anchorage	America/Anchorage	253424	175
Tallahassee	FL	Florida	Leon	America/New_York	253033	176
Concord	NC	North Carolina	Cabarrus	America/New_York	250189	177
Scottsdale	AZ	Arizona	Maricopa	America/Phoenix	249953	178
Killeen	TX	Texas	Bell	America/Chicago	247492	179
Glendale	AZ	Arizona	Maricopa	America/Phoenix	246712	180
Wilmington	NC	North Carolina	New Hanover	America/New_York	245913	181
Winter Haven	FL	Florida	Polk	America/New_York	245240	182
Norfolk	VA	Virginia	Norfolk	America/New_York	244706	183
North Las Vegas	NV	Nevada	Clark	America/Los_Angeles	242978	184
Gilbert	AZ	Arizona	Maricopa	America/Phoenix	242357	185
Atlantic City	NJ	New Jersey	Atlantic	America/New_York	241366	186
Barnstable Town	MA	Massachusetts	Barnstable	America/New_York	241135	187
Chesapeake	VA	Virginia	Chesapeake	America/New_York	240400	188
Irving	TX	Texas	Dallas	America/Chicago	240376	189
Hialeah	FL	Florida	Miami-Dade	America/New_York	239676	190
Garland	TX	Texas	Dallas	America/Chicago	238005	191
McKinney	TX	Texas	Collin	America/Chicago	235137	192
Fremont	CA	California	Alameda	America/Los_Angeles	234965	193
Visalia	CA	California	Tulare	America/Los_Angeles	234576	194
York	PA	Pennsylvania	York	America/New_York	234248	195
Kennewick	WA	Washington	Benton	America/Los_Angeles	232918	196
Evansville	IN	Indiana	Vanderburgh	America/Chicago	232288	197
Paradise	NV	Nevada	Clark	America/Los_Angeles	231861	198
Nashua	NH	New Hampshire	Hillsborough	America/New_York	231265	199
Arlington	VA	Virginia	Arlington	America/New_York	229537	200
Brownsville	TX	Texas	Cameron	America/Matamoros	227886	201
Appleton	WI	Wisconsin	Outagamie	America/Chicago	222225	202
Gulfport	MS	Mississippi	Harrison	America/Chicago	221351	203
Thousand Oaks	CA	California	Ventura	America/Los_Angeles	218732	204
Avondale	AZ	Arizona	Maricopa	America/Phoenix	217195	205
San Bernardino	CA	California	San Bernardino	America/Los_Angeles	216998	206
Bremerton	WA	Washington	Kitsap	America/Los_Angeles	216483	207
Roanoke	VA	Virginia	Roanoke	America/New_York	216180	208
Hickory	NC	North Carolina	Catawba	America/New_York	215356	209
Kalamazoo	MI	Michigan	Kalamazoo	America/Detroit	214086	210
Tacoma	WA	Washington	Pierce	America/Los_Angeles	213421	211
Fontana	CA	California	San Bernardino	America/Los_Angeles	211818	212
Green Bay	WI	Wisconsin	Brown	America/Chicago	208628	213
College Station	TX	Texas	Brazos	America/Chicago	207311	214
Moreno Valley	CA	California	Riverside	America/Los_Angeles	207229	215
Amarillo	TX	Texas	Potter	America/Chicago	206075	216
Portland	ME	Maine	Cumberland	America/New_York	206026	217
Fargo	ND	North Dakota	Cass	America/Chicago	204823	218
Santa Barbara	CA	California	Santa Barbara	America/Los_Angeles	204037	219
Norwich	CT	Connecticut	New London	America/New_York	203919	220
Glendale	CA	California	Los Angeles	America/Los_Angeles	203057	221
Yonkers	NY	New York	Westchester	America/New_York	202022	222
Huntington Beach	CA	California	Orange	America/Los_Angeles	201877	223
Aurora	IL	Illinois	Kane	America/Chicago	200968	224
Gainesville	FL	Florida	Alachua	America/New_York	199698	225
Olympia	WA	Washington	Thurston	America/Los_Angeles	196081	226
North Port	FL	Florida	Sarasota	America/New_York	195995	227
Spring Valley	NV	Nevada	Clark	America/Los_Angeles	195649	228
Huntington	WV	West Virginia	Cabell	America/New_York	194158	229
Deltona	FL	Florida	Volusia	America/New_York	194064	230
Sunrise Manor	NV	Nevada	Clark	America/Los_Angeles	193857	231
Grand Prairie	TX	Texas	Dallas	America/Chicago	193840	232
Salinas	CA	California	Monterey	America/Los_Angeles	193593	233
Waterbury	CT	Connecticut	New Haven	America/New_York	191487	234
Overland Park	KS	Kansas	Johnson	America/Chicago	191281	235
Waco	TX	Texas	McLennan	America/Chicago	188451	236
Erie	PA	Pennsylvania	Erie	America/New_York	188082	237
Cedar Rapids	IA	Iowa	Linn	America/Chicago	186163	238
Hagerstown	MD	Maryland	Washington	America/New_York	185707	239
Tempe	AZ	Arizona	Maricopa	America/Phoenix	185041	240
Spartanburg	SC	South Carolina	Spartanburg	America/New_York	183187	241
Clarksville	TN	Tennessee	Montgomery	America/Chicago	182852	242
Gastonia	NC	North Carolina	Gaston	America/New_York	180977	243
Lorain	OH	Ohio	Lorain	America/New_York	180242	244
Sioux Falls	SD	South Dakota	Minnehaha	America/Chicago	180207	245
Fort Lauderdale	FL	Florida	Broward	America/New_York	180075	246
Newport News	VA	Virginia	Newport News	America/New_York	179391	247
High Point	NC	North Carolina	Guilford	America/New_York	177877	248
Santa Cruz	CA	California	Santa Cruz	America/Los_Angeles	177559	249
Rancho Cucamonga	CA	California	San Bernardino	America/Los_Angeles	177455	250
Frisco	TX	Texas	Collin	America/Chicago	177289	251
Danbury	CT	Connecticut	Fairfield	America/New_York	177180	252
Hemet	CA	California	Riverside	America/Los_Angeles	176895	253
Oceanside	CA	California	San Diego	America/Los_Angeles	176196	254
Ontario	CA	California	San Bernardino	America/Los_Angeles	175844	255
Vancouver	WA	Washington	Clark	America/Los_Angeles	175676	256
Garden Grove	CA	California	Orange	America/Los_Angeles	174229	257
Nampa	ID	Idaho	Canyon	America/Boise	173866	258
Vallejo	CA	California	Solano	America/Los_Angeles	173847	259
Elk Grove	CA	California	Sacramento	America/Los_Angeles	171847	260
Pembroke Pines	FL	Florida	Broward	America/New_York	170715	261
Bayamón	PR	Puerto Rico	Bayamón	America/Puerto_Rico	170248	262
Medford	OR	Oregon	Jackson	America/Los_Angeles	168222	263
Peoria	AZ	Arizona	Maricopa	America/Phoenix	168184	264
Corona	CA	California	Riverside	America/Los_Angeles	167839	265
Murfreesboro	TN	Tennessee	Rutherford	America/Chicago	167058	266
Marysville	WA	Washington	Snohomish	America/Los_Angeles	166544	267
Cary	NC	North Carolina	Wake	America/New_York	165907	268
Fredericksburg	VA	Virginia	Fredericksburg	America/New_York	164979	269
Ocala	FL	Florida	Marion	America/New_York	164715	270
Manchester	NH	New Hampshire	Hillsborough	America/New_York	160745	271
Hayward	CA	California	Alameda	America/Los_Angeles	160503	272
Muskegon	MI	Michigan	Muskegon	America/Detroit	160145	273
Alexandria	VA	Virginia	Alexandria	America/New_York	160038	274
Springfield	IL	Illinois	Sangamon	America/Chicago	159397	275
Lafayette	IN	Indiana	Tippecanoe	America/Indiana/Indianapolis	159296	276
Port Arthur	TX	Texas	Jefferson	America/Chicago	157937	277
Palmdale	CA	California	Los Angeles	America/Los_Angeles	157522	278
Champaign	IL	Illinois	Champaign	America/Chicago	156797	279
Gainesville	GA	Georgia	Hall	America/New_York	156251	280
Enterprise	NV	Nevada	Clark	America/Los_Angeles	155776	281
Frederick	MD	Maryland	Frederick	America/New_York	154975	282
Lakewood	CO	Colorado	Jefferson	America/Denver	154961	283
Tuscaloosa	AL	Alabama	Tuscaloosa	America/Chicago	154207	284
Sunnyvale	CA	California	Santa Clara	America/Los_Angeles	153659	285
Lake Charles	LA	Louisiana	Calcasieu	America/Chicago	153636	286
Hollywood	FL	Florida	Broward	America/New_York	153630	287
Pasadena	TX	Texas	Harris	America/Chicago	153523	288
Pomona	CA	California	Los Angeles	America/Los_Angeles	152942	289
Kansas City	KS	Kansas	Wyandotte	America/Chicago	152941	290
Macon	GA	Georgia	Bibb	America/New_York	152666	291
Escondido	CA	California	San Diego	America/Los_Angeles	151972	292
Binghamton	NY	New York	Broome	America/New_York	150750	293
Warner Robins	GA	Georgia	Houston	America/New_York	149620	294
New Bedford	MA	Massachusetts	Bristol	America/New_York	149531	295
Topeka	KS	Kansas	Shawnee	America/Chicago	148963	296
Beaumont	TX	Texas	Jefferson	America/Chicago	148957	297
Paterson	NJ	New Jersey	Passaic	America/New_York	148681	298
Joliet	IL	Illinois	Will	America/Chicago	148465	299
Leesburg	FL	Florida	Lake	America/New_York	148164	300
Elkhart	IN	Indiana	Elkhart	America/Indiana/Indianapolis	148134	301
Odessa	TX	Texas	Ector	America/Chicago	147813	302
Naperville	IL	Illinois	DuPage	America/Chicago	147685	303
Fairfield	CA	California	Solano	America/Los_Angeles	147585	304
Torrance	CA	California	Los Angeles	America/Los_Angeles	146761	305
Panama City	FL	Florida	Bay	America/Chicago	145242	306
Metairie	LA	Louisiana	Jefferson	America/Chicago	144825	307
Bellevue	WA	Washington	King	America/Los_Angeles	144447	308
Midland	TX	Texas	Midland	America/Chicago	144250	309
Carolina	PR	Puerto Rico	Carolina	America/Puerto_Rico	144195	310
Merced	CA	California	Merced	America/Los_Angeles	144120	311
Mesquite	TX	Texas	Dallas	America/Chicago	143952	312
Houma	LA	Louisiana	Terrebonne	America/Chicago	142972	313
Charleston	WV	West Virginia	Kanawha	America/New_York	142861	314
Pasadena	CA	California	Los Angeles	America/Los_Angeles	142650	315
Pueblo	CO	Colorado	Pueblo	America/Denver	142354	316
Tyler	TX	Texas	Smith	America/Chicago	141119	317
Orange	CA	California	Orange	America/Los_Angeles	140563	318
Fullerton	CA	California	Orange	America/Los_Angeles	140395	319
Miramar	FL	Florida	Broward	America/New_York	140331	320
Santa Maria	CA	California	Santa Barbara	America/Los_Angeles	140222	321
Athens	GA	Georgia	Clarke	America/New_York	140172	322
Columbia	MO	Missouri	Boone	America/Chicago	139948	323
Yuma	AZ	Arizona	Yuma	America/Phoenix	138805	324
Olathe	KS	Kansas	Johnson	America/Chicago	137475	325
Thornton	CO	Colorado	Adams	America/Denver	136981	326
Harlingen	TX	Texas	Cameron	America/Chicago	136971	327
Grand Junction	CO	Colorado	Mesa	America/Denver	136691	328
West Valley City	UT	Utah	Salt Lake	America/Denver	136173	329
Carrollton	TX	Texas	Dallas	America/Chicago	135713	330
Roseville	CA	California	Placer	America/Los_Angeles	135332	331
Warren	MI	Michigan	Macomb	America/Detroit	135025	332
Bloomington	IL	Illinois	McLean	America/Chicago	134895	333
Hampton	VA	Virginia	Hampton	America/New_York	134672	334
Surprise	AZ	Arizona	Maricopa	America/Phoenix	134088	335
Las Cruces	NM	New Mexico	Doña Ana	America/Denver	133991	336
Greeley	CO	Colorado	Weld	America/Denver	133753	337
Yakima	WA	Washington	Yakima	America/Los_Angeles	133236	338
Coral Springs	FL	Florida	Broward	America/New_York	133040	339
Sterling Heights	MI	Michigan	Macomb	America/Detroit	132634	340
Mauldin	SC	South Carolina	Greenville	America/New_York	132405	341
Racine	WI	Wisconsin	Racine	America/Chicago	131470	342
Stamford	CT	Connecticut	Fairfield	America/New_York	130827	343
Elizabeth	NJ	New Jersey	Union	America/New_York	130218	344
Kent	WA	Washington	King	America/Los_Angeles	128461	345
Greenville	NC	North Carolina	Pitt	America/New_York	128388	346
Simi Valley	CA	California	Ventura	America/Los_Angeles	127867	347
Burlington	NC	North Carolina	Alamance	America/New_York	127377	348
Santa Clara	CA	California	Santa Clara	America/Los_Angeles	127137	349
Johnson City	TN	Tennessee	Washington	America/New_York	126592	350
Boulder	CO	Colorado	Boulder	America/Denver	126057	351
Bellingham	WA	Washington	Whatcom	America/Los_Angeles	126018	352
Fort Smith	AR	Arkansas	Sebastian	America/Chicago	125565	353
Lynchburg	VA	Virginia	Lynchburg	America/New_York	125007	354
Kenosha	WI	Wisconsin	Kenosha	America/Chicago	124891	355
East Los Angeles	CA	California	Los Angeles	America/Los_Angeles	123908	356
South Lyon	MI	Michigan	Oakland	America/Detroit	123853	357
Round Rock	TX	Texas	Williamson	America/Chicago	123681	358
Berkeley	CA	California	Alameda	America/Los_Angeles	122327	359
Billings	MT	Montana	Yellowstone	America/Denver	120803	360
Ponce	PR	Puerto Rico	Ponce	America/Puerto_Rico	120298	361
Redding	CA	California	Shasta	America/Los_Angeles	120273	362
Yuba City	CA	California	Sutter	America/Los_Angeles	120189	363
Duluth	MN	Minnesota	St. Louis	America/Chicago	120104	364
Pearland	TX	Texas	Brazoria	America/Chicago	119943	365
Leominster	MA	Massachusetts	Worcester	America/New_York	119403	366
Saginaw	MI	Michigan	Saginaw	America/Detroit	119339	367
Iowa City	IA	Iowa	Johnson	America/Chicago	119094	368
Arvada	CO	Colorado	Jefferson	America/Denver	118810	369
Seaside	CA	California	Monterey	America/Los_Angeles	118113	370
Kingsport	TN	Tennessee	Sullivan	America/New_York	118004	371
Independence	MO	Missouri	Jackson	America/Chicago	117309	372
Lehigh Acres	FL	Florida	Lee	America/New_York	116852	373
Richardson	TX	Texas	Dallas	America/Chicago	116786	374
Rochester	MN	Minnesota	Olmsted	America/Chicago	116716	375
Gilroy	CA	California	Santa Clara	America/Los_Angeles	116238	376
El Monte	CA	California	Los Angeles	America/Los_Angeles	116112	377
Rock Hill	SC	South Carolina	York	America/New_York	115966	378
Clearwater	FL	Florida	Pinellas	America/New_York	115516	379
Monroe	LA	Louisiana	Ouachita	America/Chicago	115465	380
Dover	DE	Delaware	Kent	America/New_York	115355	381
Carlsbad	CA	California	San Diego	America/Los_Angeles	115333	382
Norman	OK	Oklahoma	Cleveland	America/Chicago	115068	383
Abilene	TX	Texas	Taylor	America/Chicago	114967	384
Bloomington	IN	Indiana	Monroe	America/Indiana/Indianapolis	114962	385
Texas City	TX	Texas	Galveston	America/Chicago	114549	386
Temecula	CA	California	Riverside	America/Los_Angeles	114330	387
Utica	NY	New York	Oneida	America/New_York	114321	388
St. Cloud	MN	Minnesota	Stearns	America/Chicago	114228	389
St. George	UT	Utah	Washington	America/Denver	113909	390
West Jordan	UT	Utah	Salt Lake	America/Denver	113908	391
Costa Mesa	CA	California	Orange	America/Los_Angeles	113828	392
Miami Gardens	FL	Florida	Miami-Dade	America/New_York	113753	393
Cambridge	MA	Massachusetts	Middlesex	America/New_York	113633	394
Brandon	FL	Florida	Hillsborough	America/New_York	113127	395
Downey	CA	California	Los Angeles	America/Los_Angeles	113095	396
Coeur d'Alene	ID	Idaho	Kootenai	America/Los_Angeles	112938	397
Westminster	CO	Colorado	Adams	America/Denver	112815	398
Elgin	IL	Illinois	Kane	America/Chicago	112459	399
El Centro	CA	California	Imperial	America/Los_Angeles	112148	400
Waterloo	IA	Iowa	Black Hawk	America/Chicago	112063	401
Lowell	MA	Massachusetts	Middlesex	America/New_York	111349	402
Gresham	OR	Oregon	Multnomah	America/Los_Angeles	111056	403
North Charleston	SC	South Carolina	Charleston	America/New_York	110864	404
San Buenaventura	CA	California	Ventura	America/Los_Angeles	110793	405
Inglewood	CA	California	Los Angeles	America/Los_Angeles	110601	406
Pompano Beach	FL	Florida	Broward	America/New_York	110476	407
Centennial	CO	Colorado	Arapahoe	America/Denver	110253	408
West Palm Beach	FL	Florida	Palm Beach	America/New_York	110225	409
Everett	WA	Washington	Snohomish	America/Los_Angeles	110082	410
Santa Fe	NM	New Mexico	Santa Fe	America/Denver	110081	411
Richmond	CA	California	Contra Costa	America/Los_Angeles	110043	412
Clovis	CA	California	Fresno	America/Los_Angeles	109694	413
The Woodlands	TX	Texas	Montgomery	America/Chicago	109611	414
Pottstown	PA	Pennsylvania	Montgomery	America/New_York	109440	415
Jacksonville	NC	North Carolina	Onslow	America/New_York	108875	416
Broken Arrow	OK	Oklahoma	Tulsa	America/Chicago	108306	417
Burlington	VT	Vermont	Chittenden	America/New_York	108280	418
West Covina	CA	California	Los Angeles	America/Los_Angeles	107601	419
Turlock	CA	California	Stanislaus	America/Los_Angeles	107211	420
Daly City	CA	California	San Mateo	America/Los_Angeles	107077	421
Eau Claire	WI	Wisconsin	Eau Claire	America/Chicago	107071	422
Hillsboro	OR	Oregon	Washington	America/Los_Angeles	106897	423
Sandy Springs	GA	Georgia	Fulton	America/New_York	106742	424
Sioux City	IA	Iowa	Woodbury	America/Chicago	106282	425
Chico	CA	California	Butte	America/Los_Angeles	106271	426
Norwalk	CA	California	Los Angeles	America/Los_Angeles	106087	427
Salisbury	MD	Maryland	Wicomico	America/New_York	106037	428
Jurupa Valley	CA	California	Riverside	America/Los_Angeles	106031	429
Lewisville	TX	Texas	Denton	America/Chicago	106024	430
Highlands Ranch	CO	Colorado	Douglas	America/Denver	105267	431
Davie	FL	Florida	Broward	America/New_York	105152	432
League City	TX	Texas	Galveston	America/Chicago	104906	433
Burbank	CA	California	Los Angeles	America/Los_Angeles	104837	434
San Mateo	CA	California	San Mateo	America/Los_Angeles	104751	435
Spring Hill	FL	Florida	Hernando	America/New_York	104725	436
El Cajon	CA	California	San Diego	America/Los_Angeles	103897	437
Rialto	CA	California	San Bernardino	America/Los_Angeles	103565	438
Bend	OR	Oregon	Deschutes	America/Los_Angeles	103352	439
Columbia	MD	Maryland	Howard	America/New_York	103173	440
Charlottesville	VA	Virginia	Charlottesville	America/New_York	102019	441
La Crosse	WI	Wisconsin	La Crosse	America/Chicago	101889	442
Temple	TX	Texas	Bell	America/Chicago	101879	443
Vista	CA	California	San Diego	America/Los_Angeles	101571	444
Renton	WA	Washington	King	America/Los_Angeles	101382	445
Sparks	NV	Nevada	Washoe	America/Los_Angeles	100891	446
Holland	MI	Michigan	Ottawa	America/Detroit	100888	447
Vacaville	CA	California	Solano	America/Los_Angeles	100804	448
Logan	UT	Utah	Cache	America/Denver	100777	449
Allen	TX	Texas	Collin	America/Chicago	100688	450
Longview	TX	Texas	Gregg	America/Chicago	100199	451
Meridian	ID	Idaho	Ada	America/Boise	99929	452
San Angelo	TX	Texas	Tom Green	America/Chicago	99893	453
Wichita Falls	TX	Texas	Wichita	America/Chicago	99620	454
Longmont	CO	Colorado	Boulder	America/Denver	99401	455
Manteca	CA	California	San Joaquin	America/Los_Angeles	98739	456
Arden-Arcade	CA	California	Sacramento	America/Los_Angeles	98619	457
Boca Raton	FL	Florida	Palm Beach	America/New_York	98153	458
Spokane Valley	WA	Washington	Spokane	America/Los_Angeles	97850	459
Orem	UT	Utah	Utah	America/Denver	97842	460
Middletown	OH	Ohio	Butler	America/New_York	97765	461
Compton	CA	California	Los Angeles	America/Los_Angeles	97615	462
Idaho Falls	ID	Idaho	Bonneville	America/Boise	97551	463
Beaverton	OR	Oregon	Washington	America/Los_Angeles	97517	464
Bismarck	ND	North Dakota	Burleigh	America/Chicago	97460	465
Lawrence	KS	Kansas	Douglas	America/Chicago	97344	466
Prescott Valley	AZ	Arizona	Yavapai	America/Phoenix	97069	467
Federal Way	WA	Washington	King	America/Los_Angeles	96693	468
San Marcos	CA	California	San Diego	America/Los_Angeles	96201	469
Rio Rancho	NM	New Mexico	Sandoval	America/Denver	96162	470
Sandy	UT	Utah	Salt Lake	America/Denver	96148	471
Tracy	CA	California	San Joaquin	America/Los_Angeles	95985	472
Brockton	MA	Massachusetts	Plymouth	America/New_York	95675	473
South Gate	CA	California	Los Angeles	America/Los_Angeles	95433	474
Hesperia	CA	California	San Bernardino	America/Los_Angeles	94862	475
Roswell	GA	Georgia	Fulton	America/New_York	94789	476
Mandeville	LA	Louisiana	St. Tammany	America/Chicago	94763	477
Vineland	NJ	New Jersey	Cumberland	America/New_York	94737	478
Portsmouth	VA	Virginia	Portsmouth	America/New_York	94575	479
Dearborn	MI	Michigan	Wayne	America/Detroit	94494	480
Sunrise	FL	Florida	Broward	America/New_York	94326	481
Quincy	MA	Massachusetts	Norfolk	America/New_York	94169	482
Livonia	MI	Michigan	Wayne	America/Detroit	94108	483
Lynn	MA	Massachusetts	Essex	America/New_York	94066	484
Plantation	FL	Florida	Broward	America/New_York	93912	485
Slidell	LA	Louisiana	St. Tammany	America/Chicago	93885	486
Carson	CA	California	Los Angeles	America/Los_Angeles	92738	487
Terre Haute	IN	Indiana	Vigo	America/Indiana/Indianapolis	92725	488
Blacksburg	VA	Virginia	Montgomery	America/New_York	92576	489
Portsmouth	NH	New Hampshire	Rockingham	America/New_York	92516	490
Miami Beach	FL	Florida	Miami-Dade	America/New_York	92310	491
Santa Monica	CA	California	Los Angeles	America/Los_Angeles	92309	492
Dover	NH	New Hampshire	Strafford	America/New_York	92237	493
Carmel	IN	Indiana	Hamilton	America/Indiana/Indianapolis	92201	494
Hanford	CA	California	Kings	America/Los_Angeles	92069	495
Lafayette	CO	Colorado	Boulder	America/Denver	91988	496
Edmond	OK	Oklahoma	Oklahoma	America/Chicago	91953	497
Fishers	IN	Indiana	Hamilton	America/Indiana/Indianapolis	91835	498
Westminster	CA	California	Orange	America/Los_Angeles	91567	499
Germantown	MD	Maryland	Montgomery	America/New_York	91450	500
Lawton	OK	Oklahoma	Comanche	America/Chicago	91386	501
Florence	SC	South Carolina	Florence	America/New_York	91314	502
Livermore	CA	California	Alameda	America/Los_Angeles	91033	503
San Tan Valley	AZ	Arizona	Pinal	America/Phoenix	90668	504
Lee's Summit	MO	Missouri	Jackson	America/Chicago	90600	505
Menifee	CA	California	Riverside	America/Los_Angeles	90598	506
San Leandro	CA	California	Alameda	America/Los_Angeles	90556	507
Albany	GA	Georgia	Dougherty	America/New_York	90518	508
Bowling Green	KY	Kentucky	Warren	America/Chicago	90451	509
Edinburg	TX	Texas	Hidalgo	America/Chicago	90283	510
Suffolk	VA	Virginia	Suffolk	America/New_York	90240	511
Missoula	MT	Montana	Missoula	America/Denver	90221	512
Chino	CA	California	San Bernardino	America/Los_Angeles	89800	513
Auburn	AL	Alabama	Lee	America/Chicago	89580	514
Fall River	MA	Massachusetts	Bristol	America/New_York	89423	515
Norwalk	CT	Connecticut	Fairfield	America/New_York	89008	516
Decatur	IL	Illinois	Macon	America/Chicago	89000	517
Newton	MA	Massachusetts	Middlesex	America/New_York	88997	518
Rapid City	SD	South Dakota	Pennington	America/Denver	88982	519
Muncie	IN	Indiana	Delaware	America/Indiana/Indianapolis	88691	520
Kirkland	WA	Washington	King	America/Los_Angeles	88633	521
Sugar Land	TX	Texas	Fort Bend	America/Chicago	88488	522
State College	PA	Pennsylvania	Centre	America/New_York	88288	523
Riverview	FL	Florida	Hillsborough	America/New_York	88194	524
Alafaya	FL	Florida	Orange	America/New_York	88028	525
Citrus Heights	CA	California	Sacramento	America/Los_Angeles	87934	526
Hawthorne	CA	California	Los Angeles	America/Los_Angeles	87857	527
Jackson	MI	Michigan	Jackson	America/Detroit	87822	528
Waukegan	IL	Illinois	Lake	America/Chicago	87732	529
O'Fallon	MO	Missouri	St. Charles	America/Chicago	87600	530
Napa	CA	California	Napa	America/Los_Angeles	87035	531
Dalton	GA	Georgia	Whitfield	America/New_York	86844	532
Whittier	CA	California	Los Angeles	America/Los_Angeles	86841	533
Redwood City	CA	California	San Mateo	America/Los_Angeles	86688	534
Mount Pleasant	SC	South Carolina	Charleston	America/New_York	86671	535
Clifton	NJ	New Jersey	Passaic	America/New_York	86610	536
Anderson	IN	Indiana	Madison	America/Indiana/Indianapolis	86484	537
Joplin	MO	Missouri	Jasper	America/Chicago	86301	538
Newport Beach	CA	California	Orange	America/Los_Angeles	86163	539
Bloomington	MN	Minnesota	Hennepin	America/Chicago	85869	540
Alhambra	CA	California	Los Angeles	America/Los_Angeles	85399	541
Hoover	AL	Alabama	Jefferson	America/Chicago	84923	542
Largo	FL	Florida	Pinellas	America/New_York	84757	543
Mission	TX	Texas	Hidalgo	America/Chicago	84427	544
Conroe	TX	Texas	Montgomery	America/Chicago	84381	545
Johns Creek	GA	Georgia	Fulton	America/New_York	84353	546
Lake Forest	CA	California	Orange	America/Los_Angeles	84296	547
Bryan	TX	Texas	Brazos	America/Chicago	84024	548
Town 'n' Country	FL	Florida	Hillsborough	America/New_York	83882	549
Port Huron	MI	Michigan	St. Clair	America/Detroit	83844	550
Troy	MI	Michigan	Oakland	America/Detroit	83816	551
Madera	CA	California	Madera	America/Los_Angeles	83639	552
Springfield	OH	Ohio	Clark	America/New_York	83289	553
Buena Park	CA	California	Orange	America/Los_Angeles	83018	554
Pleasanton	CA	California	Alameda	America/Los_Angeles	83010	555
Cicero	IL	Illinois	Cook	America/Chicago	82555	556
Alexandria	LA	Louisiana	Rapides	America/Chicago	82134	557
Melbourne	FL	Florida	Brevard	America/New_York	82014	558
Westland	MI	Michigan	Wayne	America/Detroit	81750	559
Mountain View	CA	California	Santa Clara	America/Los_Angeles	81441	560
Somerville	MA	Massachusetts	Middlesex	America/New_York	81363	561
Cranston	RI	Rhode Island	Providence	America/New_York	81205	562
Farmington Hills	MI	Michigan	Oakland	America/Detroit	81053	563
Hattiesburg	MS	Mississippi	Forrest	America/Chicago	81039	564
Lakewood	CA	California	Los Angeles	America/Los_Angeles	80970	565
Warwick	RI	Rhode Island	Kent	America/New_York	80874	566
Williamsburg	VA	Virginia	Williamsburg	America/New_York	80858	567
St. Joseph	MO	Missouri	Buchanan	America/Chicago	80821	568
Auburn	WA	Washington	King	America/Los_Angeles	80779	569
Brooklyn Park	MN	Minnesota	Hennepin	America/Chicago	80584	570
Deerfield Beach	FL	Florida	Broward	America/New_York	80574	571
Tustin	CA	California	Orange	America/Los_Angeles	80501	572
Alton	IL	Illinois	Madison	America/Chicago	80465	573
Chino Hills	CA	California	San Bernardino	America/Los_Angeles	80377	574
Lawrence	MA	Massachusetts	Essex	America/New_York	80165	575
Texarkana	TX	Texas	Bowie	America/Chicago	80148	576
New Rochelle	NY	New York	Westchester	America/New_York	79949	577
Fort Myers	FL	Florida	Lee	America/New_York	79946	578
Goodyear	AZ	Arizona	Maricopa	America/Phoenix	79861	579
Springdale	AR	Arkansas	Washington	America/Chicago	79602	580
Pharr	TX	Texas	Hidalgo	America/Chicago	79490	581
Silver Spring	MD	Maryland	Montgomery	America/New_York	79486	582
Valdosta	GA	Georgia	Lowndes	America/New_York	79297	583
Alameda	CA	California	Alameda	America/Los_Angeles	79180	584
Parma	OH	Ohio	Cuyahoga	America/New_York	79170	585
New Braunfels	TX	Texas	Comal	America/Chicago	79155	586
Kokomo	IN	Indiana	Howard	America/Indiana/Indianapolis	79102	587
Newark	OH	Ohio	Licking	America/New_York	79028	588
Cheyenne	WY	Wyoming	Laramie	America/Denver	78731	589
Flagstaff	AZ	Arizona	Coconino	America/Phoenix	78631	590
Plymouth	MN	Minnesota	Hennepin	America/Chicago	78398	591
Franklin	TN	Tennessee	Williamson	America/Chicago	78324	592
Florence	AL	Alabama	Lauderdale	America/Chicago	78115	593
Milpitas	CA	California	Santa Clara	America/Los_Angeles	78109	594
Folsom	CA	California	Sacramento	America/Los_Angeles	78041	595
Kankakee	IL	Illinois	Kankakee	America/Chicago	78004	596
Lebanon	PA	Pennsylvania	Lebanon	America/New_York	77976	597
Perris	CA	California	Riverside	America/Los_Angeles	77882	598
Bellflower	CA	California	Los Angeles	America/Los_Angeles	77775	599
Boynton Beach	FL	Florida	Palm Beach	America/New_York	77705	600
Watsonville	CA	California	Santa Cruz	America/Los_Angeles	77703	601
Anderson	SC	South Carolina	Anderson	America/New_York	77429	602
Elizabethtown	KY	Kentucky	Hardin	America/New_York	77320	603
Wheeling	WV	West Virginia	Ohio	America/New_York	77209	604
Caguas	PR	Puerto Rico	Caguas	America/Puerto_Rico	77067	605
Upland	CA	California	San Bernardino	America/Los_Angeles	77002	606
Baytown	TX	Texas	Harris	America/Chicago	76807	607
Battle Creek	MI	Michigan	Calhoun	America/Detroit	76806	608
Porterville	CA	California	Tulare	America/Los_Angeles	76732	609
Loveland	CO	Colorado	Larimer	America/Denver	76704	610
Layton	UT	Utah	Davis	America/Denver	76694	611
Flower Mound	TX	Texas	Denton	America/Chicago	76684	612
Hammond	IN	Indiana	Lake	America/Chicago	76621	613
Lake Jackson	TX	Texas	Brazoria	America/Chicago	76568	614
Davis	CA	California	Yolo	America/Los_Angeles	76527	615
Zephyrhills	FL	Florida	Pasco	America/New_York	76419	616
Baldwin Park	CA	California	Los Angeles	America/Los_Angeles	76405	617
Altoona	PA	Pennsylvania	Blair	America/New_York	76099	618
Gary	IN	Indiana	Lake	America/Chicago	76011	619
Wyoming	MI	Michigan	Kent	America/Detroit	75941	620
St. Augustine	FL	Florida	St. Johns	America/New_York	75935	621
San Ramon	CA	California	Contra Costa	America/Los_Angeles	75934	622
Bethlehem	PA	Pennsylvania	Northampton	America/New_York	75710	623
Cedar Park	TX	Texas	Williamson	America/Chicago	75707	624
Arlington Heights	IL	Illinois	Cook	America/Chicago	75637	625
Union City	CA	California	Alameda	America/Los_Angeles	75346	626
Bolingbrook	IL	Illinois	Will	America/Chicago	75204	627
Anniston	AL	Alabama	Calhoun	America/Chicago	75172	628
Oshkosh	WI	Wisconsin	Winnebago	America/Chicago	75157	629
Kendall	FL	Florida	Miami-Dade	America/New_York	75126	630
Atascocita	TX	Texas	Harris	America/Chicago	75117	631
Evanston	IL	Illinois	Cook	America/Chicago	74759	632
Camarillo	CA	California	Ventura	America/Los_Angeles	74685	633
Centreville	VA	Virginia	Fairfax	America/New_York	74630	634
The Villages	FL	Florida	Sumter	America/New_York	74621	635
Camden	NJ	New Jersey	Camden	America/New_York	74535	636
Hilton Head Island	SC	South Carolina	Beaufort	America/New_York	74503	637
Missouri City	TX	Texas	Fort Bend	America/Chicago	74500	638
San Marcos	TX	Texas	Hays	America/Chicago	74215	639
Rochester Hills	MI	Michigan	Oakland	America/Detroit	74208	640
Schaumburg	IL	Illinois	Cook	America/Chicago	74187	641
Winchester	VA	Virginia	Winchester	America/New_York	74034	642
Harrisonburg	VA	Virginia	Harrisonburg	America/New_York	74026	643
Wausau	WI	Wisconsin	Marathon	America/Chicago	73936	644
Jonesboro	AR	Arkansas	Craighead	America/Chicago	73791	645
Jackson	TN	Tennessee	Madison	America/Chicago	73688	646
Rancho Cordova	CA	California	Sacramento	America/Los_Angeles	73566	647
Pine Hills	FL	Florida	Orange	America/New_York	73447	648
Dale City	VA	Virginia	Prince William	America/New_York	73282	649
Waldorf	MD	Maryland	Charles	America/New_York	73226	650
Southfield	MI	Michigan	Oakland	America/Detroit	73211	651
Owensboro	KY	Kentucky	Daviess	America/Chicago	73176	652
Apple Valley	CA	California	San Bernardino	America/Los_Angeles	73080	653
Pasco	WA	Washington	Franklin	America/Los_Angeles	73016	654
Conway	AR	Arkansas	Faulkner	America/Chicago	72897	655
Lodi	CA	California	San Joaquin	America/Los_Angeles	72893	656
New Britain	CT	Connecticut	Hartford	America/New_York	72713	657
Mansfield	OH	Ohio	Richland	America/New_York	72638	658
Waukesha	WI	Wisconsin	Waukesha	America/Chicago	72492	659
Morgantown	WV	West Virginia	Monongalia	America/New_York	72456	660
Pittsburg	CA	California	Contra Costa	America/Los_Angeles	72144	661
Sumter	SC	South Carolina	Sumter	America/New_York	72134	662
Pawtucket	RI	Rhode Island	Providence	America/New_York	72004	663
Lauderhill	FL	Florida	Broward	America/New_York	71973	664
Cleveland	TN	Tennessee	Bradley	America/New_York	71947	665
Ellicott City	MD	Maryland	Howard	America/New_York	71740	666
Dothan	AL	Alabama	Houston	America/Chicago	71623	667
Redlands	CA	California	San Bernardino	America/Los_Angeles	71557	668
Wenatchee	WA	Washington	Chelan	America/Los_Angeles	71515	669
Passaic	NJ	New Jersey	Passaic	America/New_York	71250	670
Framingham	MA	Massachusetts	Middlesex	America/New_York	71235	671
Wilmington	DE	Delaware	New Castle	America/New_York	71109	672
Lynwood	CA	California	Los Angeles	America/Los_Angeles	71102	673
Maple Grove	MN	Minnesota	Hennepin	America/Chicago	71069	674
Pocatello	ID	Idaho	Bannock	America/Boise	71023	675
South Jordan	UT	Utah	Salt Lake	America/Denver	70957	676
Weston	FL	Florida	Broward	America/New_York	70947	677
Guaynabo	PR	Puerto Rico	Guaynabo	America/Puerto_Rico	70800	678
Georgetown	TX	Texas	Williamson	America/Chicago	70688	679
Janesville	WI	Wisconsin	Rock	America/Chicago	70521	680
North Richland Hills	TX	Texas	Tarrant	America/Chicago	70444	681
Union City	NJ	New Jersey	Hudson	America/New_York	70390	682
St. Charles	MO	Missouri	St. Charles	America/Chicago	70332	683
Sheboygan	WI	Wisconsin	Sheboygan	America/Chicago	69923	684
Homestead	FL	Florida	Miami-Dade	America/New_York	69910	685
Bristol	TN	Tennessee	Sullivan	America/New_York	69868	686
Lima	OH	Ohio	Allen	America/New_York	69801	687
Walnut Creek	CA	California	Contra Costa	America/Los_Angeles	69776	688
Woodbury	MN	Minnesota	Washington	America/Chicago	69759	689
El Paso de Robles	CA	California	San Luis Obispo	America/Los_Angeles	69738	690
West Bend	WI	Wisconsin	Washington	America/Chicago	69580	691
Mount Vernon	WA	Washington	Skagit	America/Los_Angeles	69531	692
Hammond	LA	Louisiana	Tangipahoa	America/Chicago	69183	693
Daphne	AL	Alabama	Baldwin	America/Chicago	69068	694
Mansfield	TX	Texas	Tarrant	America/Chicago	68931	695
Casas Adobes	AZ	Arizona	Pima	America/Phoenix	68922	696
Decatur	AL	Alabama	Morgan	America/Chicago	68819	697
Glen Burnie	MD	Maryland	Anne Arundel	America/New_York	68771	698
Delray Beach	FL	Florida	Palm Beach	America/New_York	68752	699
Gaithersburg	MD	Maryland	Montgomery	America/New_York	68713	700
Mount Vernon	NY	New York	Westchester	America/New_York	68706	701
Palatine	IL	Illinois	Cook	America/Chicago	68647	702
Dubuque	IA	Iowa	Dubuque	America/Chicago	68576	703
Bossier City	LA	Louisiana	Bossier	America/Chicago	68557	704
Buckeye	AZ	Arizona	Maricopa	America/Phoenix	68456	705
Rockville	MD	Maryland	Montgomery	America/New_York	68404	706
Broomfield	CO	Colorado	Broomfield	America/Denver	68344	707
Victoria	TX	Texas	Victoria	America/Chicago	68274	708
Yorba Linda	CA	California	Orange	America/Los_Angeles	68232	709
Ames	IA	Iowa	Story	America/Chicago	68159	710
Daytona Beach	FL	Florida	Volusia	America/New_York	68058	711
Redondo Beach	CA	California	Los Angeles	America/Los_Angeles	67911	712
Carbondale	IL	Illinois	Jackson	America/Chicago	67810	713
Hanover	PA	Pennsylvania	York	America/New_York	67682	714
Saratoga Springs	NY	New York	Saratoga	America/New_York	67585	715
DeKalb	IL	Illinois	DeKalb	America/Chicago	67503	716
Casper	WY	Wyoming	Natrona	America/Denver	67465	717
Kenner	LA	Louisiana	Jefferson	America/Chicago	67454	718
South San Francisco	CA	California	San Mateo	America/Los_Angeles	67432	719
Sherman	TX	Texas	Grayson	America/Chicago	67357	720
Petaluma	CA	California	Sonoma	America/Los_Angeles	67319	721
Bayonne	NJ	New Jersey	Hudson	America/New_York	67189	722
Palo Alto	CA	California	Santa Clara	America/Los_Angeles	67181	723
Weirton	WV	West Virginia	Hancock	America/New_York	67085	724
Bay City	MI	Michigan	Bay	America/Detroit	67062	725
Eagan	MN	Minnesota	Dakota	America/Chicago	66630	726
Los Lunas	NM	New Mexico	Valencia	America/Denver	66616	727
Poinciana	FL	Florida	Polk	America/New_York	66468	728
Corvallis	OR	Oregon	Benton	America/Los_Angeles	66444	729
Rogers	AR	Arkansas	Benton	America/Chicago	66433	730
Lake Elsinore	CA	California	Riverside	America/Los_Angeles	66414	731
Laguna Niguel	CA	California	Orange	America/Los_Angeles	66337	732
Grand Forks	ND	North Dakota	Grand Forks	America/Chicago	66162	733
North Little Rock	AR	Arkansas	Pulaski	America/Chicago	65914	734
Alpharetta	GA	Georgia	Fulton	America/New_York	65802	735
Tamarac	FL	Florida	Broward	America/New_York	65672	736
Schenectady	NY	New York	Schenectady	America/New_York	65628	737
Great Falls	MT	Montana	Cascade	America/Denver	65627	738
Longview	WA	Washington	Cowlitz	America/Los_Angeles	65622	739
West Des Moines	IA	Iowa	Polk	America/Chicago	65611	740
Shawnee	KS	Kansas	Johnson	America/Chicago	65516	741
East Orange	NJ	New Jersey	Essex	America/New_York	65381	742
San Clemente	CA	California	Orange	America/Los_Angeles	65270	743
Michigan City	IN	Indiana	LaPorte	America/Chicago	65147	744
Carmichael	CA	California	Sacramento	America/Los_Angeles	65094	745
Jupiter	FL	Florida	Palm Beach	America/New_York	64979	746
Wellington	FL	Florida	Palm Beach	America/New_York	64851	747
Rocklin	CA	California	Placer	America/Los_Angeles	64841	748
Fairbanks	AK	Alaska	Fairbanks North Star	America/Anchorage	64735	749
Rocky Mount	NC	North Carolina	Nash	America/New_York	64735	750
Elmira	NY	New York	Chemung	America/New_York	64667	751
Mayagüez	PR	Puerto Rico	Mayagüez	America/Puerto_Rico	64627	752
Johnstown	PA	Pennsylvania	Cambria	America/New_York	64618	753
Blaine	MN	Minnesota	Anoka	America/Chicago	64560	754
Sammamish	WA	Washington	King	America/Los_Angeles	64551	755
Eden Prairie	MN	Minnesota	Hennepin	America/Chicago	64403	756
Redmond	WA	Washington	King	America/Los_Angeles	64294	757
Glens Falls	NY	New York	Warren	America/New_York	64290	758
Parkersburg	WV	West Virginia	Wood	America/New_York	64256	759
Skokie	IL	Illinois	Cook	America/Chicago	63981	760
Tulare	CA	California	Tulare	America/Los_Angeles	63858	761
Florence-Graham	CA	California	Los Angeles	America/Los_Angeles	63824	762
Lakeville	MN	Minnesota	Dakota	America/Chicago	63751	763
Haverhill	MA	Massachusetts	Essex	America/New_York	63642	764
Castro Valley	CA	California	Alameda	America/Los_Angeles	63628	765
Pico Rivera	CA	California	Los Angeles	America/Los_Angeles	63525	766
Beloit	WI	Wisconsin	Rock	America/Chicago	63501	767
Pflugerville	TX	Texas	Travis	America/Chicago	63362	768
Eastvale	CA	California	Riverside	America/Los_Angeles	63214	769
Port Orange	FL	Florida	Volusia	America/New_York	63206	770
Montebello	CA	California	Los Angeles	America/Los_Angeles	63195	771
Encinitas	CA	California	San Diego	America/Los_Angeles	63187	772
Bethesda	MD	Maryland	Montgomery	America/New_York	63171	773
Brentwood	NY	New York	Suffolk	America/New_York	63118	774
Rowlett	TX	Texas	Dallas	America/Chicago	62871	775
Monessen	PA	Pennsylvania	Westmoreland	America/New_York	62836	776
Sebring	FL	Florida	Highlands	America/New_York	62817	777
Lehi	UT	Utah	Utah	America/Denver	62715	778
Coon Rapids	MN	Minnesota	Anoka	America/Chicago	62659	779
Dundalk	MD	Maryland	Baltimore	America/New_York	62519	780
La Habra	CA	California	Orange	America/Los_Angeles	62469	781
Waltham	MA	Massachusetts	Middlesex	America/New_York	62445	782
Brentwood	CA	California	Contra Costa	America/Los_Angeles	62436	783
Ankeny	IA	Iowa	Polk	America/Chicago	62419	784
San Luis Obispo	CA	California	San Luis Obispo	America/Los_Angeles	62401	785
Springfield	OR	Oregon	Lane	America/Los_Angeles	62356	786
Council Bluffs	IA	Iowa	Pottawattamie	America/Chicago	62319	787
Castle Rock	CO	Colorado	Douglas	America/Denver	62279	788
North Miami	FL	Florida	Miami-Dade	America/New_York	62228	789
Hamilton	OH	Ohio	Butler	America/New_York	62095	790
Mankato	MN	Minnesota	Blue Earth	America/Chicago	61915	791
Noblesville	IN	Indiana	Hamilton	America/Indiana/Indianapolis	61885	792
Gadsden	AL	Alabama	Etowah	America/Chicago	61659	793
Palm Harbor	FL	Florida	Pinellas	America/New_York	61556	794
Moore	OK	Oklahoma	Cleveland	America/Chicago	61526	795
Burnsville	MN	Minnesota	Dakota	America/Chicago	61442	796
National City	CA	California	San Diego	America/Los_Angeles	61366	797
Taylor	MI	Michigan	Wayne	America/Detroit	61279	798
Malden	MA	Massachusetts	Middlesex	America/New_York	61249	799
Doral	FL	Florida	Miami-Dade	America/New_York	61133	800
Marietta	GA	Georgia	Cobb	America/New_York	61051	801
Monterey Park	CA	California	Los Angeles	America/Los_Angeles	61047	802
Coconut Creek	FL	Florida	Broward	America/New_York	61013	803
Rome	GA	Georgia	Floyd	America/New_York	60969	804
Dublin	CA	California	Alameda	America/Los_Angeles	60942	805
Albany	OR	Oregon	Linn	America/Los_Angeles	60798	806
Cupertino	CA	California	Santa Clara	America/Los_Angeles	60780	807
Reston	VA	Virginia	Fairfax	America/New_York	60355	808
Morristown	TN	Tennessee	Hamblen	America/New_York	60319	809
Lakewood	WA	Washington	Pierce	America/Los_Angeles	60299	810
Gardena	CA	California	Los Angeles	America/Los_Angeles	60227	811
Bristol	CT	Connecticut	Hartford	America/New_York	60226	812
Millcreek	UT	Utah	Salt Lake	America/Denver	60195	813
Woodland	CA	California	Yolo	America/Los_Angeles	60065	814
La Mesa	CA	California	San Diego	America/Los_Angeles	60024	815
South Whittier	CA	California	Los Angeles	America/Los_Angeles	60003	816
Taylorsville	UT	Utah	Salt Lake	America/Denver	59995	817
Benton Harbor	MI	Michigan	Berrien	America/Detroit	59942	818
West Allis	WI	Wisconsin	Milwaukee	America/Chicago	59937	819
Meriden	CT	Connecticut	New Haven	America/New_York	59930	820
Chapel Hill	NC	North Carolina	Orange	America/New_York	59865	821
Kendale Lakes	FL	Florida	Miami-Dade	America/New_York	59815	822
Pontiac	MI	Michigan	Oakland	America/Detroit	59795	823
Novi	MI	Michigan	Oakland	America/Detroit	59718	824
Port Charlotte	FL	Florida	Charlotte	America/New_York	59657	825
St. Clair Shores	MI	Michigan	Macomb	America/Detroit	59638	826
Beckley	WV	West Virginia	Raleigh	America/New_York	59632	827
Sanford	FL	Florida	Seminole	America/New_York	59320	828
Fountainebleau	FL	Florida	Miami-Dade	America/New_York	59258	829
Midland	MI	Michigan	Midland	America/Detroit	59141	830
Royal Oak	MI	Michigan	Oakland	America/Detroit	59115	831
Bangor	ME	Maine	Penobscot	America/New_York	59110	832
Bartlett	TN	Tennessee	Shelby	America/Chicago	59105	833
San Rafael	CA	California	Marin	America/Los_Angeles	59073	834
White Plains	NY	New York	Westchester	America/New_York	59050	835
The Hammocks	FL	Florida	Miami-Dade	America/New_York	58979	836
Goldsboro	NC	North Carolina	Wayne	America/New_York	58975	837
Bowie	MD	Maryland	Prince George's	America/New_York	58862	838
Huntington Park	CA	California	Los Angeles	America/Los_Angeles	58825	839
Arcadia	CA	California	Los Angeles	America/Los_Angeles	58802	840
Lewiston	ME	Maine	Androscoggin	America/New_York	58799	841
Columbus	IN	Indiana	Bartholomew	America/Indiana/Indianapolis	58774	842
Towson	MD	Maryland	Baltimore	America/New_York	58769	843
Orland Park	IL	Illinois	Cook	America/Chicago	58768	844
Casa Grande	AZ	Arizona	Pinal	America/Phoenix	58635	845
Staunton	VA	Virginia	Staunton	America/New_York	58473	846
Margate	FL	Florida	Broward	America/New_York	58433	847
Jefferson City	MO	Missouri	Cole	America/Chicago	58282	848
Tamiami	FL	Florida	Miami-Dade	America/New_York	58253	849
Des Plaines	IL	Illinois	Cook	America/Chicago	58196	850
Santee	CA	California	San Diego	America/Los_Angeles	58116	851
Middletown	NY	New York	Orange	America/New_York	57976	852
Spring	TX	Texas	Harris	America/Chicago	57935	853
Hot Springs	AR	Arkansas	Garland	America/Chicago	57822	854
Medford	MA	Massachusetts	Middlesex	America/New_York	57800	855
Walla Walla	WA	Washington	Walla Walla	America/Los_Angeles	57782	856
Carson City	NV	Nevada	Carson City	America/Los_Angeles	57528	857
Hendersonville	TN	Tennessee	Sumner	America/Chicago	57520	858
Titusville	FL	Florida	Brevard	America/New_York	57500	859
Greenwood	IN	Indiana	Johnson	America/Indiana/Indianapolis	57378	860
Midwest City	OK	Oklahoma	Oklahoma	America/Chicago	57311	861
Manhattan	KS	Kansas	Riley	America/Chicago	57287	862
St. Peters	MO	Missouri	St. Charles	America/Chicago	57181	863
Taunton	MA	Massachusetts	Bristol	America/New_York	57142	864
New Brunswick	NJ	New Jersey	Middlesex	America/New_York	57076	865
East Stroudsburg	PA	Pennsylvania	Monroe	America/New_York	56774	866
Smyrna	GA	Georgia	Cobb	America/New_York	56688	867
Tinley Park	IL	Illinois	Cook	America/Chicago	56671	868
Diamond Bar	CA	California	Los Angeles	America/Los_Angeles	56668	869
Weymouth Town	MA	Massachusetts	Norfolk	America/New_York	56667	870
Bradenton	FL	Florida	Manatee	America/New_York	56511	871
South Hill	WA	Washington	Pierce	America/Los_Angeles	56382	872
Fountain Valley	CA	California	Orange	America/Los_Angeles	56316	873
Pittsfield	MA	Massachusetts	Berkshire	America/New_York	56294	874
Richland	WA	Washington	Benton	America/Los_Angeles	56246	875
Huntersville	NC	North Carolina	Mecklenburg	America/New_York	56215	876
Shoreline	WA	Washington	King	America/Los_Angeles	56192	877
Oak Lawn	IL	Illinois	Cook	America/Chicago	56090	878
Novato	CA	California	Marin	America/Los_Angeles	55983	879
Commerce City	CO	Colorado	Adams	America/Denver	55926	880
Hempstead	NY	New York	Nassau	America/New_York	55809	881
Cartersville	GA	Georgia	Bartow	America/New_York	55797	882
Dearborn Heights	MI	Michigan	Wayne	America/Detroit	55761	883
Kingston	NY	New York	Ulster	America/New_York	55698	884
Berwyn	IL	Illinois	Cook	America/Chicago	55553	885
Chicopee	MA	Massachusetts	Hampden	America/New_York	55518	886
Hazleton	PA	Pennsylvania	Luzerne	America/New_York	55447	887
Ithaca	NY	New York	Tompkins	America/New_York	55442	888
Highland	CA	California	San Bernardino	America/Los_Angeles	55345	889
Lake Havasu City	AZ	Arizona	Mohave	America/Los_Angeles	55344	890
Aloha	OR	Oregon	Washington	America/Los_Angeles	55208	891
Kettering	OH	Ohio	Montgomery	America/New_York	55178	892
Euless	TX	Texas	Tarrant	America/Chicago	55177	893
Hoboken	NJ	New Jersey	Hudson	America/New_York	55134	894
Palm Beach Gardens	FL	Florida	Palm Beach	America/New_York	55039	895
Watertown	NY	New York	Jefferson	America/New_York	54983	896
Grants Pass	OR	Oregon	Josephine	America/Los_Angeles	54976	897
Blue Springs	MO	Missouri	Jackson	America/Chicago	54948	898
Paramount	CA	California	Los Angeles	America/Los_Angeles	54912	899
West Haven	CT	Connecticut	New Haven	America/New_York	54846	900
Colton	CA	California	San Bernardino	America/Los_Angeles	54831	901
Caldwell	ID	Idaho	Canyon	America/Boise	54663	902
Fond du Lac	WI	Wisconsin	Fond du Lac	America/Chicago	54632	903
Arroyo Grande	CA	California	San Luis Obispo	America/Los_Angeles	54623	904
Cathedral City	CA	California	Riverside	America/Los_Angeles	54599	905
Cape Girardeau	MO	Missouri	Cape Girardeau	America/Chicago	54591	906
Rosemead	CA	California	Los Angeles	America/Los_Angeles	54557	907
Delano	CA	California	Kern	America/Los_Angeles	54474	908
Stonecrest	GA	Georgia	DeKalb	America/New_York	54474	909
Twin Falls	ID	Idaho	Twin Falls	America/Boise	54458	910
Williamsport	PA	Pennsylvania	Lycoming	America/New_York	54392	911
Eagle Pass	TX	Texas	Maverick	America/Matamoros	54302	912
Normal	IL	Illinois	McLean	America/Chicago	54287	913
West New York	NJ	New Jersey	Hudson	America/New_York	54230	914
Leesburg	VA	Virginia	Loudoun	America/New_York	54218	915
Beaufort	SC	South Carolina	Beaufort	America/New_York	54210	916
Parker	CO	Colorado	Douglas	America/Denver	54205	917
Hacienda Heights	CA	California	Los Angeles	America/Los_Angeles	54158	918
Southaven	MS	Mississippi	DeSoto	America/Chicago	54034	919
Brunswick	GA	Georgia	Glynn	America/New_York	54020	920
Revere	MA	Massachusetts	Suffolk	America/New_York	53996	921
Grapevine	TX	Texas	Tarrant	America/Chicago	53985	922
Bozeman	MT	Montana	Gallatin	America/Denver	53952	923
Mount Prospect	IL	Illinois	Cook	America/Chicago	53933	924
Elyria	OH	Ohio	Lorain	America/New_York	53886	925
Yucaipa	CA	California	San Bernardino	America/Los_Angeles	53686	926
DeSoto	TX	Texas	Dallas	America/Chicago	53571	927
Lenexa	KS	Kansas	Johnson	America/Chicago	53556	928
Brookhaven	GA	Georgia	DeKalb	America/New_York	53521	929
West Sacramento	CA	California	Yolo	America/Los_Angeles	53515	930
Lewiston	ID	Idaho	Nez Perce	America/Los_Angeles	53439	931
Grand Island	NE	Nebraska	Hall	America/Chicago	53427	932
Bellevue	NE	Nebraska	Sarpy	America/Chicago	53427	933
Wesley Chapel	FL	Florida	Pasco	America/New_York	53417	934
Wheaton	IL	Illinois	DuPage	America/Chicago	53376	935
Tigard	OR	Oregon	Washington	America/Los_Angeles	53151	936
Minnetonka	MN	Minnesota	Hennepin	America/Chicago	53088	937
Peabody	MA	Massachusetts	Essex	America/New_York	52990	938
Milford city 	CT	Connecticut	New Haven	America/New_York	52973	939
Palm Desert	CA	California	Riverside	America/Los_Angeles	52935	940
Lompoc	CA	California	Santa Barbara	America/Los_Angeles	52859	941
Pinellas Park	FL	Florida	Pinellas	America/New_York	52857	942
Perth Amboy	NJ	New Jersey	Middlesex	America/New_York	52826	943
Farmington	NM	New Mexico	San Juan	America/Denver	52558	944
Glendora	CA	California	Los Angeles	America/Los_Angeles	52448	945
Apple Valley	MN	Minnesota	Dakota	America/Chicago	52438	946
Chambersburg	PA	Pennsylvania	Franklin	America/New_York	52421	947
Aspen Hill	MD	Maryland	Montgomery	America/New_York	52389	948
Oak Park	IL	Illinois	Cook	America/Chicago	52264	949
Placentia	CA	California	Orange	America/Los_Angeles	52160	950
Edina	MN	Minnesota	Hennepin	America/Chicago	51961	951
Levittown	PA	Pennsylvania	Bucks	America/New_York	51948	952
Levittown	NY	New York	Nassau	America/New_York	51842	953
Kentwood	MI	Michigan	Kent	America/Detroit	51750	954
Burien	WA	Washington	King	America/Los_Angeles	51674	955
Aliso Viejo	CA	California	Orange	America/Los_Angeles	51674	956
Sierra Vista	AZ	Arizona	Cochise	America/Phoenix	51574	957
Hoffman Estates	IL	Illinois	Cook	America/Chicago	51570	958
Apopka	FL	Florida	Orange	America/New_York	51567	959
Florissant	MO	Missouri	St. Louis	America/Chicago	51446	960
Bloomsburg	PA	Pennsylvania	Columbia	America/New_York	51359	961
Plainfield	NJ	New Jersey	Union	America/New_York	51330	962
St. Cloud	FL	Florida	Osceola	America/New_York	51285	963
Coral Gables	FL	Florida	Miami-Dade	America/New_York	51098	964
Cerritos	CA	California	Los Angeles	America/Los_Angeles	51023	965
Hinesville	GA	Georgia	Liberty	America/New_York	51004	966
New Bern	NC	North Carolina	Craven	America/New_York	50620	967
Rowland Heights	CA	California	Los Angeles	America/Los_Angeles	50575	968
Apex	NC	North Carolina	Wake	America/New_York	50454	969
Summerville	SC	South Carolina	Dorchester	America/New_York	50391	970
Collierville	TN	Tennessee	Shelby	America/Chicago	50289	971
Methuen Town	MA	Massachusetts	Essex	America/New_York	50262	972
Lakewood	OH	Ohio	Cuyahoga	America/New_York	50252	973
Helena	MT	Montana	Lewis and Clark	America/Denver	50230	974
Catalina Foothills	AZ	Arizona	Pima	America/Phoenix	50205	975
Wheaton	MD	Maryland	Montgomery	America/New_York	50098	976
North Bethesda	MD	Maryland	Montgomery	America/New_York	50059	977
Poway	CA	California	San Diego	America/Los_Angeles	50044	978
Smyrna	TN	Tennessee	Rutherford	America/Chicago	49972	979
Ashburn	VA	Virginia	Loudoun	America/New_York	49898	980
Minot	ND	North Dakota	Ward	America/Chicago	49887	981
Azusa	CA	California	Los Angeles	America/Los_Angeles	49867	982
Wylie	TX	Texas	Collin	America/Chicago	49829	983
Traverse City	MI	Michigan	Grand Traverse	America/Detroit	49809	984
Lacey	WA	Washington	Thurston	America/Los_Angeles	49751	985
Dunwoody	GA	Georgia	DeKalb	America/New_York	49612	986
Troy	NY	New York	Rensselaer	America/New_York	49568	987
Downers Grove	IL	Illinois	DuPage	America/Chicago	49543	988
Bullhead City	AZ	Arizona	Mohave	America/Phoenix	49534	989
Bedford	TX	Texas	Tarrant	America/Chicago	49489	990
Wilson	NC	North Carolina	Wilson	America/New_York	49375	991
Bentonville	AR	Arkansas	Benton	America/Chicago	49301	992
Murray	UT	Utah	Salt Lake	America/Denver	49298	993
Cuyahoga Falls	OH	Ohio	Summit	America/New_York	49250	994
Leander	TX	Texas	Williamson	America/Chicago	49237	995
Florin	CA	California	Sacramento	America/Los_Angeles	49229	996
Country Club	FL	Florida	Miami-Dade	America/New_York	49210	997
Mishawaka	IN	Indiana	St. Joseph	America/Indiana/Indianapolis	49180	998
Roswell	NM	New Mexico	Chaves	America/Denver	49122	999
Monroe	MI	Michigan	Monroe	America/Detroit	49118	1000
La Mirada	CA	California	Los Angeles	America/Los_Angeles	49098	1001
Severn	MD	Maryland	Anne Arundel	America/New_York	49079	1002
Cypress	CA	California	Orange	America/Los_Angeles	49067	1003
Cumberland	MD	Maryland	Allegany	America/New_York	49036	1004
St. Louis Park	MN	Minnesota	Hennepin	America/Chicago	49032	1005
Reedley	CA	California	Fresno	America/Los_Angeles	48973	1006
Pascagoula	MS	Mississippi	Jackson	America/Chicago	48949	1007
Madison	AL	Alabama	Madison	America/Chicago	48864	1008
East Lansing	MI	Michigan	Ingham	America/Detroit	48847	1009
Portage	MI	Michigan	Kalamazoo	America/Detroit	48819	1010
Kannapolis	NC	North Carolina	Cabarrus	America/New_York	48809	1011
Rancho Santa Margarita	CA	California	Orange	America/Los_Angeles	48796	1012
Cedar Hill	TX	Texas	Dallas	America/Chicago	48713	1013
Lawrence	IN	Indiana	Marion	America/Indiana/Indianapolis	48707	1014
Ceres	CA	California	Stanislaus	America/Los_Angeles	48700	1015
Tuckahoe	VA	Virginia	Henrico	America/New_York	48694	1016
Uniontown	PA	Pennsylvania	Fayette	America/New_York	48660	1017
Rio Grande City	TX	Texas	Starr	America/Chicago	48636	1018
Paducah	KY	Kentucky	McCracken	America/Chicago	48632	1019
Cookeville	TN	Tennessee	Putnam	America/Chicago	48590	1020
Findlay	OH	Ohio	Hancock	America/New_York	48585	1021
Stillwater	OK	Oklahoma	Payne	America/Chicago	48553	1022
Danville	IL	Illinois	Vermilion	America/Chicago	48521	1023
Covina	CA	California	Los Angeles	America/Los_Angeles	48465	1024
Niagara Falls	NY	New York	Niagara	America/Toronto	48463	1025
Enid	OK	Oklahoma	Garfield	America/Chicago	48328	1026
Wauwatosa	WI	Wisconsin	Milwaukee	America/Chicago	48280	1027
San Jacinto	CA	California	Riverside	America/Los_Angeles	48257	1028
Palm Springs	CA	California	Riverside	America/Los_Angeles	48145	1029
Morehead City	NC	North Carolina	Carteret	America/New_York	48128	1030
Bel Air South	MD	Maryland	Harford	America/New_York	48063	1031
East Honolulu	HI	Hawaii	Honolulu	Pacific/Honolulu	47871	1032
Littleton	CO	Colorado	Arapahoe	America/Denver	47737	1033
Antelope	CA	California	Sacramento	America/Los_Angeles	47731	1034
Draper	UT	Utah	Salt Lake	America/Denver	47713	1035
Lincoln	CA	California	Placer	America/Los_Angeles	47677	1036
Glenview	IL	Illinois	Cook	America/Chicago	47662	1037
Dublin	OH	Ohio	Franklin	America/New_York	47622	1038
East Providence	RI	Rhode Island	Providence	America/New_York	47603	1039
Chesterfield	MO	Missouri	St. Louis	America/Chicago	47591	1040
Newark	CA	California	Alameda	America/Los_Angeles	47534	1041
Roseville	MI	Michigan	Macomb	America/Detroit	47504	1042
Jeffersonville	IN	Indiana	Clark	America/Kentucky/Louisville	47386	1043
North Highlands	CA	California	Sacramento	America/Los_Angeles	47360	1044
McLean	VA	Virginia	Fairfax	America/New_York	47308	1045
Keller	TX	Texas	Tarrant	America/Chicago	47269	1046
Sahuarita	AZ	Arizona	Pima	America/Phoenix	47232	1047
Euclid	OH	Ohio	Cuyahoga	America/New_York	47204	1048
Sandusky	OH	Ohio	Erie	America/New_York	47191	1049
Carrollton	GA	Georgia	Carroll	America/New_York	47143	1050
Danville	VA	Virginia	Danville	America/New_York	47138	1051
Mentor	OH	Ohio	Lake	America/New_York	47124	1052
Beaumont	CA	California	Riverside	America/Los_Angeles	46970	1053
Beavercreek	OH	Ohio	Greene	America/New_York	46951	1054
Pine Bluff	AR	Arkansas	Jefferson	America/Chicago	46853	1055
Salina	KS	Kansas	Saline	America/Chicago	46785	1056
Maricopa	AZ	Arizona	Pinal	America/Phoenix	46744	1057
New Philadelphia	OH	Ohio	Tuscarawas	America/New_York	46739	1058
Elmhurst	IL	Illinois	DuPage	America/Chicago	46665	1059
Galveston	TX	Texas	Galveston	America/Chicago	46564	1060
Little Elm	TX	Texas	Denton	America/Chicago	46551	1061
Leavenworth	KS	Kansas	Leavenworth	America/Chicago	46520	1062
Middletown	CT	Connecticut	Middlesex	America/New_York	46481	1063
Ocoee	FL	Florida	Orange	America/New_York	46405	1064
Everett	MA	Massachusetts	Middlesex	America/New_York	46327	1065
West Lafayette	IN	Indiana	Tippecanoe	America/Indiana/Indianapolis	46272	1066
Pearl City	HI	Hawaii	Honolulu	Pacific/Honolulu	46262	1067
Hollister	CA	California	San Benito	America/Los_Angeles	46186	1068
Burleson	TX	Texas	Johnson	America/Chicago	46148	1069
Trujillo Alto	PR	Puerto Rico	Trujillo Alto	America/Puerto_Rico	45939	1070
Lufkin	TX	Texas	Angelina	America/Chicago	45915	1071
Biloxi	MS	Mississippi	Harrison	America/Chicago	45911	1072
Potomac	MD	Maryland	Montgomery	America/New_York	45783	1073
Hilo	HI	Hawaii	Hawaii	Pacific/Honolulu	45706	1074
Oroville	CA	California	Butte	America/Los_Angeles	45658	1075
Fort Pierce	FL	Florida	St. Lucie	America/New_York	45584	1076
Bothell	WA	Washington	King	America/Los_Angeles	45536	1077
Coachella	CA	California	Riverside	America/Los_Angeles	45446	1078
Sayreville	NJ	New Jersey	Middlesex	America/New_York	45328	1079
Marion	OH	Ohio	Marion	America/New_York	45327	1080
Hackensack	NJ	New Jersey	Bergen	America/New_York	45251	1081
Altadena	CA	California	Los Angeles	America/Los_Angeles	45239	1082
Tupelo	MS	Mississippi	Lee	America/Chicago	45234	1083
El Dorado Hills	CA	California	El Dorado	America/Los_Angeles	45107	1084
Cutler Bay	FL	Florida	Miami-Dade	America/New_York	45104	1085
Morgan Hill	CA	California	Santa Clara	America/Los_Angeles	45040	1086
Oakland Park	FL	Florida	Broward	America/New_York	45038	1087
Eureka	CA	California	Humboldt	America/Los_Angeles	45013	1088
University	FL	Florida	Hillsborough	America/New_York	44982	1089
Manitowoc	WI	Wisconsin	Manitowoc	America/Chicago	44935	1090
Quincy	IL	Illinois	Adams	America/Chicago	44863	1091
Marana	AZ	Arizona	Pima	America/Phoenix	44795	1092
Danville	CA	California	Contra Costa	America/Los_Angeles	44789	1093
Strongsville	OH	Ohio	Cuyahoga	America/New_York	44747	1094
Farmington	MO	Missouri	St. Francois	America/Chicago	44667	1095
Selma	CA	California	Fresno	America/Los_Angeles	44629	1096
Attleboro	MA	Massachusetts	Bristol	America/New_York	44593	1097
Cleveland Heights	OH	Ohio	Cuyahoga	America/New_York	44565	1098
Lake Ridge	VA	Virginia	Prince William	America/New_York	44555	1099
Annandale	VA	Virginia	Fairfax	America/New_York	44507	1100
Del Rio	TX	Texas	Val Verde	America/Chicago	44427	1101
Haltom City	TX	Texas	Tarrant	America/Chicago	44420	1102
Oro Valley	AZ	Arizona	Pima	America/Phoenix	44353	1103
Pinehurst	NC	North Carolina	Moore	America/New_York	44302	1104
Altamonte Springs	FL	Florida	Seminole	America/New_York	44280	1105
Kingman	AZ	Arizona	Mohave	America/Phoenix	44215	1106
Rockwall	TX	Texas	Rockwall	America/Chicago	44211	1107
Lancaster	OH	Ohio	Fairfield	America/New_York	44203	1108
North Lauderdale	FL	Florida	Broward	America/New_York	44201	1109
North Miami Beach	FL	Florida	Miami-Dade	America/New_York	44127	1110
Bountiful	UT	Utah	Davis	America/Denver	44110	1111
Whitney	NV	Nevada	Clark	America/Los_Angeles	43958	1112
Roseburg	OR	Oregon	Douglas	America/Los_Angeles	43951	1113
Plainfield	IL	Illinois	Will	America/Chicago	43929	1114
Adrian	MI	Michigan	Lenawee	America/Detroit	43880	1115
Lombard	IL	Illinois	DuPage	America/Chicago	43748	1116
Desert Hot Springs	CA	California	Riverside	America/Los_Angeles	43733	1117
Urbandale	IA	Iowa	Polk	America/Chicago	43595	1118
Winder	GA	Georgia	Barrow	America/New_York	43586	1119
Winter Garden	FL	Florida	Orange	America/New_York	43539	1120
Stevens Point	WI	Wisconsin	Portage	America/Chicago	43523	1121
Freeport	NY	New York	Nassau	America/New_York	43511	1122
Kyle	TX	Texas	Hays	America/Chicago	43483	1123
Salem	MA	Massachusetts	Essex	America/New_York	43418	1124
Riverton	UT	Utah	Salt Lake	America/Denver	43347	1125
San Bruno	CA	California	San Mateo	America/Los_Angeles	43302	1126
Peachtree Corners	GA	Georgia	Gwinnett	America/New_York	43271	1127
West Babylon	NY	New York	Suffolk	America/New_York	43171	1128
Moorhead	MN	Minnesota	Clay	America/Chicago	43125	1129
Linden	NJ	New Jersey	Union	America/New_York	43059	1130
Hutchinson	KS	Kansas	Reno	America/Chicago	42943	1131
Concord	NH	New Hampshire	Merrimack	America/New_York	42938	1132
Clovis	NM	New Mexico	Curry	America/Denver	42878	1133
Rohnert Park	CA	California	Sonoma	America/Los_Angeles	42841	1134
Ormond Beach	FL	Florida	Volusia	America/New_York	42819	1135
Brea	CA	California	Orange	America/Los_Angeles	42780	1136
Bell Gardens	CA	California	Los Angeles	America/Los_Angeles	42750	1137
Prescott	AZ	Arizona	Yavapai	America/Phoenix	42734	1138
The Colony	TX	Texas	Denton	America/Chicago	42724	1139
Burke	VA	Virginia	Fairfax	America/New_York	42713	1140
Kearny	NJ	New Jersey	Hudson	America/New_York	42673	1141
Brentwood	TN	Tennessee	Williamson	America/Chicago	42670	1142
Goose Creek	SC	South Carolina	Berkeley	America/New_York	42622	1143
Fairfield	OH	Ohio	Butler	America/New_York	42569	1144
Spring Hill	TN	Tennessee	Maury	America/Chicago	42566	1145
Richmond	IN	Indiana	Wayne	America/Indiana/Indianapolis	42511	1146
Klamath Falls	OR	Oregon	Klamath	America/Los_Angeles	42466	1147
Hicksville	NY	New York	Nassau	America/New_York	42371	1148
Rancho Palos Verdes	CA	California	Los Angeles	America/Los_Angeles	42367	1149
Weatherford	TX	Texas	Parker	America/Chicago	42281	1150
Wake Forest	NC	North Carolina	Wake	America/New_York	42272	1151
Moline	IL	Illinois	Rock Island	America/Chicago	42234	1152
Edmonds	WA	Washington	Snohomish	America/Los_Angeles	42212	1153
Greenwood	SC	South Carolina	Greenwood	America/New_York	42177	1154
Urbana	IL	Illinois	Champaign	America/Chicago	41992	1155
Zanesville	OH	Ohio	Muskingum	America/New_York	41972	1156
Coppell	TX	Texas	Dallas	America/Chicago	41944	1157
Beverly	MA	Massachusetts	Essex	America/New_York	41819	1158
Woonsocket	RI	Rhode Island	Providence	America/New_York	41762	1159
Waipahu	HI	Hawaii	Honolulu	Pacific/Honolulu	41718	1160
Oakley	CA	California	Contra Costa	America/Los_Angeles	41717	1161
Westfield	MA	Massachusetts	Hampden	America/New_York	41703	1162
Bluefield	WV	West Virginia	Mercer	America/New_York	41656	1163
Belleville	IL	Illinois	St. Clair	America/Chicago	41652	1164
Centralia	WA	Washington	Lewis	America/Los_Angeles	41646	1165
McMinnville	OR	Oregon	Yamhill	America/Los_Angeles	41586	1166
Cedar Falls	IA	Iowa	Black Hawk	America/Chicago	41573	1167
Arecibo	PR	Puerto Rico	Arecibo	America/Puerto_Rico	41559	1168
Campbell	CA	California	Santa Clara	America/Los_Angeles	41547	1169
Manassas	VA	Virginia	Manassas	America/New_York	41504	1170
Clarksburg	WV	West Virginia	Harrison	America/New_York	41456	1171
Catonsville	MD	Maryland	Baltimore	America/New_York	41443	1172
Shelton	CT	Connecticut	Fairfield	America/New_York	41400	1173
South Valley	NM	New Mexico	Bernalillo	America/Denver	41394	1174
La Quinta	CA	California	Riverside	America/Los_Angeles	41307	1175
Jamestown	NY	New York	Chautauqua	America/New_York	41239	1176
Buffalo Grove	IL	Illinois	Cook	America/Chicago	41229	1177
Marion	IN	Indiana	Grant	America/Indiana/Indianapolis	41168	1178
Bartlett	IL	Illinois	Cook	America/Chicago	41152	1179
Pottsville	PA	Pennsylvania	Schuylkill	America/New_York	41141	1180
Grove City	OH	Ohio	Franklin	America/New_York	41025	1181
Puyallup	WA	Washington	Pierce	America/Los_Angeles	41004	1182
Channelview	TX	Texas	Harris	America/Chicago	40986	1183
Maplewood	MN	Minnesota	Ramsey	America/Chicago	40921	1184
North Fort Myers	FL	Florida	Lee	America/New_York	40919	1185
Shakopee	MN	Minnesota	Scott	America/Chicago	40896	1186
Linton Hall	VA	Virginia	Prince William	America/New_York	40835	1187
Wilkes-Barre	PA	Pennsylvania	Luzerne	America/New_York	40809	1188
Fitchburg	MA	Massachusetts	Worcester	America/New_York	40796	1189
Oviedo	FL	Florida	Seminole	America/New_York	40788	1190
Greenacres	FL	Florida	Palm Beach	America/New_York	40722	1191
Coram	NY	New York	Suffolk	America/New_York	40716	1192
Hobbs	NM	New Mexico	Lea	America/Denver	40617	1193
Muskogee	OK	Oklahoma	Muskogee	America/Chicago	40591	1194
Torrington	CT	Connecticut	Litchfield	America/New_York	40586	1195
Brighton	CO	Colorado	Adams	America/Denver	40565	1196
Apache Junction	AZ	Arizona	Pinal	America/Phoenix	40541	1197
San Gabriel	CA	California	Los Angeles	America/Los_Angeles	40517	1198
Odenton	MD	Maryland	Anne Arundel	America/New_York	40482	1199
Covington	KY	Kentucky	Kenton	America/New_York	40458	1200
Crystal Lake	IL	Illinois	McHenry	America/Chicago	40424	1201
Weslaco	TX	Texas	Hidalgo	America/Chicago	40361	1202
Calexico	CA	California	Imperial	America/Tijuana	40354	1203
Holyoke	MA	Massachusetts	Hampden	America/New_York	40344	1204
La Puente	CA	California	Los Angeles	America/Los_Angeles	40325	1205
Chelsea	MA	Massachusetts	Suffolk	America/New_York	40230	1206
Richmond	KY	Kentucky	Madison	America/New_York	40114	1207
Schertz	TX	Texas	Guadalupe	America/Chicago	40095	1208
Statesboro	GA	Georgia	Bulloch	America/New_York	40093	1209
Carol Stream	IL	Illinois	DuPage	America/Chicago	39992	1210
Streamwood	IL	Illinois	Cook	America/Chicago	39981	1211
Kendall West	FL	Florida	Miami-Dade	America/New_York	39955	1212
Marlborough	MA	Massachusetts	Middlesex	America/New_York	39876	1213
Friendswood	TX	Texas	Galveston	America/Chicago	39842	1214
Hallandale Beach	FL	Florida	Broward	America/New_York	39834	1215
Mableton	GA	Georgia	Cobb	America/New_York	39748	1216
New Castle	PA	Pennsylvania	Lawrence	America/New_York	39745	1217
New Berlin	WI	Wisconsin	Waukesha	America/Chicago	39743	1218
Westerville	OH	Ohio	Franklin	America/New_York	39740	1219
Woburn	MA	Massachusetts	Middlesex	America/New_York	39704	1220
Romeoville	IL	Illinois	Will	America/Chicago	39635	1221
Bartlesville	OK	Oklahoma	Washington	America/Chicago	39571	1222
Warren	OH	Ohio	Trumbull	America/New_York	39565	1223
Huntsville	TX	Texas	Walker	America/Chicago	39545	1224
Essex	MD	Maryland	Baltimore	America/New_York	39497	1225
Westfield	IN	Indiana	Hamilton	America/Indiana/Indianapolis	39496	1226
Duncanville	TX	Texas	Dallas	America/Chicago	39490	1227
Spanish Fork	UT	Utah	Utah	America/Denver	39446	1228
Wentzville	MO	Missouri	St. Charles	America/Chicago	39417	1229
Marion	IA	Iowa	Linn	America/Chicago	39403	1230
Marumsco	VA	Virginia	Prince William	America/New_York	39393	1231
Lancaster	TX	Texas	Dallas	America/Chicago	39389	1232
Annapolis	MD	Maryland	Anne Arundel	America/New_York	39324	1233
Keizer	OR	Oregon	Marion	America/Los_Angeles	39318	1234
South Miami Heights	FL	Florida	Miami-Dade	America/New_York	39315	1235
Woodlawn	MD	Maryland	Baltimore	America/New_York	39299	1236
Culver City	CA	California	Los Angeles	America/Los_Angeles	39286	1237
Montclair	CA	California	San Bernardino	America/Los_Angeles	39279	1238
Delaware	OH	Ohio	Delaware	America/New_York	39270	1239
Clinton	MD	Maryland	Prince George's	America/New_York	39233	1240
Herriman	UT	Utah	Salt Lake	America/Denver	39227	1241
Lake Oswego	OR	Oregon	Clackamas	America/Los_Angeles	39199	1242
Queen Creek	AZ	Arizona	Maricopa	America/Phoenix	39187	1243
Germantown	TN	Tennessee	Shelby	America/Chicago	39144	1244
Los Banos	CA	California	Merced	America/Los_Angeles	39125	1245
Pacifica	CA	California	San Mateo	America/Los_Angeles	39090	1246
Asheboro	NC	North Carolina	Randolph	America/New_York	39079	1247
Hurst	TX	Texas	Tarrant	America/Chicago	39054	1248
Sun City	AZ	Arizona	Maricopa	America/Phoenix	39003	1249
Indian Trail	NC	North Carolina	Union	America/New_York	38983	1250
Northglenn	CO	Colorado	Adams	America/Denver	38931	1251
Milton	GA	Georgia	Fulton	America/New_York	38927	1252
Newnan	GA	Georgia	Coweta	America/New_York	38912	1253
The Acreage	FL	Florida	Palm Beach	America/New_York	38848	1254
Pleasant Grove	UT	Utah	Utah	America/Denver	38848	1255
Enterprise	AL	Alabama	Coffee	America/Chicago	38740	1256
Severna Park	MD	Maryland	Anne Arundel	America/New_York	38728	1257
Plant City	FL	Florida	Hillsborough	America/New_York	38717	1258
Frankfort	KY	Kentucky	Franklin	America/New_York	38667	1259
Roy	UT	Utah	Weber	America/Denver	38598	1260
Royal Palm Beach	FL	Florida	Palm Beach	America/New_York	38595	1261
Columbia	TN	Tennessee	Maury	America/Chicago	38580	1262
Mission Bend	TX	Texas	Fort Bend	America/Chicago	38573	1263
Wheeling	IL	Illinois	Cook	America/Chicago	38565	1264
Stanton	CA	California	Orange	America/Los_Angeles	38531	1265
Butler	PA	Pennsylvania	Butler	America/New_York	38450	1266
Martinez	CA	California	Contra Costa	America/Los_Angeles	38376	1267
Meridian	MS	Mississippi	Lauderdale	America/Chicago	38297	1268
Lynnwood	WA	Washington	Snohomish	America/Los_Angeles	38276	1269
Aventura	FL	Florida	Miami-Dade	America/New_York	38205	1270
Junction City	KS	Kansas	Geary	America/Chicago	38181	1271
Carpentersville	IL	Illinois	Kane	America/Chicago	38165	1272
Rock Island	IL	Illinois	Rock Island	America/Chicago	38113	1273
Lake Worth	FL	Florida	Palm Beach	America/New_York	38110	1274
Kailua	HI	Hawaii	Honolulu	Pacific/Honolulu	38091	1275
Brookfield	WI	Wisconsin	Waukesha	America/Chicago	38048	1276
Huber Heights	OH	Ohio	Montgomery	America/New_York	37989	1277
Hanover Park	IL	Illinois	DuPage	America/Chicago	37985	1278
Valley Stream	NY	New York	Nassau	America/New_York	37938	1279
Oswego	NY	New York	Oswego	America/New_York	37920	1280
Fort Lee	NJ	New Jersey	Bergen	America/New_York	37910	1281
Reynoldsburg	OH	Ohio	Franklin	America/New_York	37850	1282
Mooresville	NC	North Carolina	Iredell	America/New_York	37823	1283
Moses Lake	WA	Washington	Grant	America/Los_Angeles	37777	1284
Mechanicsville	VA	Virginia	Hanover	America/New_York	37677	1285
Rosenberg	TX	Texas	Fort Bend	America/Chicago	37664	1286
Valrico	FL	Florida	Hillsborough	America/New_York	37549	1287
Forney	TX	Texas	Kaufman	America/Chicago	37524	1288
Park Ridge	IL	Illinois	Cook	America/Chicago	37497	1289
Issaquah	WA	Washington	King	America/Los_Angeles	37490	1290
Menomonee Falls	WI	Wisconsin	Waukesha	America/Chicago	37446	1291
Olive Branch	MS	Mississippi	DeSoto	America/Chicago	37438	1292
London	KY	Kentucky	Laurel	America/New_York	37427	1293
Gallatin	TN	Tennessee	Sumner	America/Chicago	37354	1294
Security-Widefield	CO	Colorado	El Paso	America/Denver	37328	1295
Albertville	AL	Alabama	Marshall	America/Chicago	37223	1296
Mount Pleasant	MI	Michigan	Isabella	America/Detroit	37209	1297
East Meadow	NY	New York	Nassau	America/New_York	37198	1298
Kearns	UT	Utah	Salt Lake	America/Denver	37197	1299
Oakton	VA	Virginia	Fairfax	America/New_York	37169	1300
Braintree Town	MA	Massachusetts	Norfolk	America/New_York	37159	1301
Commack	NY	New York	Suffolk	America/New_York	37120	1302
Farmers Branch	TX	Texas	Dallas	America/Chicago	37091	1303
West Hollywood	CA	California	Los Angeles	America/Los_Angeles	37083	1304
Monrovia	CA	California	Los Angeles	America/Los_Angeles	37064	1305
Kalispell	MT	Montana	Flathead	America/Denver	37027	1306
Parkland	WA	Washington	Pierce	America/Los_Angeles	37022	1307
Oakville	MO	Missouri	St. Louis	America/Chicago	37010	1308
San Juan	TX	Texas	Hidalgo	America/Chicago	36984	1309
Egypt Lake-Leto	FL	Florida	Hillsborough	America/New_York	36967	1310
Wildomar	CA	California	Riverside	America/Los_Angeles	36935	1311
Richmond West	FL	Florida	Miami-Dade	America/New_York	36901	1312
Crestview	FL	Florida	Okaloosa	America/Chicago	36883	1313
Greenfield	WI	Wisconsin	Milwaukee	America/Chicago	36830	1314
Addison	IL	Illinois	DuPage	America/Chicago	36823	1315
Moorpark	CA	California	Ventura	America/Los_Angeles	36805	1316
Cottage Grove	MN	Minnesota	Washington	America/Chicago	36796	1317
Portage	IN	Indiana	Porter	America/Chicago	36675	1318
Lincoln Park	MI	Michigan	Wayne	America/Detroit	36658	1319
Elmont	NY	New York	Nassau	America/New_York	36639	1320
Winter Springs	FL	Florida	Seminole	America/New_York	36638	1321
Calumet City	IL	Illinois	Cook	America/Chicago	36636	1322
Portsmouth	OH	Ohio	Scioto	America/New_York	36625	1323
Cedar City	UT	Utah	Iron	America/Denver	36595	1324
Dunedin	FL	Florida	Pinellas	America/New_York	36548	1325
New Albany	IN	Indiana	Floyd	America/Kentucky/Louisville	36464	1326
St. Marys	GA	Georgia	Camden	America/New_York	36450	1327
Merritt Island	FL	Florida	Brevard	America/New_York	36383	1328
Temple City	CA	California	Los Angeles	America/Los_Angeles	36370	1329
Oregon City	OR	Oregon	Clackamas	America/Los_Angeles	36363	1330
Oak Creek	WI	Wisconsin	Milwaukee	America/Chicago	36357	1331
Roseville	MN	Minnesota	Ramsey	America/Chicago	36317	1332
La Presa	CA	California	San Diego	America/Los_Angeles	36228	1333
Phenix City	AL	Alabama	Russell	America/Chicago	36222	1334
Owasso	OK	Oklahoma	Tulsa	America/Chicago	36218	1335
Cleburne	TX	Texas	Johnson	America/Chicago	36196	1336
Richfield	MN	Minnesota	Hennepin	America/Chicago	36154	1337
Franklin	WI	Wisconsin	Milwaukee	America/Chicago	36146	1338
Tucker	GA	Georgia	DeKalb	America/New_York	36133	1339
Lauderdale Lakes	FL	Florida	Broward	America/New_York	36072	1340
San Juan Capistrano	CA	California	Orange	America/Los_Angeles	36067	1341
Chillum	MD	Maryland	Prince George's	America/New_York	36050	1342
Claremont	CA	California	Los Angeles	America/Los_Angeles	36018	1343
Land O' Lakes	FL	Florida	Pasco	America/New_York	35998	1344
Hilliard	OH	Ohio	Franklin	America/New_York	35942	1345
Manhattan Beach	CA	California	Los Angeles	America/Los_Angeles	35927	1346
LaGrange	GA	Georgia	Troup	America/New_York	35921	1347
Shawnee	OK	Oklahoma	Pottawatomie	America/Chicago	35836	1348
Bettendorf	IA	Iowa	Scott	America/Chicago	35816	1349
Pahrump	NV	Nevada	Nye	America/Los_Angeles	35815	1350
Bell	CA	California	Los Angeles	America/Los_Angeles	35814	1351
Martinez	GA	Georgia	Columbia	America/New_York	35811	1352
Benton	AR	Arkansas	Saline	America/Chicago	35792	1353
Olney	MD	Maryland	Montgomery	America/New_York	35769	1354
Watertown Town	MA	Massachusetts	Middlesex	America/New_York	35759	1355
Cooper City	FL	Florida	Broward	America/New_York	35735	1356
La Vergne	TN	Tennessee	Rutherford	America/Chicago	35720	1357
West Fargo	ND	North Dakota	Cass	America/Chicago	35711	1358
Georgetown	KY	Kentucky	Scott	America/New_York	35589	1359
Wildwood	MO	Missouri	St. Louis	America/Chicago	35504	1360
Prattville	AL	Alabama	Autauga	America/Chicago	35501	1361
Randallstown	MD	Maryland	Baltimore	America/New_York	35441	1362
Inver Grove Heights	MN	Minnesota	Dakota	America/Chicago	35395	1363
La Porte	TX	Texas	Harris	America/Chicago	35374	1364
Waxahachie	TX	Texas	Ellis	America/Chicago	35343	1365
Paradise	CA	California	Butte	America/Los_Angeles	35340	1366
Upper Arlington	OH	Ohio	Franklin	America/New_York	35340	1367
Gahanna	OH	Ohio	Franklin	America/New_York	35300	1368
East Point	GA	Georgia	Fulton	America/New_York	35285	1369
Woodburn	OR	Oregon	Marion	America/Los_Angeles	35270	1370
Peachtree City	GA	Georgia	Fayette	America/New_York	35265	1371
Holly Springs	NC	North Carolina	Wake	America/New_York	35226	1372
El Mirage	AZ	Arizona	Maricopa	America/Phoenix	35219	1373
Clermont	FL	Florida	Lake	America/New_York	35214	1374
Evans	GA	Georgia	Columbia	America/New_York	35207	1375
Nacogdoches	TX	Texas	Nacogdoches	America/Chicago	35195	1376
Granbury	TX	Texas	Hood	America/Chicago	35141	1377
Monroe	NC	North Carolina	Union	America/New_York	35068	1378
Lockport	NY	New York	Niagara	America/New_York	35014	1379
Pleasant Hill	CA	California	Contra Costa	America/Los_Angeles	34990	1380
Merrillville	IN	Indiana	Lake	America/Chicago	34874	1381
Brunswick	OH	Ohio	Medina	America/New_York	34870	1382
Oswego	IL	Illinois	Kendall	America/Chicago	34836	1383
Auburn	CA	California	Placer	America/Los_Angeles	34821	1384
Stow	OH	Ohio	Summit	America/New_York	34772	1385
Carrollwood	FL	Florida	Hillsborough	America/New_York	34750	1386
Mount Juliet	TN	Tennessee	Wilson	America/Chicago	34729	1387
Boardman	OH	Ohio	Mahoning	America/New_York	34720	1388
Riviera Beach	FL	Florida	Palm Beach	America/New_York	34677	1389
Oak Harbor	WA	Washington	Island	America/Los_Angeles	34666	1390
Leawood	KS	Kansas	Johnson	America/Chicago	34662	1391
Grass Valley	CA	California	Nevada	America/Los_Angeles	34653	1392
Sanford	NC	North Carolina	Lee	America/New_York	34560	1393
University City	MO	Missouri	St. Louis	America/Chicago	34552	1394
Norristown	PA	Pennsylvania	Montgomery	America/New_York	34513	1395
Oildale	CA	California	Kern	America/Los_Angeles	34499	1396
Beverly Hills	CA	California	Los Angeles	America/Los_Angeles	34487	1397
Orangevale	CA	California	Sacramento	America/Los_Angeles	34470	1398
Foster City	CA	California	San Mateo	America/Los_Angeles	34415	1399
Englewood	CO	Colorado	Arapahoe	America/Denver	34410	1400
Galesburg	IL	Illinois	Knox	America/Chicago	34409	1401
Kearney	NE	Nebraska	Buffalo	America/Chicago	34389	1402
Gillette	WY	Wyoming	Campbell	America/Denver	34381	1403
Russellville	AR	Arkansas	Pope	America/Chicago	34376	1404
Menlo Park	CA	California	San Mateo	America/Los_Angeles	34360	1405
Kennesaw	GA	Georgia	Cobb	America/New_York	34347	1406
New City	NY	New York	Rockland	America/New_York	34341	1407
San Dimas	CA	California	Los Angeles	America/Los_Angeles	34329	1408
Vestavia Hills	AL	Alabama	Jefferson	America/Chicago	34294	1409
Owings Mills	MD	Maryland	Baltimore	America/New_York	34234	1410
Middletown	DE	Delaware	New Castle	America/New_York	34135	1411
Kaneohe	HI	Hawaii	Honolulu	Pacific/Honolulu	34126	1412
Sonoma	CA	California	Sonoma	America/Los_Angeles	34092	1413
Navarre	FL	Florida	Santa Rosa	America/Chicago	34088	1414
Chester	PA	Pennsylvania	Delaware	America/New_York	34080	1415
Adelanto	CA	California	San Bernardino	America/Los_Angeles	34069	1416
Golden Glades	FL	Florida	Miami-Dade	America/New_York	34065	1417
Glendale Heights	IL	Illinois	DuPage	America/Chicago	34061	1418
Socorro	TX	Texas	El Paso	America/Denver	34051	1419
Tooele	UT	Utah	Tooele	America/Denver	34032	1420
Lebanon	TN	Tennessee	Wilson	America/Chicago	34030	1421
Cottonwood Heights	UT	Utah	Salt Lake	America/Denver	33999	1422
Dakota Ridge	CO	Colorado	Jefferson	America/Denver	33945	1423
Dana Point	CA	California	Orange	America/Los_Angeles	33937	1424
Deer Park	TX	Texas	Harris	America/Chicago	33894	1425
Newark	DE	Delaware	New Castle	America/New_York	33861	1426
Bridgeton	NJ	New Jersey	Cumberland	America/New_York	33859	1427
Salisbury	NC	North Carolina	Rowan	America/New_York	33852	1428
Arcata	CA	California	Humboldt	America/Los_Angeles	33809	1429
Fair Oaks	VA	Virginia	Fairfax	America/New_York	33792	1430
Long Beach	NY	New York	Nassau	America/New_York	33753	1431
Fair Lawn	NJ	New Jersey	Bergen	America/New_York	33713	1432
Randolph	MA	Massachusetts	Norfolk	America/New_York	33707	1433
Meadow Woods	FL	Florida	Orange	America/New_York	33691	1434
Douglasville	GA	Georgia	Douglas	America/New_York	33678	1435
Foothill Farms	CA	California	Sacramento	America/Los_Angeles	33630	1436
Buenaventura Lakes	FL	Florida	Osceola	America/New_York	33601	1437
Woodridge	IL	Illinois	DuPage	America/Chicago	33601	1438
Montgomery Village	MD	Maryland	Montgomery	America/New_York	33568	1439
Fairborn	OH	Ohio	Greene	America/New_York	33544	1440
Ferry Pass	FL	Florida	Escambia	America/Chicago	33535	1441
Franklin	NJ	New Jersey	Sussex	America/New_York	33535	1442
Westmont	CA	California	Los Angeles	America/Los_Angeles	33535	1443
Laramie	WY	Wyoming	Albany	America/Denver	33511	1444
North Ridgeville	OH	Ohio	Lorain	America/New_York	33439	1445
Pikesville	MD	Maryland	Baltimore	America/New_York	33429	1446
University Place	WA	Washington	Pierce	America/Los_Angeles	33404	1447
Northbrook	IL	Illinois	Cook	America/Chicago	33403	1448
Valparaiso	IN	Indiana	Porter	America/Chicago	33379	1449
Martinsville	VA	Virginia	Martinsville	America/New_York	33366	1450
Huntington Station	NY	New York	Suffolk	America/New_York	33341	1451
Springville	UT	Utah	Utah	America/Denver	33297	1452
Post Falls	ID	Idaho	Kootenai	America/Los_Angeles	33293	1453
Pullman	WA	Washington	Whitman	America/Los_Angeles	33279	1454
Central Islip	NY	New York	Suffolk	America/New_York	33256	1455
Mason	OH	Ohio	Warren	America/New_York	33238	1456
Goshen	IN	Indiana	Elkhart	America/Indiana/Indianapolis	33223	1457
Midvale	UT	Utah	Salt Lake	America/Denver	33211	1458
Alabaster	AL	Alabama	Shelby	America/Chicago	33205	1459
Foley	AL	Alabama	Baldwin	America/Chicago	33116	1460
Ken Caryl	CO	Colorado	Jefferson	America/Denver	33090	1461
Lawndale	CA	California	Los Angeles	America/Los_Angeles	33081	1462
Estero	FL	Florida	Lee	America/New_York	33051	1463
Calhoun	GA	Georgia	Gordon	America/New_York	33032	1464
Franklin Town	MA	Massachusetts	Norfolk	America/New_York	32999	1465
Fairmont	WV	West Virginia	Marion	America/New_York	32991	1466
Andover	MN	Minnesota	Anoka	America/Chicago	32905	1467
Sun Prairie	WI	Wisconsin	Dane	America/Chicago	32897	1468
Plainfield	IN	Indiana	Hendricks	America/Indiana/Indianapolis	32868	1469
Carlsbad	NM	New Mexico	Eddy	America/Denver	32851	1470
Key West	FL	Florida	Monroe	America/New_York	32823	1471
Warsaw	IN	Indiana	Kosciusko	America/Indiana/Indianapolis	32816	1472
Lake Stevens	WA	Washington	Snohomish	America/Los_Angeles	32788	1473
Elk Grove Village	IL	Illinois	Cook	America/Chicago	32779	1474
Alamogordo	NM	New Mexico	Otero	America/Denver	32748	1475
Pekin	IL	Illinois	Tazewell	America/Chicago	32734	1476
Spring Valley	NY	New York	Rockland	America/New_York	32727	1477
St. Charles	IL	Illinois	Kane	America/Chicago	32717	1478
Copperas Cove	TX	Texas	Coryell	America/Chicago	32709	1479
Ridgecrest	CA	California	Kern	America/Los_Angeles	32582	1480
Bowling Green	OH	Ohio	Wood	America/New_York	32575	1481
Eastpointe	MI	Michigan	Macomb	America/Detroit	32514	1482
DeLand	FL	Florida	Volusia	America/New_York	32509	1483
Franklin Square	NY	New York	Nassau	America/New_York	32485	1484
La Verne	CA	California	Los Angeles	America/Los_Angeles	32464	1485
West Little River	FL	Florida	Miami-Dade	America/New_York	32436	1486
Bethel Park	PA	Pennsylvania	Allegheny	America/New_York	32407	1487
Garfield	NJ	New Jersey	Bergen	America/New_York	32396	1488
Massillon	OH	Ohio	Stark	America/New_York	32345	1489
Florence	KY	Kentucky	Boone	America/New_York	32308	1490
College Park	MD	Maryland	Prince George's	America/New_York	32306	1491
Westlake	OH	Ohio	Cuyahoga	America/New_York	32300	1492
East Lake	FL	Florida	Pinellas	America/New_York	32251	1493
Eagle Mountain	UT	Utah	Utah	America/Denver	32207	1494
Oxford	MS	Mississippi	Lafayette	America/Chicago	32206	1495
Parkland	FL	Florida	Broward	America/New_York	32205	1496
Rome	NY	New York	Oneida	America/New_York	32188	1497
Starkville	MS	Mississippi	Oktibbeha	America/Chicago	32167	1498
Matthews	NC	North Carolina	Mecklenburg	America/New_York	32120	1499
Eldersburg	MD	Maryland	Carroll	America/New_York	32067	1500
Dania Beach	FL	Florida	Broward	America/New_York	32033	1501
Coos Bay	OR	Oregon	Coos	America/Los_Angeles	32033	1502
Centereach	NY	New York	Suffolk	America/New_York	31956	1503
Fruit Cove	FL	Florida	St. Johns	America/New_York	31876	1504
Southlake	TX	Texas	Tarrant	America/Chicago	31827	1505
Princeton	NJ	New Jersey	Mercer	America/New_York	31825	1506
Kaysville	UT	Utah	Davis	America/Denver	31779	1507
Parkville	MD	Maryland	Baltimore	America/New_York	31765	1508
Alliance	OH	Ohio	Stark	America/New_York	31761	1509
Petersburg	VA	Virginia	Petersburg	America/New_York	31753	1510
North Olmsted	OH	Ohio	Cuyahoga	America/New_York	31737	1511
Columbus	MS	Mississippi	Lowndes	America/Chicago	31704	1512
Redmond	OR	Oregon	Deschutes	America/Los_Angeles	31698	1513
Hopkinsville	KY	Kentucky	Christian	America/Chicago	31684	1514
Chillicothe	OH	Ohio	Ross	America/New_York	31674	1515
Uniondale	NY	New York	Nassau	America/New_York	31600	1516
Woodstock	GA	Georgia	Cherokee	America/New_York	31567	1517
Liberty	MO	Missouri	Clay	America/Chicago	31510	1518
Naugatuck	CT	Connecticut	New Haven	America/New_York	31464	1519
Marrero	LA	Louisiana	Jefferson	America/Chicago	31428	1520
Mundelein	IL	Illinois	Lake	America/Chicago	31388	1521
Clearfield	UT	Utah	Davis	America/Denver	31366	1522
French Valley	CA	California	Riverside	America/Los_Angeles	31356	1523
Savage	MN	Minnesota	Scott	America/Chicago	31355	1524
Laguna Hills	CA	California	Orange	America/Los_Angeles	31321	1525
Wheat Ridge	CO	Colorado	Jefferson	America/Denver	31297	1526
Bel Air North	MD	Maryland	Harford	America/New_York	31266	1527
Placerville	CA	California	El Dorado	America/Los_Angeles	31263	1528
Milledgeville	GA	Georgia	Baldwin	America/New_York	31257	1529
Greenville	MS	Mississippi	Washington	America/Chicago	31246	1530
Des Moines	WA	Washington	King	America/Los_Angeles	31241	1531
Banning	CA	California	Riverside	America/Los_Angeles	31233	1532
San Pablo	CA	California	Contra Costa	America/Los_Angeles	31159	1533
Auburn	NY	New York	Cayuga	America/New_York	31129	1534
Fallbrook	CA	California	San Diego	America/Los_Angeles	31124	1535
Goleta	CA	California	Santa Barbara	America/Los_Angeles	31119	1536
Redan	GA	Georgia	DeKalb	America/New_York	31114	1537
Miami Lakes	FL	Florida	Miami-Dade	America/New_York	31090	1538
Orangeburg	SC	South Carolina	Orangeburg	America/New_York	31088	1539
Sherwood	AR	Arkansas	Pulaski	America/Chicago	31084	1540
Harker Heights	TX	Texas	Bell	America/Chicago	31078	1541
Algonquin	IL	Illinois	McHenry	America/Chicago	31020	1542
Wooster	OH	Ohio	Wayne	America/New_York	31014	1543
Brooklyn Center	MN	Minnesota	Hennepin	America/Chicago	31009	1544
Lakeside	FL	Florida	Clay	America/New_York	30986	1545
Saratoga	CA	California	Santa Clara	America/Los_Angeles	30908	1546
Pueblo West	CO	Colorado	Pueblo	America/Denver	30904	1547
Greer	SC	South Carolina	Greenville	America/New_York	30902	1548
Winter Park	FL	Florida	Orange	America/New_York	30882	1549
Nogales	AZ	Arizona	Santa Cruz	America/Phoenix	30879	1550
Rochester	NH	New Hampshire	Strafford	America/New_York	30800	1551
Gurnee	IL	Illinois	Lake	America/Chicago	30770	1552
Long Branch	NJ	New Jersey	Monmouth	America/New_York	30765	1553
Santa Paula	CA	California	Ventura	America/Los_Angeles	30750	1554
Los Altos	CA	California	Santa Clara	America/Los_Angeles	30746	1555
Los Gatos	CA	California	Santa Clara	America/Los_Angeles	30727	1556
Aiken	SC	South Carolina	Aiken	America/New_York	30724	1557
Granger	IN	Indiana	St. Joseph	America/Indiana/Indianapolis	30720	1558
Oceanside	NY	New York	Nassau	America/New_York	30713	1559
Holladay	UT	Utah	Salt Lake	America/Denver	30712	1560
Kahului	HI	Hawaii	Maui	Pacific/Honolulu	30709	1561
Fair Oaks	CA	California	Sacramento	America/Los_Angeles	30707	1562
Burlingame	CA	California	San Mateo	America/Los_Angeles	30689	1563
San Luis	AZ	Arizona	Yuma	America/Phoenix	30650	1564
Clinton	IA	Iowa	Clinton	America/Chicago	30645	1565
Butte	MT	Montana	Silver Bow	America/Denver	30631	1566
Peru	IL	Illinois	LaSalle	America/Chicago	30614	1567
Barstow	CA	California	San Bernardino	America/Los_Angeles	30609	1568
Nicholasville	KY	Kentucky	Jessamine	America/New_York	30603	1569
Springfield	VA	Virginia	Fairfax	America/New_York	30559	1570
Prairieville	LA	Louisiana	Ascension	America/Chicago	30539	1571
Spanaway	WA	Washington	Pierce	America/Los_Angeles	30531	1572
Westchester	FL	Florida	Miami-Dade	America/New_York	30519	1573
San Carlos	CA	California	San Mateo	America/Los_Angeles	30502	1574
Smithfield	NC	North Carolina	Johnston	America/New_York	30485	1575
North Tonawanda	NY	New York	Niagara	America/New_York	30478	1576
Spring Valley	CA	California	San Diego	America/Los_Angeles	30442	1577
Westfield	NJ	New Jersey	Union	America/New_York	30436	1578
South Riding	VA	Virginia	Loudoun	America/New_York	30429	1579
Atascadero	CA	California	San Luis Obispo	America/Los_Angeles	30421	1580
Bay Shore	NY	New York	Suffolk	America/New_York	30395	1581
Sterling	VA	Virginia	Loudoun	America/New_York	30381	1582
North Royalton	OH	Ohio	Cuyahoga	America/New_York	30297	1583
Texarkana	AR	Arkansas	Miller	America/Chicago	30262	1584
Opelika	AL	Alabama	Lee	America/Chicago	30243	1585
Garden City	KS	Kansas	Finney	America/Chicago	30209	1586
Walnut	CA	California	Los Angeles	America/Los_Angeles	30202	1587
Ballwin	MO	Missouri	St. Louis	America/Chicago	30184	1588
Carney	MD	Maryland	Baltimore	America/New_York	30181	1589
Gloucester	MA	Massachusetts	Essex	America/New_York	30175	1590
Kerrville	TX	Texas	Kerr	America/Chicago	30151	1591
East Liverpool	OH	Ohio	Columbiana	America/New_York	30149	1592
Rahway	NJ	New Jersey	Union	America/New_York	30134	1593
Milford Mill	MD	Maryland	Baltimore	America/New_York	30107	1594
Madison Heights	MI	Michigan	Oakland	America/Detroit	30053	1595
Orcutt	CA	California	Santa Barbara	America/Los_Angeles	30004	1596
Winona	MN	Minnesota	Winona	America/Chicago	29976	1597
Milton	PA	Pennsylvania	Northumberland	America/New_York	29956	1598
Athens	OH	Ohio	Athens	America/New_York	29929	1599
Kent	OH	Ohio	Portage	America/New_York	29918	1600
Chicago Heights	IL	Illinois	Cook	America/Chicago	29904	1601
South Lake Tahoe	CA	California	El Dorado	America/Los_Angeles	29893	1602
Lawrenceville	GA	Georgia	Gwinnett	America/New_York	29876	1603
Rexburg	ID	Idaho	Madison	America/Boise	29862	1604
North Chicago	IL	Illinois	Lake	America/Chicago	29845	1605
Golden Gate	FL	Florida	Collier	America/New_York	29844	1606
Fountain	CO	Colorado	El Paso	America/Denver	29807	1607
Highland Park	IL	Illinois	Lake	America/Chicago	29770	1608
East Palo Alto	CA	California	San Mateo	America/Los_Angeles	29768	1609
Port Chester	NY	New York	Westchester	America/New_York	29714	1610
Oak Park	MI	Michigan	Oakland	America/Detroit	29657	1611
Suisun City	CA	California	Solano	America/Los_Angeles	29642	1612
Ukiah	CA	California	Mendocino	America/Los_Angeles	29640	1613
Somerset	KY	Kentucky	Pulaski	America/New_York	29636	1614
Crown Point	IN	Indiana	Lake	America/Chicago	29628	1615
New Iberia	LA	Louisiana	Iberia	America/Chicago	29623	1616
Saratoga Springs	UT	Utah	Utah	America/Denver	29611	1617
American Fork	UT	Utah	Utah	America/Denver	29530	1618
Syracuse	UT	Utah	Davis	America/Denver	29510	1619
Fitchburg	WI	Wisconsin	Dane	America/Chicago	29488	1620
Niles	IL	Illinois	Cook	America/Chicago	29485	1621
Duluth	GA	Georgia	Gwinnett	America/New_York	29466	1622
Chamblee	GA	Georgia	DeKalb	America/New_York	29431	1623
Atwater	CA	California	Merced	America/Los_Angeles	29400	1624
O'Fallon	IL	Illinois	St. Clair	America/Chicago	29275	1625
Sanford	ME	Maine	York	America/New_York	29267	1626
Firestone	CO	Colorado	Weld	America/Denver	29257	1627
Cibolo	TX	Texas	Guadalupe	America/Chicago	29252	1628
Raytown	MO	Missouri	Jackson	America/Chicago	29214	1629
Athens	AL	Alabama	Limestone	America/Chicago	29195	1630
Cornelius	NC	North Carolina	Mecklenburg	America/New_York	29194	1631
Lake Magdalene	FL	Florida	Hillsborough	America/New_York	29187	1632
Fleming Island	FL	Florida	Clay	America/New_York	29166	1633
West Falls Church	VA	Virginia	Fairfax	America/New_York	29153	1634
SeaTac	WA	Washington	King	America/Los_Angeles	29143	1635
Geneva	NY	New York	Ontario	America/New_York	29143	1636
Stockbridge	GA	Georgia	Henry	America/New_York	29117	1637
Englewood	NJ	New Jersey	Bergen	America/New_York	29115	1638
Oak Ridge	TN	Tennessee	Anderson	America/New_York	29099	1639
Aberdeen	WA	Washington	Grays Harbor	America/Los_Angeles	29092	1640
Southgate	MI	Michigan	Wayne	America/Detroit	29087	1641
Lumberton	NC	North Carolina	Robeson	America/New_York	29050	1642
Plattsburgh	NY	New York	Clinton	America/New_York	29009	1643
Central	LA	Louisiana	East Baton Rouge	America/Chicago	28987	1644
Morgan City	LA	Louisiana	St. Mary	America/Chicago	28967	1645
Lake in the Hills	IL	Illinois	McHenry	America/Chicago	28939	1646
Hermiston	OR	Oregon	Umatilla	America/Los_Angeles	28928	1647
Shamokin	PA	Pennsylvania	Northumberland	America/New_York	28906	1648
Newberg	OR	Oregon	Yamhill	America/Los_Angeles	28889	1649
Garner	NC	North Carolina	Wake	America/New_York	28861	1650
Agawam Town	MA	Massachusetts	Hampden	America/New_York	28852	1651
Burlington	IA	Iowa	Des Moines	America/Chicago	28833	1652
Burbank	IL	Illinois	Cook	America/Chicago	28796	1653
Ladera Ranch	CA	California	Orange	America/Los_Angeles	28772	1654
Maryville	TN	Tennessee	Blount	America/New_York	28768	1655
Granite City	IL	Illinois	Madison	America/Chicago	28749	1656
West Springfield Town	MA	Massachusetts	Hampden	America/New_York	28707	1657
Perry Hall	MD	Maryland	Baltimore	America/New_York	28684	1658
Henderson	KY	Kentucky	Henderson	America/Chicago	28660	1659
Burton	MI	Michigan	Genesee	America/Detroit	28646	1660
Monterey	CA	California	Monterey	America/Los_Angeles	28642	1661
Schererville	IN	Indiana	Lake	America/Chicago	28636	1662
Big Spring	TX	Texas	Howard	America/Chicago	28627	1663
Northampton	MA	Massachusetts	Hampshire	America/New_York	28596	1664
Harrison	NY	New York	Westchester	America/New_York	28590	1665
Jacksonville	AR	Arkansas	Pulaski	America/Chicago	28516	1666
Bella Vista	AR	Arkansas	Benton	America/Chicago	28514	1667
Mehlville	MO	Missouri	St. Louis	America/Chicago	28482	1668
Austintown	OH	Ohio	Mahoning	America/New_York	28441	1669
Casselberry	FL	Florida	Seminole	America/New_York	28398	1670
Sunbury	PA	Pennsylvania	Northumberland	America/New_York	28392	1671
Melrose	MA	Massachusetts	Middlesex	America/New_York	28370	1672
Newburgh	NY	New York	Orange	America/New_York	28366	1673
Mililani Town	HI	Hawaii	Honolulu	Pacific/Honolulu	28346	1674
Benicia	CA	California	Solano	America/Los_Angeles	28346	1675
Crofton	MD	Maryland	Anne Arundel	America/New_York	28285	1676
Wisconsin Rapids	WI	Wisconsin	Wood	America/Chicago	28280	1677
Aberdeen	SD	South Dakota	Brown	America/Chicago	28267	1678
Magna	UT	Utah	Salt Lake	America/Denver	28260	1679
Hobart	IN	Indiana	Lake	America/Chicago	28258	1680
Drexel Hill	PA	Pennsylvania	Delaware	America/New_York	28249	1681
Laplace	LA	Louisiana	St. John the Baptist	America/Chicago	28221	1682
East Chicago	IN	Indiana	Lake	America/Chicago	28218	1683
Princeton	FL	Florida	Miami-Dade	America/New_York	28204	1684
Fortuna Foothills	AZ	Arizona	Yuma	America/Phoenix	28203	1685
Ruston	LA	Louisiana	Lincoln	America/Chicago	28202	1686
Drexel Heights	AZ	Arizona	Pima	America/Phoenix	28190	1687
Winchester	NV	Nevada	Clark	America/Los_Angeles	28133	1688
Oakdale	MN	Minnesota	Washington	America/Chicago	28086	1689
Glen Ellyn	IL	Illinois	DuPage	America/Chicago	28048	1690
Belle Glade	FL	Florida	Palm Beach	America/New_York	28002	1691
Sonora	CA	California	Tuolumne	America/Los_Angeles	27998	1692
Lansing	IL	Illinois	Cook	America/Chicago	27965	1693
Canton	GA	Georgia	Cherokee	America/New_York	27939	1694
Bergenfield	NJ	New Jersey	Bergen	America/New_York	27930	1695
Millville	NJ	New Jersey	Cumberland	America/New_York	27921	1696
Fuquay-Varina	NC	North Carolina	Wake	America/New_York	27909	1697
Gloversville	NY	New York	Fulton	America/New_York	27896	1698
Fridley	MN	Minnesota	Anoka	America/Chicago	27856	1699
Ashtabula	OH	Ohio	Ashtabula	America/New_York	27843	1700
Garfield Heights	OH	Ohio	Cuyahoga	America/New_York	27838	1701
Seguin	TX	Texas	Guadalupe	America/Chicago	27771	1702
Monroeville	PA	Pennsylvania	Allegheny	America/New_York	27719	1703
Dodge City	KS	Kansas	Ford	America/Chicago	27699	1704
Sterling	IL	Illinois	Whiteside	America/Chicago	27698	1705
Oak Forest	IL	Illinois	Cook	America/Chicago	27688	1706
Deer Park	NY	New York	Suffolk	America/New_York	27656	1707
Kirkwood	MO	Missouri	St. Louis	America/Chicago	27656	1708
Dix Hills	NY	New York	Suffolk	America/New_York	27650	1709
Independence	KY	Kentucky	Kenton	America/New_York	27637	1710
Forest Hills	MI	Michigan	Kent	America/Detroit	27602	1711
Maywood	CA	California	Los Angeles	America/Los_Angeles	27589	1712
Vineyard	CA	California	Sacramento	America/Los_Angeles	27588	1713
Sanger	CA	California	Fresno	America/Los_Angeles	27585	1714
Galt	CA	California	Sacramento	America/Los_Angeles	27574	1715
Windsor	CA	California	Sonoma	America/Los_Angeles	27551	1716
Fremont	NE	Nebraska	Dodge	America/Chicago	27536	1717
Kinston	NC	North Carolina	Lenoir	America/New_York	27520	1718
Glen Cove	NY	New York	Nassau	America/New_York	27503	1719
Isla Vista	CA	California	Santa Barbara	America/Los_Angeles	27487	1720
Pasadena	MD	Maryland	Anne Arundel	America/New_York	27487	1721
Tualatin	OR	Oregon	Washington	America/Los_Angeles	27481	1722
Rockledge	FL	Florida	Brevard	America/New_York	27479	1723
Shaker Heights	OH	Ohio	Cuyahoga	America/New_York	27443	1724
Imperial Beach	CA	California	San Diego	America/Los_Angeles	27421	1725
Wilmette	IL	Illinois	Cook	America/Chicago	27421	1726
Jeffersontown	KY	Kentucky	Jefferson	America/New_York	27398	1727
Leisure City	FL	Florida	Miami-Dade	America/New_York	27392	1728
Cañon City	CO	Colorado	Fremont	America/Denver	27371	1729
Vicksburg	MS	Mississippi	Warren	America/Chicago	27360	1730
St. Helens	OR	Oregon	Columbia	America/Los_Angeles	27281	1731
Plum	PA	Pennsylvania	Allegheny	America/New_York	27261	1732
Monticello	MN	Minnesota	Wright	America/Chicago	27218	1733
Huntley	IL	Illinois	McHenry	America/Chicago	27210	1734
Shirley	NY	New York	Suffolk	America/New_York	27189	1735
West Chicago	IL	Illinois	DuPage	America/Chicago	27185	1736
Searcy	AR	Arkansas	White	America/Chicago	27183	1737
Allen Park	MI	Michigan	Wayne	America/Detroit	27159	1738
Lindenhurst	NY	New York	Suffolk	America/New_York	27156	1739
Belmont	CA	California	San Mateo	America/Los_Angeles	27143	1740
Gladstone	MO	Missouri	Clay	America/Chicago	27143	1741
Waterville	ME	Maine	Kennebec	America/New_York	27126	1742
West Islip	NY	New York	Suffolk	America/New_York	27120	1743
Easton	PA	Pennsylvania	Northampton	America/New_York	27112	1744
Lemon Grove	CA	California	San Diego	America/Los_Angeles	27111	1745
Indiana	PA	Pennsylvania	Indiana	America/New_York	27108	1746
Horn Lake	MS	Mississippi	DeSoto	America/Chicago	27098	1747
South Laurel	MD	Maryland	Prince George's	America/New_York	27096	1748
Lewes	DE	Delaware	Sussex	America/New_York	27090	1749
New London	CT	Connecticut	New London	America/New_York	27075	1750
Paramus	NJ	New Jersey	Bergen	America/New_York	27035	1751
Norfolk	NE	Nebraska	Madison	America/Chicago	27019	1752
Fernandina Beach	FL	Florida	Nassau	America/New_York	27008	1753
West Whittier-Los Nietos	CA	California	Los Angeles	America/Los_Angeles	27005	1754
Maryland Heights	MO	Missouri	St. Louis	America/Chicago	26999	1755
East Lake-Orient Park	FL	Florida	Hillsborough	America/New_York	26992	1756
Shelby	NC	North Carolina	Cleveland	America/New_York	26965	1757
Graham	WA	Washington	Pierce	America/Los_Angeles	26942	1758
Wasco	CA	California	Kern	America/Los_Angeles	26938	1759
McHenry	IL	Illinois	McHenry	America/Chicago	26914	1760
Reisterstown	MD	Maryland	Baltimore	America/New_York	26906	1761
Paragould	AR	Arkansas	Greene	America/Chicago	26861	1762
Yukon	OK	Oklahoma	Canadian	America/Chicago	26833	1763
Seneca	SC	South Carolina	Oconee	America/New_York	26821	1764
Ilchester	MD	Maryland	Howard	America/New_York	26807	1765
Shoreview	MN	Minnesota	Ramsey	America/Chicago	26797	1766
Cortland	NY	New York	Cortland	America/New_York	26772	1767
Norco	CA	California	Riverside	America/Los_Angeles	26764	1768
Mint Hill	NC	North Carolina	Mecklenburg	America/New_York	26751	1769
Bixby	OK	Oklahoma	Tulsa	America/Chicago	26727	1770
Rock Springs	WY	Wyoming	Sweetwater	America/Denver	26713	1771
Zionsville	IN	Indiana	Boone	America/Indiana/Indianapolis	26713	1772
West Linn	OR	Oregon	Clackamas	America/Los_Angeles	26706	1773
Colleyville	TX	Texas	Tarrant	America/Chicago	26677	1774
Waynesboro	PA	Pennsylvania	Franklin	America/New_York	26675	1775
East St. Louis	IL	Illinois	St. Clair	America/Chicago	26665	1776
Statesville	NC	North Carolina	Iredell	America/New_York	26660	1777
Garden City	MI	Michigan	Wayne	America/Detroit	26653	1778
Short Pump	VA	Virginia	Henrico	America/New_York	26627	1779
Thomasville	NC	North Carolina	Davidson	America/New_York	26618	1780
Marshalltown	IA	Iowa	Marshall	America/Chicago	26596	1781
Ramsey	MN	Minnesota	Anoka	America/Chicago	26590	1782
Natchez	MS	Mississippi	Adams	America/Chicago	26582	1783
New Lenox	IL	Illinois	Will	America/Chicago	26578	1784
University Park	FL	Florida	Miami-Dade	America/New_York	26568	1785
Batavia	IL	Illinois	Kane	America/Chicago	26566	1786
Xenia	OH	Ohio	Greene	America/New_York	26565	1787
Chaska	MN	Minnesota	Carver	America/Chicago	26564	1788
Pearl	MS	Mississippi	Rankin	America/Chicago	26537	1789
Mount Pleasant	WI	Wisconsin	Racine	America/Chicago	26528	1790
Temple Terrace	FL	Florida	Hillsborough	America/New_York	26492	1791
Soledad	CA	California	Monterey	America/Los_Angeles	26486	1792
Alvin	TX	Texas	Brazoria	America/Chicago	26477	1793
Fort Hood	TX	Texas	Bell	America/Chicago	26475	1794
Brawley	CA	California	Imperial	America/Los_Angeles	26475	1795
New Smyrna Beach	FL	Florida	Volusia	America/New_York	26473	1796
Morrisville	NC	North Carolina	Wake	America/New_York	26464	1797
Mason City	IA	Iowa	Cerro Gordo	America/Chicago	26460	1798
Lafayette	CA	California	Contra Costa	America/Los_Angeles	26443	1799
Lebanon	NH	New Hampshire	Grafton	America/New_York	26417	1800
Washington	UT	Utah	Washington	America/Denver	26408	1801
Prior Lake	MN	Minnesota	Scott	America/Chicago	26404	1802
Sedalia	MO	Missouri	Pettis	America/Chicago	26402	1803
Bessemer	AL	Alabama	Jefferson	America/Chicago	26389	1804
Lemoore	CA	California	Kings	America/Los_Angeles	26358	1805
Muscatine	IA	Iowa	Muscatine	America/Chicago	26338	1806
Oakleaf Plantation	FL	Florida	Clay	America/New_York	26318	1807
Williston	ND	North Dakota	Williams	America/Chicago	26304	1808
Vernon Hills	IL	Illinois	Lake	America/Chicago	26256	1809
Timberwood Park	TX	Texas	Bexar	America/Chicago	26239	1810
Lochearn	MD	Maryland	Baltimore	America/New_York	26208	1811
Superior	WI	Wisconsin	Douglas	America/Chicago	26197	1812
Medina	OH	Ohio	Medina	America/New_York	26193	1813
Plainview	NY	New York	Nassau	America/New_York	26144	1814
Cabot	AR	Arkansas	Lonoke	America/Chicago	26144	1815
Bayonet Point	FL	Florida	Pasco	America/New_York	26129	1816
Barberton	OH	Ohio	Summit	America/New_York	26123	1817
Holbrook	NY	New York	Suffolk	America/New_York	26120	1818
Levittown	PR	Puerto Rico	Toa Baja	America/Puerto_Rico	26120	1819
Eagle	ID	Idaho	Ada	America/Boise	26092	1820
Fajardo	PR	Puerto Rico	Fajardo	America/Puerto_Rico	26070	1821
Laurel	MS	Mississippi	Jones	America/Chicago	26066	1822
Summerlin South	NV	Nevada	Clark	America/Los_Angeles	26062	1823
Snoqualmie	WA	Washington	King	America/Los_Angeles	26057	1824
Marquette	MI	Michigan	Marquette	America/Detroit	26032	1825
Winchester	KY	Kentucky	Clark	America/New_York	25999	1826
Citrus Park	FL	Florida	Hillsborough	America/New_York	25997	1827
Paris	TX	Texas	Lamar	America/Chicago	25964	1828
Neenah	WI	Wisconsin	Winnebago	America/Chicago	25954	1829
Sachse	TX	Texas	Dallas	America/Chicago	25940	1830
Española	NM	New Mexico	Rio Arriba	America/Denver	25916	1831
Brownsburg	IN	Indiana	Hendricks	America/Indiana/Indianapolis	25914	1832
Laurel	MD	Maryland	Prince George's	America/New_York	25909	1833
South Pasadena	CA	California	Los Angeles	America/Los_Angeles	25891	1834
White Bear Lake	MN	Minnesota	Ramsey	America/Chicago	25891	1835
Lake City	FL	Florida	Columbia	America/New_York	25872	1836
Troy	OH	Ohio	Miami	America/New_York	25868	1837
Salem	VA	Virginia	Salem	America/New_York	25865	1838
Edgewood	MD	Maryland	Harford	America/New_York	25861	1839
Okeechobee	FL	Florida	Okeechobee	America/New_York	25849	1840
Woodstock	IL	Illinois	McHenry	America/Chicago	25836	1841
West Odessa	TX	Texas	Ector	America/Chicago	25784	1842
Maple Valley	WA	Washington	King	America/Los_Angeles	25761	1843
Green	OH	Ohio	Summit	America/New_York	25750	1844
Ridgewood	NJ	New Jersey	Bergen	America/New_York	25695	1845
Immokalee	FL	Florida	Collier	America/New_York	25689	1846
Scottsbluff	NE	Nebraska	Scotts Bluff	America/Denver	25665	1847
Middle River	MD	Maryland	Baltimore	America/New_York	25657	1848
Madison	MS	Mississippi	Madison	America/Chicago	25630	1849
Cataño	PR	Puerto Rico	Cataño	America/Puerto_Rico	25598	1850
Owatonna	MN	Minnesota	Steele	America/Chicago	25590	1851
Moscow	ID	Idaho	Latah	America/Los_Angeles	25582	1852
Chanhassen	MN	Minnesota	Carver	America/Chicago	25561	1853
Hercules	CA	California	Contra Costa	America/Los_Angeles	25548	1854
Cave Spring	VA	Virginia	Roanoke	America/New_York	25545	1855
Boone	NC	North Carolina	Watauga	America/New_York	25535	1856
El Cerrito	CA	California	Contra Costa	America/Los_Angeles	25518	1857
South Portland	ME	Maine	Cumberland	America/New_York	25486	1858
Forest City	NC	North Carolina	Rutherford	America/New_York	25484	1859
Homewood	AL	Alabama	Jefferson	America/Chicago	25479	1860
Lockport	IL	Illinois	Will	America/Chicago	25437	1861
Temescal Valley	CA	California	Riverside	America/Los_Angeles	25414	1862
Ossining	NY	New York	Westchester	America/New_York	25406	1863
Hutto	TX	Texas	Williamson	America/Chicago	25370	1864
Horizon West	FL	Florida	Orange	America/New_York	25368	1865
Claremore	OK	Oklahoma	Rogers	America/Chicago	25368	1866
North Tustin	CA	California	Orange	America/Los_Angeles	25367	1867
Balch Springs	TX	Texas	Dallas	America/Chicago	25360	1868
Tarpon Springs	FL	Florida	Pinellas	America/New_York	25334	1869
Windsor	CO	Colorado	Weld	America/Denver	25333	1870
Austin	MN	Minnesota	Mower	America/Chicago	25324	1871
Hazelwood	MO	Missouri	St. Louis	America/Chicago	25293	1872
Kingsville	TX	Texas	Kleberg	America/Chicago	25289	1873
Mercer Island	WA	Washington	King	America/Los_Angeles	25264	1874
Midlothian	TX	Texas	Ellis	America/Chicago	25257	1875
Lancaster	SC	South Carolina	Lancaster	America/New_York	25250	1876
Baldwin	NY	New York	Nassau	America/New_York	25217	1877
University Park	TX	Texas	Dallas	America/Chicago	25204	1878
Melrose Park	IL	Illinois	Cook	America/Chicago	25200	1879
Belvidere	IL	Illinois	Boone	America/Chicago	25184	1880
Juneau	AK	Alaska	Juneau	America/Juneau	25183	1881
Sebastian	FL	Florida	Indian River	America/New_York	25177	1882
Grandview	MO	Missouri	Jackson	America/Chicago	25162	1883
Clinton	MS	Mississippi	Hinds	America/Chicago	25157	1884
Cliffside Park	NJ	New Jersey	Bergen	America/New_York	25145	1885
San Lorenzo	CA	California	Alameda	America/Los_Angeles	25104	1886
Northport	AL	Alabama	Tuscaloosa	America/Chicago	25097	1887
Riverside	OH	Ohio	Montgomery	America/New_York	25097	1888
Franklin	IN	Indiana	Johnson	America/Indiana/Indianapolis	25092	1889
Sun City West	AZ	Arizona	Maricopa	America/Phoenix	25088	1890
Valinda	CA	California	Los Angeles	America/Los_Angeles	25083	1891
Columbine	CO	Colorado	Jefferson	America/Denver	25063	1892
Opelousas	LA	Louisiana	St. Landry	America/Chicago	25059	1893
De Pere	WI	Wisconsin	Brown	America/Chicago	25037	1894
Champlin	MN	Minnesota	Hennepin	America/Chicago	25025	1895
Yucca Valley	CA	California	San Bernardino	America/Los_Angeles	25012	1896
Caledonia	WI	Wisconsin	Racine	America/Chicago	25005	1897
Greenville	TX	Texas	Hunt	America/Chicago	25003	1898
Muskego	WI	Wisconsin	Waukesha	America/Chicago	24999	1899
Wyandotte	MI	Michigan	Wayne	America/Detroit	24980	1900
Edwardsville	IL	Illinois	Madison	America/Chicago	24970	1901
Lodi	NJ	New Jersey	Bergen	America/New_York	24964	1902
Sevierville	TN	Tennessee	Sevier	America/New_York	24961	1903
South Salt Lake	UT	Utah	Salt Lake	America/Denver	24959	1904
Newport	RI	Rhode Island	Newport	America/New_York	24945	1905
South Bradenton	FL	Florida	Manatee	America/New_York	24938	1906
Suitland	MD	Maryland	Prince George's	America/New_York	24930	1907
Holt	MI	Michigan	Ingham	America/Detroit	24915	1908
Harvey	IL	Illinois	Cook	America/Chicago	24911	1909
Palm Springs	FL	Florida	Palm Beach	America/New_York	24895	1910
Hanahan	SC	South Carolina	Berkeley	America/New_York	24888	1911
Canyon Lake	TX	Texas	Comal	America/Chicago	24880	1912
West Memphis	AR	Arkansas	Crittenden	America/Chicago	24863	1913
Ponca City	OK	Oklahoma	Kay	America/Chicago	24852	1914
Rockville Centre	NY	New York	Nassau	America/New_York	24851	1915
Walker	MI	Michigan	Kent	America/Detroit	24825	1916
Chantilly	VA	Virginia	Fairfax	America/New_York	24805	1917
Somerset	NJ	New Jersey	Somerset	America/New_York	24782	1918
Westmont	IL	Illinois	DuPage	America/Chicago	24759	1919
McDonough	GA	Georgia	Henry	America/New_York	24758	1920
Riverbank	CA	California	Stanislaus	America/Los_Angeles	24743	1921
Ontario	OR	Oregon	Malheur	America/Boise	24741	1922
Coral Terrace	FL	Florida	Miami-Dade	America/New_York	24726	1923
San Fernando	CA	California	Los Angeles	America/Los_Angeles	24717	1924
Palmetto Bay	FL	Florida	Miami-Dade	America/New_York	24713	1925
Collinsville	IL	Illinois	Madison	America/Chicago	24706	1926
Burlington	WI	Wisconsin	Racine	America/Chicago	24690	1927
Branson	MO	Missouri	Taney	America/Chicago	24685	1928
Emporia	KS	Kansas	Lyon	America/Chicago	24642	1929
Watauga	TX	Texas	Tarrant	America/Chicago	24605	1930
Homer Glen	IL	Illinois	Will	America/Chicago	24594	1931
Waverly	MI	Michigan	Eaton	America/Detroit	24592	1932
Fountain Hills	AZ	Arizona	Maricopa	America/Phoenix	24586	1933
Chesapeake Beach	MD	Maryland	Calvert	America/New_York	24568	1934
Palm City	FL	Florida	Martin	America/New_York	24540	1935
Elmwood Park	IL	Illinois	Cook	America/Chicago	24540	1936
Herndon	VA	Virginia	Fairfax	America/New_York	24535	1937
San Benito	TX	Texas	Cameron	America/Chicago	24531	1938
Bainbridge Island	WA	Washington	Kitsap	America/Los_Angeles	24525	1939
Bailey's Crossroads	VA	Virginia	Fairfax	America/New_York	24524	1940
North Laurel	MD	Maryland	Howard	America/New_York	24513	1941
Elk River	MN	Minnesota	Sherburne	America/Chicago	24509	1942
Norton Shores	MI	Michigan	Muskegon	America/Detroit	24504	1943
Ashland	CA	California	Alameda	America/Los_Angeles	24480	1944
Inkster	MI	Michigan	Wayne	America/Detroit	24456	1945
South Plainfield	NJ	New Jersey	Middlesex	America/New_York	24438	1946
Fresno	TX	Texas	Fort Bend	America/Chicago	24429	1947
Coronado	CA	California	San Diego	America/Los_Angeles	24420	1948
Freeport	IL	Illinois	Stephenson	America/Chicago	24415	1949
Brookings	SD	South Dakota	Brookings	America/Chicago	24403	1950
Hastings	NE	Nebraska	Adams	America/Chicago	24394	1951
Kernersville	NC	North Carolina	Forsyth	America/New_York	24389	1952
Trotwood	OH	Ohio	Montgomery	America/New_York	24389	1953
Denison	TX	Texas	Grayson	America/Chicago	24383	1954
Oak Ridge	FL	Florida	Orange	America/New_York	24371	1955
Waycross	GA	Georgia	Ware	America/New_York	24370	1956
North Platte	NE	Nebraska	Lincoln	America/Chicago	24355	1957
Lincolnia	VA	Virginia	Fairfax	America/New_York	24347	1958
Rosemount	MN	Minnesota	Dakota	America/Chicago	24347	1959
Seal Beach	CA	California	Orange	America/Los_Angeles	24329	1960
Tifton	GA	Georgia	Tift	America/New_York	24317	1961
Haines City	FL	Florida	Polk	America/New_York	24307	1962
Peekskill	NY	New York	Westchester	America/New_York	24275	1963
Thomasville	GA	Georgia	Thomas	America/New_York	24274	1964
Ridgeland	MS	Mississippi	Madison	America/Chicago	24269	1965
Keystone	FL	Florida	Hillsborough	America/New_York	24239	1966
North Potomac	MD	Maryland	Montgomery	America/New_York	24239	1967
Erie	CO	Colorado	Boulder	America/Denver	24237	1968
Fairland	MD	Maryland	Montgomery	America/New_York	24229	1969
Fort Dodge	IA	Iowa	Webster	America/Chicago	24226	1970
Terrytown	LA	Louisiana	Jefferson	America/Chicago	24219	1971
Ottumwa	IA	Iowa	Wapello	America/Chicago	24209	1972
Candler-McAfee	GA	Georgia	DeKalb	America/New_York	24207	1973
Calabasas	CA	California	Los Angeles	America/Los_Angeles	24205	1974
Loma Linda	CA	California	San Bernardino	America/Los_Angeles	24199	1975
Marysville	OH	Ohio	Union	America/New_York	24189	1976
Avon Lake	OH	Ohio	Lorain	America/New_York	24187	1977
Ewa Gentry	HI	Hawaii	Honolulu	Pacific/Honolulu	24184	1978
Mequon	WI	Wisconsin	Ozaukee	America/Chicago	24162	1979
Hialeah Gardens	FL	Florida	Miami-Dade	America/New_York	24159	1980
Kiryas Joel	NY	New York	Orange	America/New_York	24158	1981
Plainview	TX	Texas	Hale	America/Chicago	24153	1982
Fort Washington	MD	Maryland	Prince George's	America/New_York	24147	1983
Madisonville	KY	Kentucky	Hopkins	America/Chicago	24147	1984
Forest Grove	OR	Oregon	Washington	America/Los_Angeles	24144	1985
Hudson	WI	Wisconsin	St. Croix	America/Chicago	24136	1986
Medford	NY	New York	Suffolk	America/New_York	24132	1987
Faribault	MN	Minnesota	Rice	America/Chicago	24104	1988
Fairfax	VA	Virginia	Fairfax	America/New_York	24100	1989
Carteret	NJ	New Jersey	Middlesex	America/New_York	24087	1990
Cudahy	CA	California	Los Angeles	America/Los_Angeles	24079	1991
Farmington	UT	Utah	Davis	America/Denver	24069	1992
Dunkirk	NY	New York	Chautauqua	America/New_York	24064	1993
Wilsonville	OR	Oregon	Clackamas	America/Los_Angeles	24061	1994
Dinuba	CA	California	Tulare	America/Los_Angeles	24037	1995
Vero Beach South	FL	Florida	Indian River	America/New_York	24032	1996
Cloverleaf	TX	Texas	Harris	America/Chicago	24026	1997
Brandon	MS	Mississippi	Rankin	America/Chicago	24002	1998
Rolling Meadows	IL	Illinois	Cook	America/Chicago	23991	1999
Ilion	NY	New York	Herkimer	America/New_York	23986	2000
Zion	IL	Illinois	Lake	America/Chicago	23955	2001
Cottage Lake	WA	Washington	King	America/Los_Angeles	23944	2002
Heber	UT	Utah	Wasatch	America/Denver	23926	2003
Port Angeles	WA	Washington	Clallam	America/Los_Angeles	23868	2004
Decatur	GA	Georgia	DeKalb	America/New_York	23835	2005
Pooler	GA	Georgia	Chatham	America/New_York	23819	2006
Charles Town	WV	West Virginia	Jefferson	America/New_York	23809	2007
Centerville	OH	Ohio	Montgomery	America/New_York	23790	2008
Conway	SC	South Carolina	Horry	America/New_York	23717	2009
Bay Point	CA	California	Contra Costa	America/Los_Angeles	23711	2010
Rosemont	CA	California	Sacramento	America/Los_Angeles	23703	2011
Greeneville	TN	Tennessee	Greene	America/New_York	23681	2012
Derby	KS	Kansas	Sedgwick	America/Chicago	23676	2013
Maywood	IL	Illinois	Cook	America/Chicago	23643	2014
Forest Lake	MN	Minnesota	Washington	America/Chicago	23605	2015
Palatka	FL	Florida	Putnam	America/New_York	23600	2016
Benbrook	TX	Texas	Tarrant	America/Chicago	23593	2017
Socastee	SC	South Carolina	Horry	America/New_York	23570	2018
Mount Pocono	PA	Pennsylvania	Monroe	America/New_York	23548	2019
Half Moon Bay	CA	California	San Mateo	America/Los_Angeles	23543	2020
West Rancho Dominguez	CA	California	Los Angeles	America/Los_Angeles	23540	2021
Jacksonville Beach	FL	Florida	Duval	America/New_York	23521	2022
Rockingham	NC	North Carolina	Richmond	America/New_York	23516	2023
Van Buren	AR	Arkansas	Crawford	America/Chicago	23512	2024
Pelham	AL	Alabama	Shelby	America/Chicago	23496	2025
Greenbelt	MD	Maryland	Prince George's	America/New_York	23492	2026
West Puente Valley	CA	California	Los Angeles	America/Los_Angeles	23490	2027
Palm River-Clair Mel	FL	Florida	Hillsborough	America/New_York	23487	2028
Belton	MO	Missouri	Cass	America/Chicago	23483	2029
Wadsworth	OH	Ohio	Medina	America/New_York	23479	2030
Ellensburg	WA	Washington	Kittitas	America/Los_Angeles	23474	2031
Romulus	MI	Michigan	Wayne	America/Detroit	23460	2032
Gallup	NM	New Mexico	McKinley	America/Denver	23418	2033
Bloomingdale	FL	Florida	Hillsborough	America/New_York	23398	2034
Loves Park	IL	Illinois	Winnebago	America/Chicago	23390	2035
Converse	TX	Texas	Bexar	America/Chicago	23378	2036
Blue Island	IL	Illinois	Cook	America/Chicago	23364	2037
Wekiwa Springs	FL	Florida	Seminole	America/New_York	23362	2038
Wright	FL	Florida	Okaloosa	America/Chicago	23351	2039
Camas	WA	Washington	Clark	America/Los_Angeles	23334	2040
Lincolnton	NC	North Carolina	Lincoln	America/New_York	23314	2041
Shelbyville	KY	Kentucky	Shelby	America/New_York	23308	2042
Auburn Hills	MI	Michigan	Oakland	America/Detroit	23299	2043
Westchase	FL	Florida	Hillsborough	America/New_York	23290	2044
Sugar Hill	GA	Georgia	Gwinnett	America/New_York	23183	2045
Bethany	OR	Oregon	Washington	America/Los_Angeles	23180	2046
Crystal	MN	Minnesota	Hennepin	America/Chicago	23168	2047
Oakdale	CA	California	Stanislaus	America/Los_Angeles	23153	2048
Meadville	PA	Pennsylvania	Crawford	America/New_York	23151	2049
Laguna Beach	CA	California	Orange	America/Los_Angeles	23150	2050
Watertown	WI	Wisconsin	Jefferson	America/Chicago	23148	2051
Morton Grove	IL	Illinois	Cook	America/Chicago	23145	2052
Columbus	NE	Nebraska	Platte	America/Chicago	23126	2053
West Springfield	VA	Virginia	Fairfax	America/New_York	23109	2054
Farmington	MN	Minnesota	Dakota	America/Chicago	23070	2055
The Crossings	FL	Florida	Miami-Dade	America/New_York	23065	2056
Avon	OH	Ohio	Lorain	America/New_York	23057	2057
Arnold	MD	Maryland	Anne Arundel	America/New_York	23044	2058
Auburn	ME	Maine	Androscoggin	America/New_York	23036	2059
Seymour	IN	Indiana	Jackson	America/Indiana/Indianapolis	23034	2060
Venice	FL	Florida	Sarasota	America/New_York	23023	2061
Saginaw	TX	Texas	Tarrant	America/Chicago	23017	2062
Hunters Creek	FL	Florida	Orange	America/New_York	23002	2063
Okemos	MI	Michigan	Ingham	America/Detroit	22992	2064
Anthem	AZ	Arizona	Maricopa	America/Phoenix	22983	2065
Vega Baja	PR	Puerto Rico	Vega Baja	America/Puerto_Rico	22978	2066
Tumwater	WA	Washington	Thurston	America/Los_Angeles	22976	2067
Solon	OH	Ohio	Cuyahoga	America/New_York	22965	2068
Roanoke Rapids	NC	North Carolina	Halifax	America/New_York	22953	2069
Greenfield Town	MA	Massachusetts	Franklin	America/New_York	22948	2070
Silver Firs	WA	Washington	Snohomish	America/Los_Angeles	22940	2071
North Augusta	SC	South Carolina	Aiken	America/New_York	22933	2072
Copiague	NY	New York	Suffolk	America/New_York	22929	2073
Taylors	SC	South Carolina	Greenville	America/New_York	22922	2074
Montrose	CO	Colorado	Montrose	America/Denver	22915	2075
Lisle	IL	Illinois	DuPage	America/Chicago	22915	2076
Chalmette	LA	Louisiana	St. Bernard	America/Chicago	22910	2077
Pittsburg	KS	Kansas	Crawford	America/Chicago	22902	2078
Webster Groves	MO	Missouri	St. Louis	America/Chicago	22889	2079
Hastings	MN	Minnesota	Dakota	America/Chicago	22885	2080
Kenmore	WA	Washington	King	America/Los_Angeles	22870	2081
Oxford	OH	Ohio	Butler	America/New_York	22865	2082
Willoughby	OH	Ohio	Lake	America/New_York	22863	2083
Landover	MD	Maryland	Prince George's	America/New_York	22855	2084
Harriman	TN	Tennessee	Roane	America/New_York	22807	2085
East Patchogue	NY	New York	Suffolk	America/New_York	22799	2086
Roselle	IL	Illinois	DuPage	America/Chicago	22797	2087
Dolton	IL	Illinois	Cook	America/Chicago	22796	2088
Braidwood	IL	Illinois	Will	America/Chicago	22794	2089
New Brighton	MN	Minnesota	Ramsey	America/Chicago	22790	2090
Lathrop	CA	California	San Joaquin	America/Los_Angeles	22784	2091
Griffin	GA	Georgia	Spalding	America/New_York	22773	2092
Brent	FL	Florida	Escambia	America/Chicago	22764	2093
East Peoria	IL	Illinois	Tazewell	America/Chicago	22742	2094
Machesney Park	IL	Illinois	Winnebago	America/Chicago	22736	2095
Farragut	TN	Tennessee	Knox	America/New_York	22732	2096
Millbrae	CA	California	San Mateo	America/Los_Angeles	22721	2097
Elizabeth City	NC	North Carolina	Pasquotank	America/New_York	22720	2098
Munster	IN	Indiana	Lake	America/Chicago	22720	2099
Garden City	NY	New York	Nassau	America/New_York	22701	2100
Acworth	GA	Georgia	Cobb	America/New_York	22701	2101
Willowbrook	CA	California	Los Angeles	America/Los_Angeles	22657	2102
Hopewell	VA	Virginia	Hopewell	America/New_York	22624	2103
Highland	IN	Indiana	Lake	America/Chicago	22588	2104
Jenks	OK	Oklahoma	Tulsa	America/Chicago	22581	2105
Fremont	OH	Ohio	Sandusky	America/New_York	22579	2106
Radcliff	KY	Kentucky	Hardin	America/New_York	22579	2107
Northdale	FL	Florida	Hillsborough	America/New_York	22561	2108
South Elgin	IL	Illinois	Kane	America/Chicago	22552	2109
Patterson	CA	California	Stanislaus	America/Los_Angeles	22526	2110
Corsicana	TX	Texas	Navarro	America/Chicago	22519	2111
Granite Bay	CA	California	Placer	America/Los_Angeles	22482	2112
Ives Estates	FL	Florida	Miami-Dade	America/New_York	22463	2113
Auburn	IN	Indiana	DeKalb	America/Indiana/Indianapolis	22460	2114
Corcoran	CA	California	Kings	America/Los_Angeles	22456	2115
Maple Heights	OH	Ohio	Cuyahoga	America/New_York	22403	2116
Edgewater	FL	Florida	Volusia	America/New_York	22402	2117
Bloomington	CA	California	San Bernardino	America/Los_Angeles	22380	2118
Prairie Village	KS	Kansas	Johnson	America/Chicago	22371	2119
Sunny Isles Beach	FL	Florida	Miami-Dade	America/New_York	22351	2120
Waynesboro	VA	Virginia	Waynesboro	America/New_York	22330	2121
Port Hueneme	CA	California	Ventura	America/Los_Angeles	22330	2122
Summit	NJ	New Jersey	Union	America/New_York	22326	2123
West Carson	CA	California	Los Angeles	America/Los_Angeles	22263	2124
Christiansburg	VA	Virginia	Montgomery	America/New_York	22262	2125
Hudson	OH	Ohio	Summit	America/New_York	22248	2126
Winter Gardens	CA	California	San Diego	America/Los_Angeles	22240	2127
Pace	FL	Florida	Santa Rosa	America/Chicago	22235	2128
Mandan	ND	North Dakota	Morton	America/North_Dakota/New_Salem	22231	2129
Kihei	HI	Hawaii	Maui	Pacific/Honolulu	22223	2130
Brownwood	TX	Texas	Brown	America/Chicago	22175	2131
Ruskin	FL	Florida	Hillsborough	America/New_York	22165	2132
Marina	CA	California	Monterey	America/Los_Angeles	22148	2133
Warrensburg	MO	Missouri	Johnson	America/Chicago	22139	2134
Union Hill-Novelty Hill	WA	Washington	King	America/Los_Angeles	22112	2135
Massapequa	NY	New York	Nassau	America/New_York	22105	2136
Clarksburg	MD	Maryland	Montgomery	America/New_York	22103	2137
Greenfield	IN	Indiana	Hancock	America/Indiana/Indianapolis	22097	2138
West Melbourne	FL	Florida	Brevard	America/New_York	22092	2139
Simpsonville	SC	South Carolina	Greenville	America/New_York	22075	2140
Keene	NH	New Hampshire	Cheshire	America/New_York	22071	2141
Darien	IL	Illinois	DuPage	America/Chicago	22064	2142
North Plainfield	NJ	New Jersey	Somerset	America/New_York	22063	2143
Monsey	NY	New York	Rockland	America/New_York	22046	2144
Allison Park	PA	Pennsylvania	Allegheny	America/New_York	22044	2145
Northfield	MN	Minnesota	Rice	America/Chicago	22040	2146
Guayama	PR	Puerto Rico	Guayama	America/Puerto_Rico	22026	2147
Bloomingdale	IL	Illinois	DuPage	America/Chicago	22019	2148
Geneva	IL	Illinois	Kane	America/Chicago	22013	2149
Augusta	ME	Maine	Kennebec	America/New_York	21997	2150
Sun City Center	FL	Florida	Hillsborough	America/New_York	21989	2151
St. Andrews	SC	South Carolina	Richland	America/New_York	21980	2152
Roselle	NJ	New Jersey	Union	America/New_York	21979	2153
Clinton	UT	Utah	Davis	America/Denver	21974	2154
Chester	VA	Virginia	Chesterfield	America/New_York	21960	2155
Eastmont	WA	Washington	Snohomish	America/Los_Angeles	21954	2156
Naples	FL	Florida	Collier	America/New_York	21951	2157
Dickinson	ND	North Dakota	Stark	America/Denver	21938	2158
Ensley	FL	Florida	Escambia	America/Chicago	21925	2159
Green Valley	AZ	Arizona	Pima	America/Phoenix	21915	2160
Fort Walton Beach	FL	Florida	Okaloosa	America/Chicago	21898	2161
North Bay Shore	NY	New York	Suffolk	America/New_York	21889	2162
Mukwonago	WI	Wisconsin	Waukesha	America/Chicago	21885	2163
Ramona	CA	California	San Diego	America/Los_Angeles	21874	2164
Rose Hill	VA	Virginia	Fairfax	America/New_York	21868	2165
New Castle	IN	Indiana	Henry	America/Indiana/Indianapolis	21858	2166
Watertown	SD	South Dakota	Codington	America/Chicago	21840	2167
Villa Park	IL	Illinois	DuPage	America/Chicago	21839	2168
Lewistown	PA	Pennsylvania	Mifflin	America/New_York	21830	2169
Lakeside	CA	California	San Diego	America/Los_Angeles	21830	2170
Trussville	AL	Alabama	Jefferson	America/Chicago	21830	2171
Del City	OK	Oklahoma	Oklahoma	America/Chicago	21801	2172
Marietta	OH	Ohio	Washington	America/New_York	21775	2173
Duarte	CA	California	Los Angeles	America/Los_Angeles	21760	2174
Hamtramck	MI	Michigan	Wayne	America/Detroit	21755	2175
Frederickson	WA	Washington	Pierce	America/Los_Angeles	21740	2176
Belton	TX	Texas	Bell	America/Chicago	21737	2177
Prichard	AL	Alabama	Mobile	America/Chicago	21735	2178
South Holland	IL	Illinois	Cook	America/Chicago	21735	2179
Mount Vernon	OH	Ohio	Knox	America/New_York	21723	2180
Affton	MO	Missouri	St. Louis	America/Chicago	21707	2181
Clarksville	IN	Indiana	Clark	America/Kentucky/Louisville	21697	2182
Park Forest	IL	Illinois	Cook	America/Chicago	21685	2183
La Porte	IN	Indiana	LaPorte	America/Chicago	21684	2184
Marshall	TX	Texas	Harrison	America/Chicago	21675	2185
Hayesville	OR	Oregon	Marion	America/Los_Angeles	21661	2186
Bellview	FL	Florida	Escambia	America/Chicago	21658	2187
Rancho San Diego	CA	California	San Diego	America/Los_Angeles	21654	2188
Siloam Springs	AR	Arkansas	Benton	America/Chicago	21645	2189
South Euclid	OH	Ohio	Cuyahoga	America/New_York	21601	2190
Gardner	KS	Kansas	Johnson	America/Chicago	21586	2191
Piqua	OH	Ohio	Miami	America/New_York	21584	2192
Arvin	CA	California	Kern	America/Los_Angeles	21569	2193
Johnston	IA	Iowa	Polk	America/Chicago	21565	2194
Carrboro	NC	North Carolina	Orange	America/New_York	21547	2195
Lennox	CA	California	Los Angeles	America/Los_Angeles	21540	2196
Hays	KS	Kansas	Ellis	America/Chicago	21528	2197
Golden Valley	MN	Minnesota	Hennepin	America/Chicago	21523	2198
Jacksonville	IL	Illinois	Morgan	America/Chicago	21515	2199
Biddeford	ME	Maine	York	America/New_York	21491	2200
Perrysburg	OH	Ohio	Wood	America/New_York	21485	2201
Lebanon	OR	Oregon	Linn	America/Los_Angeles	21477	2202
Mukilteo	WA	Washington	Snohomish	America/Los_Angeles	21472	2203
Gaffney	SC	South Carolina	Cherokee	America/New_York	21463	2204
Owosso	MI	Michigan	Shiawassee	America/Detroit	21462	2205
Hazel Dell	WA	Washington	Clark	America/Los_Angeles	21452	2206
Lutz	FL	Florida	Hillsborough	America/New_York	21451	2207
Johnstown	CO	Colorado	Weld	America/Denver	21439	2208
Lino Lakes	MN	Minnesota	Anoka	America/Chicago	21410	2209
Clayton	NC	North Carolina	Johnston	America/New_York	21408	2210
Union City	GA	Georgia	Fulton	America/New_York	21373	2211
Mountlake Terrace	WA	Washington	Snohomish	America/Los_Angeles	21340	2212
Amsterdam	NY	New York	Montgomery	America/New_York	21337	2213
Nixa	MO	Missouri	Christian	America/Chicago	21324	2214
Sidney	OH	Ohio	Shelby	America/New_York	21322	2215
Ardmore	OK	Oklahoma	Carter	America/Chicago	21318	2216
Orchards	WA	Washington	Clark	America/Los_Angeles	21302	2217
Fort Atkinson	WI	Wisconsin	Jefferson	America/Chicago	21302	2218
Lexington	SC	South Carolina	Lexington	America/New_York	21268	2219
Mustang	OK	Oklahoma	Canadian	America/Chicago	21225	2220
Happy Valley	OR	Oregon	Clackamas	America/Los_Angeles	21199	2221
McNair	VA	Virginia	Fairfax	America/New_York	21186	2222
Shelbyville	TN	Tennessee	Bedford	America/Chicago	21185	2223
Oxford	AL	Alabama	Calhoun	America/Chicago	21183	2224
Olean	NY	New York	Cattaraugus	America/New_York	21181	2225
Elko	NV	Nevada	Elko	America/Los_Angeles	21181	2226
Crest Hill	IL	Illinois	Will	America/Chicago	21178	2227
Bayou Cane	LA	Louisiana	Terrebonne	America/Chicago	21176	2228
Arbutus	MD	Maryland	Baltimore	America/New_York	21170	2229
Raymore	MO	Missouri	Cass	America/Chicago	21170	2230
Corinth	TX	Texas	Denton	America/Chicago	21155	2231
Birmingham	MI	Michigan	Oakland	America/Detroit	21145	2232
Louisville	CO	Colorado	Boulder	America/Denver	21131	2233
East Ridge	TN	Tennessee	Hamilton	America/New_York	21121	2234
Ashland	OR	Oregon	Jackson	America/Los_Angeles	21120	2235
Arnold	MO	Missouri	Jefferson	America/Chicago	21116	2236
East Moline	IL	Illinois	Rock Island	America/Chicago	21112	2237
Sun Valley	NV	Nevada	Washoe	America/Los_Angeles	21104	2238
Kapolei	HI	Hawaii	Honolulu	Pacific/Honolulu	21089	2239
Bluffton	SC	South Carolina	Beaufort	America/New_York	21088	2240
Selma	AL	Alabama	Dallas	America/Chicago	21086	2241
Ypsilanti	MI	Michigan	Washtenaw	America/Detroit	21079	2242
Salmon Creek	WA	Washington	Clark	America/Los_Angeles	21071	2243
New Hope	MN	Minnesota	Hennepin	America/Chicago	21066	2244
Camp Springs	MD	Maryland	Prince George's	America/New_York	21061	2245
Easley	SC	South Carolina	Pickens	America/New_York	21056	2246
Bardstown	KY	Kentucky	Nelson	America/New_York	21047	2247
Dyersburg	TN	Tennessee	Dyer	America/Chicago	21046	2248
Sweetwater	FL	Florida	Miami-Dade	America/New_York	21031	2249
Oneida	NY	New York	Madison	America/New_York	21028	2250
South Milwaukee	WI	Wisconsin	Milwaukee	America/Chicago	20991	2251
Palisades Park	NJ	New Jersey	Bergen	America/New_York	20991	2252
South El Monte	CA	California	Los Angeles	America/Los_Angeles	20990	2253
Charleston	IL	Illinois	Coles	America/Chicago	20971	2254
Grayslake	IL	Illinois	Lake	America/Chicago	20960	2255
Fairhope	AL	Alabama	Baldwin	America/Chicago	20938	2256
Prunedale	CA	California	Monterey	America/Los_Angeles	20931	2257
Lynn Haven	FL	Florida	Bay	America/Chicago	20925	2258
Rolla	MO	Missouri	Phelps	America/Chicago	20920	2259
Covington	WA	Washington	King	America/Los_Angeles	20919	2260
Shafter	CA	California	Kern	America/Los_Angeles	20892	2261
Coralville	IA	Iowa	Johnson	America/Chicago	20884	2262
Milford	DE	Delaware	Sussex	America/New_York	20867	2263
Alexandria	MN	Minnesota	Douglas	America/Chicago	20854	2264
Sapulpa	OK	Oklahoma	Creek	America/Chicago	20846	2265
Havelock	NC	North Carolina	Craven	America/New_York	20840	2266
Mill Creek	WA	Washington	Snohomish	America/Los_Angeles	20835	2267
Eustis	FL	Florida	Lake	America/New_York	20830	2268
Logansport	IN	Indiana	Cass	America/Indiana/Indianapolis	20812	2269
Alice	TX	Texas	Jim Wells	America/Chicago	20806	2270
Milwaukie	OR	Oregon	Clackamas	America/Los_Angeles	20804	2271
Cockeysville	MD	Maryland	Baltimore	America/New_York	20792	2272
DeBary	FL	Florida	Volusia	America/New_York	20787	2273
Pleasant Prairie	WI	Wisconsin	Kenosha	America/Chicago	20765	2274
Lealman	FL	Florida	Pinellas	America/New_York	20758	2275
Sequim	WA	Washington	Clallam	America/Los_Angeles	20753	2276
Holiday	FL	Florida	Pasco	America/New_York	20748	2277
Barre	VT	Vermont	Washington	America/New_York	20738	2278
Pleasantville	NJ	New Jersey	Atlantic	America/New_York	20735	2279
Ferguson	MO	Missouri	St. Louis	America/Chicago	20731	2280
Atoka	TN	Tennessee	Tipton	America/Chicago	20720	2281
Lomita	CA	California	Los Angeles	America/Los_Angeles	20710	2282
Agoura Hills	CA	California	Los Angeles	America/Los_Angeles	20695	2283
Merrick	NY	New York	Nassau	America/New_York	20682	2284
Bonney Lake	WA	Washington	Pierce	America/Los_Angeles	20678	2285
Murphy	TX	Texas	Collin	America/Chicago	20676	2286
Palm Valley	FL	Florida	St. Johns	America/New_York	20675	2287
Ashland	KY	Kentucky	Boyd	America/New_York	20672	2288
Brushy Creek	TX	Texas	Williamson	America/Chicago	20669	2289
Silverdale	WA	Washington	Kitsap	America/Los_Angeles	20667	2290
Shelbyville	IN	Indiana	Shelby	America/Indiana/Indianapolis	20666	2291
Waukee	IA	Iowa	Dallas	America/Chicago	20652	2292
Gardner	MA	Massachusetts	Worcester	America/New_York	20643	2293
Murray	KY	Kentucky	Calloway	America/Chicago	20642	2294
North Lynnwood	WA	Washington	Snohomish	America/Los_Angeles	20629	2295
Lebanon	OH	Ohio	Warren	America/New_York	20625	2296
Makakilo	HI	Hawaii	Honolulu	Pacific/Honolulu	20618	2297
Greenwood	MS	Mississippi	Leflore	America/Chicago	20604	2298
Battle Ground	WA	Washington	Clark	America/Los_Angeles	20579	2299
Norwalk	OH	Ohio	Huron	America/New_York	20579	2300
Golden	CO	Colorado	Jefferson	America/Denver	20574	2301
Universal City	TX	Texas	Bexar	America/Chicago	20535	2302
Poplar Bluff	MO	Missouri	Butler	America/Chicago	20521	2303
Mill Creek East	WA	Washington	Snohomish	America/Los_Angeles	20517	2304
North Salt Lake	UT	Utah	Davis	America/Denver	20510	2305
Vincennes	IN	Indiana	Knox	America/Indiana/Vincennes	20504	2306
Dublin	GA	Georgia	Laurens	America/New_York	20496	2307
Libertyville	IL	Illinois	Lake	America/Chicago	20493	2308
Shenandoah	LA	Louisiana	East Baton Rouge	America/Chicago	20484	2309
Bothell West	WA	Washington	Snohomish	America/Los_Angeles	20475	2310
Evans	CO	Colorado	Weld	America/Denver	20473	2311
Jasmine Estates	FL	Florida	Pasco	America/New_York	20468	2312
Duncan	OK	Oklahoma	Stephens	America/Chicago	20442	2313
Elmwood Park	NJ	New Jersey	Bergen	America/New_York	20432	2314
South San Jose Hills	CA	California	Los Angeles	America/Los_Angeles	20426	2315
Clemmons	NC	North Carolina	Forsyth	America/New_York	20423	2316
La Cañada Flintridge	CA	California	Los Angeles	America/Los_Angeles	20416	2317
Mead Valley	CA	California	Riverside	America/Los_Angeles	20405	2318
Pickerington	OH	Ohio	Fairfield	America/New_York	20405	2319
Bear	DE	Delaware	New Castle	America/New_York	20404	2320
Stephenville	TX	Texas	Erath	America/Chicago	20403	2321
Mililani Mauka	HI	Hawaii	Honolulu	Pacific/Honolulu	20396	2322
Lake Ronkonkoma	NY	New York	Suffolk	America/New_York	20396	2323
Mountain Brook	AL	Alabama	Jefferson	America/Chicago	20384	2324
Newton	KS	Kansas	Harvey	America/Chicago	20373	2325
Hurricane	UT	Utah	Washington	America/Denver	20365	2326
Dickinson	TX	Texas	Galveston	America/Chicago	20362	2327
Kill Devil Hills	NC	North Carolina	Dare	America/New_York	20337	2328
Ashland	OH	Ohio	Ashland	America/New_York	20321	2329
West Pensacola	FL	Florida	Escambia	America/Chicago	20317	2330
Prosper	TX	Texas	Collin	America/Chicago	20315	2331
Harvey	LA	Louisiana	Jefferson	America/Chicago	20314	2332
Dixon	CA	California	Solano	America/Los_Angeles	20307	2333
Mokena	IL	Illinois	Will	America/Chicago	20296	2334
The Dalles	OR	Oregon	Wasco	America/Los_Angeles	20296	2335
Sulphur	LA	Louisiana	Calcasieu	America/Chicago	20281	2336
Lorton	VA	Virginia	Fairfax	America/New_York	20271	2337
Willmar	MN	Minnesota	Kandiyohi	America/Chicago	20265	2338
Columbia Heights	MN	Minnesota	Anoka	America/Chicago	20257	2339
American Canyon	CA	California	Napa	America/Los_Angeles	20250	2340
South St. Paul	MN	Minnesota	Dakota	America/Chicago	20245	2341
Montclair	VA	Virginia	Prince William	America/New_York	20244	2342
Schofield Barracks	HI	Hawaii	Honolulu	Pacific/Honolulu	20232	2343
Rocky River	OH	Ohio	Cuyahoga	America/New_York	20219	2344
Secaucus	NJ	New Jersey	Hudson	America/New_York	20218	2345
Wade Hampton	SC	South Carolina	Greenville	America/New_York	20216	2346
Holtsville	NY	New York	Suffolk	America/New_York	20204	2347
Escanaba	MI	Michigan	Delta	America/Detroit	20202	2348
Casa de Oro-Mount Helix	CA	California	San Diego	America/Los_Angeles	20199	2349
Bryant	AR	Arkansas	Saline	America/Chicago	20197	2350
Valley	AL	Alabama	Chambers	America/Chicago	20186	2351
Henderson	NC	North Carolina	Vance	America/New_York	20161	2352
Franconia	VA	Virginia	Fairfax	America/New_York	20148	2353
Tukwila	WA	Washington	King	America/Los_Angeles	20147	2354
Albany	CA	California	Alameda	America/Los_Angeles	20146	2355
Brockport	NY	New York	Monroe	America/New_York	20097	2356
Laurinburg	NC	North Carolina	Scotland	America/New_York	20096	2357
Amherst Center	MA	Massachusetts	Hampshire	America/New_York	20087	2358
Allendale	MI	Michigan	Ottawa	America/Detroit	20083	2359
Ferndale	MI	Michigan	Oakland	America/Detroit	20073	2360
West Chester	PA	Pennsylvania	Chester	America/New_York	20063	2361
Parma Heights	OH	Ohio	Cuyahoga	America/New_York	20056	2362
Bayshore Gardens	FL	Florida	Manatee	America/New_York	20050	2363
Clifton	CO	Colorado	Mesa	America/Denver	20048	2364
King of Prussia	PA	Pennsylvania	Montgomery	America/New_York	20047	2365
Rosamond	CA	California	Kern	America/Los_Angeles	20027	2366
Glassboro	NJ	New Jersey	Gloucester	America/New_York	20014	2367
North Bellmore	NY	New York	Nassau	America/New_York	19997	2368
Culpeper	VA	Virginia	Culpeper	America/New_York	19989	2369
Miamisburg	OH	Ohio	Montgomery	America/New_York	19988	2370
Germantown	WI	Wisconsin	Washington	America/Chicago	19985	2371
Leland	NC	North Carolina	Brunswick	America/New_York	19979	2372
Oregon	OH	Ohio	Lucas	America/New_York	19976	2373
Ottawa	IL	Illinois	LaSalle	America/Chicago	19970	2374
East Hemet	CA	California	Riverside	America/Los_Angeles	19954	2375
Selden	NY	New York	Suffolk	America/New_York	19931	2376
Sand Springs	OK	Oklahoma	Tulsa	America/Chicago	19912	2377
Ozark	MO	Missouri	Christian	America/Chicago	19908	2378
Lake Zurich	IL	Illinois	Lake	America/Chicago	19906	2379
Payson	UT	Utah	Utah	America/Denver	19895	2380
Brambleton	VA	Virginia	Loudoun	America/New_York	19879	2381
Norwood	OH	Ohio	Hamilton	America/New_York	19873	2382
Old Jamestown	MO	Missouri	St. Louis	America/Chicago	19869	2383
Hauppauge	NY	New York	Suffolk	America/New_York	19855	2384
Abbeville	LA	Louisiana	Vermilion	America/Chicago	19851	2385
West Hempstead	NY	New York	Nassau	America/New_York	19844	2386
West Mifflin	PA	Pennsylvania	Allegheny	America/New_York	19842	2387
Forest Park	GA	Georgia	Clayton	America/New_York	19826	2388
Painesville	OH	Ohio	Lake	America/New_York	19816	2389
Murrysville	PA	Pennsylvania	Westmoreland	America/New_York	19803	2390
Haslett	MI	Michigan	Ingham	America/Detroit	19803	2391
North Amityville	NY	New York	Suffolk	America/New_York	19777	2392
West St. Paul	MN	Minnesota	Dakota	America/Chicago	19770	2393
Punta Gorda	FL	Florida	Charlotte	America/New_York	19764	2394
Snellville	GA	Georgia	Gwinnett	America/New_York	19741	2395
Orinda	CA	California	Contra Costa	America/Los_Angeles	19733	2396
Lake Shore	MD	Maryland	Anne Arundel	America/New_York	19727	2397
Lynbrook	NY	New York	Nassau	America/New_York	19719	2398
Hermosa Beach	CA	California	Los Angeles	America/Los_Angeles	19711	2399
Cameron Park	CA	California	El Dorado	America/Los_Angeles	19709	2400
Montgomery	IL	Illinois	Kane	America/Chicago	19704	2401
Monmouth	OR	Oregon	Polk	America/Los_Angeles	19702	2402
Swansboro	NC	North Carolina	Onslow	America/New_York	19689	2403
Alamo	TX	Texas	Hidalgo	America/Chicago	19682	2404
Tahlequah	OK	Oklahoma	Cherokee	America/Chicago	19679	2405
Syosset	NY	New York	Nassau	America/New_York	19672	2406
Front Royal	VA	Virginia	Warren	America/New_York	19671	2407
Stevenson Ranch	CA	California	Los Angeles	America/Los_Angeles	19669	2408
Durango	CO	Colorado	La Plata	America/Denver	19665	2409
Middleton	WI	Wisconsin	Dane	America/Chicago	19663	2410
La Crescenta-Montrose	CA	California	Los Angeles	America/Los_Angeles	19661	2411
Rockport	TX	Texas	Aransas	America/Chicago	19655	2412
Pinecrest	FL	Florida	Miami-Dade	America/New_York	19654	2413
Liberal	KS	Kansas	Seward	America/Chicago	19639	2414
Howard	WI	Wisconsin	Brown	America/Chicago	19637	2415
Vernal	UT	Utah	Uintah	America/Denver	19616	2416
Lake Forest	IL	Illinois	Lake	America/Chicago	19615	2417
Baldwin	PA	Pennsylvania	Allegheny	America/New_York	19613	2418
Corning	NY	New York	Steuben	America/New_York	19612	2419
Bartow	FL	Florida	Polk	America/New_York	19600	2420
Franklin Farm	VA	Virginia	Fairfax	America/New_York	19591	2421
Brainerd	MN	Minnesota	Crow Wing	America/Chicago	19577	2422
Horizon City	TX	Texas	El Paso	America/Denver	19565	2423
Langley Park	MD	Maryland	Prince George's	America/New_York	19564	2424
Suwanee	GA	Georgia	Gwinnett	America/New_York	19552	2425
Angleton	TX	Texas	Brazoria	America/Chicago	19547	2426
Evergreen Park	IL	Illinois	Cook	America/Chicago	19545	2427
Papillion	NE	Nebraska	Sarpy	America/Chicago	19542	2428
Fairwood	WA	Washington	King	America/Los_Angeles	19534	2429
White Oak	MD	Maryland	Montgomery	America/New_York	19528	2430
Upper St. Clair	PA	Pennsylvania	Allegheny	America/New_York	19527	2431
Danville	KY	Kentucky	Boyle	America/New_York	19492	2432
Saco	ME	Maine	York	America/New_York	19488	2433
Sherwood	OR	Oregon	Washington	America/Los_Angeles	19470	2434
Natchitoches	LA	Louisiana	Natchitoches	America/Chicago	19469	2435
East Northport	NY	New York	Suffolk	America/New_York	19468	2436
North Ogden	UT	Utah	Weber	America/Denver	19468	2437
Fernley	NV	Nevada	Lyon	America/Los_Angeles	19467	2438
Mamaroneck	NY	New York	Westchester	America/New_York	19426	2439
Iselin	NJ	New Jersey	Middlesex	America/New_York	19425	2440
Matteson	IL	Illinois	Cook	America/Chicago	19421	2441
Bethany	OK	Oklahoma	Oklahoma	America/Chicago	19405	2442
Ballenger Creek	MD	Maryland	Frederick	America/New_York	19397	2443
Yorkville	IL	Illinois	Kendall	America/Chicago	19391	2444
Mineola	NY	New York	Nassau	America/New_York	19390	2445
Stillwater	MN	Minnesota	Washington	America/Chicago	19371	2446
Elkridge	MD	Maryland	Howard	America/New_York	19370	2447
Pinole	CA	California	Contra Costa	America/Los_Angeles	19367	2448
Florida Ridge	FL	Florida	Indian River	America/New_York	19365	2449
Central Falls	RI	Rhode Island	Providence	America/New_York	19362	2450
Safford	AZ	Arizona	Graham	America/Phoenix	19305	2451
Castaic	CA	California	Los Angeles	America/Los_Angeles	19302	2452
Shelton	WA	Washington	Mason	America/Los_Angeles	19299	2453
Carlisle	PA	Pennsylvania	Cumberland	America/New_York	19262	2454
McKeesport	PA	Pennsylvania	Allegheny	America/New_York	19248	2455
Sheridan	WY	Wyoming	Sheridan	America/Denver	19237	2456
Laconia	NH	New Hampshire	Belknap	America/New_York	19237	2457
Kuna	ID	Idaho	Ada	America/Boise	19233	2458
Broadview Heights	OH	Ohio	Cuyahoga	America/New_York	19230	2459
La Follette	TN	Tennessee	Campbell	America/New_York	19223	2460
Arlington	WA	Washington	Snohomish	America/Los_Angeles	19215	2461
Canby	OR	Oregon	Clackamas	America/Los_Angeles	19209	2462
Brigham City	UT	Utah	Box Elder	America/Denver	19185	2463
Eloy	AZ	Arizona	Pinal	America/Phoenix	19171	2464
Somerton	AZ	Arizona	Yuma	America/Phoenix	19171	2465
Mount Airy	NC	North Carolina	Surry	America/New_York	19167	2466
North Valley Stream	NY	New York	Nassau	America/New_York	19156	2467
Rosedale	MD	Maryland	Baltimore	America/New_York	19154	2468
South Burlington	VT	Vermont	Chittenden	America/New_York	19144	2469
McAlester	OK	Oklahoma	Pittsburg	America/Chicago	19143	2470
Cullman	AL	Alabama	Cullman	America/Chicago	19117	2471
Hawthorne	NJ	New Jersey	Passaic	America/New_York	19104	2472
Tiffin	OH	Ohio	Seneca	America/New_York	19094	2473
Homewood	IL	Illinois	Cook	America/Chicago	19092	2474
Alsip	IL	Illinois	Cook	America/Chicago	19082	2475
Orange	TX	Texas	Orange	America/Chicago	19075	2476
Linda	CA	California	Yuba	America/Los_Angeles	19075	2477
Helena	AL	Alabama	Shelby	America/Chicago	19075	2478
Cornelia	GA	Georgia	Habersham	America/New_York	19049	2479
Badger	AK	Alaska	Fairbanks North Star	America/Anchorage	19042	2480
Morristown	NJ	New Jersey	Morris	America/New_York	19040	2481
Bellwood	IL	Illinois	Cook	America/Chicago	19022	2482
Frankfort	IL	Illinois	Will	America/Chicago	19012	2483
Ennis	TX	Texas	Ellis	America/Chicago	18999	2484
Altamont	OR	Oregon	Klamath	America/Los_Angeles	18978	2485
Twinsburg	OH	Ohio	Summit	America/New_York	18962	2486
Highland	UT	Utah	Utah	America/Denver	18960	2487
Deerfield	IL	Illinois	Lake	America/Chicago	18949	2488
Sylvania	OH	Ohio	Lucas	America/New_York	18944	2489
Altus	OK	Oklahoma	Jackson	America/Chicago	18934	2490
Whitehall	OH	Ohio	Franklin	America/New_York	18916	2491
Rio Rico	AZ	Arizona	Santa Cruz	America/Phoenix	18894	2492
Macomb	IL	Illinois	McDonough	America/Chicago	18892	2493
Breaux Bridge	LA	Louisiana	St. Martin	America/Chicago	18884	2494
White Oak	OH	Ohio	Hamilton	America/New_York	18878	2495
Grandview	WA	Washington	Yakima	America/Los_Angeles	18861	2496
Berea	OH	Ohio	Cuyahoga	America/New_York	18853	2497
Avenel	NJ	New Jersey	Middlesex	America/New_York	18849	2498
Erlanger	KY	Kentucky	Kenton	America/New_York	18843	2499
Palestine	TX	Texas	Anderson	America/Chicago	18838	2500
North Liberty	IA	Iowa	Johnson	America/Chicago	18816	2501
Ansonia	CT	Connecticut	New Haven	America/New_York	18816	2502
Cherry Hill	VA	Virginia	Prince William	America/New_York	18803	2503
Bellaire	TX	Texas	Harris	America/Chicago	18800	2504
Marinette	WI	Wisconsin	Marinette	America/Chicago	18794	2505
Monroe	WA	Washington	Snohomish	America/Los_Angeles	18792	2506
Rutherford	NJ	New Jersey	Bergen	America/New_York	18785	2507
Lexington	NC	North Carolina	Davidson	America/New_York	18778	2508
Uvalde	TX	Texas	Uvalde	America/Chicago	18750	2509
Westbrook	ME	Maine	Cumberland	America/New_York	18733	2510
Onalaska	WI	Wisconsin	La Crosse	America/Chicago	18715	2511
Red Bluff	CA	California	Tehama	America/Los_Angeles	18712	2512
Creve Coeur	MO	Missouri	St. Louis	America/Chicago	18705	2513
Altoona	IA	Iowa	Polk	America/Chicago	18702	2514
Marshfield	WI	Wisconsin	Wood	America/Chicago	18700	2515
Brookfield	IL	Illinois	Cook	America/Chicago	18697	2516
Forest Park	OH	Ohio	Hamilton	America/New_York	18693	2517
East Massapequa	NY	New York	Nassau	America/New_York	18692	2518
Mayfield Heights	OH	Ohio	Cuyahoga	America/New_York	18685	2519
Idylwood	VA	Virginia	Fairfax	America/New_York	18681	2520
Hopkins	MN	Minnesota	Hennepin	America/Chicago	18681	2521
Meadowbrook	VA	Virginia	Chesterfield	America/New_York	18662	2522
Bay City	TX	Texas	Matagorda	America/Chicago	18656	2523
Point Pleasant	NJ	New Jersey	Ocean	America/New_York	18654	2524
Ronkonkoma	NY	New York	Suffolk	America/New_York	18631	2525
Brook Park	OH	Ohio	Cuyahoga	America/New_York	18629	2526
Winthrop Town	MA	Massachusetts	Suffolk	America/New_York	18628	2527
Sherrelwood	CO	Colorado	Adams	America/Denver	18619	2528
Springboro	OH	Ohio	Warren	America/New_York	18613	2529
Westminster	MD	Maryland	Carroll	America/New_York	18596	2530
North Massapequa	NY	New York	Nassau	America/New_York	18594	2531
Seminole	FL	Florida	Pinellas	America/New_York	18579	2532
Rutland	VT	Vermont	Rutland	America/New_York	18574	2533
Iron Mountain	MI	Michigan	Dickinson	America/Menominee	18571	2534
Martha Lake	WA	Washington	Snohomish	America/Los_Angeles	18569	2535
Moultrie	GA	Georgia	Colquitt	America/New_York	18539	2536
Cocoa	FL	Florida	Brevard	America/New_York	18535	2537
Wantagh	NY	New York	Nassau	America/New_York	18528	2538
Defiance	OH	Ohio	Defiance	America/New_York	18522	2539
Gautier	MS	Mississippi	Jackson	America/Chicago	18515	2540
Spanish Lake	MO	Missouri	St. Louis	America/Chicago	18514	2541
Niles	OH	Ohio	Trumbull	America/New_York	18476	2542
Round Lake	IL	Illinois	Lake	America/Chicago	18447	2543
Bourbonnais	IL	Illinois	Kankakee	America/Chicago	18423	2544
Melville	NY	New York	Suffolk	America/New_York	18421	2545
Five Corners	WA	Washington	Clark	America/Los_Angeles	18408	2546
Silverthorne	CO	Colorado	Summit	America/Denver	18399	2547
North Wilkesboro	NC	North Carolina	Wilkes	America/New_York	18396	2548
Arcadia	FL	Florida	DeSoto	America/New_York	18379	2549
Durant	OK	Oklahoma	Bryan	America/Chicago	18378	2550
Bryn Mawr-Skyway	WA	Washington	King	America/Los_Angeles	18368	2551
Hyattsville	MD	Maryland	Prince George's	America/New_York	18336	2552
Bensenville	IL	Illinois	DuPage	America/Chicago	18333	2553
Stafford	TX	Texas	Fort Bend	America/Chicago	18318	2554
Nanuet	NY	New York	Rockland	America/New_York	18315	2555
Rancho Mirage	CA	California	Riverside	America/Los_Angeles	18309	2556
Crawfordsville	IN	Indiana	Montgomery	America/Indiana/Indianapolis	18308	2557
Mattoon	IL	Illinois	Coles	America/Chicago	18296	2558
North Druid Hills	GA	Georgia	DeKalb	America/New_York	18291	2559
Cudahy	WI	Wisconsin	Milwaukee	America/Chicago	18285	2560
Katy	TX	Texas	Harris	America/Chicago	18285	2561
Gibsonton	FL	Florida	Hillsborough	America/New_York	18276	2562
Beeville	TX	Texas	Bee	America/Chicago	18275	2563
Trenton	MI	Michigan	Wayne	America/Detroit	18258	2564
North Aurora	IL	Illinois	Kane	America/Chicago	18248	2565
Central Point	OR	Oregon	Jackson	America/Los_Angeles	18237	2566
Dover	NJ	New Jersey	Morris	America/New_York	18235	2567
Maumelle	AR	Arkansas	Pulaski	America/Chicago	18217	2568
Cinco Ranch	TX	Texas	Fort Bend	America/Chicago	18203	2569
Kilgore	TX	Texas	Gregg	America/Chicago	18182	2570
Eastlake	OH	Ohio	Lake	America/New_York	18175	2571
Glassmanor	MD	Maryland	Prince George's	America/New_York	18161	2572
Tillmans Corner	AL	Alabama	Mobile	America/Chicago	18153	2573
Calverton	MD	Maryland	Montgomery	America/New_York	18148	2574
St. Matthews	KY	Kentucky	Jefferson	America/New_York	18142	2575
Hannibal	MO	Missouri	Marion	America/Chicago	18139	2576
Ingleside	TX	Texas	San Patricio	America/Chicago	18137	2577
Manchester	MO	Missouri	St. Louis	America/Chicago	18115	2578
El Dorado	AR	Arkansas	Union	America/Chicago	18089	2579
Scarsdale	NY	New York	Westchester	America/New_York	18082	2580
Oxon Hill	MD	Maryland	Prince George's	America/New_York	18080	2581
Newburyport	MA	Massachusetts	Essex	America/New_York	18063	2582
Shenandoah	PA	Pennsylvania	Schuylkill	America/New_York	18046	2583
Menomonie	WI	Wisconsin	Dunn	America/Chicago	18028	2584
Sycamore	IL	Illinois	DeKalb	America/Chicago	18025	2585
Franklin Park	IL	Illinois	Cook	America/Chicago	18015	2586
Humacao	PR	Puerto Rico	Humacao	America/Puerto_Rico	18014	2587
Beaver Dam	WI	Wisconsin	Dodge	America/Chicago	18006	2588
Steubenville	OH	Ohio	Jefferson	America/New_York	18006	2589
Dumont	NJ	New Jersey	Bergen	America/New_York	18001	2590
Madison	IN	Indiana	Jefferson	America/Indiana/Indianapolis	17984	2591
Santa Fe Springs	CA	California	Los Angeles	America/Los_Angeles	17983	2592
Burke Centre	VA	Virginia	Fairfax	America/New_York	17972	2593
Anacortes	WA	Washington	Skagit	America/Los_Angeles	17958	2594
Lenoir	NC	North Carolina	Caldwell	America/New_York	17946	2595
Gretna	LA	Louisiana	Jefferson	America/Chicago	17938	2596
Lackawanna	NY	New York	Erie	America/New_York	17937	2597
Apollo Beach	FL	Florida	Hillsborough	America/New_York	17932	2598
Berea	KY	Kentucky	Madison	America/New_York	17932	2599
Sunnyside	WA	Washington	Yakima	America/Los_Angeles	17930	2600
Marco Island	FL	Florida	Collier	America/New_York	17907	2601
Beltsville	MD	Maryland	Prince George's	America/New_York	17893	2602
Huntington	IN	Indiana	Huntington	America/Indiana/Indianapolis	17889	2603
Ada	OK	Oklahoma	Pontotoc	America/Chicago	17889	2604
Cary	IL	Illinois	McHenry	America/Chicago	17888	2605
Takoma Park	MD	Maryland	Montgomery	America/New_York	17888	2606
Sudley	VA	Virginia	Prince William	America/New_York	17852	2607
Safety Harbor	FL	Florida	Pinellas	America/New_York	17847	2608
Colonial Heights	VA	Virginia	Colonial Heights	America/New_York	17833	2609
Salem	OH	Ohio	Columbiana	America/New_York	17832	2610
White Settlement	TX	Texas	Tarrant	America/Chicago	17831	2611
Seabrook	MD	Maryland	Prince George's	America/New_York	17811	2612
Fayetteville	GA	Georgia	Fayette	America/New_York	17805	2613
Tinton Falls	NJ	New Jersey	Monmouth	America/New_York	17792	2614
Tullahoma	TN	Tennessee	Coffee	America/Chicago	17784	2615
Springfield	TN	Tennessee	Robertson	America/Chicago	17780	2616
Lithia Springs	GA	Georgia	Douglas	America/New_York	17775	2617
Marion	IL	Illinois	Williamson	America/Chicago	17765	2618
Jenison	MI	Michigan	Ottawa	America/Detroit	17761	2619
Wallingford Center	CT	Connecticut	New Haven	America/New_York	17759	2620
Sartell	MN	Minnesota	Stearns	America/Chicago	17755	2621
Menasha	WI	Wisconsin	Winnebago	America/Chicago	17751	2622
Cimarron Hills	CO	Colorado	El Paso	America/Denver	17747	2623
Easton	MD	Maryland	Talbot	America/New_York	17745	2624
Ojus	FL	Florida	Miami-Dade	America/New_York	17730	2625
Hinsdale	IL	Illinois	DuPage	America/Chicago	17708	2626
Fish Hawk	FL	Florida	Hillsborough	America/New_York	17701	2627
Maryland City	MD	Maryland	Anne Arundel	America/New_York	17699	2628
Ocean Springs	MS	Mississippi	Jackson	America/Chicago	17685	2629
Radford	VA	Virginia	Radford	America/New_York	17661	2630
Centerville	UT	Utah	Davis	America/Denver	17660	2631
Godfrey	IL	Illinois	Madison	America/Chicago	17653	2632
Concord	MO	Missouri	St. Louis	America/Chicago	17653	2633
Greenfield	CA	California	Monterey	America/Los_Angeles	17650	2634
Harrison	NJ	New Jersey	Hudson	America/New_York	17646	2635
Pampa	TX	Texas	Gray	America/Chicago	17644	2636
Moraga	CA	California	Contra Costa	America/Los_Angeles	17633	2637
Ferndale	MD	Maryland	Anne Arundel	America/New_York	17630	2638
Rosedale	CA	California	Kern	America/Los_Angeles	17606	2639
Bostonia	CA	California	San Diego	America/Los_Angeles	17603	2640
San Carlos Park	FL	Florida	Lee	America/New_York	17600	2641
Avon	IN	Indiana	Hendricks	America/Indiana/Indianapolis	17571	2642
St. Michael	MN	Minnesota	Wright	America/Chicago	17568	2643
Glenvar Heights	FL	Florida	Miami-Dade	America/New_York	17563	2644
Albert Lea	MN	Minnesota	Freeborn	America/Chicago	17561	2645
Fort Mill	SC	South Carolina	York	America/New_York	17560	2646
Wahiawa	HI	Hawaii	Honolulu	Pacific/Honolulu	17558	2647
Maitland	FL	Florida	Orange	America/New_York	17557	2648
Tallmadge	OH	Ohio	Summit	America/New_York	17555	2649
Imperial	CA	California	Imperial	America/Los_Angeles	17553	2650
Willimantic	CT	Connecticut	Windham	America/New_York	17553	2651
South Houston	TX	Texas	Harris	America/Chicago	17546	2652
Zachary	LA	Louisiana	East Baton Rouge	America/Chicago	17541	2653
Anoka	MN	Minnesota	Anoka	America/Chicago	17525	2654
Sayre	PA	Pennsylvania	Bradford	America/New_York	17503	2655
Five Forks	SC	South Carolina	Greenville	America/New_York	17503	2656
Nederland	TX	Texas	Jefferson	America/Chicago	17494	2657
Colonia	NJ	New Jersey	Middlesex	America/New_York	17489	2658
Vincent	CA	California	Los Angeles	America/Los_Angeles	17488	2659
North Adams	MA	Massachusetts	Berkshire	America/New_York	17480	2660
Lindenwold	NJ	New Jersey	Camden	America/New_York	17474	2661
Amesbury Town	MA	Massachusetts	Essex	America/New_York	17460	2662
Bon Air	VA	Virginia	Chesterfield	America/New_York	17431	2663
Oneonta	NY	New York	Otsego	America/New_York	17425	2664
Martinsburg	WV	West Virginia	Berkeley	America/New_York	17407	2665
Buckhall	VA	Virginia	Prince William	America/New_York	17402	2666
Butner	NC	North Carolina	Granville	America/New_York	17397	2667
Woodmere	NY	New York	Nassau	America/New_York	17379	2668
Lincoln	IL	Illinois	Logan	America/Chicago	17363	2669
Palos Hills	IL	Illinois	Cook	America/Chicago	17361	2670
Lynden	WA	Washington	Whatcom	America/Los_Angeles	17343	2671
Mesquite	NV	Nevada	Clark	America/Los_Angeles	17340	2672
Crossville	TN	Tennessee	Cumberland	America/Chicago	17329	2673
Redland	MD	Maryland	Montgomery	America/New_York	17320	2674
Sylacauga	AL	Alabama	Talladega	America/Chicago	17310	2675
North Canton	OH	Ohio	Stark	America/New_York	17293	2676
Portland	TX	Texas	San Patricio	America/Chicago	17290	2677
Pendleton	OR	Oregon	Umatilla	America/Los_Angeles	17285	2678
Alton	TX	Texas	Hidalgo	America/Chicago	17281	2679
Ashwaubenon	WI	Wisconsin	Brown	America/Chicago	17274	2680
Massapequa Park	NY	New York	Nassau	America/New_York	17269	2681
Americus	GA	Georgia	Sumter	America/New_York	17269	2682
Shippensburg	PA	Pennsylvania	Cumberland	America/New_York	17268	2683
West Columbia	SC	South Carolina	Lexington	America/New_York	17268	2684
St. John	IN	Indiana	Lake	America/Chicago	17262	2685
Versailles	KY	Kentucky	Woodford	America/New_York	17253	2686
Shorewood	IL	Illinois	Will	America/Chicago	17252	2687
Merrifield	VA	Virginia	Fairfax	America/New_York	17246	2688
Knik-Fairview	AK	Alaska	Matanuska-Susitna	America/Anchorage	17206	2689
East Cleveland	OH	Ohio	Cuyahoga	America/New_York	17190	2690
North Babylon	NY	New York	Suffolk	America/New_York	17185	2691
Laurel	VA	Virginia	Henrico	America/New_York	17179	2692
Clive	IA	Iowa	Polk	America/Chicago	17175	2693
Dallas	OR	Oregon	Polk	America/Los_Angeles	17149	2694
Yauco	PR	Puerto Rico	Yauco	America/Puerto_Rico	17132	2695
La Vista	NE	Nebraska	Sarpy	America/Chicago	17119	2696
South Ogden	UT	Utah	Weber	America/Denver	17104	2697
Wolf Trap	VA	Virginia	Fairfax	America/New_York	17089	2698
Dickson	TN	Tennessee	Dickson	America/Chicago	17088	2699
Kingsland	GA	Georgia	Camden	America/New_York	17080	2700
Lemont	IL	Illinois	Cook	America/Chicago	17078	2701
Sunland Park	NM	New Mexico	Doña Ana	America/Denver	17064	2702
Streator	IL	Illinois	LaSalle	America/Chicago	17053	2703
Cedar Mill	OR	Oregon	Washington	America/Los_Angeles	17053	2704
El Reno	OK	Oklahoma	Canadian	America/Chicago	17050	2705
Bethpage	NY	New York	Nassau	America/New_York	17019	2706
Wailuku	HI	Hawaii	Maui	Pacific/Honolulu	16998	2707
Fort Hunt	VA	Virginia	Fairfax	America/New_York	16981	2708
McKinleyville	CA	California	Humboldt	America/Los_Angeles	16966	2709
Wayne	MI	Michigan	Wayne	America/Detroit	16950	2710
North Decatur	GA	Georgia	DeKalb	America/New_York	16947	2711
Phoenixville	PA	Pennsylvania	Chester	America/New_York	16946	2712
Florence	AZ	Arizona	Pinal	America/Phoenix	16938	2713
Vero Beach	FL	Florida	Indian River	America/New_York	16922	2714
Glenmont	MD	Maryland	Montgomery	America/New_York	16920	2715
Brenham	TX	Texas	Washington	America/Chicago	16916	2716
Southbridge Town	MA	Massachusetts	Worcester	America/New_York	16914	2717
Lemay	MO	Missouri	St. Louis	America/Chicago	16912	2718
Batavia	NY	New York	Genesee	America/New_York	16909	2719
Artesia	CA	California	Los Angeles	America/Los_Angeles	16907	2720
Albemarle	NC	North Carolina	Stanly	America/New_York	16903	2721
Cohoes	NY	New York	Albany	America/New_York	16878	2722
New Milford	NJ	New Jersey	Bergen	America/New_York	16871	2723
Goodlettsville	TN	Tennessee	Davidson	America/Chicago	16870	2724
Tavares	FL	Florida	Lake	America/New_York	16868	2725
Lock Haven	PA	Pennsylvania	Clinton	America/New_York	16858	2726
El Segundo	CA	California	Los Angeles	America/Los_Angeles	16856	2727
Norcross	GA	Georgia	Gwinnett	America/New_York	16848	2728
Myrtle Grove	FL	Florida	Escambia	America/Chicago	16842	2729
Neabsco	VA	Virginia	Prince William	America/New_York	16842	2730
Morris	IL	Illinois	Grundy	America/Chicago	16837	2731
Washington	IL	Illinois	Tazewell	America/Chicago	16814	2732
Clayton	MO	Missouri	St. Louis	America/Chicago	16808	2733
Estelle	LA	Louisiana	Jefferson	America/Chicago	16794	2734
Bristol	VA	Virginia	Bristol	America/New_York	16793	2735
Troy	AL	Alabama	Pike	America/Chicago	16785	2736
Burlington	KY	Kentucky	Boone	America/New_York	16779	2737
Hybla Valley	VA	Virginia	Fairfax	America/New_York	16771	2738
La Marque	TX	Texas	Galveston	America/Chicago	16769	2739
Otsego	MN	Minnesota	Wright	America/Chicago	16758	2740
Buffalo	MN	Minnesota	Wright	America/Chicago	16747	2741
Solvang	CA	California	Santa Barbara	America/Los_Angeles	16744	2742
Mercedes	TX	Texas	Hidalgo	America/Chicago	16737	2743
Terrell	TX	Texas	Kaufman	America/Chicago	16736	2744
Kings Park	NY	New York	Suffolk	America/New_York	16736	2745
Bemidji	MN	Minnesota	Beltrami	America/Chicago	16736	2746
Oconomowoc	WI	Wisconsin	Waukesha	America/Chicago	16720	2747
Seagoville	TX	Texas	Dallas	America/Chicago	16718	2748
Nipomo	CA	California	San Luis Obispo	America/Los_Angeles	16709	2749
Groveton	VA	Virginia	Fairfax	America/New_York	16707	2750
Mount Pleasant	TX	Texas	Titus	America/Chicago	16702	2751
Perry	GA	Georgia	Houston	America/New_York	16687	2752
Lake Placid	FL	Florida	Highlands	America/New_York	16686	2753
Valle Vista	CA	California	Riverside	America/Los_Angeles	16675	2754
Clemson	SC	South Carolina	Pickens	America/New_York	16652	2755
Eden	NC	North Carolina	Rockingham	America/New_York	16651	2756
Four Corners	OR	Oregon	Marion	America/Los_Angeles	16651	2757
Oak Grove	OR	Oregon	Clackamas	America/Los_Angeles	16651	2758
Donna	TX	Texas	Hidalgo	America/Chicago	16641	2759
Brownsville	FL	Florida	Miami-Dade	America/New_York	16618	2760
Lakeport	CA	California	Lake	America/Los_Angeles	16617	2761
Anna	TX	Texas	Collin	America/Chicago	16616	2762
Country Walk	FL	Florida	Miami-Dade	America/New_York	16604	2763
Coldwater	MI	Michigan	Branch	America/Detroit	16598	2764
Manassas Park	VA	Virginia	Manassas Park	America/New_York	16594	2765
Lansdale	PA	Pennsylvania	Montgomery	America/New_York	16591	2766
Fairview Heights	IL	Illinois	St. Clair	America/Chicago	16591	2767
Highland Village	TX	Texas	Denton	America/Chicago	16590	2768
Country Club Hills	IL	Illinois	Cook	America/Chicago	16567	2769
Troutdale	OR	Oregon	Multnomah	America/Los_Angeles	16557	2770
Mountain Home	ID	Idaho	Elmore	America/Boise	16555	2771
Vienna	VA	Virginia	Fairfax	America/New_York	16547	2772
Stuart	FL	Florida	Martin	America/New_York	16546	2773
Ham Lake	MN	Minnesota	Anoka	America/Chicago	16531	2774
Woodcrest	CA	California	Riverside	America/Los_Angeles	16530	2775
Centralia	IL	Illinois	Marion	America/Chicago	16528	2776
Morganton	NC	North Carolina	Burke	America/New_York	16522	2777
Lindsay	CA	California	Tulare	America/Los_Angeles	16518	2778
Ladson	SC	South Carolina	Berkeley	America/New_York	16514	2779
Yelm	WA	Washington	Thurston	America/Los_Angeles	16507	2780
Hazel Park	MI	Michigan	Oakland	America/Detroit	16492	2781
Opa-locka	FL	Florida	Miami-Dade	America/New_York	16482	2782
Lake Mary	FL	Florida	Seminole	America/New_York	16477	2783
Westchester	IL	Illinois	Cook	America/Chicago	16464	2784
Spanish Springs	NV	Nevada	Washoe	America/Los_Angeles	16461	2785
Riverdale	GA	Georgia	Clayton	America/New_York	16442	2786
Douglas	AZ	Arizona	Cochise	America/Phoenix	16441	2787
Port Jervis	NY	New York	Orange	America/New_York	16413	2788
Wendell	NC	North Carolina	Wake	America/New_York	16411	2789
McComb	MS	Mississippi	Pike	America/Chicago	16401	2790
Blytheville	AR	Arkansas	Mississippi	America/Chicago	16391	2791
Sarasota Springs	FL	Florida	Sarasota	America/New_York	16389	2792
Sikeston	MO	Missouri	Scott	America/Chicago	16374	2793
Streetsboro	OH	Ohio	Portage	America/New_York	16368	2794
South River	NJ	New Jersey	Middlesex	America/New_York	16352	2795
Glen Allen	VA	Virginia	Henrico	America/New_York	16342	2796
Bridgeview	IL	Illinois	Cook	America/Chicago	16338	2797
Kingstowne	VA	Virginia	Fairfax	America/New_York	16335	2798
Center Point	AL	Alabama	Jefferson	America/Chicago	16316	2799
Mount Clemens	MI	Michigan	Macomb	America/Detroit	16315	2800
Sienna Plantation	TX	Texas	Fort Bend	America/Chicago	16313	2801
North Myrtle Beach	SC	South Carolina	Horry	America/New_York	16313	2802
Fort Leonard Wood	MO	Missouri	Pulaski	America/Chicago	16310	2803
Bastrop	TX	Texas	Bastrop	America/Chicago	16308	2804
Morton	IL	Illinois	Tazewell	America/Chicago	16304	2805
Republic	MO	Missouri	Greene	America/Chicago	16297	2806
Fairview Park	OH	Ohio	Cuyahoga	America/New_York	16295	2807
Dixon	IL	Illinois	Lee	America/Chicago	16291	2808
Three Lakes	FL	Florida	Miami-Dade	America/New_York	16269	2809
Fort Thomas	KY	Kentucky	Campbell	America/New_York	16266	2810
Jasper	IN	Indiana	Dubois	America/Indiana/Vincennes	16265	2811
New Port Richey	FL	Florida	Pasco	America/New_York	16259	2812
Ocean Acres	NJ	New Jersey	Ocean	America/New_York	16230	2813
Alma	MI	Michigan	Gratiot	America/Detroit	16227	2814
Avocado Heights	CA	California	Los Angeles	America/Los_Angeles	16216	2815
Laguna Woods	CA	California	Orange	America/Los_Angeles	16203	2816
Tanque Verde	AZ	Arizona	Pima	America/Phoenix	16200	2817
Prospect Heights	IL	Illinois	Cook	America/Chicago	16183	2818
Burley	ID	Idaho	Cassia	America/Boise	16178	2819
Athens	TN	Tennessee	McMinn	America/New_York	16173	2820
Parkway	CA	California	Sacramento	America/Los_Angeles	16169	2821
Buda	TX	Texas	Hays	America/Chicago	16166	2822
Gainesville	TX	Texas	Cooke	America/Chicago	16158	2823
Monroe	GA	Georgia	Walton	America/New_York	16156	2824
Griffith	IN	Indiana	Lake	America/Chicago	16155	2825
Sayville	NY	New York	Suffolk	America/New_York	16146	2826
Taylor	TX	Texas	Williamson	America/Chicago	16141	2827
Washington	NC	North Carolina	Beaufort	America/New_York	16141	2828
Hillcrest Heights	MD	Maryland	Prince George's	America/New_York	16140	2829
Hope Mills	NC	North Carolina	Cumberland	America/New_York	16138	2830
Pearl River	NY	New York	Rockland	America/New_York	16119	2831
Highland Springs	VA	Virginia	Henrico	America/New_York	16112	2832
Floral Park	NY	New York	Nassau	America/New_York	16106	2833
Upper Grand Lagoon	FL	Florida	Bay	America/Chicago	16097	2834
Roosevelt	NY	New York	Nassau	America/New_York	16094	2835
Kaukauna	WI	Wisconsin	Outagamie	America/Chicago	16089	2836
Parole	MD	Maryland	Anne Arundel	America/New_York	16087	2837
Frankfort	IN	Indiana	Clinton	America/Indiana/Indianapolis	16082	2838
Storrs	CT	Connecticut	Tolland	America/New_York	16080	2839
Lake Wales	FL	Florida	Polk	America/New_York	16069	2840
Boerne	TX	Texas	Kendall	America/Chicago	16053	2841
Easthampton Town	MA	Massachusetts	Hampshire	America/New_York	16053	2842
Aberdeen	MD	Maryland	Harford	America/New_York	16052	2843
Donaldsonville	LA	Louisiana	Ascension	America/Chicago	16038	2844
Port Washington	NY	New York	Nassau	America/New_York	16037	2845
Madison	NJ	New Jersey	Morris	America/New_York	16036	2846
East Rancho Dominguez	CA	California	Los Angeles	America/Los_Angeles	16030	2847
Picayune	MS	Mississippi	Pearl River	America/Chicago	16029	2848
Conyers	GA	Georgia	Rockdale	America/New_York	16018	2849
Gun Barrel City	TX	Texas	Henderson	America/Chicago	16016	2850
North Arlington	NJ	New Jersey	Bergen	America/New_York	16012	2851
Rye	NY	New York	Westchester	America/New_York	16012	2852
Welby	CO	Colorado	Adams	America/Denver	16005	2853
Cherryland	CA	California	Alameda	America/Los_Angeles	16002	2854
Palmetto Estates	FL	Florida	Miami-Dade	America/New_York	16001	2855
Humble	TX	Texas	Harris	America/Chicago	16000	2856
Camano	WA	Washington	Island	America/Los_Angeles	15992	2857
Aurora	OH	Ohio	Portage	America/New_York	15985	2858
Hernando	MS	Mississippi	DeSoto	America/Chicago	15984	2859
Pinewood	FL	Florida	Miami-Dade	America/New_York	15978	2860
Belgrade	MT	Montana	Gallatin	America/Denver	15978	2861
Chickasha	OK	Oklahoma	Grady	America/Chicago	15977	2862
Auburndale	FL	Florida	Polk	America/New_York	15976	2863
Grandville	MI	Michigan	Kent	America/Detroit	15973	2864
Belvedere Park	GA	Georgia	DeKalb	America/New_York	15955	2865
Kirksville	MO	Missouri	Adair	America/Chicago	15945	2866
Dyer	IN	Indiana	Lake	America/Chicago	15944	2867
Lake St. Louis	MO	Missouri	St. Charles	America/Chicago	15939	2868
Fords	NJ	New Jersey	Middlesex	America/New_York	15918	2869
Walnut Park	CA	California	Los Angeles	America/Los_Angeles	15918	2870
Coalinga	CA	California	Fresno	America/Los_Angeles	15918	2871
Adelphi	MD	Maryland	Prince George's	America/New_York	15901	2872
Fillmore	CA	California	Ventura	America/Los_Angeles	15898	2873
Crescent City	CA	California	Del Norte	America/Los_Angeles	15889	2874
Sunset	FL	Florida	Miami-Dade	America/New_York	15878	2875
River Falls	WI	Wisconsin	Pierce	America/Chicago	15876	2876
Fallon	NV	Nevada	Churchill	America/Los_Angeles	15870	2877
King City	CA	California	Monterey	America/Los_Angeles	15865	2878
Knightdale	NC	North Carolina	Wake	America/New_York	15852	2879
East San Gabriel	CA	California	Los Angeles	America/Los_Angeles	15835	2880
Live Oak	TX	Texas	Bexar	America/Chicago	15823	2881
Houghton	MI	Michigan	Houghton	America/Detroit	15815	2882
Shively	KY	Kentucky	Jefferson	America/Kentucky/Louisville	15803	2883
Groves	TX	Texas	Jefferson	America/Chicago	15772	2884
Asbury Park	NJ	New Jersey	Monmouth	America/New_York	15770	2885
Bellmore	NY	New York	Nassau	America/New_York	15770	2886
Southchase	FL	Florida	Orange	America/New_York	15767	2887
West Lealman	FL	Florida	Pinellas	America/New_York	15759	2888
Clearlake	CA	California	Lake	America/Los_Angeles	15754	2889
Harrisburg	NC	North Carolina	Cabarrus	America/New_York	15731	2890
Pecan Grove	TX	Texas	Fort Bend	America/Chicago	15725	2891
La Palma	CA	California	Orange	America/Los_Angeles	15725	2892
Greenwood Village	CO	Colorado	Arapahoe	America/Denver	15724	2893
Miami	OK	Oklahoma	Ottawa	America/Chicago	15721	2894
Los Osos	CA	California	San Luis Obispo	America/Los_Angeles	15717	2895
Hood River	OR	Oregon	Hood River	America/Los_Angeles	15717	2896
Cutlerville	MI	Michigan	Kent	America/Detroit	15715	2897
Washougal	WA	Washington	Clark	America/Los_Angeles	15714	2898
Overland	MO	Missouri	St. Louis	America/Chicago	15711	2899
Pacific Grove	CA	California	Monterey	America/Los_Angeles	15701	2900
Bellevue	WI	Wisconsin	Brown	America/Chicago	15690	2901
Ripon	CA	California	San Joaquin	America/Los_Angeles	15680	2902
Mount Vernon	IL	Illinois	Jefferson	America/Chicago	15675	2903
Circleville	OH	Ohio	Pickaway	America/New_York	15660	2904
Elkton	MD	Maryland	Cecil	America/New_York	15655	2905
Stallings	NC	North Carolina	Union	America/New_York	15650	2906
East Riverdale	MD	Maryland	Prince George's	America/New_York	15648	2907
Long Beach	MS	Mississippi	Harrison	America/Chicago	15645	2908
Mount Holly	NC	North Carolina	Gaston	America/New_York	15638	2909
Hermitage	PA	Pennsylvania	Mercer	America/New_York	15638	2910
Seven Oaks	SC	South Carolina	Lexington	America/New_York	15634	2911
West University Place	TX	Texas	Harris	America/Chicago	15611	2912
Lamont	CA	California	Kern	America/Los_Angeles	15600	2913
Sierra Vista Southeast	AZ	Arizona	Cochise	America/Phoenix	15594	2914
Great Falls	VA	Virginia	Fairfax	America/New_York	15592	2915
Middleburg Heights	OH	Ohio	Cuyahoga	America/New_York	15590	2916
North New Hyde Park	NY	New York	Nassau	America/New_York	15588	2917
La Grange	IL	Illinois	Cook	America/Chicago	15584	2918
Lebanon	IN	Indiana	Boone	America/Indiana/Indianapolis	15580	2919
Dunn	NC	North Carolina	Harnett	America/New_York	15579	2920
Mastic	NY	New York	Suffolk	America/New_York	15577	2921
Clarksdale	MS	Mississippi	Coahoma	America/Chicago	15577	2922
Pataskala	OH	Ohio	Licking	America/New_York	15569	2923
New Haven	IN	Indiana	Allen	America/Indiana/Indianapolis	15563	2924
Grosse Pointe Woods	MI	Michigan	Wayne	America/Detroit	15563	2925
Wilkinsburg	PA	Pennsylvania	Allegheny	America/New_York	15557	2926
Candelaria	PR	Puerto Rico	Toa Baja	America/Puerto_Rico	15548	2927
Ammon	ID	Idaho	Bonneville	America/Boise	15543	2928
Washington	NJ	New Jersey	Warren	America/New_York	15536	2929
Discovery Bay	CA	California	Contra Costa	America/Los_Angeles	15528	2930
Alamo	CA	California	Contra Costa	America/Los_Angeles	15524	2931
Fairburn	GA	Georgia	Fulton	America/New_York	15523	2932
Great Bend	KS	Kansas	Barton	America/Chicago	15522	2933
Newton	IA	Iowa	Jasper	America/Chicago	15508	2934
Pulaski	VA	Virginia	Pulaski	America/New_York	15499	2935
Westbury	NY	New York	Nassau	America/New_York	15496	2936
Cambridge	MN	Minnesota	Isanti	America/Chicago	15489	2937
Cloverly	MD	Maryland	Montgomery	America/New_York	15485	2938
Carthage	MO	Missouri	Jasper	America/Chicago	15468	2939
Canyon	TX	Texas	Randall	America/Chicago	15467	2940
Hueytown	AL	Alabama	Jefferson	America/Chicago	15463	2941
Addison	TX	Texas	Dallas	America/Chicago	15461	2942
North Fair Oaks	CA	California	San Mateo	America/Los_Angeles	15457	2943
McMinnville	TN	Tennessee	Warren	America/Chicago	15452	2944
Indianola	IA	Iowa	Warren	America/Chicago	15450	2945
Hereford	TX	Texas	Deaf Smith	America/Chicago	15443	2946
Northview	MI	Michigan	Kent	America/Detroit	15427	2947
Damascus	MD	Maryland	Montgomery	America/New_York	15426	2948
Seaford	NY	New York	Nassau	America/New_York	15408	2949
Gantt	SC	South Carolina	Greenville	America/New_York	15396	2950
Crowley	TX	Texas	Tarrant	America/Chicago	15392	2951
Blackfoot	ID	Idaho	Bingham	America/Boise	15385	2952
Cayey	PR	Puerto Rico	Cayey	America/Puerto_Rico	15368	2953
Eggertsville	NY	New York	Erie	America/New_York	15367	2954
Villa Rica	GA	Georgia	Carroll	America/New_York	15348	2955
Bradley	IL	Illinois	Kankakee	America/Chicago	15347	2956
Bay Village	OH	Ohio	Cuyahoga	America/New_York	15347	2957
Berkley	MI	Michigan	Oakland	America/Detroit	15334	2958
Wilmington Island	GA	Georgia	Chatham	America/New_York	15332	2959
Millbrook	AL	Alabama	Elmore	America/Chicago	15321	2960
Lady Lake	FL	Florida	Lake	America/New_York	15320	2961
Fullerton	PA	Pennsylvania	Lehigh	America/New_York	15307	2962
White Center	WA	Washington	King	America/Los_Angeles	15303	2963
Mitchell	SD	South Dakota	Davison	America/Chicago	15300	2964
South Farmingdale	NY	New York	Nassau	America/New_York	15297	2965
Gainesville	VA	Virginia	Prince William	America/New_York	15286	2966
Glasgow	DE	Delaware	New Castle	America/New_York	15283	2967
Stanford	CA	California	Santa Clara	America/Los_Angeles	15280	2968
East Highland Park	VA	Virginia	Henrico	America/New_York	15279	2969
Willow Grove	PA	Pennsylvania	Montgomery	America/New_York	15256	2970
Farmingville	NY	New York	Suffolk	America/New_York	15253	2971
Niceville	FL	Florida	Okaloosa	America/Chicago	15252	2972
Parlier	CA	California	Fresno	America/Los_Angeles	15248	2973
Jamestown	ND	North Dakota	Stutsman	America/Chicago	15247	2974
Ramsey	NJ	New Jersey	Bergen	America/New_York	15245	2975
Galion	OH	Ohio	Crawford	America/New_York	15240	2976
Bull Run	VA	Virginia	Prince William	America/New_York	15238	2977
McFarland	CA	California	Kern	America/Los_Angeles	15237	2978
Rio Linda	CA	California	Sacramento	America/Los_Angeles	15231	2979
Rossville	MD	Maryland	Baltimore	America/New_York	15222	2980
Kenmore	NY	New York	Erie	America/New_York	15220	2981
Sterling	CO	Colorado	Logan	America/Denver	15202	2982
Depew	NY	New York	Erie	America/New_York	15196	2983
Washington Court House	OH	Ohio	Fayette	America/New_York	15195	2984
Williamstown	NJ	New Jersey	Gloucester	America/New_York	15194	2985
Archer Lodge	NC	North Carolina	Johnston	America/New_York	15183	2986
Englewood	FL	Florida	Sarasota	America/New_York	15172	2987
Weston	WI	Wisconsin	Marathon	America/Chicago	15170	2988
Lakeway	TX	Texas	Travis	America/Chicago	15157	2989
West Park	FL	Florida	Broward	America/New_York	15156	2990
Waxhaw	NC	North Carolina	Union	America/New_York	15150	2991
Callaway	FL	Florida	Bay	America/Chicago	15147	2992
Taft	CA	California	Kern	America/Los_Angeles	15146	2993
Phelan	CA	California	San Bernardino	America/Los_Angeles	15126	2994
Port Isabel	TX	Texas	Cameron	America/Chicago	15116	2995
Purcellville	VA	Virginia	Loudoun	America/New_York	15115	2996
Murraysville	NC	North Carolina	New Hanover	America/New_York	15114	2997
Franklin Park	NJ	New Jersey	Somerset	America/New_York	15093	2998
Troy	MO	Missouri	Lincoln	America/Chicago	15084	2999
Lake Geneva	WI	Wisconsin	Walworth	America/Chicago	15081	3000
Aldine	TX	Texas	Harris	America/Chicago	15080	3001
Hartford	WI	Wisconsin	Washington	America/Chicago	15067	3002
Longwood	FL	Florida	Seminole	America/New_York	15064	3003
Vandalia	OH	Ohio	Montgomery	America/New_York	15056	3004
Powder Springs	GA	Georgia	Cobb	America/New_York	15055	3005
Ewa Beach	HI	Hawaii	Honolulu	Pacific/Honolulu	15050	3006
Newport	KY	Kentucky	Campbell	America/New_York	15036	3007
World Golf Village	FL	Florida	St. Johns	America/New_York	15028	3008
Fort Carson	CO	Colorado	El Paso	America/Denver	15018	3009
Red Hill	SC	South Carolina	Horry	America/New_York	15018	3010
La Grande	OR	Oregon	Union	America/Los_Angeles	15016	3011
Mountain House	CA	California	San Joaquin	America/Los_Angeles	15013	3012
Andrews	TX	Texas	Andrews	America/Chicago	15002	3013
Las Vegas	NM	New Mexico	San Miguel	America/Denver	14985	3014
Yazoo City	MS	Mississippi	Yazoo	America/Chicago	14981	3015
Mebane	NC	North Carolina	Alamance	America/New_York	14976	3016
Flowing Wells	AZ	Arizona	Pima	America/Phoenix	14975	3017
Berea	SC	South Carolina	Greenville	America/New_York	14969	3018
College Park	GA	Georgia	Fulton	America/New_York	14962	3019
Cleveland	MS	Mississippi	Bolivar	America/Chicago	14953	3020
Jackson	MO	Missouri	Cape Girardeau	America/Chicago	14935	3021
Dumas	TX	Texas	Moore	America/Chicago	14934	3022
Cambridge	OH	Ohio	Guernsey	America/New_York	14914	3023
Tonawanda	NY	New York	Erie	America/New_York	14907	3024
Tenafly	NJ	New Jersey	Bergen	America/New_York	14903	3025
New Freedom	PA	Pennsylvania	York	America/New_York	14885	3026
Kerman	CA	California	Fresno	America/Los_Angeles	14872	3027
Chubbuck	ID	Idaho	Bannock	America/Boise	14872	3028
Buford	GA	Georgia	Gwinnett	America/New_York	14871	3029
Hartsville	SC	South Carolina	Darlington	America/New_York	14859	3030
New River	AZ	Arizona	Maricopa	America/Phoenix	14850	3031
Bedford	IN	Indiana	Lawrence	America/Indiana/Indianapolis	14848	3032
Brooklyn Park	MD	Maryland	Anne Arundel	America/New_York	14836	3033
Bellair-Meadowbrook Terrace	FL	Florida	Clay	America/New_York	14833	3034
Hugo	MN	Minnesota	Washington	America/Chicago	14831	3035
Graham	NC	North Carolina	Alamance	America/New_York	14817	3036
Pierre	SD	South Dakota	Hughes	America/Chicago	14806	3037
Sun Lakes	AZ	Arizona	Maricopa	America/Phoenix	14803	3038
Park City	UT	Utah	Summit	America/Denver	14803	3039
Coto de Caza	CA	California	Orange	America/Los_Angeles	14802	3040
Alpine	CA	California	San Diego	America/Los_Angeles	14798	3041
Beech Grove	IN	Indiana	Marion	America/Indiana/Indianapolis	14798	3042
Hershey	PA	Pennsylvania	Dauphin	America/New_York	14796	3043
Canton	MS	Mississippi	Madison	America/Chicago	14784	3044
Bradley Gardens	NJ	New Jersey	Somerset	America/New_York	14775	3045
Mastic Beach	NY	New York	Suffolk	America/New_York	14765	3046
Boulder City	NV	Nevada	Clark	America/Los_Angeles	14744	3047
Harrison	OH	Ohio	Hamilton	America/New_York	14743	3048
Henderson	TX	Texas	Rusk	America/Chicago	14734	3049
Sulphur Springs	TX	Texas	Hopkins	America/Chicago	14731	3050
Thibodaux	LA	Louisiana	Lafourche	America/Chicago	14716	3051
Forest City	FL	Florida	Seminole	America/New_York	14705	3052
Azalea Park	FL	Florida	Orange	America/New_York	14704	3053
Yankton	SD	South Dakota	Yankton	America/Chicago	14702	3054
Hayden	ID	Idaho	Kootenai	America/Los_Angeles	14696	3055
El Dorado	KS	Kansas	Butler	America/Chicago	14695	3056
Astoria	OR	Oregon	Clatsop	America/Los_Angeles	14691	3057
Campbellsville	KY	Kentucky	Taylor	America/New_York	14689	3058
Jennings	MO	Missouri	St. Louis	America/Chicago	14677	3059
Chaparral	NM	New Mexico	Doña Ana	America/Denver	14655	3060
Connersville	IN	Indiana	Fayette	America/Indiana/Indianapolis	14649	3061
Worthington	OH	Ohio	Franklin	America/New_York	14649	3062
Pleasanton	TX	Texas	Atascosa	America/Chicago	14641	3063
Midlothian	IL	Illinois	Cook	America/Chicago	14637	3064
Colesville	MD	Maryland	Montgomery	America/New_York	14636	3065
Oldsmar	FL	Florida	Pinellas	America/New_York	14620	3066
Fraser	MI	Michigan	Macomb	America/Detroit	14611	3067
London	OH	Ohio	Madison	America/New_York	14600	3068
West Richland	WA	Washington	Benton	America/Los_Angeles	14599	3069
Falls Church	VA	Virginia	Falls Church	America/New_York	14586	3070
Fort Mohave	AZ	Arizona	Mohave	America/Phoenix	14586	3071
Kings Park West	VA	Virginia	Fairfax	America/New_York	14581	3072
Saraland	AL	Alabama	Mobile	America/Chicago	14579	3073
Horsham	PA	Pennsylvania	Montgomery	America/New_York	14566	3074
Mount Washington	KY	Kentucky	Bullitt	America/New_York	14557	3075
Franklin Park	PA	Pennsylvania	Allegheny	America/New_York	14555	3076
Warren	PA	Pennsylvania	Warren	America/New_York	14553	3077
Robbinsdale	MN	Minnesota	Hennepin	America/Chicago	14547	3078
Fairview	NJ	New Jersey	Bergen	America/New_York	14540	3079
South Venice	FL	Florida	Sarasota	America/New_York	14538	3080
Jefferson Valley-Yorktown	NY	New York	Westchester	America/New_York	14536	3081
Manorville	NY	New York	Suffolk	America/New_York	14525	3082
Johnson City	NY	New York	Broome	America/New_York	14511	3083
Fostoria	OH	Ohio	Seneca	America/New_York	14495	3084
Tehachapi	CA	California	Kern	America/Los_Angeles	14494	3085
Gonzalez	FL	Florida	Escambia	America/Chicago	14493	3086
Pewaukee	WI	Wisconsin	Waukesha	America/Chicago	14479	3087
Lindenhurst	IL	Illinois	Lake	America/Chicago	14470	3088
Phillipsburg	NJ	New Jersey	Warren	America/New_York	14462	3089
El Sobrante	CA	California	Riverside	America/Los_Angeles	14454	3090
Hawaiian Gardens	CA	California	Los Angeles	America/Los_Angeles	14453	3091
Toppenish	WA	Washington	Yakima	America/Los_Angeles	14444	3092
Oak Park	CA	California	Ventura	America/Los_Angeles	14443	3093
Norridge	IL	Illinois	Cook	America/Chicago	14440	3094
Hewitt	TX	Texas	McLennan	America/Chicago	14438	3095
Jacksonville	TX	Texas	Cherokee	America/Chicago	14432	3096
Pineville	LA	Louisiana	Rapides	America/Chicago	14432	3097
Crowley	LA	Louisiana	Acadia	America/Chicago	14432	3098
Tamaqua	PA	Pennsylvania	Schuylkill	America/New_York	14432	3099
Miami Springs	FL	Florida	Miami-Dade	America/New_York	14427	3100
Salida	CA	California	Stanislaus	America/Los_Angeles	14427	3101
Gramercy	LA	Louisiana	St. James	America/Chicago	14417	3102
Payson	AZ	Arizona	Gila	America/Phoenix	14415	3103
Wauchula	FL	Florida	Hardee	America/New_York	14411	3104
Royal Kunia	HI	Hawaii	Honolulu	Pacific/Honolulu	14399	3105
Whitewater	WI	Wisconsin	Walworth	America/Chicago	14377	3106
Hartselle	AL	Alabama	Morgan	America/Chicago	14376	3107
College	AK	Alaska	Fairbanks North Star	America/Anchorage	14365	3108
Mineral Wells	TX	Texas	Palo Pinto	America/Chicago	14359	3109
Mill Valley	CA	California	Marin	America/Los_Angeles	14358	3110
Iona	FL	Florida	Lee	America/New_York	14352	3111
Metuchen	NJ	New Jersey	Middlesex	America/New_York	14352	3112
Olympia Heights	FL	Florida	Miami-Dade	America/New_York	14348	3113
Halawa	HI	Hawaii	Honolulu	Pacific/Honolulu	14338	3114
Red Wing	MN	Minnesota	Goodhue	America/Chicago	14328	3115
New Cassel	NY	New York	Nassau	America/New_York	14324	3116
Cambridge	MD	Maryland	Dorchester	America/New_York	14315	3117
Hobe Sound	FL	Florida	Martin	America/New_York	14304	3118
Hollins	VA	Virginia	Roanoke	America/New_York	14303	3119
Washington	MO	Missouri	Franklin	America/Chicago	14303	3120
Greensburg	PA	Pennsylvania	Westmoreland	America/New_York	14302	3121
Hopatcong	NJ	New Jersey	Sussex	America/New_York	14301	3122
Paradise Valley	AZ	Arizona	Maricopa	America/Phoenix	14296	3123
Oil City	PA	Pennsylvania	Venango	America/New_York	14293	3124
Beacon	NY	New York	Dutchess	America/New_York	14292	3125
Elk Plain	WA	Washington	Pierce	America/Los_Angeles	14283	3126
St. Simons	GA	Georgia	Glynn	America/New_York	14264	3127
Antioch	IL	Illinois	Lake	America/Chicago	14238	3128
Deming	NM	New Mexico	Luna	America/Denver	14231	3129
Dentsville	SC	South Carolina	Richland	America/New_York	14207	3130
Camden	SC	South Carolina	Kershaw	America/New_York	14203	3131
Moorestown-Lenola	NJ	New Jersey	Burlington	America/New_York	14192	3132
Black Forest	CO	Colorado	El Paso	America/Denver	14191	3133
Chicago Ridge	IL	Illinois	Cook	America/Chicago	14189	3134
Lemon Hill	CA	California	Sacramento	America/Los_Angeles	14185	3135
Lebanon	MO	Missouri	Laclede	America/Chicago	14182	3136
New Franklin	OH	Ohio	Summit	America/New_York	14168	3137
Highland Park	NJ	New Jersey	Middlesex	America/New_York	14167	3138
Greendale	WI	Wisconsin	Milwaukee	America/Chicago	14162	3139
Cahokia	IL	Illinois	St. Clair	America/Chicago	14154	3140
Willowick	OH	Ohio	Lake	America/New_York	14151	3141
Ionia	MI	Michigan	Ionia	America/Detroit	14151	3142
Livingston	CA	California	Merced	America/Los_Angeles	14143	3143
Raymondville	TX	Texas	Willacy	America/Chicago	14123	3144
Grovetown	GA	Georgia	Columbia	America/New_York	14112	3145
Harrison	AR	Arkansas	Boone	America/Chicago	14099	3146
Effingham	IL	Illinois	Effingham	America/Chicago	14095	3147
Cayce	SC	South Carolina	Lexington	America/New_York	14089	3148
Mountain Home	AR	Arkansas	Baxter	America/Chicago	14050	3149
Covington	GA	Georgia	Newton	America/New_York	14047	3150
Chippewa Falls	WI	Wisconsin	Chippewa	America/Chicago	14038	3151
Middlesborough	KY	Kentucky	Bell	America/New_York	14036	3152
Southern Pines	NC	North Carolina	Moore	America/New_York	14032	3153
Lockhart	FL	Florida	Orange	America/New_York	14030	3154
Collingswood	NJ	New Jersey	Camden	America/New_York	14030	3155
Ferndale	WA	Washington	Whatcom	America/Los_Angeles	14029	3156
Conway	FL	Florida	Orange	America/New_York	14026	3157
Muscle Shoals	AL	Alabama	Colbert	America/Chicago	14025	3158
Cherry Hill Mall	NJ	New Jersey	Camden	America/New_York	14020	3159
Jericho	NY	New York	Nassau	America/New_York	14017	3160
Centerton	AR	Arkansas	Benton	America/Chicago	14004	3161
Port Orchard	WA	Washington	Kitsap	America/Los_Angeles	14000	3162
Brandermill	VA	Virginia	Chesterfield	America/New_York	13999	3163
Grain Valley	MO	Missouri	Jackson	America/Chicago	13999	3164
Beach Park	IL	Illinois	Lake	America/Chicago	13998	3165
Bridgetown	OH	Ohio	Hamilton	America/New_York	13996	3166
East Wenatchee	WA	Washington	Douglas	America/Los_Angeles	13986	3167
Lakeland South	WA	Washington	King	America/Los_Angeles	13985	3168
Calera	AL	Alabama	Shelby	America/Chicago	13982	3169
Riviera Beach	MD	Maryland	Anne Arundel	America/New_York	13980	3170
Canton	IL	Illinois	Fulton	America/Chicago	13975	3171
Douglas	GA	Georgia	Coffee	America/New_York	13963	3172
Hendersonville	NC	North Carolina	Henderson	America/New_York	13957	3173
Forest Park	IL	Illinois	Cook	America/Chicago	13954	3174
Whitefish Bay	WI	Wisconsin	Milwaukee	America/Chicago	13953	3175
Hickory Hills	IL	Illinois	Cook	America/Chicago	13953	3176
Big Rapids	MI	Michigan	Mecosta	America/Detroit	13944	3177
Hidalgo	TX	Texas	Hidalgo	America/Chicago	13934	3178
Fort Lewis	WA	Washington	Pierce	America/Los_Angeles	13923	3179
Hot Springs Village	AR	Arkansas	Saline	America/Chicago	13921	3180
Mount Dora	FL	Florida	Lake	America/New_York	13919	3181
Springdale	NJ	New Jersey	Camden	America/New_York	13919	3182
Lewisville	NC	North Carolina	Forsyth	America/New_York	13916	3183
Gardendale	AL	Alabama	Jefferson	America/Chicago	13909	3184
Druid Hills	GA	Georgia	DeKalb	America/New_York	13898	3185
Baraboo	WI	Wisconsin	Sauk	America/Chicago	13894	3186
Glasgow	KY	Kentucky	Barren	America/Chicago	13894	3187
Conneaut	OH	Ohio	Ashtabula	America/New_York	13893	3188
Allouez	WI	Wisconsin	Brown	America/Chicago	13889	3189
Ephrata	PA	Pennsylvania	Lancaster	America/New_York	13888	3190
Levelland	TX	Texas	Hockley	America/Chicago	13887	3191
Rantoul	IL	Illinois	Champaign	America/Chicago	13887	3192
Middlesex	NJ	New Jersey	Middlesex	America/New_York	13870	3193
Broadlands	VA	Virginia	Loudoun	America/New_York	13862	3194
Greenlawn	NY	New York	Suffolk	America/New_York	13853	3195
Clewiston	FL	Florida	Hendry	America/New_York	13848	3196
Hazel Crest	IL	Illinois	Cook	America/Chicago	13840	3197
Wixom	MI	Michigan	Oakland	America/Detroit	13834	3198
Steamboat Springs	CO	Colorado	Routt	America/Denver	13825	3199
Roselle Park	NJ	New Jersey	Union	America/New_York	13824	3200
Fort Drum	NY	New York	Jefferson	America/New_York	13822	3201
Glenpool	OK	Oklahoma	Tulsa	America/Chicago	13817	3202
Ocean View	DE	Delaware	Sussex	America/New_York	13812	3203
River Ridge	LA	Louisiana	Jefferson	America/Chicago	13812	3204
Teays Valley	WV	West Virginia	Putnam	America/New_York	13808	3205
Wood Dale	IL	Illinois	DuPage	America/Chicago	13801	3206
Sharonville	OH	Ohio	Hamilton	America/New_York	13800	3207
Maumee	OH	Ohio	Lucas	America/New_York	13790	3208
Bexley	OH	Ohio	Franklin	America/New_York	13789	3209
Hutchinson	MN	Minnesota	McLeod	America/Chicago	13776	3210
Destin	FL	Florida	Okaloosa	America/Chicago	13768	3211
Thomaston	GA	Georgia	Upson	America/New_York	13767	3212
Waunakee	WI	Wisconsin	Dane	America/Chicago	13758	3213
North Mankato	MN	Minnesota	Nicollet	America/Chicago	13749	3214
Thonotosassa	FL	Florida	Hillsborough	America/New_York	13746	3215
Elizabethton	TN	Tennessee	Carter	America/New_York	13746	3216
Harper Woods	MI	Michigan	Wayne	America/Detroit	13746	3217
Moberly	MO	Missouri	Randolph	America/Chicago	13745	3218
Wauconda	IL	Illinois	Lake	America/Chicago	13740	3219
Whitehall	PA	Pennsylvania	Allegheny	America/New_York	13736	3220
Sauk Rapids	MN	Minnesota	Benton	America/Chicago	13725	3221
West Freehold	NJ	New Jersey	Monmouth	America/New_York	13706	3222
Seabrook	TX	Texas	Harris	America/Chicago	13696	3223
Soddy-Daisy	TN	Tennessee	Hamilton	America/New_York	13696	3224
Princeton Meadows	NJ	New Jersey	Middlesex	America/New_York	13695	3225
Okmulgee	OK	Oklahoma	Okmulgee	America/Chicago	13688	3226
Monroe	OH	Ohio	Butler	America/New_York	13686	3227
Nesconset	NY	New York	Suffolk	America/New_York	13677	3228
Hockessin	DE	Delaware	New Castle	America/New_York	13675	3229
Twentynine Palms	CA	California	San Bernardino	America/Los_Angeles	13667	3230
Palmetto	FL	Florida	Manatee	America/New_York	13664	3231
Setauket-East Setauket	NY	New York	Suffolk	America/New_York	13657	3232
Waianae	HI	Hawaii	Honolulu	Pacific/Honolulu	13639	3233
Brecksville	OH	Ohio	Cuyahoga	America/New_York	13635	3234
Grover Beach	CA	California	San Luis Obispo	America/Los_Angeles	13631	3235
Carpinteria	CA	California	Santa Barbara	America/Los_Angeles	13625	3236
DeRidder	LA	Louisiana	Beauregard	America/Chicago	13620	3237
East Islip	NY	New York	Suffolk	America/New_York	13619	3238
Atlantic Beach	FL	Florida	Duval	America/New_York	13611	3239
Glenn Dale	MD	Maryland	Prince George's	America/New_York	13609	3240
Brevard	NC	North Carolina	Transylvania	America/New_York	13606	3241
Fort Campbell North	KY	Kentucky	Christian	America/Chicago	13603	3242
Alpena	MI	Michigan	Alpena	America/Detroit	13600	3243
Belle Chasse	LA	Louisiana	Plaquemines	America/Chicago	13588	3244
East Milton	FL	Florida	Santa Rosa	America/Chicago	13586	3245
Ocean Pointe	HI	Hawaii	Honolulu	Pacific/Honolulu	13582	3246
Havre de Grace	MD	Maryland	Harford	America/New_York	13579	3247
Piney Green	NC	North Carolina	Onslow	America/New_York	13576	3248
Rincon	GA	Georgia	Effingham	America/New_York	13575	3249
Taos	NM	New Mexico	Taos	America/Denver	13574	3250
Warrington	FL	Florida	Escambia	America/Chicago	13572	3251
Washington	PA	Pennsylvania	Washington	America/New_York	13569	3252
Lone Tree	CO	Colorado	Douglas	America/Denver	13569	3253
Vadnais Heights	MN	Minnesota	Ramsey	America/Chicago	13564	3254
Lyndhurst	OH	Ohio	Cuyahoga	America/New_York	13560	3255
Brookside	DE	Delaware	New Castle	America/New_York	13557	3256
Palos Verdes Estates	CA	California	Los Angeles	America/Los_Angeles	13547	3257
Fruitville	FL	Florida	Sarasota	America/New_York	13544	3258
Gladeview	FL	Florida	Miami-Dade	America/New_York	13542	3259
Baker	LA	Louisiana	East Baton Rouge	America/Chicago	13540	3260
St. James	NY	New York	Suffolk	America/New_York	13539	3261
West Haven	UT	Utah	Weber	America/Denver	13535	3262
Swansea	IL	Illinois	St. Clair	America/Chicago	13521	3263
Richton Park	IL	Illinois	Cook	America/Chicago	13508	3264
Chesterton	IN	Indiana	Porter	America/Chicago	13506	3265
Olivehurst	CA	California	Yuba	America/Los_Angeles	13503	3266
Marshall	MN	Minnesota	Lyon	America/Chicago	13497	3267
Bluffdale	UT	Utah	Salt Lake	America/Denver	13487	3268
Spring Creek	NV	Nevada	Elko	America/Los_Angeles	13485	3269
Western Springs	IL	Illinois	Cook	America/Chicago	13482	3270
Groveland	FL	Florida	Lake	America/New_York	13477	3271
Englewood	OH	Ohio	Montgomery	America/New_York	13473	3272
Artesia	NM	New Mexico	Eddy	America/Denver	13467	3273
Newark	NY	New York	Wayne	America/New_York	13461	3274
Hampton Bays	NY	New York	Suffolk	America/New_York	13460	3275
Oatfield	OR	Oregon	Clackamas	America/Los_Angeles	13460	3276
Vidalia	GA	Georgia	Toombs	America/New_York	13459	3277
Price	UT	Utah	Carbon	America/Denver	13454	3278
Kemp Mill	MD	Maryland	Montgomery	America/New_York	13448	3279
Solana Beach	CA	California	San Diego	America/Los_Angeles	13447	3280
Santa Fe	TX	Texas	Galveston	America/Chicago	13445	3281
California	MD	Maryland	St. Mary's	America/New_York	13443	3282
Lawrenceburg	KY	Kentucky	Anderson	America/New_York	13442	3283
Jensen Beach	FL	Florida	Martin	America/New_York	13441	3284
La Grange Park	IL	Illinois	Cook	America/Chicago	13436	3285
Jasper	AL	Alabama	Walker	America/Chicago	13435	3286
Reidsville	NC	North Carolina	Rockingham	America/New_York	13428	3287
Youngsville	LA	Louisiana	Lafayette	America/Chicago	13427	3288
South Park Township	PA	Pennsylvania	Allegheny	America/New_York	13422	3289
Rendon	TX	Texas	Tarrant	America/Chicago	13418	3290
Timberlake	VA	Virginia	Campbell	America/New_York	13416	3291
Moss Point	MS	Mississippi	Jackson	America/Chicago	13401	3292
Lockhart	TX	Texas	Caldwell	America/Chicago	13399	3293
North Auburn	CA	California	Placer	America/Los_Angeles	13398	3294
Lake Forest Park	WA	Washington	King	America/Los_Angeles	13395	3295
Fortuna	CA	California	Humboldt	America/Los_Angeles	13378	3296
Newington	VA	Virginia	Fairfax	America/New_York	13376	3297
Montgomeryville	PA	Pennsylvania	Montgomery	America/New_York	13373	3298
Riverdale	IL	Illinois	Cook	America/Chicago	13355	3299
Lakeland Village	CA	California	Riverside	America/Los_Angeles	13346	3300
Shorewood	WI	Wisconsin	Milwaukee	America/Chicago	13341	3301
San Marino	CA	California	Los Angeles	America/Los_Angeles	13330	3302
Pecos	TX	Texas	Reeves	America/Chicago	13320	3303
Middleburg	FL	Florida	Clay	America/New_York	13319	3304
Dardenne Prairie	MO	Missouri	St. Charles	America/Chicago	13313	3305
New Providence	NJ	New Jersey	Union	America/New_York	13311	3306
Stony Brook	NY	New York	Suffolk	America/New_York	13311	3307
Fruita	CO	Colorado	Mesa	America/Denver	13297	3308
Franklin	LA	Louisiana	St. Mary	America/Chicago	13295	3309
Elfers	FL	Florida	Pasco	America/New_York	13294	3310
Dayton	TX	Texas	Liberty	America/Chicago	13290	3311
Kettering	MD	Maryland	Prince George's	America/New_York	13285	3312
Talladega	AL	Alabama	Talladega	America/Chicago	13280	3313
Warrenville	IL	Illinois	DuPage	America/Chicago	13272	3314
La Homa	TX	Texas	Hidalgo	America/Chicago	13263	3315
Sharon	PA	Pennsylvania	Mercer	America/New_York	13262	3316
Warrensville Heights	OH	Ohio	Cuyahoga	America/New_York	13254	3317
Dallas	GA	Georgia	Paulding	America/New_York	13240	3318
Lapeer	MI	Michigan	Lapeer	America/Detroit	13231	3319
Oakland	NJ	New Jersey	Bergen	America/New_York	13227	3320
Lahaina	HI	Hawaii	Maui	Pacific/Honolulu	13226	3321
Homosassa Springs	FL	Florida	Citrus	America/New_York	13220	3322
Clayton	OH	Ohio	Montgomery	America/New_York	13218	3323
Bensville	MD	Maryland	Charles	America/New_York	13211	3324
Kittanning	PA	Pennsylvania	Armstrong	America/New_York	13207	3325
Powell	OH	Ohio	Delaware	America/New_York	13207	3326
Globe	AZ	Arizona	Gila	America/Phoenix	13201	3327
Ardmore	PA	Pennsylvania	Montgomery	America/New_York	13196	3328
Big Bear City	CA	California	San Bernardino	America/Los_Angeles	13189	3329
Key Biscayne	FL	Florida	Miami-Dade	America/New_York	13185	3330
Four Corners	TX	Texas	Fort Bend	America/Chicago	13181	3331
Georgetown	GA	Georgia	Chatham	America/New_York	13174	3332
Huron	SD	South Dakota	Beadle	America/Chicago	13167	3333
Waimalu	HI	Hawaii	Honolulu	Pacific/Honolulu	13161	3334
Ridgefield Park	NJ	New Jersey	Bergen	America/New_York	13157	3335
Mercerville	NJ	New Jersey	Mercer	America/New_York	13157	3336
Monfort Heights	OH	Ohio	Hamilton	America/New_York	13157	3337
Bellefonte	PA	Pennsylvania	Centre	America/New_York	13141	3338
Fort Morgan	CO	Colorado	Morgan	America/Denver	13140	3339
Weigelstown	PA	Pennsylvania	York	America/New_York	13138	3340
Manatí	PR	Puerto Rico	Manatí	America/Puerto_Rico	13133	3341
McPherson	KS	Kansas	McPherson	America/Chicago	13131	3342
Coatesville	PA	Pennsylvania	Chester	America/New_York	13126	3343
Washington	IN	Indiana	Daviess	America/Indiana/Vincennes	13120	3344
Andover	KS	Kansas	Butler	America/Chicago	13114	3345
Verona	WI	Wisconsin	Dane	America/Chicago	13110	3346
Newton	NC	North Carolina	Catawba	America/New_York	13101	3347
Mounds View	MN	Minnesota	Ramsey	America/Chicago	13101	3348
Rocky Point	NY	New York	Suffolk	America/New_York	13097	3349
Worthington	MN	Minnesota	Nobles	America/Chicago	13096	3350
Short Hills	NJ	New Jersey	Essex	America/New_York	13095	3351
Lake Tapps	WA	Washington	Pierce	America/Los_Angeles	13094	3352
Shiloh	IL	Illinois	St. Clair	America/Chicago	13093	3353
Stoughton	WI	Wisconsin	Dane	America/Chicago	13091	3354
Luling	LA	Louisiana	St. Charles	America/Chicago	13091	3355
New Ulm	MN	Minnesota	Brown	America/Chicago	13088	3356
Glenn Heights	TX	Texas	Dallas	America/Chicago	13087	3357
Bonita	CA	California	San Diego	America/Los_Angeles	13085	3358
Dunmore	PA	Pennsylvania	Lackawanna	America/New_York	13072	3359
Borger	TX	Texas	Hutchinson	America/Chicago	13068	3360
New Kingman-Butler	AZ	Arizona	Mohave	America/Phoenix	13063	3361
North Palm Beach	FL	Florida	Palm Beach	America/New_York	13060	3362
Port Clinton	OH	Ohio	Ottawa	America/New_York	13046	3363
Bay St. Louis	MS	Mississippi	Hancock	America/Chicago	13046	3364
Lakeside	VA	Virginia	Henrico	America/New_York	13036	3365
Rochester	MI	Michigan	Oakland	America/Detroit	13032	3366
University Heights	OH	Ohio	Cuyahoga	America/New_York	13031	3367
Bellefontaine	OH	Ohio	Logan	America/New_York	13030	3368
Marion	NC	North Carolina	McDowell	America/New_York	13029	3369
New Carrollton	MD	Maryland	Prince George's	America/New_York	13026	3370
Martinsville	IN	Indiana	Morgan	America/Indiana/Indianapolis	13025	3371
Taylorville	IL	Illinois	Christian	America/Chicago	13017	3372
Chelsea	AL	Alabama	Shelby	America/Chicago	13014	3373
Río Grande	PR	Puerto Rico	Río Grande	America/Puerto_Rico	13001	3374
Sugarland Run	VA	Virginia	Loudoun	America/New_York	12997	3375
Huntington	VA	Virginia	Fairfax	America/New_York	12995	3376
Glen Carbon	IL	Illinois	Madison	America/Chicago	12988	3377
Rogers	MN	Minnesota	Hennepin	America/Chicago	12987	3378
Maryville	MO	Missouri	Nodaway	America/Chicago	12986	3379
Muscoy	CA	California	San Bernardino	America/Los_Angeles	12971	3380
Summerfield	MD	Maryland	Prince George's	America/New_York	12966	3381
Ridge	NY	New York	Suffolk	America/New_York	12961	3382
Moody	AL	Alabama	St. Clair	America/Chicago	12959	3383
Lawrenceburg	IN	Indiana	Dearborn	America/New_York	12959	3384
Forest Hill	TX	Texas	Tarrant	America/Chicago	12956	3385
Superior	CO	Colorado	Boulder	America/Denver	12954	3386
Commerce	CA	California	Los Angeles	America/Los_Angeles	12950	3387
Mahomet	IL	Illinois	Champaign	America/Chicago	12944	3388
Artondale	WA	Washington	Pierce	America/Los_Angeles	12940	3389
South Daytona	FL	Florida	Volusia	America/New_York	12939	3390
West Carrollton	OH	Ohio	Montgomery	America/New_York	12927	3391
Tarboro	NC	North Carolina	Edgecombe	America/New_York	12919	3392
Trenton	OH	Ohio	Butler	America/New_York	12915	3393
South Sioux City	NE	Nebraska	Dakota	America/Chicago	12914	3394
Port Neches	TX	Texas	Jefferson	America/Chicago	12901	3395
Oak Island	NC	North Carolina	Brunswick	America/New_York	12893	3396
Port Royal	SC	South Carolina	Beaufort	America/New_York	12889	3397
Herrin	IL	Illinois	Williamson	America/Chicago	12883	3398
Kingston	PA	Pennsylvania	Luzerne	America/New_York	12881	3399
Hamilton Square	NJ	New Jersey	Mercer	America/New_York	12880	3400
Malibu	CA	California	Los Angeles	America/Los_Angeles	12880	3401
Greenville	OH	Ohio	Darke	America/New_York	12880	3402
Keokuk	IA	Iowa	Lee	America/Chicago	12869	3403
Clarkston	GA	Georgia	DeKalb	America/New_York	12851	3404
Sturgis	MI	Michigan	St. Joseph	America/Detroit	12840	3405
Justice	IL	Illinois	Cook	America/Chicago	12839	3406
Woodland Park	NJ	New Jersey	Passaic	America/New_York	12837	3407
Lumberton	TX	Texas	Hardin	America/Chicago	12832	3408
Endicott	NY	New York	Broome	America/New_York	12831	3409
Suamico	WI	Wisconsin	Brown	America/Chicago	12819	3410
Channahon	IL	Illinois	Will	America/Chicago	12808	3411
Sun Village	CA	California	Los Angeles	America/Los_Angeles	12797	3412
Bastrop	LA	Louisiana	Morehouse	America/Chicago	12788	3413
Red Oak	TX	Texas	Ellis	America/Chicago	12783	3414
Riverton	WY	Wyoming	Fremont	America/Denver	12779	3415
Hammonton	NJ	New Jersey	Atlantic	America/New_York	12779	3416
Wilton Manors	FL	Florida	Broward	America/New_York	12776	3417
Plover	WI	Wisconsin	Portage	America/Chicago	12775	3418
Camp Pendleton South	CA	California	San Diego	America/Los_Angeles	12773	3419
Loveland	OH	Ohio	Hamilton	America/New_York	12773	3420
Dover	OH	Ohio	Tuscarawas	America/New_York	12769	3421
Dorado	PR	Puerto Rico	Dorado	America/Puerto_Rico	12761	3422
Panama City Beach	FL	Florida	Bay	America/Chicago	12760	3423
Federal Heights	CO	Colorado	Adams	America/Denver	12747	3424
Cedartown	GA	Georgia	Polk	America/New_York	12747	3425
Grimes	IA	Iowa	Polk	America/Chicago	12745	3426
Cloquet	MN	Minnesota	Carlton	America/Chicago	12741	3427
St. Ann	MO	Missouri	St. Louis	America/Chicago	12740	3428
Wickliffe	OH	Ohio	Lake	America/New_York	12739	3429
Prairie Ridge	WA	Washington	Pierce	America/Los_Angeles	12736	3430
Glendale	WI	Wisconsin	Milwaukee	America/Chicago	12731	3431
Forrest City	AR	Arkansas	St. Francis	America/Chicago	12731	3432
Lilburn	GA	Georgia	Gwinnett	America/New_York	12703	3433
Frederick	CO	Colorado	Weld	America/Denver	12690	3434
Joppatowne	MD	Maryland	Harford	America/New_York	12689	3435
Davidson	NC	North Carolina	Mecklenburg	America/New_York	12687	3436
Santaquin	UT	Utah	Utah	America/Denver	12686	3437
Spearfish	SD	South Dakota	Lawrence	America/Denver	12678	3438
Fergus Falls	MN	Minnesota	Otter Tail	America/Chicago	12676	3439
Paris	KY	Kentucky	Bourbon	America/New_York	12665	3440
West Monroe	LA	Louisiana	Ouachita	America/Chicago	12660	3441
Charlotte	MI	Michigan	Eaton	America/Detroit	12660	3442
Mount Vernon	VA	Virginia	Fairfax	America/New_York	12651	3443
Peru	IN	Indiana	Miami	America/Indiana/Indianapolis	12646	3444
Boone	IA	Iowa	Boone	America/Chicago	12643	3445
Sault Ste. Marie	MI	Michigan	Chippewa	America/Detroit	12640	3446
Oskaloosa	IA	Iowa	Mahaska	America/Chicago	12639	3447
Vinings	GA	Georgia	Cobb	America/New_York	12638	3448
Goldenrod	FL	Florida	Seminole	America/New_York	12637	3449
Richmond Hill	GA	Georgia	Bryan	America/New_York	12635	3450
Bedford	OH	Ohio	Cuyahoga	America/New_York	12630	3451
Chatham	IL	Illinois	Sangamon	America/Chicago	12627	3452
Lakeland	TN	Tennessee	Shelby	America/Chicago	12621	3453
Lindale	TX	Texas	Smith	America/Chicago	12617	3454
Jacksonville	AL	Alabama	Calhoun	America/Chicago	12615	3455
LaBelle	FL	Florida	Hendry	America/New_York	12608	3456
Grand Terrace	CA	California	San Bernardino	America/Los_Angeles	12598	3457
Verde Village	AZ	Arizona	Yavapai	America/Phoenix	12587	3458
Derby	CT	Connecticut	New Haven	America/New_York	12584	3459
Spring Lake	NC	North Carolina	Cumberland	America/New_York	12583	3460
San Anselmo	CA	California	Marin	America/Los_Angeles	12583	3461
Royse City	TX	Texas	Rockwall	America/Chicago	12570	3462
Minden	LA	Louisiana	Webster	America/Chicago	12562	3463
Virginia	MN	Minnesota	St. Louis	America/Chicago	12554	3464
Jackson	WY	Wyoming	Teton	America/Denver	12546	3465
Parker	SC	South Carolina	Greenville	America/New_York	12543	3466
Markham	IL	Illinois	Cook	America/Chicago	12541	3467
Corinth	MS	Mississippi	Alcorn	America/Chicago	12531	3468
Choctaw	OK	Oklahoma	Oklahoma	America/Chicago	12527	3469
Cypress Lake	FL	Florida	Lee	America/New_York	12508	3470
Azle	TX	Texas	Tarrant	America/Chicago	12498	3471
South Charleston	WV	West Virginia	Kanawha	America/New_York	12496	3472
Cornelius	OR	Oregon	Washington	America/Los_Angeles	12496	3473
Moss Bluff	LA	Louisiana	Calcasieu	America/Chicago	12494	3474
Patchogue	NY	New York	Suffolk	America/New_York	12492	3475
Lakeland North	WA	Washington	King	America/Los_Angeles	12490	3476
Woodhaven	MI	Michigan	Wayne	America/Detroit	12489	3477
Lincolnwood	IL	Illinois	Cook	America/Chicago	12486	3478
Winnetka	IL	Illinois	Cook	America/Chicago	12483	3479
Hudson	FL	Florida	Pasco	America/New_York	12480	3480
Salisbury	NY	New York	Nassau	America/New_York	12477	3481
Platteville	WI	Wisconsin	Grant	America/Chicago	12473	3482
Cedar Lake	IN	Indiana	Lake	America/Chicago	12473	3483
Irondale	AL	Alabama	Jefferson	America/Chicago	12471	3484
New Kensington	PA	Pennsylvania	Westmoreland	America/New_York	12469	3485
Ringwood	NJ	New Jersey	Passaic	America/New_York	12457	3486
Arkansas City	KS	Kansas	Cowley	America/Chicago	12452	3487
Oregon	WI	Wisconsin	Dane	America/Chicago	12451	3488
North St. Paul	MN	Minnesota	Ramsey	America/Chicago	12447	3489
Marion	AR	Arkansas	Crittenden	America/Chicago	12443	3490
Colonial Park	PA	Pennsylvania	Dauphin	America/New_York	12441	3491
North Merrick	NY	New York	Nassau	America/New_York	12439	3492
Bayou Blue	LA	Louisiana	Lafourche	America/Chicago	12437	3493
Wells Branch	TX	Texas	Travis	America/Chicago	12434	3494
Carnot-Moon	PA	Pennsylvania	Allegheny	America/New_York	12433	3495
Fredericksburg	TX	Texas	Gillespie	America/Chicago	12431	3496
Avenal	CA	California	Kings	America/Los_Angeles	12428	3497
Cheney	WA	Washington	Spokane	America/Los_Angeles	12424	3498
Somerville	NJ	New Jersey	Somerset	America/New_York	12421	3499
Truckee	CA	California	Nevada	America/Los_Angeles	12421	3500
Kewanee	IL	Illinois	Henry	America/Chicago	12419	3501
Marysville	CA	California	Yuba	America/Los_Angeles	12416	3502
Finneytown	OH	Ohio	Hamilton	America/New_York	12416	3503
Plymouth	IN	Indiana	Marshall	America/Indiana/Indianapolis	12409	3504
Palos Heights	IL	Illinois	Cook	America/Chicago	12406	3505
Larkspur	CA	California	Marin	America/Los_Angeles	12399	3506
New Baltimore	MI	Michigan	Macomb	America/Detroit	12383	3507
Terryville	NY	New York	Suffolk	America/New_York	12382	3508
Eatontown	NJ	New Jersey	Monmouth	America/New_York	12379	3509
Othello	WA	Washington	Adams	America/Los_Angeles	12378	3510
St. Peter	MN	Minnesota	Nicollet	America/Chicago	12375	3511
Gulfport	FL	Florida	Pinellas	America/New_York	12374	3512
Edgewater	NJ	New Jersey	Bergen	America/New_York	12371	3513
Northlake	IL	Illinois	Cook	America/Chicago	12367	3514
Sandpoint	ID	Idaho	Bonner	America/Los_Angeles	12352	3515
Magalia	CA	California	Butte	America/Los_Angeles	12349	3516
Lakeland Highlands	FL	Florida	Polk	America/New_York	12348	3517
Trophy Club	TX	Texas	Denton	America/Chicago	12343	3518
Jefferson	GA	Georgia	Jackson	America/New_York	12333	3519
Elkhorn	WI	Wisconsin	Walworth	America/Chicago	12325	3520
Marshall	MO	Missouri	Saline	America/Chicago	12321	3521
Ellwood City	PA	Pennsylvania	Lawrence	America/New_York	12318	3522
Cherry Creek	CO	Colorado	Arapahoe	America/Denver	12313	3523
Waconia	MN	Minnesota	Carver	America/Chicago	12292	3524
Newington Forest	VA	Virginia	Fairfax	America/New_York	12285	3525
South Miami	FL	Florida	Miami-Dade	America/New_York	12284	3526
Palmer Town	MA	Massachusetts	Hampden	America/New_York	12282	3527
Hasbrouck Heights	NJ	New Jersey	Bergen	America/New_York	12280	3528
Westwood Lakes	FL	Florida	Miami-Dade	America/New_York	12276	3529
Pine Castle	FL	Florida	Orange	America/New_York	12273	3530
Shepherdsville	KY	Kentucky	Bullitt	America/New_York	12263	3531
Warwick	NY	New York	Orange	America/New_York	12257	3532
Wilmington	OH	Ohio	Clinton	America/New_York	12256	3533
Ishpeming	MI	Michigan	Marquette	America/Detroit	12256	3534
Middle Valley	TN	Tennessee	Hamilton	America/New_York	12255	3535
Irmo	SC	South Carolina	Lexington	America/New_York	12253	3536
Fulton	MO	Missouri	Callaway	America/Chicago	12251	3537
Yulee	FL	Florida	Nassau	America/New_York	12247	3538
Holiday City-Berkeley	NJ	New Jersey	Ocean	America/New_York	12245	3539
Beatrice	NE	Nebraska	Gage	America/Chicago	12245	3540
Blythe	CA	California	Riverside	America/Los_Angeles	12231	3541
Green River	WY	Wyoming	Sweetwater	America/Denver	12223	3542
Holly Hill	FL	Florida	Volusia	America/New_York	12221	3543
Haverstraw	NY	New York	Rockland	America/New_York	12219	3544
Gladstone	OR	Oregon	Clackamas	America/Los_Angeles	12210	3545
Travilah	MD	Maryland	Montgomery	America/New_York	12207	3546
Blue Ash	OH	Ohio	Hamilton	America/New_York	12202	3547
Pontiac	IL	Illinois	Livingston	America/Chicago	12199	3548
Lake Wylie	SC	South Carolina	York	America/New_York	12173	3549
Freeport	TX	Texas	Brazoria	America/Chicago	12172	3550
Portales	NM	New Mexico	Roosevelt	America/Denver	12170	3551
Athens	TX	Texas	Henderson	America/Chicago	12166	3552
Florida City	FL	Florida	Miami-Dade	America/New_York	12158	3553
Neosho	MO	Missouri	Newton	America/Chicago	12156	3554
Red Bank	NJ	New Jersey	Monmouth	America/New_York	12153	3555
Clayton	CA	California	Contra Costa	America/Los_Angeles	12153	3556
Ottawa	KS	Kansas	Franklin	America/Chicago	12150	3557
Babylon	NY	New York	Suffolk	America/New_York	12148	3558
Speedway	IN	Indiana	Marion	America/Indiana/Indianapolis	12143	3559
Cascades	VA	Virginia	Loudoun	America/New_York	12135	3560
Kelso	WA	Washington	Cowlitz	America/Los_Angeles	12133	3561
Alum Rock	CA	California	Santa Clara	America/Los_Angeles	12131	3562
Lansdowne	VA	Virginia	Loudoun	America/New_York	12112	3563
Riverview	MI	Michigan	Wayne	America/Detroit	12110	3564
Robertsville	NJ	New Jersey	Monmouth	America/New_York	12102	3565
Mays Chapel	MD	Maryland	Baltimore	America/New_York	12100	3566
Lakewood Park	FL	Florida	St. Lucie	America/New_York	12093	3567
Fate	TX	Texas	Rockwall	America/Chicago	12093	3568
Jesup	GA	Georgia	Wayne	America/New_York	12093	3569
Amherst	OH	Ohio	Lorain	America/New_York	12091	3570
Ocean Pines	MD	Maryland	Worcester	America/New_York	12088	3571
James Island	SC	South Carolina	Charleston	America/New_York	12086	3572
Newberry	SC	South Carolina	Newberry	America/New_York	12077	3573
Waimea	HI	Hawaii	Hawaii	Pacific/Honolulu	12067	3574
Richmond	TX	Texas	Fort Bend	America/Chicago	12067	3575
Loganville	GA	Georgia	Walton	America/New_York	12065	3576
Valley Falls	RI	Rhode Island	Providence	America/New_York	12059	3577
Poquoson	VA	Virginia	Poquoson	America/New_York	12056	3578
Batesville	AR	Arkansas	Independence	America/Chicago	12053	3579
Tucson Estates	AZ	Arizona	Pima	America/Phoenix	12050	3580
Belmont	NC	North Carolina	Gaston	America/New_York	12049	3581
Glen Rock	NJ	New Jersey	Bergen	America/New_York	12048	3582
Broussard	LA	Louisiana	Lafayette	America/Chicago	12045	3583
Gatesville	TX	Texas	Coryell	America/Chicago	12042	3584
Los Alamos	NM	New Mexico	Los Alamos	America/Denver	12038	3585
Festus	MO	Missouri	Jefferson	America/Chicago	12037	3586
Leeds	AL	Alabama	Jefferson	America/Chicago	12034	3587
Cottonwood	AZ	Arizona	Yavapai	America/Phoenix	12026	3588
Portland	TN	Tennessee	Sumner	America/Chicago	12023	3589
North Wantagh	NY	New York	Nassau	America/New_York	12022	3590
Overlea	MD	Maryland	Baltimore	America/New_York	12017	3591
Norton	OH	Ohio	Summit	America/New_York	12016	3592
Delavan	WI	Wisconsin	Walworth	America/Chicago	12006	3593
Kingsburg	CA	California	Fresno	America/Los_Angeles	12005	3594
Glenwood Springs	CO	Colorado	Garfield	America/Denver	12003	3595
North Valley	NM	New Mexico	Bernalillo	America/Denver	12002	3596
Woodinville	WA	Washington	King	America/Los_Angeles	12000	3597
Home Gardens	CA	California	Riverside	America/Los_Angeles	12000	3598
Wanaque	NJ	New Jersey	Passaic	America/New_York	11997	3599
Manchester	TN	Tennessee	Coffee	America/Chicago	11990	3600
Elgin	TX	Texas	Bastrop	America/Chicago	11979	3601
Mount Sinai	NY	New York	Suffolk	America/New_York	11979	3602
Greensburg	IN	Indiana	Decatur	America/Indiana/Indianapolis	11974	3603
Lake Station	IN	Indiana	Lake	America/Chicago	11968	3604
Brown Deer	WI	Wisconsin	Milwaukee	America/Chicago	11967	3605
Pell City	AL	Alabama	St. Clair	America/Chicago	11955	3606
Cordele	GA	Georgia	Crisp	America/New_York	11950	3607
Lansing	KS	Kansas	Leavenworth	America/Chicago	11950	3608
Clawson	MI	Michigan	Oakland	America/Detroit	11949	3609
Scotts Valley	CA	California	Santa Cruz	America/Los_Angeles	11948	3610
Macedonia	OH	Ohio	Summit	America/New_York	11943	3611
Lexington Park	MD	Maryland	St. Mary's	America/New_York	11940	3612
Holly Springs	GA	Georgia	Cherokee	America/New_York	11938	3613
East Bethel	MN	Minnesota	Anoka	America/Chicago	11931	3614
Grants	NM	New Mexico	Cibola	America/Denver	11928	3615
Somerset	PA	Pennsylvania	Somerset	America/New_York	11921	3616
Georgetown	SC	South Carolina	Georgetown	America/New_York	11916	3617
Somersworth	NH	New Hampshire	Strafford	America/New_York	11903	3618
Freehold	NJ	New Jersey	Monmouth	America/New_York	11897	3619
Garden City	ID	Idaho	Ada	America/Boise	11893	3620
Robstown	TX	Texas	Nueces	America/Chicago	11888	3621
Silver City	NM	New Mexico	Grant	America/Denver	11885	3622
El Campo	TX	Texas	Wharton	America/Chicago	11873	3623
Crestwood	MO	Missouri	St. Louis	America/Chicago	11873	3624
Berkley	CO	Colorado	Adams	America/Denver	11871	3625
Newport	OR	Oregon	Lincoln	America/Los_Angeles	11865	3626
Otsego	MI	Michigan	Allegan	America/Detroit	11861	3627
Bucyrus	OH	Ohio	Crawford	America/New_York	11856	3628
Shady Hills	FL	Florida	Pasco	America/New_York	11853	3629
Prineville	OR	Oregon	Crook	America/Los_Angeles	11853	3630
Healdsburg	CA	California	Sonoma	America/Los_Angeles	11843	3631
Sedro-Woolley	WA	Washington	Skagit	America/Los_Angeles	11841	3632
Mango	FL	Florida	Hillsborough	America/New_York	11839	3633
Winfield	KS	Kansas	Cowley	America/Chicago	11839	3634
Lantana	FL	Florida	Palm Beach	America/New_York	11827	3635
Lake Los Angeles	CA	California	Los Angeles	America/Los_Angeles	11823	3636
Lincoln City	OR	Oregon	Lincoln	America/Los_Angeles	11823	3637
Gulf Shores	AL	Alabama	Baldwin	America/Chicago	11812	3638
Largo	MD	Maryland	Prince George's	America/New_York	11808	3639
Stone Ridge	VA	Virginia	Loudoun	America/New_York	11806	3640
Cadillac	MI	Michigan	Wexford	America/Detroit	11795	3641
Jupiter Farms	FL	Florida	Palm Beach	America/New_York	11790	3642
Enumclaw	WA	Washington	King	America/Los_Angeles	11787	3643
Wallington	NJ	New Jersey	Bergen	America/New_York	11784	3644
Port Lavaca	TX	Texas	Calhoun	America/Chicago	11784	3645
Oak Hills	OR	Oregon	Washington	America/Los_Angeles	11782	3646
Bogalusa	LA	Louisiana	Washington	America/Chicago	11774	3647
Goulds	FL	Florida	Miami-Dade	America/New_York	11771	3648
Minnehaha	WA	Washington	Clark	America/Los_Angeles	11770	3649
Florham Park	NJ	New Jersey	Morris	America/New_York	11768	3650
Port Washington	WI	Wisconsin	Ozaukee	America/Chicago	11765	3651
Emeryville	CA	California	Alameda	America/Los_Angeles	11761	3652
Nanakuli	HI	Hawaii	Honolulu	Pacific/Honolulu	11760	3653
Red Bank	TN	Tennessee	Hamilton	America/New_York	11757	3654
Malvern	AR	Arkansas	Hot Spring	America/Chicago	11754	3655
Lovington	NM	New Mexico	Lea	America/Denver	11746	3656
Chowchilla	CA	California	Madera	America/Los_Angeles	11743	3657
Newton	NJ	New Jersey	Sussex	America/New_York	11739	3658
Vail	AZ	Arizona	Pima	America/Phoenix	11738	3659
Franklin	OH	Ohio	Warren	America/New_York	11738	3660
Cocoa Beach	FL	Florida	Brevard	America/New_York	11736	3661
East Grand Rapids	MI	Michigan	Kent	America/Detroit	11734	3662
Coolidge	AZ	Arizona	Pinal	America/Phoenix	11728	3663
River Edge	NJ	New Jersey	Bergen	America/New_York	11727	3664
The Pinery	CO	Colorado	Douglas	America/Denver	11723	3665
Diamond Springs	CA	California	El Dorado	America/Los_Angeles	11720	3666
Miller Place	NY	New York	Suffolk	America/New_York	11712	3667
Martinsville	NJ	New Jersey	Somerset	America/New_York	11710	3668
Tomball	TX	Texas	Harris	America/Chicago	11710	3669
Weatherford	OK	Oklahoma	Custer	America/Chicago	11703	3670
Orange City	FL	Florida	Volusia	America/New_York	11700	3671
Richfield	WI	Wisconsin	Washington	America/Chicago	11699	3672
Upper Montclair	NJ	New Jersey	Essex	America/New_York	11699	3673
Beachwood	OH	Ohio	Cuyahoga	America/New_York	11699	3674
Guttenberg	NJ	New Jersey	Hudson	America/New_York	11698	3675
Dranesville	VA	Virginia	Fairfax	America/New_York	11693	3676
Forestville	MD	Maryland	Prince George's	America/New_York	11692	3677
Eureka	MO	Missouri	St. Louis	America/Chicago	11688	3678
Newcastle	WA	Washington	King	America/Los_Angeles	11684	3679
Arlington	TN	Tennessee	Shelby	America/Chicago	11684	3680
Snyder	TX	Texas	Scurry	America/Chicago	11681	3681
Ozark	AL	Alabama	Dale	America/Chicago	11681	3682
Byram	MS	Mississippi	Hinds	America/Chicago	11674	3683
Chino Valley	AZ	Arizona	Yavapai	America/Phoenix	11670	3684
Seven Hills	OH	Ohio	Cuyahoga	America/New_York	11666	3685
Collegedale	TN	Tennessee	Hamilton	America/New_York	11662	3686
Bridgeton	MO	Missouri	St. Louis	America/Chicago	11651	3687
Grafton	WI	Wisconsin	Ozaukee	America/Chicago	11646	3688
Winchester	TN	Tennessee	Franklin	America/Chicago	11645	3689
Mendota	CA	California	Fresno	America/Los_Angeles	11645	3690
Schiller Park	IL	Illinois	Cook	America/Chicago	11643	3691
Jerome	ID	Idaho	Jerome	America/Boise	11641	3692
Nocatee	FL	Florida	St. Johns	America/New_York	11637	3693
Clute	TX	Texas	Brazoria	America/Chicago	11637	3694
Delhi	CA	California	Merced	America/Los_Angeles	11625	3695
Signal Hill	CA	California	Los Angeles	America/Los_Angeles	11625	3696
Robinson	TX	Texas	McLennan	America/Chicago	11620	3697
Eunice	LA	Louisiana	St. Landry	America/Chicago	11616	3698
D'Iberville	MS	Mississippi	Harrison	America/Chicago	11613	3699
White House	TN	Tennessee	Sumner	America/Chicago	11611	3700
Waipio	HI	Hawaii	Honolulu	Pacific/Honolulu	11610	3701
Fairfax Station	VA	Virginia	Fairfax	America/New_York	11610	3702
Los Alamitos	CA	California	Orange	America/Los_Angeles	11606	3703
Isabela	PR	Puerto Rico	Isabela	America/Puerto_Rico	11599	3704
Sandy	OR	Oregon	Clackamas	America/Los_Angeles	11598	3705
Elwood	NY	New York	Suffolk	America/New_York	11595	3706
Plano	IL	Illinois	Kendall	America/Chicago	11591	3707
Elizabethtown	PA	Pennsylvania	Lancaster	America/New_York	11589	3708
Smyrna	DE	Delaware	Kent	America/New_York	11587	3709
Aguadilla	PR	Puerto Rico	Aguadilla	America/Puerto_Rico	11584	3710
Tarrytown	NY	New York	Westchester	America/New_York	11575	3711
Walker Mill	MD	Maryland	Prince George's	America/New_York	11572	3712
Hawaiian Paradise Park	HI	Hawaii	Hawaii	Pacific/Honolulu	11567	3713
North Bellport	NY	New York	Suffolk	America/New_York	11564	3714
Bainbridge	GA	Georgia	Decatur	America/New_York	11561	3715
Cottage Grove	OR	Oregon	Lane	America/Los_Angeles	11559	3716
Claiborne	LA	Louisiana	Ouachita	America/Chicago	11558	3717
Woodward	OK	Oklahoma	Woodward	America/Chicago	11551	3718
Accokeek	MD	Maryland	Prince George's	America/New_York	11549	3719
Evanston	WY	Wyoming	Uinta	America/Denver	11541	3720
Minneola	FL	Florida	Lake	America/New_York	11532	3721
Bennettsville	SC	South Carolina	Marlboro	America/New_York	11530	3722
San Germán	PR	Puerto Rico	San Germán	America/Puerto_Rico	11529	3723
Archdale	NC	North Carolina	Randolph	America/New_York	11521	3724
Yeadon	PA	Pennsylvania	Delaware	America/New_York	11508	3725
Jackson	OH	Ohio	Jackson	America/New_York	11505	3726
Port St. John	FL	Florida	Brevard	America/New_York	11492	3727
Bellmawr	NJ	New Jersey	Camden	America/New_York	11492	3728
Citrus	CA	California	Los Angeles	America/Los_Angeles	11492	3729
West Plains	MO	Missouri	Howell	America/Chicago	11491	3730
Winton	CA	California	Merced	America/Los_Angeles	11490	3731
Hillsborough	CA	California	San Mateo	America/Los_Angeles	11489	3732
Lyndon	KY	Kentucky	Jefferson	America/New_York	11488	3733
Westview	FL	Florida	Miami-Dade	America/New_York	11483	3734
Valencia West	AZ	Arizona	Pima	America/Phoenix	11471	3735
Coamo	PR	Puerto Rico	Coamo	America/Puerto_Rico	11470	3736
Cedarburg	WI	Wisconsin	Ozaukee	America/Chicago	11468	3737
Ravenna	OH	Ohio	Portage	America/New_York	11464	3738
Emmaus	PA	Pennsylvania	Lehigh	America/New_York	11457	3739
Maltby	WA	Washington	Snohomish	America/Los_Angeles	11446	3740
Bradford	PA	Pennsylvania	McKean	America/New_York	11445	3741
Grove City	PA	Pennsylvania	Mercer	America/New_York	11444	3742
Guymon	OK	Oklahoma	Texas	America/Chicago	11442	3743
Haddonfield	NJ	New Jersey	Camden	America/New_York	11438	3744
Ridgefield	NJ	New Jersey	Bergen	America/New_York	11438	3745
Leon Valley	TX	Texas	Bexar	America/Chicago	11429	3746
Roma	TX	Texas	Starr	America/Chicago	11428	3747
Highland	IL	Illinois	Madison	America/Chicago	11424	3748
Doctor Phillips	FL	Florida	Orange	America/New_York	11419	3749
Scottsburg	IN	Indiana	Scott	America/Indiana/Indianapolis	11419	3750
Hillsdale	MI	Michigan	Hillsdale	America/Detroit	11419	3751
Endwell	NY	New York	Broome	America/New_York	11415	3752
Excelsior Springs	MO	Missouri	Clay	America/Chicago	11415	3753
Little Chute	WI	Wisconsin	Outagamie	America/Chicago	11406	3754
East Renton Highlands	WA	Washington	King	America/Los_Angeles	11404	3755
Spirit Lake	IA	Iowa	Dickinson	America/Chicago	11401	3756
South Yarmouth	MA	Massachusetts	Barnstable	America/New_York	11394	3757
Hibbing	MN	Minnesota	St. Louis	America/Chicago	11392	3758
DuBois	PA	Pennsylvania	Clearfield	America/New_York	11381	3759
Piedmont	CA	California	Alameda	America/Los_Angeles	11381	3760
Storm Lake	IA	Iowa	Buena Vista	America/Chicago	11379	3761
Smithfield	UT	Utah	Cache	America/Denver	11377	3762
Woods Cross	UT	Utah	Davis	America/Denver	11365	3763
Fairfield	IA	Iowa	Jefferson	America/Chicago	11364	3764
Newman	CA	California	Stanislaus	America/Los_Angeles	11363	3765
North Vernon	IN	Indiana	Jennings	America/Indiana/Indianapolis	11355	3766
Berlin	NH	New Hampshire	Coos	America/New_York	11354	3767
Newport	TN	Tennessee	Cocke	America/New_York	11346	3768
Mendota Heights	MN	Minnesota	Dakota	America/Chicago	11346	3769
Gloucester City	NJ	New Jersey	Camden	America/New_York	11345	3770
Coshocton	OH	Ohio	Coshocton	America/New_York	11342	3771
Webb City	MO	Missouri	Jasper	America/Chicago	11337	3772
Mount Sterling	KY	Kentucky	Montgomery	America/New_York	11331	3773
Westwood	NJ	New Jersey	Bergen	America/New_York	11329	3774
Fulton	NY	New York	Oswego	America/New_York	11327	3775
Lamesa	TX	Texas	Dawson	America/Chicago	11323	3776
Mexico	MO	Missouri	Audrain	America/Chicago	11323	3777
Wyandanch	NY	New York	Suffolk	America/New_York	11318	3778
Urbana	OH	Ohio	Champaign	America/New_York	11317	3779
Mountain Top	PA	Pennsylvania	Luzerne	America/New_York	11314	3780
View Park-Windsor Hills	CA	California	Los Angeles	America/Los_Angeles	11311	3781
Minooka	IL	Illinois	Grundy	America/Chicago	11310	3782
Waupun	WI	Wisconsin	Fond du Lac	America/Chicago	11305	3783
Fenton	MI	Michigan	Genesee	America/Detroit	11289	3784
Campton Hills	IL	Illinois	Kane	America/Chicago	11285	3785
Summit	IL	Illinois	Cook	America/Chicago	11281	3786
Haysville	KS	Kansas	Sedgwick	America/Chicago	11281	3787
Hormigueros	PR	Puerto Rico	Hormigueros	America/Puerto_Rico	11271	3788
Princess Anne	MD	Maryland	Somerset	America/New_York	11265	3789
Franklin Lakes	NJ	New Jersey	Bergen	America/New_York	11258	3790
Angola	IN	Indiana	Steuben	America/Indiana/Indianapolis	11255	3791
Beachwood	NJ	New Jersey	Ocean	America/New_York	11251	3792
Shiloh	PA	Pennsylvania	York	America/New_York	11250	3793
Lighthouse Point	FL	Florida	Broward	America/New_York	11245	3794
Villas	FL	Florida	Lee	America/New_York	11245	3795
Soquel	CA	California	Santa Cruz	America/Los_Angeles	11244	3796
Macclenny	FL	Florida	Baker	America/New_York	11234	3797
Gardere	LA	Louisiana	East Baton Rouge	America/Chicago	11232	3798
Lower Burrell	PA	Pennsylvania	Westmoreland	America/New_York	11231	3799
Jefferson Hills	PA	Pennsylvania	Allegheny	America/New_York	11229	3800
Canyon Lake	CA	California	Riverside	America/Los_Angeles	11226	3801
Edgewood	WA	Washington	Pierce	America/Los_Angeles	11216	3802
Springdale	OH	Ohio	Hamilton	America/New_York	11216	3803
Merriam	KS	Kansas	Johnson	America/Chicago	11215	3804
Newport East	RI	Rhode Island	Newport	America/New_York	11214	3805
Fitzgerald	GA	Georgia	Ben Hill	America/New_York	11214	3806
Greentree	NJ	New Jersey	Camden	America/New_York	11212	3807
Chalco	NE	Nebraska	Sarpy	America/Chicago	11212	3808
Niles	MI	Michigan	Berrien	America/Detroit	11211	3809
Pompton Lakes	NJ	New Jersey	Passaic	America/New_York	11209	3810
Ocean City	NJ	New Jersey	Cape May	America/New_York	11209	3811
Lake Morton-Berrydale	WA	Washington	King	America/Los_Angeles	11204	3812
Camp Verde	AZ	Arizona	Yavapai	America/Phoenix	11204	3813
Wahpeton	ND	North Dakota	Richland	America/Chicago	11202	3814
Yorktown	IN	Indiana	Delaware	America/Indiana/Indianapolis	11202	3815
Kaneohe Station	HI	Hawaii	Honolulu	Pacific/Honolulu	11201	3816
Summerfield	NC	North Carolina	Guilford	America/New_York	11201	3817
Clinton	SC	South Carolina	Laurens	America/New_York	11196	3818
Mack	OH	Ohio	Hamilton	America/New_York	11195	3819
Echelon	NJ	New Jersey	Camden	America/New_York	11188	3820
Maysville	KY	Kentucky	Mason	America/New_York	11188	3821
Walden	NY	New York	Orange	America/New_York	11186	3822
Madison Heights	VA	Virginia	Amherst	America/New_York	11183	3823
Lewisburg	TN	Tennessee	Marshall	America/Chicago	11180	3824
Huntingdon	PA	Pennsylvania	Huntingdon	America/New_York	11180	3825
Woodland Park	CO	Colorado	Teller	America/Denver	11177	3826
Munhall	PA	Pennsylvania	Allegheny	America/New_York	11161	3827
Richmond Heights	FL	Florida	Miami-Dade	America/New_York	11158	3828
Lake Grove	NY	New York	Suffolk	America/New_York	11158	3829
Tremonton	UT	Utah	Box Elder	America/Denver	11158	3830
Mayfield	KY	Kentucky	Graves	America/Chicago	11158	3831
Damascus	OR	Oregon	Clackamas	America/Los_Angeles	11158	3832
Two Rivers	WI	Wisconsin	Manitowoc	America/Chicago	11156	3833
Dobbs Ferry	NY	New York	Westchester	America/New_York	11150	3834
Celina	OH	Ohio	Mercer	America/New_York	11142	3835
Folkston	GA	Georgia	Charlton	America/New_York	11141	3836
River Forest	IL	Illinois	Cook	America/Chicago	11135	3837
Grosse Pointe Park	MI	Michigan	Wayne	America/Toronto	11128	3838
Webster	TX	Texas	Harris	America/Chicago	11126	3839
Town and Country	MO	Missouri	St. Louis	America/Chicago	11118	3840
Woodmere	LA	Louisiana	Jefferson	America/Chicago	11117	3841
Kalaoa	HI	Hawaii	Hawaii	Pacific/Honolulu	11110	3842
Gardnerville Ranchos	NV	Nevada	Douglas	America/Los_Angeles	11106	3843
Fairview Shores	FL	Florida	Orange	America/New_York	11099	3844
Lowes Island	VA	Virginia	Loudoun	America/New_York	11097	3845
Brookings	OR	Oregon	Curry	America/Los_Angeles	11096	3846
Woodbury	NY	New York	Orange	America/New_York	11078	3847
Satellite Beach	FL	Florida	Brevard	America/New_York	11059	3848
Halfway	MD	Maryland	Washington	America/New_York	11046	3849
Rifle	CO	Colorado	Garfield	America/Denver	11041	3850
Sierra Madre	CA	California	Los Angeles	America/Los_Angeles	11041	3851
Millington	TN	Tennessee	Shelby	America/Chicago	11036	3852
Arizona City	AZ	Arizona	Pinal	America/Phoenix	11033	3853
Urbana	MD	Maryland	Frederick	America/New_York	11025	3854
Dent	OH	Ohio	Hamilton	America/New_York	11015	3855
Little Ferry	NJ	New Jersey	Bergen	America/New_York	11003	3856
Mount Kisco	NY	New York	Westchester	America/New_York	11001	3857
Suffern	NY	New York	Rockland	America/New_York	10998	3858
Galena Park	TX	Texas	Harris	America/Chicago	10992	3859
Elkins	WV	West Virginia	Randolph	America/New_York	10991	3860
Fox Crossing	WI	Wisconsin	Winnebago	America/Chicago	10983	3861
Viera East	FL	Florida	Brevard	America/New_York	10978	3862
Lindon	UT	Utah	Utah	America/Denver	10971	3863
Brock Hall	MD	Maryland	Prince George's	America/New_York	10968	3864
Alamosa	CO	Colorado	Alamosa	America/Denver	10966	3865
Braselton	GA	Georgia	Jackson	America/New_York	10950	3866
Stayton	OR	Oregon	Marion	America/Los_Angeles	10946	3867
Moncks Corner	SC	South Carolina	Berkeley	America/New_York	10936	3868
Garden Acres	CA	California	San Joaquin	America/Los_Angeles	10934	3869
Bacliff	TX	Texas	Galveston	America/Chicago	10928	3870
Mitchellville	MD	Maryland	Prince George's	America/New_York	10927	3871
Rossmoor	CA	California	Orange	America/Los_Angeles	10923	3872
Big Lake	MN	Minnesota	Sherburne	America/Chicago	10918	3873
Destrehan	LA	Louisiana	St. Charles	America/Chicago	10909	3874
Grand Haven	MI	Michigan	Ottawa	America/Detroit	10908	3875
Highland Park	MI	Michigan	Wayne	America/Detroit	10903	3876
Norwalk	IA	Iowa	Warren	America/Chicago	10899	3877
Manchester	VA	Virginia	Chesterfield	America/New_York	10898	3878
Ogdensburg	NY	New York	St. Lawrence	America/Toronto	10896	3879
Broomall	PA	Pennsylvania	Delaware	America/New_York	10886	3880
Panthersville	GA	Georgia	DeKalb	America/New_York	10886	3881
Hailey	ID	Idaho	Blaine	America/Boise	10878	3882
Vidor	TX	Texas	Orange	America/Chicago	10857	3883
Tamalpais-Homestead Valley	CA	California	Marin	America/Los_Angeles	10856	3884
Linthicum	MD	Maryland	Anne Arundel	America/New_York	10855	3885
Rochelle	IL	Illinois	Ogle	America/Chicago	10852	3886
Crestwood	IL	Illinois	Cook	America/Chicago	10849	3887
Rosaryville	MD	Maryland	Prince George's	America/New_York	10847	3888
Annapolis Neck	MD	Maryland	Anne Arundel	America/New_York	10844	3889
Show Low	AZ	Arizona	Navajo	America/Phoenix	10840	3890
Greencastle	IN	Indiana	Putnam	America/Indiana/Indianapolis	10837	3891
Forestville	OH	Ohio	Hamilton	America/New_York	10832	3892
Pike Creek Valley	DE	Delaware	New Castle	America/New_York	10826	3893
Cheval	FL	Florida	Hillsborough	America/New_York	10824	3894
Sussex	WI	Wisconsin	Waukesha	America/Chicago	10822	3895
Burr Ridge	IL	Illinois	DuPage	America/Chicago	10821	3896
Totowa	NJ	New Jersey	Passaic	America/New_York	10820	3897
Winnemucca	NV	Nevada	Humboldt	America/Los_Angeles	10814	3898
California City	CA	California	Kern	America/Los_Angeles	10797	3899
Brooklyn	OH	Ohio	Cuyahoga	America/New_York	10795	3900
Kings Mountain	NC	North Carolina	Cleveland	America/New_York	10794	3901
North Lindenhurst	NY	New York	Suffolk	America/New_York	10791	3902
Farmersville	CA	California	Tulare	America/Los_Angeles	10781	3903
Naranja	FL	Florida	Miami-Dade	America/New_York	10779	3904
Atchison	KS	Kansas	Atchison	America/Chicago	10778	3905
Weddington	NC	North Carolina	Union	America/New_York	10776	3906
Gonzales	LA	Louisiana	Ascension	America/Chicago	10774	3907
Spencer	IA	Iowa	Clay	America/Chicago	10772	3908
Browns Mills	NJ	New Jersey	Burlington	America/New_York	10766	3909
Port Salerno	FL	Florida	Martin	America/New_York	10763	3910
Northbrook	OH	Ohio	Hamilton	America/New_York	10763	3911
Florence	OR	Oregon	Lane	America/Los_Angeles	10758	3912
Silverton	OR	Oregon	Marion	America/Los_Angeles	10753	3913
Montgomery	OH	Ohio	Hamilton	America/New_York	10749	3914
Muskegon Heights	MI	Michigan	Muskegon	America/Detroit	10738	3915
Elk City	OK	Oklahoma	Beckham	America/Chicago	10729	3916
Ironton	OH	Ohio	Lawrence	America/New_York	10725	3917
New Albany	OH	Ohio	Franklin	America/New_York	10721	3918
Heath	OH	Ohio	Licking	America/New_York	10716	3919
Selma	TX	Texas	Bexar	America/Chicago	10715	3920
Point Pleasant	WV	West Virginia	Mason	America/New_York	10711	3921
Union Park	FL	Florida	Orange	America/New_York	10710	3922
Pearsall	TX	Texas	Frio	America/Chicago	10703	3923
Darby	PA	Pennsylvania	Delaware	America/New_York	10703	3924
Hudson	NY	New York	Columbia	America/New_York	10702	3925
La Riviera	CA	California	Sacramento	America/Los_Angeles	10696	3926
Kennett	MO	Missouri	Dunklin	America/Chicago	10696	3927
Essex Junction	VT	Vermont	Chittenden	America/New_York	10694	3928
Vermillion	SD	South Dakota	Clay	America/Chicago	10694	3929
Whitehall	MI	Michigan	Muskegon	America/Detroit	10693	3930
Ludington	MI	Michigan	Mason	America/Detroit	10693	3931
Gold Canyon	AZ	Arizona	Pinal	America/Phoenix	10687	3932
Fairfield	AL	Alabama	Jefferson	America/Chicago	10686	3933
Massena	NY	New York	St. Lawrence	America/New_York	10676	3934
Poulsbo	WA	Washington	Kitsap	America/Los_Angeles	10673	3935
Jacinto City	TX	Texas	Harris	America/Chicago	10664	3936
Worth	IL	Illinois	Cook	America/Chicago	10664	3937
Monroe	WI	Wisconsin	Green	America/Chicago	10661	3938
Timberlane	LA	Louisiana	Jefferson	America/Chicago	10658	3939
Three Rivers	MI	Michigan	St. Joseph	America/Detroit	10657	3940
Forest	VA	Virginia	Bedford	America/New_York	10656	3941
Gulf Gate Estates	FL	Florida	Sarasota	America/New_York	10653	3942
Miami Shores	FL	Florida	Miami-Dade	America/New_York	10652	3943
Toccoa	GA	Georgia	Stephens	America/New_York	10650	3944
Lansdowne	PA	Pennsylvania	Delaware	America/New_York	10649	3945
North Logan	UT	Utah	Cache	America/Denver	10649	3946
Ketchikan	AK	Alaska	Ketchikan Gateway	America/Sitka	10639	3947
Morro Bay	CA	California	San Luis Obispo	America/Los_Angeles	10638	3948
West Perrine	FL	Florida	Miami-Dade	America/New_York	10637	3949
Pacific	MO	Missouri	Franklin	America/Chicago	10637	3950
San Diego Country Estates	CA	California	San Diego	America/Los_Angeles	10636	3951
Petal	MS	Mississippi	Forrest	America/Chicago	10636	3952
Bellefontaine Neighbors	MO	Missouri	St. Louis	America/Chicago	10631	3953
Del Aire	CA	California	Los Angeles	America/Los_Angeles	10617	3954
Decatur	IN	Indiana	Adams	America/Indiana/Indianapolis	10616	3955
Lake Arrowhead	CA	California	San Bernardino	America/Los_Angeles	10615	3956
Myrtle Grove	NC	North Carolina	New Hanover	America/New_York	10613	3957
West Point	UT	Utah	Davis	America/Denver	10606	3958
Wapakoneta	OH	Ohio	Auglaize	America/New_York	10594	3959
Lyons	IL	Illinois	Cook	America/Chicago	10588	3960
Hillsdale	NJ	New Jersey	Bergen	America/New_York	10584	3961
Bedford Heights	OH	Ohio	Cuyahoga	America/New_York	10583	3962
Millsboro	DE	Delaware	Sussex	America/New_York	10581	3963
Farmington	MI	Michigan	Oakland	America/Detroit	10581	3964
Paris	TN	Tennessee	Henry	America/Chicago	10579	3965
Seymour	TN	Tennessee	Sevier	America/New_York	10577	3966
Fredonia	NY	New York	Chautauqua	America/New_York	10570	3967
Van Wert	OH	Ohio	Van Wert	America/New_York	10560	3968
Fox Lake	IL	Illinois	Lake	America/Chicago	10557	3969
Exeter	CA	California	Tulare	America/Los_Angeles	10556	3970
Smithfield	VA	Virginia	Isle of Wight	America/New_York	10554	3971
Timonium	MD	Maryland	Baltimore	America/New_York	10551	3972
Hornell	NY	New York	Steuben	America/New_York	10548	3973
Cleveland	TX	Texas	Liberty	America/Chicago	10546	3974
Oak Hills	CA	California	San Bernardino	America/Los_Angeles	10544	3975
Portage	WI	Wisconsin	Columbia	America/Chicago	10543	3976
East Whittier	CA	California	Los Angeles	America/Los_Angeles	10543	3977
Doraville	GA	Georgia	DeKalb	America/New_York	10543	3978
Pine Hill	NJ	New Jersey	Camden	America/New_York	10539	3979
Saks	AL	Alabama	Calhoun	America/Chicago	10538	3980
Trinity	FL	Florida	Pasco	America/New_York	10532	3981
Castle Pines	CO	Colorado	Douglas	America/Denver	10526	3982
Tanaina	AK	Alaska	Matanuska-Susitna	America/Anchorage	10515	3983
Coral Hills	MD	Maryland	Prince George's	America/New_York	10515	3984
Lanham	MD	Maryland	Prince George's	America/New_York	10514	3985
Kapaa	HI	Hawaii	Kauai	Pacific/Honolulu	10508	3986
Roscoe	IL	Illinois	Winnebago	America/Chicago	10508	3987
Bellmead	TX	Texas	McLennan	America/Chicago	10506	3988
Somers Point	NJ	New Jersey	Atlantic	America/New_York	10483	3989
Summerville	GA	Georgia	Chattooga	America/New_York	10481	3990
Little Canada	MN	Minnesota	Ramsey	America/Chicago	10480	3991
Martin	TN	Tennessee	Weakley	America/Chicago	10476	3992
Jefferson	LA	Louisiana	Jefferson	America/Chicago	10472	3993
Lincoln Park	NJ	New Jersey	Morris	America/New_York	10471	3994
Bound Brook	NJ	New Jersey	Somerset	America/New_York	10471	3995
Countryside	VA	Virginia	Loudoun	America/New_York	10461	3996
Wyomissing	PA	Pennsylvania	Berks	America/New_York	10457	3997
Vermilion	OH	Ohio	Erie	America/New_York	10456	3998
Sauk Village	IL	Illinois	Cook	America/Chicago	10455	3999
Norton	VA	Virginia	Norton	America/New_York	10454	4000
Lawrenceburg	TN	Tennessee	Lawrence	America/Chicago	10436	4001
Columbia	PA	Pennsylvania	Lancaster	America/New_York	10435	4002
Arkadelphia	AR	Arkansas	Clark	America/Chicago	10431	4003
Burtonsville	MD	Maryland	Montgomery	America/New_York	10431	4004
Beverly Hills	MI	Michigan	Oakland	America/Detroit	10428	4005
Bothell East	WA	Washington	Snohomish	America/Los_Angeles	10427	4006
Richmond Heights	OH	Ohio	Cuyahoga	America/New_York	10420	4007
Covington	LA	Louisiana	St. Tammany	America/Chicago	10419	4008
Manville	NJ	New Jersey	Somerset	America/New_York	10417	4009
Cape Canaveral	FL	Florida	Brevard	America/New_York	10416	4010
Lake Arbor	MD	Maryland	Prince George's	America/New_York	10413	4011
Avon Park	FL	Florida	Highlands	America/New_York	10411	4012
Dayton	TN	Tennessee	Rhea	America/New_York	10408	4013
Middle Island	NY	New York	Suffolk	America/New_York	10408	4014
Fort Bragg	CA	California	Mendocino	America/Los_Angeles	10406	4015
Marlboro Village	MD	Maryland	Prince George's	America/New_York	10401	4016
Malone	NY	New York	Franklin	America/New_York	10394	4017
Gateway	FL	Florida	Lee	America/New_York	10391	4018
West Haverstraw	NY	New York	Rockland	America/New_York	10391	4019
Highland City	FL	Florida	Polk	America/New_York	10389	4020
Kendallville	IN	Indiana	Noble	America/Indiana/Indianapolis	10386	4021
Forest Acres	SC	South Carolina	Richland	America/New_York	10383	4022
Clearfield	PA	Pennsylvania	Clearfield	America/New_York	10376	4023
Oak Grove	SC	South Carolina	Lexington	America/New_York	10376	4024
Alpine	UT	Utah	Utah	America/Denver	10374	4025
Vienna	WV	West Virginia	Wood	America/New_York	10373	4026
Anderson	CA	California	Shasta	America/Los_Angeles	10373	4027
Arden Hills	MN	Minnesota	Ramsey	America/Chicago	10365	4028
Marlton	NJ	New Jersey	Burlington	America/New_York	10361	4029
Brookhaven	MS	Mississippi	Lincoln	America/Chicago	10349	4030
Cusseta	GA	Georgia	Chattahoochee	America/New_York	10346	4031
Melvindale	MI	Michigan	Wayne	America/Detroit	10344	4032
DeForest	WI	Wisconsin	Dane	America/Chicago	10343	4033
Orange Cove	CA	California	Fresno	America/Los_Angeles	10342	4034
Magnolia	AR	Arkansas	Columbia	America/Chicago	10342	4035
Tega Cay	SC	South Carolina	York	America/New_York	10342	4036
Burkburnett	TX	Texas	Wichita	America/Chicago	10337	4037
Wyndham	VA	Virginia	Henrico	America/New_York	10337	4038
Cedar Hills	UT	Utah	Utah	America/Denver	10337	4039
Warr Acres	OK	Oklahoma	Oklahoma	America/Chicago	10336	4040
Cresson	PA	Pennsylvania	Cambria	America/New_York	10334	4041
Fort Madison	IA	Iowa	Lee	America/Chicago	10329	4042
Raceland	LA	Louisiana	Lafourche	America/Chicago	10325	4043
Camden	AR	Arkansas	Ouachita	America/Chicago	10324	4044
Sweet Home	OR	Oregon	Linn	America/Los_Angeles	10309	4045
Inwood	NY	New York	Nassau	America/New_York	10307	4046
Great Neck	NY	New York	Nassau	America/New_York	10306	4047
Saddlebrooke	AZ	Arizona	Pinal	America/Phoenix	10303	4048
Barrington	IL	Illinois	Cook	America/Chicago	10300	4049
Comstock Park	MI	Michigan	Kent	America/Detroit	10295	4050
Canandaigua	NY	New York	Ontario	America/New_York	10292	4051
Pleasant View	UT	Utah	Weber	America/Denver	10290	4052
Nanticoke	PA	Pennsylvania	Luzerne	America/New_York	10282	4053
Columbia	IL	Illinois	Monroe	America/Chicago	10277	4054
St. Albans	WV	West Virginia	Kanawha	America/New_York	10268	4055
Wood River	IL	Illinois	Madison	America/Chicago	10266	4056
Reading	OH	Ohio	Hamilton	America/New_York	10263	4057
Georgetown	DE	Delaware	Sussex	America/New_York	10258	4058
Struthers	OH	Ohio	Mahoning	America/New_York	10257	4059
Lowell	IN	Indiana	Lake	America/Chicago	10256	4060
Lexington	NE	Nebraska	Dawson	America/Chicago	10255	4061
Ventnor City	NJ	New Jersey	Atlantic	America/New_York	10242	4062
Valley Cottage	NY	New York	Rockland	America/New_York	10233	4063
Alcoa	TN	Tennessee	Blount	America/New_York	10231	4064
Elon	NC	North Carolina	Alamance	America/New_York	10230	4065
Fairview	CA	California	Alameda	America/Los_Angeles	10225	4066
Sleepy Hollow	NY	New York	Westchester	America/New_York	10221	4067
Bolivar	MO	Missouri	Polk	America/Chicago	10221	4068
Scottdale	GA	Georgia	DeKalb	America/New_York	10220	4069
Kinnelon	NJ	New Jersey	Morris	America/New_York	10216	4070
Friendly	MD	Maryland	Prince George's	America/New_York	10203	4071
Maili	HI	Hawaii	Honolulu	Pacific/Honolulu	10193	4072
Shasta Lake	CA	California	Shasta	America/Los_Angeles	10193	4073
Fort Bliss	TX	Texas	El Paso	America/Denver	10191	4074
Capitola	CA	California	Santa Cruz	America/Los_Angeles	10183	4075
Lancaster	NY	New York	Erie	America/New_York	10182	4076
Troy	IL	Illinois	Madison	America/Chicago	10179	4077
Rodeo	CA	California	Contra Costa	America/Los_Angeles	10177	4078
Princeton	TX	Texas	Collin	America/Chicago	10162	4079
Shawano	WI	Wisconsin	Shawano	America/Chicago	10161	4080
Fort Salonga	NY	New York	Suffolk	America/New_York	10158	4081
Fife	WA	Washington	Pierce	America/Los_Angeles	10157	4082
Wasilla	AK	Alaska	Matanuska-Susitna	America/Anchorage	10154	4083
Havre	MT	Montana	Hill	America/Denver	10151	4084
Waterloo	IL	Illinois	Monroe	America/Chicago	10138	4085
Watervliet	NY	New York	Albany	America/New_York	10134	4086
Mentone	CA	California	San Bernardino	America/Los_Angeles	10132	4087
Forestdale	AL	Alabama	Jefferson	America/Chicago	10121	4088
Manvel	TX	Texas	Brazoria	America/Chicago	10118	4089
Pleasant Grove	AL	Alabama	Jefferson	America/Chicago	10107	4090
Clinton	TN	Tennessee	Anderson	America/New_York	10106	4091
Quartz Hill	CA	California	Los Angeles	America/Los_Angeles	10101	4092
Kutztown	PA	Pennsylvania	Berks	America/New_York	10098	4093
Sumner	WA	Washington	Pierce	America/Los_Angeles	10096	4094
River Grove	IL	Illinois	Cook	America/Chicago	10096	4095
Waldwick	NJ	New Jersey	Bergen	America/New_York	10095	4096
Snohomish	WA	Washington	Snohomish	America/Los_Angeles	10092	4097
Fort Meade	MD	Maryland	Anne Arundel	America/New_York	10091	4098
Berwick	PA	Pennsylvania	Columbia	America/New_York	10089	4099
Bluffton	IN	Indiana	Wells	America/Indiana/Indianapolis	10088	4100
Hartsville	TN	Tennessee	Trousdale	America/Chicago	10086	4101
Key Largo	FL	Florida	Monroe	America/New_York	10074	4102
Greenville	PA	Pennsylvania	Mercer	America/New_York	10064	4103
Bonham	TX	Texas	Fannin	America/Chicago	10062	4104
Sparta	WI	Wisconsin	Monroe	America/Chicago	10057	4105
Independence	OR	Oregon	Polk	America/Los_Angeles	10056	4106
Laurens	SC	South Carolina	Laurens	America/New_York	10054	4107
Coffeyville	KS	Kansas	Montgomery	America/Chicago	10049	4108
Fulshear	TX	Texas	Fort Bend	America/Chicago	10047	4109
Gages Lake	IL	Illinois	Lake	America/Chicago	10045	4110
Bel Air	MD	Maryland	Harford	America/New_York	10040	4111
Fort Lupton	CO	Colorado	Weld	America/Denver	10022	4112
Grenada	MS	Mississippi	Grenada	America/Chicago	10019	4113
\.


--
-- Name: states_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.states_id_seq', 1, false);


--
-- Name: states states_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY public.states
    ADD CONSTRAINT states_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

