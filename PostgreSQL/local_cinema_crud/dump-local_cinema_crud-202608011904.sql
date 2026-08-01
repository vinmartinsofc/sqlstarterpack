--
-- PostgreSQL database dump
--

\restrict 42ExCyTDqhgPxMcfINIfRlsP2SzOytMNDai1GxFjV31yMCrVAdHJyJr6yE2rUpC

-- Dumped from database version 18.4
-- Dumped by pg_dump version 18.4

-- Started on 2026-08-01 19:04:56

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 219 (class 1259 OID 16385)
-- Name: titles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.titles (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    release_date integer NOT NULL,
    category character varying(50) NOT NULL,
    genre character varying(50) NOT NULL,
    director character varying(255),
    duration integer,
    creator character varying(255),
    new_seasons boolean
);


ALTER TABLE public.titles OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16395)
-- Name: titles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.titles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.titles_id_seq OWNER TO postgres;

--
-- TOC entry 5024 (class 0 OID 0)
-- Dependencies: 220
-- Name: titles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.titles_id_seq OWNED BY public.titles.id;


--
-- TOC entry 221 (class 1259 OID 16396)
-- Name: watched_titles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.watched_titles (
    id integer NOT NULL,
    title_id integer NOT NULL,
    watched_date date NOT NULL,
    rating numeric(3,1),
    comment text
);


ALTER TABLE public.watched_titles OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16404)
-- Name: watched_titles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.watched_titles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.watched_titles_id_seq OWNER TO postgres;

--
-- TOC entry 5025 (class 0 OID 0)
-- Dependencies: 222
-- Name: watched_titles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.watched_titles_id_seq OWNED BY public.watched_titles.id;


--
-- TOC entry 4861 (class 2604 OID 16416)
-- Name: titles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.titles ALTER COLUMN id SET DEFAULT nextval('public.titles_id_seq'::regclass);


--
-- TOC entry 4862 (class 2604 OID 16417)
-- Name: watched_titles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.watched_titles ALTER COLUMN id SET DEFAULT nextval('public.watched_titles_id_seq'::regclass);


--
-- TOC entry 5015 (class 0 OID 16385)
-- Dependencies: 219
-- Data for Name: titles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.titles (id, name, release_date, category, genre, director, duration, creator, new_seasons) FROM stdin;
1	1917	2019	MOVIE	WAR	Sam Mendes	119	\N	\N
2	Pluribus	2025	SERIES	SCI-FI/DYSTOPIAN	\N	\N	Vince Gilligan	t
4	2001: A Space Odyssey	1968	Movie	Sci-Fi	Stanley Kubrick	149	\N	\N
5	Anaconda	2025	Movie	Comedy	Tom Gormican	99	\N	\N
6	Apocalypse Now	1979	Movie	War	Francis Ford Coppola	147	\N	\N
7	Barbarian	2022	Movie	Horror	Zach Cregger	102	\N	\N
8	Body Snatchers	1993	Movie	Horror	Abel Ferrara	87	\N	\N
9	Carrie	1976	Movie	Horror	Brian De Palma	98	\N	\N
10	Creature from the Black Lagoon	1954	Movie	Horror	Jack Arnold	79	\N	\N
11	Daredevil (Director's Cut)	2003	Movie	Action	Mark Steven Johnson	133	\N	\N
12	Dr. Strangelove or How I Learned to Stop Worrying and Love the Bomb	1964	Movie	Comedy	Stanley Kubrick	95	\N	\N
13	Dunkirk	2017	Movie	War	Christopher Nolan	106	\N	\N
14	Fallen	1998	Movie	Thriller	Gregory Hoblit	124	\N	\N
15	Fantastic Beasts: The Secrets of Dumbledore	2022	Movie	Fantasy	David Yates	142	\N	\N
16	Full Metal Jacket	1987	Movie	War	Stanley Kubrick	116	\N	\N
17	Halloween II	1981	Movie	Horror	Rick Rosenthal	92	\N	\N
18	Hannibal	2001	Movie	Thriller	Ridley Scott	131	\N	\N
19	Inception	2010	Movie	Sci-Fi	Christopher Nolan	148	\N	\N
20	Jaws	1975	Movie	Thriller	Steven Spielberg	124	\N	\N
21	Joker	2019	Movie	Drama	Todd Phillips	122	\N	\N
22	Kill Bill: Vol. 1	2003	Movie	Action	Quentin Tarantino	111	\N	\N
23	Masters of the Universe	2026	Movie	Fantasy	Travis Knight	140	\N	\N
24	Megalopolis	2024	Movie	Sci-Fi	Francis Ford Coppola	138	\N	\N
25	Morbius	2022	Movie	Action	Daniel Espinosa	104	\N	\N
26	Napoleon	2023	Movie	History	Ridley Scott	158	\N	\N
27	North by Northwest	1959	Movie	Thriller	Alfred Hitchcock	136	\N	\N
28	Nosferatu	2024	Movie	Horror	Robert Eggers	132	\N	\N
29	Oculus	2013	Movie	Horror	Mike Flanagan	104	\N	\N
30	Once Upon a Time in Hollywood	2019	Movie	Drama	Quentin Tarantino	161	\N	\N
31	Oppenheimer	2023	Movie	Drama	Christopher Nolan	180	\N	\N
32	Paths of Glory	1957	Movie	War	Stanley Kubrick	88	\N	\N
33	Planet of the Apes	1968	Movie	Sci-Fi	Franklin J. Schaffner	112	\N	\N
34	Platoon	1986	Movie	War	Oliver Stone	120	\N	\N
35	Predator: Badlands	2025	Movie	Sci-Fi	Dan Trachtenberg	107	\N	\N
36	Psycho	1960	Movie	Horror	Alfred Hitchcock	109	\N	\N
37	Pulp Fiction	1994	Movie	Crime	Quentin Tarantino	154	\N	\N
38	Puppet Master	1989	Movie	Horror	David Schmoeller	90	\N	\N
39	Raging Bull	1980	Movie	Drama	Martin Scorsese	129	\N	\N
40	Rear Window	1954	Movie	Thriller	Alfred Hitchcock	112	\N	\N
41	Reservoir Dogs	1992	Movie	Crime	Quentin Tarantino	99	\N	\N
42	Rope	1948	Movie	Thriller	Alfred Hitchcock	80	\N	\N
43	Rosemary's Baby	1968	Movie	Horror	Roman Polanski	137	\N	\N
44	Saving Private Ryan	1998	Movie	War	Steven Spielberg	169	\N	\N
45	Scanners	1981	Movie	Horror	David Cronenberg	103	\N	\N
46	Scarface	1983	Movie	Crime	Brian De Palma	170	\N	\N
47	Shutter Island	2010	Movie	Thriller	Martin Scorsese	138	\N	\N
48	Spartacus	1960	Movie	History	Stanley Kubrick	197	\N	\N
49	Suspiria	1977	Movie	Horror	Dario Argento	92	\N	\N
50	Taxi Driver	1976	Movie	Crime	Martin Scorsese	114	\N	\N
51	The Birds	1963	Movie	Horror	Alfred Hitchcock	119	\N	\N
52	The Blob	1988	Movie	Horror	Chuck Russell	95	\N	\N
53	The Deer Hunter	1978	Movie	War	Michael Cimino	183	\N	\N
54	The Departed	2006	Movie	Crime	Martin Scorsese	151	\N	\N
55	The Exorcist	1973	Movie	Horror	William Friedkin	122	\N	\N
56	The Fantastic Four: First Steps	2025	Movie	Sci-Fi	Matt Shakman	\N	\N	\N
57	The Fly	1986	Movie	Horror	David Cronenberg	96	\N	\N
58	The Fly II	1989	Movie	Horror	Chris Walas	105	\N	\N
59	The Green Mile	1999	Movie	Drama	Frank Darabont	189	\N	\N
60	The Innocents	1961	Movie	Horror	Jack Clayton	100	\N	\N
61	The Punisher	2004	Movie	Action	Jonathan Hensleigh	124	\N	\N
62	The Rite	2011	Movie	Horror	Mikael Håfström	114	\N	\N
63	The Ritual	2017	Movie	Horror	David Bruckner	94	\N	\N
64	The Silence of the Lambs	1991	Movie	Thriller	Jonathan Demme	118	\N	\N
65	The Sum of All Fears	2002	Movie	Thriller	Phil Alden Robinson	124	\N	\N
66	The Texas Chainsaw Massacre	1974	Movie	Horror	Tobe Hooper	83	\N	\N
67	The Thing	1982	Movie	Horror	John Carpenter	109	\N	\N
68	The Wicker Man	1973	Movie	Horror	Robin Hardy	88	\N	\N
69	The Witch	2015	Movie	Horror	Robert Eggers	92	\N	\N
70	Triangle	2009	Movie	Horror	Christopher Smith	99	\N	\N
71	Vertigo	1958	Movie	Thriller	Alfred Hitchcock	128	\N	\N
72	Videodrome	1983	Movie	Horror	David Cronenberg	87	\N	\N
73	Village of the Damned	1995	Movie	Horror	John Carpenter	99	\N	\N
74	What Ever Happened to Baby Jane?	1962	Movie	Thriller	Robert Aldrich	134	\N	\N
75	Zodiac	2007	Movie	Thriller	David Fincher	157	\N	\N
76	The Outer Limits	1995	Series	Sci-Fi	Leslie Stevens	\N	\N	\N
77	A Marvel Television Special Presentation: The Punisher - One Last Kill	2026	Movie	Action	Reinaldo Marcus Green	48	\N	\N
78	Braveheart	1995	Movie	War	Mel Gibson	178	\N	\N
79	Cube	1997	Movie	Horror	Vincenzo Natali	90	\N	\N
80	Eyes Wide Shut	1999	Movie	Drama	Stanley Kubrick	159	\N	\N
81	Halloween	1978	Movie	Horror	John Carpenter	91	\N	\N
82	Hellfire	2026	Movie	Horror	Isaac Florentine	95	\N	\N
83	Hokum	2026	Movie	Horror	Damian McCarthy	107	\N	\N
84	Invasion of the Body Snatchers	1978	Movie	Sci-Fi	Philip Kaufman	115	\N	\N
85	Nightcrawler	2014	Movie	Thriller	Dan Gilroy	117	\N	\N
86	Obsession	2025	Movie	Thriller	Curry Barker	108	\N	\N
87	Project Hail Mary	2026	Movie	Sci-Fi	Phil Lord, Christopher Miller	156	\N	\N
88	The Babadook	2014	Movie	Horror	Jennifer Kent	94	\N	\N
89	The Blair Witch Project	1999	Movie	Horror	Daniel Myrick, Eduardo Sánchez	81	\N	\N
90	The Invasion	2007	Movie	Sci-Fi	Oliver Hirschbiegel	99	\N	\N
91	The Northman	2022	Movie	Action	Robert Eggers	137	\N	\N
92	The Shining	1980	Movie	Horror	Stanley Kubrick	146	\N	\N
93	Vampires	1998	Movie	Horror	John Carpenter	108	\N	\N
94	All Quiet on the Western Front	2022	Movie	War	Edward Berger	148	\N	\N
95	The Penguin	2024	Series	Crime	\N	\N	Lauren LeFranc	t
96	Spider-Man Noir	2026	Series	Action	\N	\N	\N	t
97	Disclosure Day	2026	Movie	Sci-Fi	Steven Spielberg	145	\N	\N
98	Mother!	2017	Movie	Horror	Darren Aronofsky	121	\N	\N
99	Backrooms	2026	Movie	Horror	Kane Parsons	110	\N	\N
100	Se7en	1995	Movie	Thriller	David Fincher	127	\N	\N
101	Silo	2023	SERIES	SCI-FI/DYSTOPIAN	\N	\N	Graham Yost	t
102	High Crimes	2002	MOVIE	Thriller	Carl Franklin	115	\N	\N
\.


--
-- TOC entry 5017 (class 0 OID 16396)
-- Dependencies: 221
-- Data for Name: watched_titles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.watched_titles (id, title_id, watched_date, rating, comment) FROM stdin;
20	88	2026-07-03	7.5	very uncommon
21	86	2026-06-30	8.0	the movie is great but it should've been shorter
22	91	2026-06-28	10.0	I just love this one
23	85	2026-06-23	8.0	Very good human psychosis study
24	81	2026-06-20	9.0	A classic one
25	93	2026-06-18	8.5	One of my favorite movies about vampires
27	84	2026-06-19	9.0	Very good
28	82	2026-06-16	6.0	John Wick for 3rd age people
29	80	2026-06-22	8.5	The one you should watch before die
30	78	2026-06-27	7.0	Cool
31	79	2026-06-22	7.5	Cool too
32	89	2026-06-17	10.0	One of my favorites
33	92	2026-06-29	9.5	Classic, a must  watch
34	87	2026-06-30	7.5	I felt like watching a capeshit movie, nah
35	83	2026-06-08	8.0	Cool as fuck
36	77	2026-06-10	7.5	Another John Wick
37	94	2026-07-01	9.0	Brutal
26	90	2026-07-04	4.5	Terrible, they Hollywoodized a good idea, not to mention the CGI.
38	24	2026-06-09	7.0	Meh, tried to be cool and ended saying nothing...
39	16	2026-06-10	9.0	Good experience
40	35	2026-06-08	8.0	Cool
41	99	2026-06-17	8.5	Finally
42	17	2026-06-16	10.0	<3
43	29	2026-07-31	7.0	Meh
44	100	2026-07-20	10.0	An excellent crime movie
46	52	2026-07-25	7.0	Cool practical effects
47	53	2026-07-30	8.5	sad...
48	62	2026-08-01	7.0	Not bad but not good
49	102	2026-07-20	10.0	nice
\.


--
-- TOC entry 5026 (class 0 OID 0)
-- Dependencies: 220
-- Name: titles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.titles_id_seq', 96, true);


--
-- TOC entry 5027 (class 0 OID 0)
-- Dependencies: 222
-- Name: watched_titles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.watched_titles_id_seq', 49, true);


--
-- TOC entry 4864 (class 2606 OID 16408)
-- Name: titles titles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.titles
    ADD CONSTRAINT titles_pkey PRIMARY KEY (id);


--
-- TOC entry 4866 (class 2606 OID 16410)
-- Name: watched_titles watched_titles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.watched_titles
    ADD CONSTRAINT watched_titles_pkey PRIMARY KEY (id);


--
-- TOC entry 4867 (class 2606 OID 16411)
-- Name: watched_titles watched_titles_title_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.watched_titles
    ADD CONSTRAINT watched_titles_title_id_fkey FOREIGN KEY (title_id) REFERENCES public.titles(id) ON DELETE CASCADE;


-- Completed on 2026-08-01 19:04:57

--
-- PostgreSQL database dump complete
--

\unrestrict 42ExCyTDqhgPxMcfINIfRlsP2SzOytMNDai1GxFjV31yMCrVAdHJyJr6yE2rUpC

