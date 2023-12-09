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

INSERT INTO weapons (id, weapon_type, name, hit_points, durability, is_repairable, display_name) VALUES
( 1,'Claymore','Pudding',197,40, FALSE,'The Claymore of Pudding'),
(2, 'Hammer', 'Right', 172, 51, FALSE, 'The Hammer of Right'),
(3, 'Gladius', 'Poverty', 12, 54, TRUE, 'The Gladius of Poverty'),
(4,	'Long', 'Sword', 'Envy', 66, 37,FALSE, 'The Long Sword of Envy'),
(5,	'Swiss Dagger',	'Philosophy',77, 26,TRUE, 'The Swiss Dagger of Philosophy'),
(6,	'Stick', 'Pudding',	28,	98,	FALSE, 'The Stick of Pudding'),
(7,	'Flail', 'Thought', 9, 43, TRUE, 'The Flail of Thought'),
(8,	'Axe', 'Luck', 83, 34, FALSE, 'The Axe of Luck'),
(9,	'Sponge', 'Death', 78, 99, TRUE, 'The Sponge of Death'),
(10,'Spoon', 'Pudding', 10, 99, TRUE, 'The Spoon of Pudding');

ALTER TABLE ONLY public.weapons
    ADD CONSTRAINT weapons_pk PRIMARY KEY (id);
