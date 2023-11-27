SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: weapons; Type: TABLE; Schema: public; Owner: chadsmith
--

CREATE TABLE weapons (
    id integer NOT NULL,
    weapon_type character varying(50),
    name character varying(50),
    hit_points integer,
    durability integer,
    is_repairable boolean,
    display_name character varying(150)
);

--
-- Data for Name: weapons; Type: TABLE DATA; Schema: public; Owner: chadsmith
--

COPY weapons (id, weapon_type, name, hit_points, durability, is_repairable, display_name) FROM stdin;
1	Claymore	Pudding	197	40	f	The Claymore of Pudding
2	Hammer	Right	172	51	f	The Hammer of Right
3	Gladius	Poverty	12	54	t	The Gladius of Poverty
4	Long Sword	Envy	66	37	f	The Long Sword of Envy
5	Long Sword	Happiness	200	32	t	The Long Sword of Happiness
6	Short Sword	Calm	130	74	f	The Short Sword of Calm
7	War Scythe	Libation	109	69	t	The War Scythe of Libation
8	Stick	Fear	141	78	t	The Stick of Fear
9	Spoon	Clarity	54	79	f	The Spoon of Clarity
10	Mace	Dishonesty	148	76	t	The Mace of Dishonesty
11	Flail	Libation	139	44	t	The Flail of Libation
12	Lance	Marriage	64	40	f	The Lance of Marriage
13	Dagger	Dishonesty	90	100	f	The Dagger of Dishonesty
14	Cutlass	Envy	43	86	t	The Cutlass of Envy
15	Swiss Dagger	Pudding	103	72	f	The Swiss Dagger of Pudding
16	Halberd	Wit	163	46	f	The Halberd of Wit
17	Long Sword	Marriage	146	32	t	The Long Sword of Marriage
18	War Scythe	Ability	21	44	t	The War Scythe of Ability
19	Axe	Talent	51	45	f	The Axe of Talent
20	Sabre	Dishonesty	87	100	f	The Sabre of Dishonesty
21	Foil	Divorce	49	71	f	The Foil of Divorce
22	Spoon	Sleep	132	94	t	The Spoon of Sleep
23	Staff	Libation	197	40	f	The Staff of Libation
24	Foil	Awareness	195	40	f	The Foil of Awareness
25	Foil	Pudding	75	44	t	The Foil of Pudding
26	Spear	Horror	199	28	t	The Spear of Horror
27	Gladius	Argument	125	67	f	The Gladius of Argument
28	Cutlass	Solitude	100	40	f	The Cutlass of Solitude
29	Hatchet	Uncle Dave	95	89	t	The Hatchet of Uncle Dave
30	Cutlass	Generosity	67	80	t	The Cutlass of Generosity
31	Claymore	Envy	33	93	t	The Claymore of Envy
32	Long Sword	Wisdom	58	66	f	The Long Sword of Wisdom
33	Spoon	Generation	176	28	t	The Spoon of Generation
34	War Scythe	Failure	115	87	t	The War Scythe of Failure
35	Spoon	Confusion	42	42	f	The Spoon of Confusion
36	Sponge	Growth	198	75	f	The Sponge of Growth
37	Swiss Dagger	Loneliness	70	78	t	The Swiss Dagger of Loneliness
38	Stick	Fornication	71	84	t	The Stick of Fornication
39	Club	Awareness	15	68	f	The Club of Awareness
40	Dagger	Honesty	52	98	t	The Dagger of Honesty
41	Gladius	Love	179	92	f	The Gladius of Love
42	Gladius	Adversity	193	47	f	The Gladius of Adversity
43	Sword	Uncle Dave	61	25	f	The Sword of Uncle Dave
44	Short Sword	Slavery	24	49	t	The Short Sword of Slavery
45	Sword	Irritation	180	31	t	The Sword of Irritation
46	Knife	Loneliness	52	74	f	The Knife of Loneliness
47	Halberd	Luck	123	35	f	The Halberd of Luck
48	Halberd	Joy	80	100	f	The Halberd of Joy
49	Axe	Confusion	22	42	t	The Axe of Confusion
50	Stick	Beauty	200	80	t	The Stick of Beauty
51	Sabre	Talent	80	44	t	The Sabre of Talent
52	Pike	Timing	155	69	t	The Pike of Timing
53	Mace	Poverty	155	34	t	The Mace of Poverty
54	Baton	Failure	79	75	f	The Baton of Failure
55	Axe	Envy	152	28	t	The Axe of Envy
56	Foil	Fornication	20	64	f	The Foil of Fornication
57	Hatchet	Beauty	161	28	f	The Hatchet of Beauty
58	Club	Sorrow	133	29	f	The Club of Sorrow
59	Staff	Care	139	90	f	The Staff of Care
60	Flail	Pleasure	105	86	t	The Flail of Pleasure
61	Halberd	Anger	50	36	f	The Halberd of Anger
62	Halberd	Sorrow	11	96	t	The Halberd of Sorrow
63	Club	Advantage	60	89	t	The Club of Advantage
64	Sponge	Pudding	160	57	t	The Sponge of Pudding
65	Foil	Pudding	19	99	t	The Foil of Pudding
66	Foil	Joy	87	84	t	The Foil of Joy
67	Pike	Growth	77	71	t	The Pike of Growth
68	Gladius	Truth	125	44	t	The Gladius of Truth
69	Knife	Awareness	143	37	t	The Knife of Awareness
70	Spear	Generosity	150	55	t	The Spear of Generosity
71	Gladius	Success	145	60	f	The Gladius of Success
72	Short Sword	Divorce	49	26	t	The Short Sword of Divorce
73	Cutlass	Talent	130	38	t	The Cutlass of Talent
74	Hatchet	Beauty	170	49	f	The Hatchet of Beauty
75	Foil	Envy	30	89	f	The Foil of Envy
76	Sponge	Confusion	183	100	t	The Sponge of Confusion
77	Stick	Wealth	55	52	t	The Stick of Wealth
78	Long Sword	Fornication	96	66	t	The Long Sword of Fornication
79	Mace	Uncle Dave	175	87	t	The Mace of Uncle Dave
80	Pike	Loneliness	134	47	t	The Pike of Loneliness
81	Club	Truth	175	37	t	The Club of Truth
82	Spear	Luxury	14	81	f	The Spear of Luxury
83	Short Sword	Inebriation	180	98	f	The Short Sword of Inebriation
84	Lance	Class	13	81	t	The Lance of Class
85	Staff	Advantage	9	68	f	The Staff of Advantage
86	Cutlass	Irritation	191	34	f	The Cutlass of Irritation
87	Hatchet	Timing	52	85	f	The Hatchet of Timing
88	Spoon	Honesty	103	74	f	The Spoon of Honesty
89	Claymore	Truth	31	31	t	The Claymore of Truth
90	Mace	Right	33	38	t	The Mace of Right
91	Long Sword	Right	62	63	t	The Long Sword of Right
92	Staff	Pudding	178	72	f	The Staff of Pudding
93	Foil	Envy	96	93	t	The Foil of Envy
94	Axe	Envy	134	63	f	The Axe of Envy
95	Club	Libation	33	54	f	The Club of Libation
96	Spear	Appetite	136	62	t	The Spear of Appetite
97	Staff	Talent	95	79	f	The Staff of Talent
98	Flail	Growth	113	41	f	The Flail of Growth
99	Cutlass	Luxury	48	37	f	The Cutlass of Luxury
100	Sabre	Truth	39	56	f	The Sabre of Truth
101	Dagger	Advantage	113	92	t	The Dagger of Advantage
102	Gladius	Peace	199	94	f	The Gladius of Peace
103	Sword	Slavery	110	87	f	The Sword of Slavery
104	Axe	Righteousness	43	88	t	The Axe of Righteousness
105	Sponge	Luxury	111	35	f	The Sponge of Luxury
106	Axe	Inebriation	161	76	t	The Axe of Inebriation
107	Flail	Gain	121	46	f	The Flail of Gain
108	Halberd	Talent	160	48	t	The Halberd of Talent
109	Claymore	Pleasure	181	75	t	The Claymore of Pleasure
110	Gladius	Instigation	128	71	t	The Gladius of Instigation
111	Hatchet	Confusion	193	74	f	The Hatchet of Confusion
112	Short Sword	Argument	18	43	f	The Short Sword of Argument
113	Lance	Poverty	110	30	t	The Lance of Poverty
114	Axe	Ability	147	65	f	The Axe of Ability
115	Mace	Talent	96	55	t	The Mace of Talent
116	Knife	Love	62	93	t	The Knife of Love
117	Short Sword	Anger	114	35	f	The Short Sword of Anger
118	Flail	Dedication	21	43	t	The Flail of Dedication
119	Claymore	Wisdom	36	78	t	The Claymore of Wisdom
120	Spear	Libation	190	32	f	The Spear of Libation
121	Gladius	Divorce	109	46	f	The Gladius of Divorce
122	Flail	Pleasure	158	88	t	The Flail of Pleasure
123	Spear	Sleep	125	48	t	The Spear of Sleep
124	Short Sword	Luck	93	82	f	The Short Sword of Luck
125	Stick	Sleep	39	50	t	The Stick of Sleep
126	Sponge	Generation	162	95	t	The Sponge of Generation
127	Pike	Hatred	80	55	t	The Pike of Hatred
128	Stick	Success	98	85	t	The Stick of Success
129	Hammer	Slavery	150	90	f	The Hammer of Slavery
130	Pike	Thought	147	31	f	The Pike of Thought
131	Hatchet	Envy	78	32	t	The Hatchet of Envy
132	Long Sword	Horror	129	29	f	The Long Sword of Horror
133	Lance	Adversity	95	90	t	The Lance of Adversity
134	Sword	Confusion	47	27	t	The Sword of Confusion
135	Foil	Brilliance	180	84	f	The Foil of Brilliance
136	Dagger	Pudding	105	45	t	The Dagger of Pudding
137	Knife	Pudding	141	74	f	The Knife of Pudding
138	Long Sword	Justice	148	57	t	The Long Sword of Justice
139	Sabre	Talent	8	25	t	The Sabre of Talent
140	Halberd	Divorce	175	35	t	The Halberd of Divorce
141	Pike	Beauty	103	31	f	The Pike of Beauty
142	Hammer	Timing	100	29	t	The Hammer of Timing
143	Gladius	Calm	75	33	t	The Gladius of Calm
144	Sponge	Brilliance	73	54	t	The Sponge of Brilliance
145	War Scythe	Happiness	35	45	t	The War Scythe of Happiness
146	Swiss Dagger	Sorrow	92	31	t	The Swiss Dagger of Sorrow
147	Gladius	Stupidity	125	29	f	The Gladius of Stupidity
148	Spear	Timing	120	91	f	The Spear of Timing
149	Spoon	Care	87	63	t	The Spoon of Care
150	War Scythe	Poverty	166	35	t	The War Scythe of Poverty
151	Axe	Honesty	97	44	f	The Axe of Honesty
152	Mace	Luck	142	50	t	The Mace of Luck
153	Short Sword	Envy	139	33	t	The Short Sword of Envy
154	Sabre	Bravery	34	88	t	The Sabre of Bravery
155	Sponge	Talent	21	94	f	The Sponge of Talent
156	Halberd	Stupidity	135	28	t	The Halberd of Stupidity
157	Cutlass	Honesty	106	58	f	The Cutlass of Honesty
158	Sword	Dedication	117	39	f	The Sword of Dedication
159	Gladius	Envy	169	33	t	The Gladius of Envy
160	Dagger	Philosophy	180	48	f	The Dagger of Philosophy
161	War Scythe	Truth	168	68	t	The War Scythe of Truth
162	Sword	Loneliness	177	36	f	The Sword of Loneliness
163	Hammer	Coldness	112	68	f	The Hammer of Coldness
164	Spoon	Failure	124	38	t	The Spoon of Failure
165	Club	Loss	65	87	t	The Club of Loss
166	Spoon	Gain	146	62	t	The Spoon of Gain
167	Foil	Joy	157	64	t	The Foil of Joy
168	Foil	Happiness	176	78	t	The Foil of Happiness
169	Axe	Adversity	142	52	f	The Axe of Adversity
170	War Scythe	Fear	177	97	t	The War Scythe of Fear
171	Sabre	Sleep	32	36	t	The Sabre of Sleep
172	Long Sword	Wealth	39	39	f	The Long Sword of Wealth
173	Short Sword	Irritation	39	39	t	The Short Sword of Irritation
174	Claymore	Failure	162	96	f	The Claymore of Failure
175	Club	Libation	197	92	f	The Club of Libation
176	Spear	Fiction	172	88	f	The Spear of Fiction
177	Sword	Generation	119	77	t	The Sword of Generation
178	Knife	Fiction	90	65	f	The Knife of Fiction
179	Lance	Libation	44	57	t	The Lance of Libation
180	Foil	Instigation	123	86	t	The Foil of Instigation
181	Sword	Uncle Dave	59	49	f	The Sword of Uncle Dave
182	Staff	Loneliness	44	72	f	The Staff of Loneliness
183	Mace	Truth	160	65	t	The Mace of Truth
184	Cutlass	Growth	73	48	t	The Cutlass of Growth
185	Hammer	Anger	138	85	t	The Hammer of Anger
186	Sabre	Fiction	10	46	t	The Sabre of Fiction
187	Claymore	Slavery	64	50	t	The Claymore of Slavery
188	Claymore	Sorrow	41	30	f	The Claymore of Sorrow
189	Baton	Envy	104	56	t	The Baton of Envy
190	Stick	Right	106	25	f	The Stick of Right
191	Hammer	Justice	172	59	t	The Hammer of Justice
192	Staff	Thought	77	28	f	The Staff of Thought
193	Foil	Loneliness	177	64	t	The Foil of Loneliness
194	Long Sword	Argument	150	77	t	The Long Sword of Argument
195	War Scythe	Fiction	168	65	f	The War Scythe of Fiction
196	Flail	Uncle Dave	73	74	t	The Flail of Uncle Dave
197	Halberd	Confusion	156	50	f	The Halberd of Confusion
198	Club	Clarity	36	93	t	The Club of Clarity
199	Axe	Solitude	186	34	f	The Axe of Solitude
200	Flail	Anger	135	77	f	The Flail of Anger
201	Flail	Stupidity	58	26	f	The Flail of Stupidity
202	Axe	Appetite	24	26	f	The Axe of Appetite
203	Short Sword	Right	37	53	f	The Short Sword of Right
204	Halberd	Generosity	161	30	f	The Halberd of Generosity
205	Spoon	Peace	35	92	f	The Spoon of Peace
206	Short Sword	Marriage	166	50	t	The Short Sword of Marriage
207	Stick	Clarity	57	45	t	The Stick of Clarity
208	Lance	Ability	177	72	f	The Lance of Ability
209	Spear	Gain	165	54	f	The Spear of Gain
210	Spoon	Sleep	30	54	t	The Spoon of Sleep
211	Swiss Dagger	Belief	67	73	t	The Swiss Dagger of Belief
212	Short Sword	Dedication	155	25	f	The Short Sword of Dedication
213	Flail	Adversity	107	82	t	The Flail of Adversity
214	Hammer	Luck	124	96	f	The Hammer of Luck
215	Club	Happiness	37	32	f	The Club of Happiness
216	Staff	Poverty	139	70	f	The Staff of Poverty
217	Hammer	Talent	20	55	f	The Hammer of Talent
218	Hammer	Wit	36	50	f	The Hammer of Wit
219	Hammer	Goodness	197	71	f	The Hammer of Goodness
220	Club	Dedication	105	94	t	The Club of Dedication
221	Knife	Class	194	97	f	The Knife of Class
222	Cutlass	Pudding	121	56	t	The Cutlass of Pudding
223	Lance	Freedom	141	56	t	The Lance of Freedom
224	Baton	Right	151	31	t	The Baton of Right
225	Spear	Talent	52	86	f	The Spear of Talent
226	Staff	Slavery	191	36	t	The Staff of Slavery
227	Flail	Belief	83	90	t	The Flail of Belief
228	Mace	Class	99	60	f	The Mace of Class
229	Baton	Calm	190	78	t	The Baton of Calm
230	Sabre	Brilliance	99	95	f	The Sabre of Brilliance
231	Axe	Confusion	187	86	f	The Axe of Confusion
232	Hammer	Envy	105	73	f	The Hammer of Envy
233	Hatchet	Hatred	174	58	t	The Hatchet of Hatred
234	Staff	Bravery	85	45	t	The Staff of Bravery
235	Sabre	Beauty	179	45	f	The Sabre of Beauty
236	Knife	Hatred	79	60	f	The Knife of Hatred
237	Hatchet	Ability	33	60	t	The Hatchet of Ability
238	Claymore	Marriage	9	71	t	The Claymore of Marriage
239	Sabre	Love	70	52	t	The Sabre of Love
240	Knife	Inebriation	116	47	t	The Knife of Inebriation
241	Swiss Dagger	Appetite	40	27	t	The Swiss Dagger of Appetite
242	Swiss Dagger	Dedication	170	59	f	The Swiss Dagger of Dedication
243	Foil	Ability	109	34	f	The Foil of Ability
244	Sponge	Truth	12	59	t	The Sponge of Truth
245	Baton	Joy	146	94	f	The Baton of Joy
246	Sword	Anger	112	30	t	The Sword of Anger
247	Claymore	Adversity	168	37	t	The Claymore of Adversity
248	Pike	Wealth	72	59	f	The Pike of Wealth
249	Hatchet	Confusion	64	57	f	The Hatchet of Confusion
250	Swiss Dagger	Loneliness	191	31	t	The Swiss Dagger of Loneliness
251	Pike	Uncle Dave	142	87	t	The Pike of Uncle Dave
252	Pike	Uncle Dave	150	46	f	The Pike of Uncle Dave
253	War Scythe	Libation	21	30	f	The War Scythe of Libation
254	Long Sword	Ability	11	43	f	The Long Sword of Ability
255	War Scythe	Truth	174	98	t	The War Scythe of Truth
256	Mace	Luck	41	30	t	The Mace of Luck
257	Hatchet	Loneliness	126	28	f	The Hatchet of Loneliness
258	Long Sword	Truth	174	78	t	The Long Sword of Truth
259	Sword	Bravery	70	80	f	The Sword of Bravery
260	Foil	Slavery	8	36	f	The Foil of Slavery
261	Cutlass	Inebriation	164	93	t	The Cutlass of Inebriation
262	War Scythe	Generosity	23	47	t	The War Scythe of Generosity
263	Sabre	Advantage	33	87	f	The Sabre of Advantage
264	Short Sword	Anger	33	100	f	The Short Sword of Anger
265	Foil	Fiction	95	57	f	The Foil of Fiction
266	Long Sword	Generation	129	52	f	The Long Sword of Generation
267	Pike	Truth	101	73	f	The Pike of Truth
268	Foil	Thought	140	47	t	The Foil of Thought
269	Claymore	Calm	191	92	f	The Claymore of Calm
270	Pike	Luck	22	37	t	The Pike of Luck
271	Sponge	Justice	177	87	t	The Sponge of Justice
272	Foil	Diversity	63	42	f	The Foil of Diversity
273	Pike	Irritation	100	30	f	The Pike of Irritation
274	Flail	Thought	30	76	f	The Flail of Thought
275	Mace	Appetite	47	75	f	The Mace of Appetite
276	Swiss Dagger	Slavery	180	30	t	The Swiss Dagger of Slavery
277	Halberd	Sorrow	70	63	f	The Halberd of Sorrow
278	Hammer	Generosity	102	83	t	The Hammer of Generosity
279	Pike	Sleep	76	25	f	The Pike of Sleep
280	Knife	Dedication	76	53	f	The Knife of Dedication
281	Staff	Riches	146	46	f	The Staff of Riches
282	Baton	Wealth	166	94	t	The Baton of Wealth
283	Spear	Envy	157	26	t	The Spear of Envy
284	Flail	Philosophy	115	65	f	The Flail of Philosophy
285	Mace	Adversity	53	53	t	The Mace of Adversity
286	Short Sword	Coldness	42	83	f	The Short Sword of Coldness
287	Spear	Right	35	80	t	The Spear of Right
288	Foil	Calm	166	93	f	The Foil of Calm
289	Gladius	Dishonesty	130	96	t	The Gladius of Dishonesty
290	Hatchet	Envy	126	91	t	The Hatchet of Envy
291	Spear	Divorce	131	80	f	The Spear of Divorce
292	Hammer	Bravery	73	96	f	The Hammer of Bravery
293	Swiss Dagger	Talent	199	91	t	The Swiss Dagger of Talent
294	War Scythe	Justice	137	47	t	The War Scythe of Justice
295	Foil	Libation	187	93	f	The Foil of Libation
296	Sponge	Slavery	104	28	t	The Sponge of Slavery
297	Swiss Dagger	Generation	79	31	f	The Swiss Dagger of Generation
298	Axe	Gain	67	29	t	The Axe of Gain
299	Spoon	Solitude	79	35	f	The Spoon of Solitude
300	Lance	Argument	97	89	f	The Lance of Argument
301	Spoon	Failure	146	53	t	The Spoon of Failure
302	Claymore	Belief	180	67	t	The Claymore of Belief
303	Long Sword	Awareness	161	77	f	The Long Sword of Awareness
304	Baton	Love	94	83	f	The Baton of Love
305	Spoon	Failure	89	48	t	The Spoon of Failure
306	Flail	Kindness	138	45	f	The Flail of Kindness
307	Sponge	Clarity	154	70	t	The Sponge of Clarity
308	Spoon	Advantage	99	72	t	The Spoon of Advantage
309	War Scythe	Joy	169	77	f	The War Scythe of Joy
310	Claymore	Confusion	136	96	t	The Claymore of Confusion
311	War Scythe	Love	150	87	t	The War Scythe of Love
312	Sword	Truth	24	26	f	The Sword of Truth
313	Cutlass	Uncle Dave	157	99	f	The Cutlass of Uncle Dave
314	Hammer	Appetite	51	31	f	The Hammer of Appetite
315	Dagger	Slavery	165	87	f	The Dagger of Slavery
316	Halberd	Bravery	13	93	f	The Halberd of Bravery
317	Long Sword	Wit	54	80	t	The Long Sword of Wit
318	Dagger	Fornication	168	55	f	The Dagger of Fornication
319	Halberd	Thought	17	81	f	The Halberd of Thought
320	Foil	Solitude	18	44	t	The Foil of Solitude
321	Foil	Gain	127	80	t	The Foil of Gain
322	Halberd	Bravery	115	68	f	The Halberd of Bravery
323	Claymore	Dishonesty	139	77	f	The Claymore of Dishonesty
324	Swiss Dagger	Sleep	102	98	t	The Swiss Dagger of Sleep
325	Sword	Wealth	176	61	t	The Sword of Wealth
326	Spear	Care	67	46	t	The Spear of Care
327	Flail	Growth	25	40	f	The Flail of Growth
328	Pike	Fear	31	68	t	The Pike of Fear
329	Mace	Libation	94	39	t	The Mace of Libation
330	Cutlass	Peace	82	86	f	The Cutlass of Peace
331	Spear	Horror	156	46	t	The Spear of Horror
332	Staff	Freedom	176	46	t	The Staff of Freedom
333	Sword	Gain	66	91	f	The Sword of Gain
334	Hammer	Happiness	61	31	t	The Hammer of Happiness
335	Spoon	Bravery	19	86	t	The Spoon of Bravery
336	Claymore	Libation	39	80	t	The Claymore of Libation
337	Sabre	Movement	45	97	f	The Sabre of Movement
338	Baton	Riches	188	42	f	The Baton of Riches
339	Hatchet	Bravery	166	42	t	The Hatchet of Bravery
340	Foil	Peace	9	80	f	The Foil of Peace
341	Axe	Peace	80	32	t	The Axe of Peace
342	Short Sword	Justice	45	83	f	The Short Sword of Justice
343	Cutlass	Philosophy	127	64	t	The Cutlass of Philosophy
344	Stick	Slavery	8	87	t	The Stick of Slavery
345	Cutlass	Belief	108	48	f	The Cutlass of Belief
346	Stick	Righteousness	37	70	t	The Stick of Righteousness
347	Long Sword	Confusion	12	56	f	The Long Sword of Confusion
348	Hatchet	Uncle Dave	153	43	t	The Hatchet of Uncle Dave
349	Club	Fear	174	57	f	The Club of Fear
350	Cutlass	Stupidity	72	59	f	The Cutlass of Stupidity
351	Spoon	Inebriation	160	80	t	The Spoon of Inebriation
352	Foil	Pudding	84	45	t	The Foil of Pudding
353	Hatchet	Failure	118	78	t	The Hatchet of Failure
354	Swiss Dagger	Poverty	107	85	f	The Swiss Dagger of Poverty
355	Sponge	Fornication	176	35	f	The Sponge of Fornication
356	Baton	Fiction	70	58	f	The Baton of Fiction
357	Mace	Thought	166	82	t	The Mace of Thought
358	Lance	Solitude	166	44	t	The Lance of Solitude
359	Sabre	Kindness	29	63	t	The Sabre of Kindness
360	Claymore	Justice	31	72	f	The Claymore of Justice
361	Short Sword	Fornication	114	54	f	The Short Sword of Fornication
362	Pike	Belief	27	27	f	The Pike of Belief
363	Flail	Appetite	185	57	t	The Flail of Appetite
364	Sponge	Irritation	184	72	t	The Sponge of Irritation
365	Stick	Divorce	158	56	f	The Stick of Divorce
366	Hammer	Dishonesty	181	97	t	The Hammer of Dishonesty
367	Spoon	Belief	45	53	f	The Spoon of Belief
368	Foil	Argument	196	58	t	The Foil of Argument
369	Pike	Talent	29	59	t	The Pike of Talent
370	Hatchet	Truth	132	45	f	The Hatchet of Truth
371	Dagger	Riches	50	44	t	The Dagger of Riches
372	Spoon	Freedom	21	94	f	The Spoon of Freedom
373	Cutlass	Joy	138	94	t	The Cutlass of Joy
374	Claymore	Beauty	107	46	f	The Claymore of Beauty
375	Cutlass	Riches	148	69	f	The Cutlass of Riches
376	Sword	Poverty	194	34	t	The Sword of Poverty
377	Baton	Argument	58	85	t	The Baton of Argument
378	Cutlass	Class	126	96	t	The Cutlass of Class
379	Baton	Philosophy	14	55	f	The Baton of Philosophy
380	Pike	Dishonesty	25	64	t	The Pike of Dishonesty
381	Short Sword	Talent	38	69	t	The Short Sword of Talent
382	Baton	Appetite	65	45	t	The Baton of Appetite
383	Dagger	Uncle Dave	72	47	t	The Dagger of Uncle Dave
384	Lance	Bravery	173	42	t	The Lance of Bravery
385	Halberd	Inebriation	21	75	f	The Halberd of Inebriation
386	Stick	Anger	85	84	t	The Stick of Anger
387	Long Sword	Luxury	150	28	f	The Long Sword of Luxury
388	Hatchet	Diversity	159	96	t	The Hatchet of Diversity
389	Halberd	Stupidity	27	31	f	The Halberd of Stupidity
390	Lance	Pudding	14	100	t	The Lance of Pudding
391	Dagger	Talent	98	36	t	The Dagger of Talent
392	Spoon	Righteousness	9	60	f	The Spoon of Righteousness
393	Flail	Thought	190	92	t	The Flail of Thought
394	Spear	Timing	122	66	f	The Spear of Timing
395	Hatchet	Appetite	150	64	f	The Hatchet of Appetite
396	Spoon	Honesty	37	64	f	The Spoon of Honesty
397	Dagger	Timing	78	47	t	The Dagger of Timing
398	Sword	Uncle Dave	147	80	t	The Sword of Uncle Dave
399	Swiss Dagger	Belief	198	80	t	The Swiss Dagger of Belief
400	Stick	Advantage	112	72	t	The Stick of Advantage
401	Pike	Thought	73	49	f	The Pike of Thought
402	War Scythe	Advantage	122	62	t	The War Scythe of Advantage
403	Spear	Loneliness	171	56	f	The Spear of Loneliness
404	Sword	Calm	21	80	t	The Sword of Calm
405	Sponge	Awareness	48	27	t	The Sponge of Awareness
406	Axe	Generosity	151	56	f	The Axe of Generosity
407	Long Sword	Talent	49	86	t	The Long Sword of Talent
408	Dagger	Sorrow	68	99	t	The Dagger of Sorrow
409	Lance	Loss	11	60	f	The Lance of Loss
410	Sabre	Diversity	62	52	f	The Sabre of Diversity
411	Axe	Advantage	82	76	t	The Axe of Advantage
412	Cutlass	Inebriation	99	38	t	The Cutlass of Inebriation
413	Hammer	Sleep	95	68	t	The Hammer of Sleep
414	Lance	Love	122	65	t	The Lance of Love
415	Pike	Awareness	28	95	f	The Pike of Awareness
416	Sabre	Appetite	58	100	f	The Sabre of Appetite
417	Gladius	Riches	117	82	f	The Gladius of Riches
418	Sword	Diversity	17	84	t	The Sword of Diversity
419	Sword	Solitude	82	73	t	The Sword of Solitude
420	Sabre	Sleep	11	86	f	The Sabre of Sleep
421	Halberd	Fiction	186	29	f	The Halberd of Fiction
422	Claymore	Hatred	186	31	t	The Claymore of Hatred
423	Hatchet	Ability	61	42	t	The Hatchet of Ability
424	Lance	Fiction	57	73	t	The Lance of Fiction
425	Axe	Argument	30	60	t	The Axe of Argument
426	Spear	Failure	145	78	f	The Spear of Failure
427	Halberd	Generosity	122	99	f	The Halberd of Generosity
428	Spear	Poverty	188	54	f	The Spear of Poverty
429	Club	Coldness	97	78	t	The Club of Coldness
430	Foil	Fornication	197	43	t	The Foil of Fornication
431	Flail	Stupidity	33	87	f	The Flail of Stupidity
432	Long Sword	Pudding	91	96	t	The Long Sword of Pudding
433	Flail	Inebriation	182	40	f	The Flail of Inebriation
434	Claymore	Goodness	105	72	t	The Claymore of Goodness
435	Flail	Loss	77	42	f	The Flail of Loss
436	Stick	Luxury	52	100	t	The Stick of Luxury
437	Sabre	Wealth	142	64	f	The Sabre of Wealth
438	Sponge	Talent	93	86	f	The Sponge of Talent
439	Foil	Slavery	155	56	t	The Foil of Slavery
440	Knife	Pudding	106	99	t	The Knife of Pudding
441	Gladius	Truth	199	95	f	The Gladius of Truth
442	Claymore	Generation	158	33	t	The Claymore of Generation
443	Short Sword	Class	37	79	t	The Short Sword of Class
444	Pike	Loss	27	58	t	The Pike of Loss
445	War Scythe	Advantage	63	73	f	The War Scythe of Advantage
446	Hammer	Wit	47	86	f	The Hammer of Wit
447	Sword	Horror	86	92	f	The Sword of Horror
448	Staff	Freedom	43	90	f	The Staff of Freedom
449	Flail	Slavery	175	86	t	The Flail of Slavery
450	Lance	Dishonesty	12	78	f	The Lance of Dishonesty
451	Sabre	Argument	176	47	f	The Sabre of Argument
452	Axe	Fiction	151	48	f	The Axe of Fiction
453	Staff	Sorrow	156	51	f	The Staff of Sorrow
454	Short Sword	Divorce	30	79	f	The Short Sword of Divorce
455	War Scythe	Justice	48	72	f	The War Scythe of Justice
456	Spoon	Beauty	24	40	t	The Spoon of Beauty
457	Sponge	Growth	71	57	f	The Sponge of Growth
458	Halberd	Generosity	19	45	f	The Halberd of Generosity
459	Foil	Pudding	133	33	f	The Foil of Pudding
460	Club	Movement	61	35	t	The Club of Movement
461	Dagger	Goodness	37	35	f	The Dagger of Goodness
462	Club	Success	161	60	f	The Club of Success
463	War Scythe	Truth	195	50	f	The War Scythe of Truth
464	Flail	Joy	148	53	t	The Flail of Joy
465	Swiss Dagger	Wealth	14	53	f	The Swiss Dagger of Wealth
466	Spoon	Honesty	171	37	f	The Spoon of Honesty
467	Flail	Loneliness	61	95	f	The Flail of Loneliness
468	Pike	Argument	126	37	t	The Pike of Argument
469	Pike	Solitude	182	66	f	The Pike of Solitude
470	Spoon	Sorrow	124	36	t	The Spoon of Sorrow
471	Sword	Diversity	19	88	f	The Sword of Diversity
472	Spoon	Sorrow	192	64	t	The Spoon of Sorrow
473	Club	Bravery	60	85	t	The Club of Bravery
474	Spoon	Loss	85	59	f	The Spoon of Loss
475	War Scythe	Right	125	99	f	The War Scythe of Right
476	Spear	Sorrow	114	61	t	The Spear of Sorrow
477	Cutlass	Adversity	75	27	f	The Cutlass of Adversity
478	Spoon	Talent	98	69	f	The Spoon of Talent
479	Club	Dishonesty	139	82	f	The Club of Dishonesty
480	Spear	Beauty	62	44	f	The Spear of Beauty
481	Mace	Clarity	121	38	f	The Mace of Clarity
482	Sword	Poverty	60	85	f	The Sword of Poverty
483	Cutlass	Calm	165	74	t	The Cutlass of Calm
484	Axe	Argument	148	37	f	The Axe of Argument
485	Swiss Dagger	Goodness	127	63	t	The Swiss Dagger of Goodness
486	Stick	Slavery	200	90	t	The Stick of Slavery
487	Axe	Stupidity	98	48	f	The Axe of Stupidity
488	Claymore	Loneliness	159	88	t	The Claymore of Loneliness
489	Cutlass	Fiction	43	77	t	The Cutlass of Fiction
490	Long Sword	Generation	55	72	f	The Long Sword of Generation
491	Lance	Envy	50	57	f	The Lance of Envy
492	Sword	Growth	150	53	f	The Sword of Growth
493	Lance	Beauty	43	29	t	The Lance of Beauty
494	Stick	Riches	109	44	f	The Stick of Riches
495	Mace	Right	119	43	t	The Mace of Right
496	Foil	Class	56	46	t	The Foil of Class
497	Cutlass	Gain	103	95	f	The Cutlass of Gain
498	Short Sword	Fear	188	86	f	The Short Sword of Fear
499	Lance	Fornication	40	41	t	The Lance of Fornication
500	Hatchet	Anger	195	29	t	The Hatchet of Anger
501	Claymore	Growth	105	65	t	The Claymore of Growth
502	Hammer	Argument	93	80	t	The Hammer of Argument
503	Flail	Gain	98	61	f	The Flail of Gain
504	Lance	Care	68	72	t	The Lance of Care
505	Mace	Goodness	140	56	f	The Mace of Goodness
506	Gladius	Instigation	39	84	t	The Gladius of Instigation
507	Swiss Dagger	Advantage	186	45	t	The Swiss Dagger of Advantage
508	Spear	Beauty	147	86	t	The Spear of Beauty
509	Foil	Thought	157	97	f	The Foil of Thought
510	Flail	Generation	131	48	t	The Flail of Generation
511	Axe	Thought	81	60	f	The Axe of Thought
512	Dagger	Freedom	32	32	f	The Dagger of Freedom
513	Swiss Dagger	Adversity	46	61	f	The Swiss Dagger of Adversity
514	Spoon	Joy	180	43	t	The Spoon of Joy
515	Halberd	Gain	71	81	t	The Halberd of Gain
516	Hammer	Loss	54	98	f	The Hammer of Loss
517	Sabre	Talent	86	67	t	The Sabre of Talent
518	Swiss Dagger	Success	17	58	t	The Swiss Dagger of Success
519	Club	Awareness	58	76	f	The Club of Awareness
520	Flail	Dishonesty	100	33	t	The Flail of Dishonesty
521	Sponge	Wisdom	83	71	t	The Sponge of Wisdom
522	Pike	Inebriation	32	67	t	The Pike of Inebriation
523	Hatchet	Calm	27	59	f	The Hatchet of Calm
524	Axe	Truth	98	35	f	The Axe of Truth
525	Mace	Righteousness	70	34	f	The Mace of Righteousness
526	Flail	Beauty	156	95	f	The Flail of Beauty
527	Mace	Dishonesty	135	99	t	The Mace of Dishonesty
528	Mace	Clarity	136	68	t	The Mace of Clarity
529	Axe	Stupidity	76	89	t	The Axe of Stupidity
530	Knife	Wit	174	92	f	The Knife of Wit
531	Cutlass	Appetite	150	56	f	The Cutlass of Appetite
532	Halberd	Adversity	28	65	t	The Halberd of Adversity
533	Club	Failure	99	41	t	The Club of Failure
534	Mace	Solitude	47	31	t	The Mace of Solitude
535	Sabre	Belief	195	95	f	The Sabre of Belief
536	Club	Pleasure	41	68	t	The Club of Pleasure
537	Long Sword	Anger	151	92	t	The Long Sword of Anger
538	Gladius	Fiction	45	83	f	The Gladius of Fiction
539	Stick	Diversity	89	59	f	The Stick of Diversity
540	Staff	Inebriation	173	38	t	The Staff of Inebriation
541	Lance	Beauty	194	98	t	The Lance of Beauty
542	Hammer	Argument	8	87	f	The Hammer of Argument
543	Mace	Ability	120	50	f	The Mace of Ability
544	Long Sword	Pudding	87	50	t	The Long Sword of Pudding
545	Sabre	Right	162	45	t	The Sabre of Right
546	Foil	Luck	84	52	t	The Foil of Luck
547	Spear	Clarity	192	63	f	The Spear of Clarity
548	Axe	Kindness	193	31	f	The Axe of Kindness
549	Staff	Sleep	164	58	t	The Staff of Sleep
550	Foil	Success	60	30	f	The Foil of Success
551	Mace	Love	96	54	t	The Mace of Love
552	Staff	Sorrow	145	25	f	The Staff of Sorrow
553	Sponge	Luxury	58	76	f	The Sponge of Luxury
554	Mace	Joy	28	27	f	The Mace of Joy
555	Long Sword	Generation	178	77	t	The Long Sword of Generation
556	Hammer	Horror	87	43	t	The Hammer of Horror
557	War Scythe	Success	173	87	f	The War Scythe of Success
558	Long Sword	Calm	97	97	t	The Long Sword of Calm
559	Gladius	Belief	13	45	t	The Gladius of Belief
560	Flail	Adversity	48	72	f	The Flail of Adversity
561	Long Sword	Coldness	129	81	f	The Long Sword of Coldness
562	Dagger	Generosity	81	88	f	The Dagger of Generosity
563	Spear	Failure	186	63	t	The Spear of Failure
564	Lance	Generosity	82	67	f	The Lance of Generosity
565	Dagger	Confusion	141	83	t	The Dagger of Confusion
566	Mace	Luck	100	78	f	The Mace of Luck
567	Dagger	Fear	150	100	f	The Dagger of Fear
568	War Scythe	Diversity	64	76	t	The War Scythe of Diversity
569	War Scythe	Poverty	173	60	t	The War Scythe of Poverty
570	Foil	Generation	59	34	f	The Foil of Generation
571	Flail	Love	54	44	t	The Flail of Love
572	Club	Appetite	122	98	t	The Club of Appetite
573	Gladius	Honesty	160	93	t	The Gladius of Honesty
574	Club	Hatred	123	45	t	The Club of Hatred
575	Spoon	Love	62	32	f	The Spoon of Love
576	Sabre	Talent	43	55	t	The Sabre of Talent
577	Halberd	Divorce	166	84	f	The Halberd of Divorce
578	Sword	Wealth	37	36	t	The Sword of Wealth
579	War Scythe	Philosophy	165	54	f	The War Scythe of Philosophy
580	Hatchet	Generation	60	33	t	The Hatchet of Generation
581	Halberd	Pleasure	145	76	t	The Halberd of Pleasure
582	Hammer	Gain	177	57	t	The Hammer of Gain
583	Axe	Dedication	169	65	t	The Axe of Dedication
584	Spoon	Loneliness	46	83	f	The Spoon of Loneliness
585	Halberd	Freedom	157	37	f	The Halberd of Freedom
586	Club	Truth	194	74	f	The Club of Truth
587	Sword	Poverty	92	49	f	The Sword of Poverty
588	Halberd	Awareness	89	65	f	The Halberd of Awareness
589	Claymore	Adversity	147	63	f	The Claymore of Adversity
590	Stick	Happiness	83	52	f	The Stick of Happiness
591	Hatchet	Talent	185	50	f	The Hatchet of Talent
592	Knife	Argument	145	98	f	The Knife of Argument
593	Spear	Sorrow	119	67	t	The Spear of Sorrow
594	Club	Libation	108	52	f	The Club of Libation
595	Knife	Hatred	133	68	t	The Knife of Hatred
596	Knife	Pudding	54	34	f	The Knife of Pudding
597	Knife	Gain	176	46	t	The Knife of Gain
598	Short Sword	Awareness	159	36	f	The Short Sword of Awareness
599	Spear	Loneliness	92	39	t	The Spear of Loneliness
600	Hatchet	Uncle Dave	90	93	t	The Hatchet of Uncle Dave
601	Knife	Instigation	72	80	t	The Knife of Instigation
602	Staff	Pleasure	113	78	f	The Staff of Pleasure
603	Club	Stupidity	148	58	t	The Club of Stupidity
604	Baton	Awareness	90	67	f	The Baton of Awareness
605	Club	Joy	128	29	f	The Club of Joy
606	Short Sword	Anger	168	88	t	The Short Sword of Anger
607	Claymore	Wealth	121	100	t	The Claymore of Wealth
608	Baton	Sleep	77	59	f	The Baton of Sleep
609	Staff	Class	180	61	f	The Staff of Class
610	Gladius	Dishonesty	151	26	f	The Gladius of Dishonesty
611	Mace	Beauty	65	64	t	The Mace of Beauty
612	Swiss Dagger	Talent	155	66	t	The Swiss Dagger of Talent
613	Claymore	Generation	155	79	f	The Claymore of Generation
614	Club	Righteousness	24	86	t	The Club of Righteousness
615	Sword	Right	80	40	t	The Sword of Right
616	Cutlass	Kindness	146	87	t	The Cutlass of Kindness
617	Baton	Love	120	100	f	The Baton of Love
618	Long Sword	Riches	30	94	t	The Long Sword of Riches
619	Halberd	Fiction	66	50	f	The Halberd of Fiction
620	Dagger	Libation	188	73	t	The Dagger of Libation
621	Staff	Loss	16	36	t	The Staff of Loss
622	Cutlass	Argument	45	69	t	The Cutlass of Argument
623	Halberd	Divorce	19	42	t	The Halberd of Divorce
624	Sabre	Pudding	40	53	f	The Sabre of Pudding
625	Staff	Libation	103	36	f	The Staff of Libation
626	Hammer	Confusion	80	65	f	The Hammer of Confusion
627	Sword	Kindness	87	80	f	The Sword of Kindness
628	Gladius	Riches	57	93	t	The Gladius of Riches
629	Club	Talent	146	42	t	The Club of Talent
630	Cutlass	Talent	86	100	f	The Cutlass of Talent
631	Club	Anger	133	35	f	The Club of Anger
632	Baton	Care	103	64	t	The Baton of Care
633	Spoon	Inebriation	12	81	f	The Spoon of Inebriation
634	Mace	Bravery	98	68	t	The Mace of Bravery
635	Hatchet	Horror	174	43	t	The Hatchet of Horror
636	Spoon	Horror	12	41	f	The Spoon of Horror
637	Mace	Generosity	52	72	t	The Mace of Generosity
638	Axe	Fiction	174	40	f	The Axe of Fiction
639	Spoon	Ability	166	86	f	The Spoon of Ability
640	Foil	Poverty	197	49	t	The Foil of Poverty
641	Sword	Wit	39	49	f	The Sword of Wit
642	Dagger	Stupidity	48	87	t	The Dagger of Stupidity
643	Gladius	Kindness	145	43	f	The Gladius of Kindness
644	Pike	Pleasure	97	93	f	The Pike of Pleasure
645	Knife	Solitude	36	64	t	The Knife of Solitude
646	Long Sword	Bravery	37	88	t	The Long Sword of Bravery
647	Pike	Timing	186	25	t	The Pike of Timing
648	Pike	Belief	54	88	t	The Pike of Belief
649	Gladius	Loneliness	34	66	f	The Gladius of Loneliness
650	Sponge	Sorrow	43	67	t	The Sponge of Sorrow
651	Knife	Loneliness	72	56	f	The Knife of Loneliness
652	Sabre	Luck	77	99	f	The Sabre of Luck
653	Cutlass	Luck	156	87	t	The Cutlass of Luck
654	War Scythe	Wealth	33	45	f	The War Scythe of Wealth
655	Sponge	Wealth	192	49	f	The Sponge of Wealth
656	Spoon	Fiction	179	30	f	The Spoon of Fiction
657	Hatchet	Philosophy	197	36	f	The Hatchet of Philosophy
658	Staff	Confusion	97	65	f	The Staff of Confusion
659	Foil	Kindness	185	49	f	The Foil of Kindness
660	Staff	Appetite	89	52	f	The Staff of Appetite
661	Foil	Freedom	48	73	t	The Foil of Freedom
662	Sabre	Loneliness	188	89	t	The Sabre of Loneliness
663	Short Sword	Fornication	11	67	t	The Short Sword of Fornication
664	Stick	Marriage	62	85	f	The Stick of Marriage
665	Spear	Argument	73	29	t	The Spear of Argument
666	Claymore	Truth	23	67	t	The Claymore of Truth
667	Spoon	Awareness	192	54	t	The Spoon of Awareness
668	Mace	Truth	190	94	f	The Mace of Truth
669	Club	Care	153	54	f	The Club of Care
670	Stick	Poverty	103	99	f	The Stick of Poverty
671	Dagger	Horror	191	100	f	The Dagger of Horror
672	Spoon	Riches	78	42	f	The Spoon of Riches
673	Stick	Diversity	193	50	t	The Stick of Diversity
674	Baton	Horror	73	46	f	The Baton of Horror
675	Sabre	Slavery	117	63	f	The Sabre of Slavery
676	Halberd	Ability	171	35	f	The Halberd of Ability
677	Hatchet	Loneliness	57	49	t	The Hatchet of Loneliness
678	Knife	Philosophy	68	46	t	The Knife of Philosophy
679	Long Sword	Love	187	65	t	The Long Sword of Love
680	Foil	Wit	175	52	t	The Foil of Wit
681	Spear	Freedom	20	65	t	The Spear of Freedom
682	Spear	Stupidity	68	96	f	The Spear of Stupidity
683	Hammer	Wealth	187	53	t	The Hammer of Wealth
684	Pike	Irritation	11	43	f	The Pike of Irritation
685	Lance	Dishonesty	12	52	t	The Lance of Dishonesty
686	War Scythe	Freedom	150	100	f	The War Scythe of Freedom
687	Gladius	Love	107	87	t	The Gladius of Love
688	Long Sword	Poverty	112	45	t	The Long Sword of Poverty
689	Spear	Right	183	53	f	The Spear of Right
690	Pike	Talent	25	87	t	The Pike of Talent
691	Spear	Bravery	28	98	f	The Spear of Bravery
692	Flail	Care	157	58	f	The Flail of Care
693	Pike	Coldness	200	59	t	The Pike of Coldness
694	Flail	Brilliance	116	28	t	The Flail of Brilliance
695	Cutlass	Wit	137	65	f	The Cutlass of Wit
696	Mace	Righteousness	119	89	t	The Mace of Righteousness
697	Baton	Love	33	47	f	The Baton of Love
698	Swiss Dagger	Belief	90	49	t	The Swiss Dagger of Belief
699	Sponge	Joy	44	84	t	The Sponge of Joy
700	Pike	Poverty	60	79	t	The Pike of Poverty
701	Hammer	Clarity	84	65	f	The Hammer of Clarity
702	Hammer	Loss	26	63	f	The Hammer of Loss
703	Knife	Thought	53	91	t	The Knife of Thought
704	Baton	Wealth	194	69	t	The Baton of Wealth
705	Cutlass	Confusion	17	27	f	The Cutlass of Confusion
706	Hatchet	Divorce	193	61	f	The Hatchet of Divorce
707	Spoon	Generosity	13	87	f	The Spoon of Generosity
708	Gladius	Marriage	13	31	t	The Gladius of Marriage
709	Dagger	Wealth	27	68	t	The Dagger of Wealth
710	Hammer	Pleasure	38	99	f	The Hammer of Pleasure
711	Sword	Loss	18	47	t	The Sword of Loss
712	Swiss Dagger	Talent	140	77	t	The Swiss Dagger of Talent
713	Knife	Calm	163	96	f	The Knife of Calm
714	Hammer	Dishonesty	74	95	f	The Hammer of Dishonesty
715	Swiss Dagger	Inebriation	79	42	f	The Swiss Dagger of Inebriation
716	Hatchet	Brilliance	85	37	t	The Hatchet of Brilliance
717	Gladius	Hatred	195	36	t	The Gladius of Hatred
718	Pike	Calm	170	25	f	The Pike of Calm
719	Flail	Irritation	191	73	t	The Flail of Irritation
720	Claymore	Coldness	39	33	t	The Claymore of Coldness
721	War Scythe	Sleep	161	91	t	The War Scythe of Sleep
722	Mace	Righteousness	169	29	t	The Mace of Righteousness
723	Stick	Beauty	15	63	t	The Stick of Beauty
724	Spoon	Movement	154	55	f	The Spoon of Movement
725	Long Sword	Thought	168	30	t	The Long Sword of Thought
726	Flail	Advantage	14	83	f	The Flail of Advantage
727	Lance	Solitude	166	69	t	The Lance of Solitude
728	Club	Wealth	138	79	f	The Club of Wealth
729	Axe	Generation	57	96	f	The Axe of Generation
730	Knife	Talent	164	88	f	The Knife of Talent
731	Baton	Justice	18	28	t	The Baton of Justice
732	Halberd	Envy	42	40	f	The Halberd of Envy
733	Swiss Dagger	Ability	156	99	t	The Swiss Dagger of Ability
734	Spoon	Brilliance	24	45	f	The Spoon of Brilliance
735	Stick	Generosity	49	94	t	The Stick of Generosity
736	Stick	Pleasure	38	69	t	The Stick of Pleasure
737	War Scythe	Irritation	200	26	t	The War Scythe of Irritation
738	Axe	Divorce	100	36	t	The Axe of Divorce
739	Swiss Dagger	Diversity	196	97	f	The Swiss Dagger of Diversity
740	Spoon	Joy	105	28	f	The Spoon of Joy
741	Stick	Sorrow	158	90	t	The Stick of Sorrow
742	Spear	Bravery	135	99	f	The Spear of Bravery
743	Hammer	Pudding	162	74	t	The Hammer of Pudding
744	Halberd	Fear	15	35	f	The Halberd of Fear
745	Sword	Peace	104	66	t	The Sword of Peace
746	Flail	Adversity	160	97	f	The Flail of Adversity
747	Sponge	Appetite	76	99	t	The Sponge of Appetite
748	Long Sword	Fornication	142	100	f	The Long Sword of Fornication
749	Sabre	Philosophy	171	63	t	The Sabre of Philosophy
750	Flail	Horror	126	71	f	The Flail of Horror
751	Sabre	Gain	107	62	f	The Sabre of Gain
752	Cutlass	Slavery	19	60	f	The Cutlass of Slavery
753	Knife	Wisdom	110	44	t	The Knife of Wisdom
754	Claymore	Talent	38	54	t	The Claymore of Talent
755	Short Sword	Class	185	81	t	The Short Sword of Class
756	Spoon	Kindness	165	26	t	The Spoon of Kindness
757	Stick	Envy	48	34	t	The Stick of Envy
758	Foil	Sorrow	50	29	f	The Foil of Sorrow
759	Foil	Failure	123	37	f	The Foil of Failure
760	Club	Belief	114	49	f	The Club of Belief
761	Baton	Brilliance	36	93	t	The Baton of Brilliance
762	Stick	Freedom	147	76	t	The Stick of Freedom
763	Axe	Stupidity	26	91	t	The Axe of Stupidity
764	Staff	Marriage	90	76	t	The Staff of Marriage
765	Sponge	Truth	86	35	f	The Sponge of Truth
766	Short Sword	Fear	119	97	t	The Short Sword of Fear
767	War Scythe	Wisdom	30	65	t	The War Scythe of Wisdom
768	Flail	Adversity	122	29	t	The Flail of Adversity
769	Stick	Riches	17	70	f	The Stick of Riches
770	Knife	Wealth	66	67	t	The Knife of Wealth
771	Mace	Marriage	93	59	f	The Mace of Marriage
772	Swiss Dagger	Brilliance	76	89	f	The Swiss Dagger of Brilliance
773	Hatchet	Luck	23	85	t	The Hatchet of Luck
774	Staff	Justice	12	56	f	The Staff of Justice
775	Baton	Inebriation	19	93	f	The Baton of Inebriation
776	War Scythe	Pudding	37	27	f	The War Scythe of Pudding
777	Lance	Sleep	147	39	f	The Lance of Sleep
778	Baton	Uncle Dave	127	45	f	The Baton of Uncle Dave
779	Knife	Wit	186	59	t	The Knife of Wit
780	Short Sword	Libation	113	56	f	The Short Sword of Libation
781	War Scythe	Adversity	89	55	f	The War Scythe of Adversity
782	Stick	Ability	146	68	t	The Stick of Ability
783	Mace	Instigation	58	34	f	The Mace of Instigation
784	Sponge	Uncle Dave	66	98	f	The Sponge of Uncle Dave
785	Dagger	Diversity	9	26	f	The Dagger of Diversity
786	Swiss Dagger	Talent	36	59	t	The Swiss Dagger of Talent
787	Axe	Fiction	103	72	f	The Axe of Fiction
788	Short Sword	Talent	75	57	f	The Short Sword of Talent
789	Hatchet	Loneliness	126	66	t	The Hatchet of Loneliness
790	Mace	Wisdom	144	66	t	The Mace of Wisdom
791	Short Sword	Truth	135	43	f	The Short Sword of Truth
792	Cutlass	Peace	62	51	t	The Cutlass of Peace
793	Hammer	Brilliance	39	48	f	The Hammer of Brilliance
794	Lance	Dedication	165	36	t	The Lance of Dedication
795	Sponge	Success	109	99	t	The Sponge of Success
796	Dagger	Timing	37	84	t	The Dagger of Timing
797	Cutlass	Love	151	54	t	The Cutlass of Love
798	Hatchet	Dishonesty	183	52	t	The Hatchet of Dishonesty
799	Lance	Advantage	134	51	f	The Lance of Advantage
800	Swiss Dagger	Clarity	98	54	f	The Swiss Dagger of Clarity
801	Cutlass	Diversity	182	31	f	The Cutlass of Diversity
802	Short Sword	Talent	116	65	f	The Short Sword of Talent
803	Axe	Truth	129	78	t	The Axe of Truth
804	War Scythe	Appetite	48	71	f	The War Scythe of Appetite
805	Knife	Luck	86	41	t	The Knife of Luck
806	Sabre	Joy	189	86	t	The Sabre of Joy
807	Club	Generosity	159	27	f	The Club of Generosity
808	Club	Clarity	57	72	f	The Club of Clarity
809	Pike	Right	109	74	t	The Pike of Right
810	Sabre	Timing	90	55	t	The Sabre of Timing
811	Sabre	Talent	49	53	t	The Sabre of Talent
812	Lance	Dishonesty	157	51	t	The Lance of Dishonesty
813	Club	Riches	181	89	f	The Club of Riches
814	Spear	Coldness	47	32	f	The Spear of Coldness
815	Cutlass	Anger	102	85	t	The Cutlass of Anger
816	Dagger	Talent	131	87	f	The Dagger of Talent
817	Stick	Success	120	88	t	The Stick of Success
818	Staff	Loneliness	101	36	t	The Staff of Loneliness
819	Staff	Awareness	151	64	f	The Staff of Awareness
820	Hammer	Marriage	37	97	t	The Hammer of Marriage
821	Sabre	Envy	156	37	t	The Sabre of Envy
822	Halberd	Fear	22	51	t	The Halberd of Fear
823	Sword	Success	120	94	t	The Sword of Success
824	Sponge	Poverty	195	70	t	The Sponge of Poverty
825	Mace	Brilliance	96	62	t	The Mace of Brilliance
826	Spoon	Love	8	64	f	The Spoon of Love
827	Mace	Generosity	85	27	f	The Mace of Generosity
828	Hatchet	Loneliness	191	28	t	The Hatchet of Loneliness
829	Sword	Horror	181	25	f	The Sword of Horror
830	Axe	Truth	168	45	t	The Axe of Truth
831	Sponge	Sleep	149	72	f	The Sponge of Sleep
832	Pike	Marriage	140	65	t	The Pike of Marriage
833	Sponge	Honesty	179	57	f	The Sponge of Honesty
834	Swiss Dagger	Peace	16	53	f	The Swiss Dagger of Peace
835	Baton	Bravery	12	93	t	The Baton of Bravery
836	Halberd	Horror	197	85	t	The Halberd of Horror
837	Stick	Appetite	170	93	t	The Stick of Appetite
838	War Scythe	Failure	49	25	t	The War Scythe of Failure
839	Short Sword	Happiness	79	35	f	The Short Sword of Happiness
840	Claymore	Pudding	41	47	t	The Claymore of Pudding
841	Hammer	Inebriation	34	73	t	The Hammer of Inebriation
842	Swiss Dagger	Uncle Dave	70	58	t	The Swiss Dagger of Uncle Dave
843	Spoon	Freedom	167	80	f	The Spoon of Freedom
844	Stick	Marriage	137	59	t	The Stick of Marriage
845	Gladius	Truth	174	51	t	The Gladius of Truth
846	Flail	Diversity	167	86	t	The Flail of Diversity
847	Halberd	Pleasure	87	31	t	The Halberd of Pleasure
848	Sabre	Appetite	174	74	t	The Sabre of Appetite
849	War Scythe	Loss	9	99	f	The War Scythe of Loss
850	Dagger	Luck	54	66	t	The Dagger of Luck
851	Long Sword	Timing	33	41	f	The Long Sword of Timing
852	Mace	Horror	38	52	t	The Mace of Horror
853	Sabre	Goodness	146	92	t	The Sabre of Goodness
854	War Scythe	Pudding	77	98	t	The War Scythe of Pudding
855	War Scythe	Belief	56	61	f	The War Scythe of Belief
856	War Scythe	Confusion	46	35	f	The War Scythe of Confusion
857	Axe	Justice	57	59	f	The Axe of Justice
858	Long Sword	Justice	92	78	f	The Long Sword of Justice
859	Mace	Marriage	183	43	f	The Mace of Marriage
860	Cutlass	Luxury	89	88	f	The Cutlass of Luxury
861	Halberd	Gain	179	83	t	The Halberd of Gain
862	Dagger	Beauty	50	32	t	The Dagger of Beauty
863	Axe	Stupidity	62	79	f	The Axe of Stupidity
864	Long Sword	Wealth	105	99	f	The Long Sword of Wealth
865	Sabre	Divorce	196	100	t	The Sabre of Divorce
866	Lance	Instigation	103	90	t	The Lance of Instigation
867	Halberd	Class	37	82	f	The Halberd of Class
868	Spoon	Luck	114	97	t	The Spoon of Luck
869	Baton	Brilliance	100	49	f	The Baton of Brilliance
870	Spoon	Irritation	26	36	f	The Spoon of Irritation
871	Mace	Honesty	25	52	t	The Mace of Honesty
872	Axe	Fiction	13	32	f	The Axe of Fiction
873	Flail	Clarity	86	34	t	The Flail of Clarity
874	Pike	Luxury	175	82	t	The Pike of Luxury
875	Club	Loneliness	83	47	t	The Club of Loneliness
876	Staff	Belief	53	77	f	The Staff of Belief
877	Swiss Dagger	Timing	127	57	f	The Swiss Dagger of Timing
878	Axe	Anger	83	68	t	The Axe of Anger
879	Short Sword	Clarity	20	25	t	The Short Sword of Clarity
880	Knife	Riches	154	34	f	The Knife of Riches
881	Hatchet	Argument	164	71	t	The Hatchet of Argument
882	Gladius	Confusion	116	45	f	The Gladius of Confusion
883	Flail	Inebriation	28	38	t	The Flail of Inebriation
884	Short Sword	Honesty	165	44	f	The Short Sword of Honesty
885	Spear	Peace	195	38	f	The Spear of Peace
886	Gladius	Stupidity	188	87	f	The Gladius of Stupidity
887	War Scythe	Advantage	42	99	t	The War Scythe of Advantage
888	Short Sword	Talent	72	63	f	The Short Sword of Talent
889	Sword	Failure	42	41	t	The Sword of Failure
890	Halberd	Dedication	10	83	f	The Halberd of Dedication
891	War Scythe	Brilliance	48	28	f	The War Scythe of Brilliance
892	Hatchet	Hatred	168	94	t	The Hatchet of Hatred
893	Swiss Dagger	Timing	163	56	t	The Swiss Dagger of Timing
894	Dagger	Fornication	92	80	f	The Dagger of Fornication
895	Flail	Sorrow	20	88	f	The Flail of Sorrow
896	Foil	Growth	177	45	f	The Foil of Growth
897	Halberd	Pudding	193	59	t	The Halberd of Pudding
898	Spear	Luxury	182	49	t	The Spear of Luxury
899	Swiss Dagger	Horror	123	92	f	The Swiss Dagger of Horror
900	Club	Slavery	98	100	f	The Club of Slavery
901	Swiss Dagger	Riches	74	56	f	The Swiss Dagger of Riches
902	Baton	Freedom	160	90	f	The Baton of Freedom
903	Axe	Goodness	65	65	t	The Axe of Goodness
904	Hatchet	Luxury	85	98	f	The Hatchet of Luxury
905	Long Sword	Calm	183	52	f	The Long Sword of Calm
906	Sponge	Fear	46	96	t	The Sponge of Fear
907	Lance	Solitude	98	70	f	The Lance of Solitude
908	Claymore	Sleep	175	96	t	The Claymore of Sleep
909	Swiss Dagger	Luxury	111	84	t	The Swiss Dagger of Luxury
910	Cutlass	Argument	55	75	t	The Cutlass of Argument
911	Sword	Envy	197	98	t	The Sword of Envy
912	Gladius	Solitude	11	30	t	The Gladius of Solitude
913	Sword	Confusion	146	42	t	The Sword of Confusion
914	Sabre	Brilliance	199	26	f	The Sabre of Brilliance
915	Baton	Fiction	71	60	f	The Baton of Fiction
916	Flail	Beauty	47	60	t	The Flail of Beauty
917	Baton	Argument	72	52	t	The Baton of Argument
918	Halberd	Appetite	148	42	f	The Halberd of Appetite
919	Stick	Poverty	117	62	f	The Stick of Poverty
920	Club	Freedom	149	91	f	The Club of Freedom
921	Halberd	Beauty	64	28	f	The Halberd of Beauty
922	Spear	Bravery	164	80	t	The Spear of Bravery
923	Cutlass	Movement	8	78	f	The Cutlass of Movement
924	Axe	Dishonesty	131	45	f	The Axe of Dishonesty
925	Foil	Coldness	183	53	f	The Foil of Coldness
926	Spoon	Generation	95	41	t	The Spoon of Generation
927	Hammer	Instigation	146	30	t	The Hammer of Instigation
928	Halberd	Care	140	34	t	The Halberd of Care
929	Hammer	Loneliness	139	53	t	The Hammer of Loneliness
930	Spear	Loss	185	56	t	The Spear of Loss
931	Short Sword	Goodness	29	50	t	The Short Sword of Goodness
932	Sponge	Awareness	15	42	t	The Sponge of Awareness
933	Hatchet	Failure	200	32	f	The Hatchet of Failure
934	Sabre	Justice	41	62	t	The Sabre of Justice
935	Spoon	Growth	25	25	f	The Spoon of Growth
936	Sabre	Confusion	191	55	f	The Sabre of Confusion
937	Halberd	Luxury	170	73	f	The Halberd of Luxury
938	Spear	Coldness	91	31	t	The Spear of Coldness
939	Dagger	Justice	118	69	f	The Dagger of Justice
940	Sabre	Loneliness	170	74	t	The Sabre of Loneliness
941	Club	Advantage	119	33	t	The Club of Advantage
942	Sabre	Kindness	48	94	t	The Sabre of Kindness
943	War Scythe	Talent	51	71	t	The War Scythe of Talent
944	Flail	Happiness	33	28	f	The Flail of Happiness
945	Claymore	Argument	162	77	f	The Claymore of Argument
946	Long Sword	Honesty	140	67	t	The Long Sword of Honesty
947	Sponge	Truth	98	72	f	The Sponge of Truth
948	Flail	Happiness	189	70	f	The Flail of Happiness
949	War Scythe	Peace	43	31	t	The War Scythe of Peace
950	Pike	Appetite	32	47	f	The Pike of Appetite
951	Sabre	Honesty	76	26	f	The Sabre of Honesty
952	Sword	Luxury	162	77	f	The Sword of Luxury
953	Pike	Freedom	96	78	f	The Pike of Freedom
954	Swiss Dagger	Luck	199	72	t	The Swiss Dagger of Luck
955	Short Sword	Poverty	191	35	t	The Short Sword of Poverty
956	Pike	Gain	168	48	t	The Pike of Gain
957	Swiss Dagger	Failure	73	99	f	The Swiss Dagger of Failure
958	Spoon	Kindness	82	58	f	The Spoon of Kindness
959	Knife	Confusion	163	59	f	The Knife of Confusion
960	Cutlass	Wisdom	129	43	t	The Cutlass of Wisdom
961	War Scythe	Wit	69	59	t	The War Scythe of Wit
962	Long Sword	Sorrow	45	97	t	The Long Sword of Sorrow
963	Sponge	Pudding	73	48	f	The Sponge of Pudding
964	Stick	Sleep	82	71	f	The Stick of Sleep
965	Club	Stupidity	65	44	f	The Club of Stupidity
966	Staff	Uncle Dave	40	99	f	The Staff of Uncle Dave
967	Flail	Sleep	14	99	t	The Flail of Sleep
968	Claymore	Justice	54	81	f	The Claymore of Justice
969	Flail	Sleep	86	88	t	The Flail of Sleep
970	Long Sword	Anger	152	92	t	The Long Sword of Anger
971	War Scythe	Riches	31	72	f	The War Scythe of Riches
972	Staff	Talent	9	67	t	The Staff of Talent
973	Hatchet	Confusion	125	93	t	The Hatchet of Confusion
974	Staff	Right	44	50	f	The Staff of Right
975	Flail	Divorce	135	78	f	The Flail of Divorce
976	Club	Hatred	160	65	t	The Club of Hatred
977	Sponge	Dishonesty	151	94	t	The Sponge of Dishonesty
978	Lance	Adversity	139	99	t	The Lance of Adversity
979	Spoon	Growth	25	35	f	The Spoon of Growth
980	Spoon	Stupidity	14	56	f	The Spoon of Stupidity
981	Hatchet	Libation	87	31	f	The Hatchet of Libation
982	Baton	Fiction	30	94	t	The Baton of Fiction
983	Mace	Poverty	8	72	t	The Mace of Poverty
984	Swiss Dagger	Joy	179	65	f	The Swiss Dagger of Joy
985	Spoon	Clarity	110	78	t	The Spoon of Clarity
986	Sabre	Bravery	135	73	f	The Sabre of Bravery
987	Knife	Inebriation	74	36	t	The Knife of Inebriation
988	Sword	Generation	58	68	f	The Sword of Generation
989	Dagger	Ability	131	78	t	The Dagger of Ability
990	Lance	Awareness	26	44	t	The Lance of Awareness
991	Lance	Brilliance	41	42	f	The Lance of Brilliance
992	Hammer	Luxury	95	51	t	The Hammer of Luxury
993	Flail	Wisdom	31	71	t	The Flail of Wisdom
994	Swiss Dagger	Poverty	23	40	t	The Swiss Dagger of Poverty
995	Long Sword	Envy	78	32	t	The Long Sword of Envy
996	Club	Anger	37	51	f	The Club of Anger
997	Swiss Dagger	Philosophy	77	26	t	The Swiss Dagger of Philosophy
998	Stick	Pudding	28	98	f	The Stick of Pudding
999	Flail	Thought	9	43	t	The Flail of Thought
1000	Axe	Luck	83	34	f	The Axe of Luck
1001	Sponge	Death	78	99	t	The Sponge of Death
1002	Spoon	Pudding	10	99	t	The Spoon of Pudding
\.


ALTER TABLE ONLY public.weapons
    ADD CONSTRAINT weapons_pk PRIMARY KEY (id);
