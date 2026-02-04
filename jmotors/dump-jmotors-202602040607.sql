--
-- PostgreSQL database dump
--

\restrict eaST1wX7Rjca0WmwSWkGhCWmvfAEUxmwRlyIAs3N5hLbVOx7sbvjxjObyfMGGW2

-- Dumped from database version 17.7 (Debian 17.7-0+deb13u1)
-- Dumped by pg_dump version 17.7 (Debian 17.7-0+deb13u1)

-- Started on 2026-02-04 06:07:47 -03

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

--
-- TOC entry 3459 (class 1262 OID 16486)
-- Name: jmotors; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE jmotors WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';


ALTER DATABASE jmotors OWNER TO postgres;

\unrestrict eaST1wX7Rjca0WmwSWkGhCWmvfAEUxmwRlyIAs3N5hLbVOx7sbvjxjObyfMGGW2
\connect jmotors
\restrict eaST1wX7Rjca0WmwSWkGhCWmvfAEUxmwRlyIAs3N5hLbVOx7sbvjxjObyfMGGW2

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

--
-- TOC entry 3460 (class 0 OID 0)
-- Name: jmotors; Type: DATABASE PROPERTIES; Schema: -; Owner: postgres
--

ALTER DATABASE jmotors SET search_path TO 'public', 'jmotors';


\unrestrict eaST1wX7Rjca0WmwSWkGhCWmvfAEUxmwRlyIAs3N5hLbVOx7sbvjxjObyfMGGW2
\connect jmotors
\restrict eaST1wX7Rjca0WmwSWkGhCWmvfAEUxmwRlyIAs3N5hLbVOx7sbvjxjObyfMGGW2

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

--
-- TOC entry 6 (class 2615 OID 16625)
-- Name: jmotors; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA jmotors;


ALTER SCHEMA jmotors OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 221 (class 1259 OID 16627)
-- Name: clients; Type: TABLE; Schema: jmotors; Owner: postgres
--

CREATE TABLE jmotors.clients (
    id bigint NOT NULL,
    client_name character varying(100) NOT NULL,
    unique_id character varying(100) NOT NULL
);


ALTER TABLE jmotors.clients OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16626)
-- Name: clients_id_seq; Type: SEQUENCE; Schema: jmotors; Owner: postgres
--

CREATE SEQUENCE jmotors.clients_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE jmotors.clients_id_seq OWNER TO postgres;

--
-- TOC entry 3461 (class 0 OID 0)
-- Dependencies: 220
-- Name: clients_id_seq; Type: SEQUENCE OWNED BY; Schema: jmotors; Owner: postgres
--

ALTER SEQUENCE jmotors.clients_id_seq OWNED BY jmotors.clients.id;


--
-- TOC entry 223 (class 1259 OID 16632)
-- Name: rent; Type: TABLE; Schema: jmotors; Owner: postgres
--

CREATE TABLE jmotors.rent (
    id bigint NOT NULL,
    client_id bigint,
    vehicle_id bigint,
    rentdays bigint,
    total_price double precision,
    paid boolean NOT NULL,
    rent_date timestamp with time zone DEFAULT now()
);


ALTER TABLE jmotors.rent OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16631)
-- Name: rent_id_seq; Type: SEQUENCE; Schema: jmotors; Owner: postgres
--

CREATE SEQUENCE jmotors.rent_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE jmotors.rent_id_seq OWNER TO postgres;

--
-- TOC entry 3462 (class 0 OID 0)
-- Dependencies: 222
-- Name: rent_id_seq; Type: SEQUENCE OWNED BY; Schema: jmotors; Owner: postgres
--

ALTER SEQUENCE jmotors.rent_id_seq OWNED BY jmotors.rent.id;


--
-- TOC entry 225 (class 1259 OID 16637)
-- Name: vehicles; Type: TABLE; Schema: jmotors; Owner: postgres
--

CREATE TABLE jmotors.vehicles (
    id bigint NOT NULL,
    model character varying(100) NOT NULL,
    dailyprice double precision NOT NULL,
    year_release date
);


ALTER TABLE jmotors.vehicles OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16636)
-- Name: vehicles_id_seq; Type: SEQUENCE; Schema: jmotors; Owner: postgres
--

CREATE SEQUENCE jmotors.vehicles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE jmotors.vehicles_id_seq OWNER TO postgres;

--
-- TOC entry 3463 (class 0 OID 0)
-- Dependencies: 224
-- Name: vehicles_id_seq; Type: SEQUENCE OWNED BY; Schema: jmotors; Owner: postgres
--

ALTER SEQUENCE jmotors.vehicles_id_seq OWNED BY jmotors.vehicles.id;


--
-- TOC entry 3287 (class 2604 OID 16630)
-- Name: clients id; Type: DEFAULT; Schema: jmotors; Owner: postgres
--

ALTER TABLE ONLY jmotors.clients ALTER COLUMN id SET DEFAULT nextval('jmotors.clients_id_seq'::regclass);


--
-- TOC entry 3288 (class 2604 OID 16635)
-- Name: rent id; Type: DEFAULT; Schema: jmotors; Owner: postgres
--

ALTER TABLE ONLY jmotors.rent ALTER COLUMN id SET DEFAULT nextval('jmotors.rent_id_seq'::regclass);


--
-- TOC entry 3290 (class 2604 OID 16640)
-- Name: vehicles id; Type: DEFAULT; Schema: jmotors; Owner: postgres
--

ALTER TABLE ONLY jmotors.vehicles ALTER COLUMN id SET DEFAULT nextval('jmotors.vehicles_id_seq'::regclass);


--
-- TOC entry 3449 (class 0 OID 16627)
-- Dependencies: 221
-- Data for Name: clients; Type: TABLE DATA; Schema: jmotors; Owner: postgres
--

COPY jmotors.clients (id, client_name, unique_id) FROM stdin;
5	Ana Silva	CPF001
6	Bruno Santos	CPF002
7	Carlos Oliveira	CPF003
8	Daniela Costa	CPF004
9	Eduardo Lima	CPF005
10	Fernanda Rocha	CPF006
11	Gabriel Alves	CPF007
12	Helena Pereira	CPF008
13	Igor Martins	CPF009
14	Juliana Nogueira	CPF010
15	Lucas Barros	CPF011
16	Mariana Teixeira	CPF012
17	Nicolas Farias	CPF013
18	Olivia Pacheco	CPF014
19	Paulo Ribeiro	CPF015
20	Renata Guedes	CPF016
21	Sergio Araujo	CPF017
22	Tatiane Melo	CPF018
23	Ulysses Franco	CPF019
24	Vanessa Duarte	CPF020
1	Joao da Silva	CPF021
2	Maria Betânea	CPF022
3	Cleiton de Melo Braga	CPF023
4	Ricardo Albuquerque	CPF024
\.


--
-- TOC entry 3451 (class 0 OID 16632)
-- Dependencies: 223
-- Data for Name: rent; Type: TABLE DATA; Schema: jmotors; Owner: postgres
--

COPY jmotors.rent (id, client_id, vehicle_id, rentdays, total_price, paid, rent_date) FROM stdin;
4	4	27	7	724.08	t	2026-01-25 12:04:15.98384-03
5	2	24	7	769.65	t	2026-01-25 12:04:15.98384-03
1	4	20	10	919.5	t	2025-01-25 12:04:15.983-03
2	2	1	15	1559.95	t	2025-01-25 12:04:15.983-03
3	1	5	3	182.85	f	2025-01-25 12:04:15.983-03
6	1	30	14	1905.54	t	2026-01-01 07:30:00-03
7	3	25	7	769.65	t	2025-12-20 16:00:00-03
98	2	5	5	1100	t	2025-01-07 14:30:00-03
99	3	1	2	240	f	2025-01-10 09:15:00-03
100	4	4	7	1400	t	2025-01-12 16:00:00-03
101	5	2	4	600	f	2025-01-15 11:20:00-03
102	6	6	1	250	t	2025-01-18 08:00:00-03
103	7	7	6	1800	t	2025-01-20 17:45:00-03
104	8	8	3	840	f	2025-01-22 13:10:00-03
105	9	9	2	320	t	2025-01-24 09:00:00-03
106	10	10	5	700	f	2025-01-26 18:30:00-03
107	11	11	4	760	t	2025-01-28 12:00:00-03
108	12	12	3	630	t	2025-02-01 15:00:00-03
109	15	15	1	170	t	2025-02-07 08:50:00-03
110	16	16	5	775	f	2025-02-09 16:20:00-03
111	17	17	7	2170	t	2025-02-11 14:00:00-03
112	20	20	2	330	t	2025-02-17 09:45:00-03
\.


--
-- TOC entry 3453 (class 0 OID 16637)
-- Dependencies: 225
-- Data for Name: vehicles; Type: TABLE DATA; Schema: jmotors; Owner: postgres
--

COPY jmotors.vehicles (id, model, dailyprice, year_release) FROM stdin;
1	VW T-Cross 1.0 Turbo	103.95	\N
2	Jeep Renegade 1.3	103.95	\N
4	GM Tracker 1.0	103.95	\N
5	Fiat Mobi 1.0	60.95	\N
6	Renault Kwid	60.95	\N
7	Fiat Argo 1.0	62.95	\N
8	VW Polo 1.0	62.95	\N
9	Hyundai HB20 1.0	62.95	\N
10	Hyundai HB20S 1.0	71.95	\N
11	GM Onix 1.0,	71.95	\N
12	Fiat Cronos 1.0,	71.95	\N
15	GM Onix LTZ 1.0 AT	89.95	\N
16	Fiat Cronos 1.3	78.95	\N
17	GM Onix Plus 1.0	78.95	\N
20	Hyundai HB20S 1.0 Turbo AT	91.95	\N
21	Volkswagen Tera 1.0 AT	97.95	\N
22	Fiat Pulse 1.0 Turbo	97.95	\N
23	C3 Aircross 1.0	97.95	\N
24	VW T-Cross Highline 1.4 TSI AT	109.95	\N
25	Tracker Premier 1.2 turbo	109.95	\N
26	Jeep Compass 1.3 Turbo	219.95	\N
27	Wolkswagen Up	103.44	\N
28	Fiat Mobi	103.52	\N
29	Peugeot 208	114.73	\N
30	Renault Kardian	136.11	\N
31	Onix	120	2018-01-01
32	HB20	150	2019-01-01
33	Corolla	180	2020-01-01
34	Civic	200	2021-01-01
35	Compass	220	2022-01-01
36	Renegade	250	2023-01-01
37	Hilux	300	2020-01-01
38	Ranger	280	2019-01-01
39	Argo	160	2018-01-01
40	Gol	140	2017-01-01
41	Cruze	190	2021-01-01
42	Taos	210	2022-01-01
43	T-Cross	230	2023-01-01
44	HR-V	260	2021-01-01
45	Ka	170	2019-01-01
46	Sandero	155	2018-01-01
47	SW4	310	2022-01-01
48	Commander	290	2021-01-01
49	Uno	135	2017-01-01
50	208	165	2020-01-01
\.


--
-- TOC entry 3464 (class 0 OID 0)
-- Dependencies: 220
-- Name: clients_id_seq; Type: SEQUENCE SET; Schema: jmotors; Owner: postgres
--

SELECT pg_catalog.setval('jmotors.clients_id_seq', 24, true);


--
-- TOC entry 3465 (class 0 OID 0)
-- Dependencies: 222
-- Name: rent_id_seq; Type: SEQUENCE SET; Schema: jmotors; Owner: postgres
--

SELECT pg_catalog.setval('jmotors.rent_id_seq', 112, true);


--
-- TOC entry 3466 (class 0 OID 0)
-- Dependencies: 224
-- Name: vehicles_id_seq; Type: SEQUENCE SET; Schema: jmotors; Owner: postgres
--

SELECT pg_catalog.setval('jmotors.vehicles_id_seq', 54, true);


--
-- TOC entry 3292 (class 2606 OID 16654)
-- Name: clients idx_16627_primary; Type: CONSTRAINT; Schema: jmotors; Owner: postgres
--

ALTER TABLE ONLY jmotors.clients
    ADD CONSTRAINT idx_16627_primary PRIMARY KEY (id);


--
-- TOC entry 3296 (class 2606 OID 16655)
-- Name: rent idx_16632_primary; Type: CONSTRAINT; Schema: jmotors; Owner: postgres
--

ALTER TABLE ONLY jmotors.rent
    ADD CONSTRAINT idx_16632_primary PRIMARY KEY (id);


--
-- TOC entry 3300 (class 2606 OID 16653)
-- Name: vehicles idx_16637_primary; Type: CONSTRAINT; Schema: jmotors; Owner: postgres
--

ALTER TABLE ONLY jmotors.vehicles
    ADD CONSTRAINT idx_16637_primary PRIMARY KEY (id);


--
-- TOC entry 3293 (class 1259 OID 16642)
-- Name: idx_16627_unique_id; Type: INDEX; Schema: jmotors; Owner: postgres
--

CREATE UNIQUE INDEX idx_16627_unique_id ON jmotors.clients USING btree (unique_id);


--
-- TOC entry 3294 (class 1259 OID 16645)
-- Name: idx_16632_client_id; Type: INDEX; Schema: jmotors; Owner: postgres
--

CREATE INDEX idx_16632_client_id ON jmotors.rent USING btree (client_id);


--
-- TOC entry 3297 (class 1259 OID 16646)
-- Name: idx_16632_vehicle_id; Type: INDEX; Schema: jmotors; Owner: postgres
--

CREATE INDEX idx_16632_vehicle_id ON jmotors.rent USING btree (vehicle_id);


--
-- TOC entry 3298 (class 1259 OID 16641)
-- Name: idx_16637_model; Type: INDEX; Schema: jmotors; Owner: postgres
--

CREATE UNIQUE INDEX idx_16637_model ON jmotors.vehicles USING btree (model);


--
-- TOC entry 3301 (class 2606 OID 16656)
-- Name: rent rent_ibfk_1; Type: FK CONSTRAINT; Schema: jmotors; Owner: postgres
--

ALTER TABLE ONLY jmotors.rent
    ADD CONSTRAINT rent_ibfk_1 FOREIGN KEY (client_id) REFERENCES jmotors.clients(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 3302 (class 2606 OID 16661)
-- Name: rent rent_ibfk_2; Type: FK CONSTRAINT; Schema: jmotors; Owner: postgres
--

ALTER TABLE ONLY jmotors.rent
    ADD CONSTRAINT rent_ibfk_2 FOREIGN KEY (vehicle_id) REFERENCES jmotors.vehicles(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


-- Completed on 2026-02-04 06:07:48 -03

--
-- PostgreSQL database dump complete
--

\unrestrict eaST1wX7Rjca0WmwSWkGhCWmvfAEUxmwRlyIAs3N5hLbVOx7sbvjxjObyfMGGW2

