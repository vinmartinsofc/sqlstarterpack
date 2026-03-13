--
-- PostgreSQL database dump
--

\restrict Qvezzv368xR2eAJSaiTF4bgfXKI6E7du0x28FmMJ9b1iezHao1M3c0erGD8VJBI

-- Dumped from database version 17.7 (Debian 17.7-0+deb13u1)
-- Dumped by pg_dump version 17.7 (Debian 17.7-0+deb13u1)

-- Started on 2026-02-04 06:08:28 -03

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
-- TOC entry 3489 (class 1262 OID 16487)
-- Name: podfy; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE podfy WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'en_US.UTF-8';


ALTER DATABASE podfy OWNER TO postgres;

\unrestrict Qvezzv368xR2eAJSaiTF4bgfXKI6E7du0x28FmMJ9b1iezHao1M3c0erGD8VJBI
\connect podfy
\restrict Qvezzv368xR2eAJSaiTF4bgfXKI6E7du0x28FmMJ9b1iezHao1M3c0erGD8VJBI

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
-- TOC entry 3490 (class 0 OID 0)
-- Name: podfy; Type: DATABASE PROPERTIES; Schema: -; Owner: postgres
--

ALTER DATABASE podfy SET search_path TO 'public', 'podfy';


\unrestrict Qvezzv368xR2eAJSaiTF4bgfXKI6E7du0x28FmMJ9b1iezHao1M3c0erGD8VJBI
\connect podfy
\restrict Qvezzv368xR2eAJSaiTF4bgfXKI6E7du0x28FmMJ9b1iezHao1M3c0erGD8VJBI

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
-- TOC entry 6 (class 2615 OID 16545)
-- Name: podfy; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA podfy;


ALTER SCHEMA podfy OWNER TO postgres;

--
-- TOC entry 858 (class 1247 OID 16547)
-- Name: convidado_pais; Type: TYPE; Schema: podfy; Owner: postgres
--

CREATE TYPE podfy.convidado_pais AS ENUM (
    'Brasil',
    'Estados Unidos',
    'Europa'
);


ALTER TYPE podfy.convidado_pais OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 221 (class 1259 OID 16554)
-- Name: convidado; Type: TABLE; Schema: podfy; Owner: postgres
--

CREATE TABLE podfy.convidado (
    id bigint NOT NULL,
    nome character varying(50) NOT NULL,
    area_atuacao character varying(50) DEFAULT NULL::character varying,
    pais podfy.convidado_pais DEFAULT 'Brasil'::podfy.convidado_pais
);


ALTER TABLE podfy.convidado OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16553)
-- Name: convidado_id_seq; Type: SEQUENCE; Schema: podfy; Owner: postgres
--

CREATE SEQUENCE podfy.convidado_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE podfy.convidado_id_seq OWNER TO postgres;

--
-- TOC entry 3491 (class 0 OID 0)
-- Dependencies: 220
-- Name: convidado_id_seq; Type: SEQUENCE OWNED BY; Schema: podfy; Owner: postgres
--

ALTER SEQUENCE podfy.convidado_id_seq OWNED BY podfy.convidado.id;


--
-- TOC entry 223 (class 1259 OID 16561)
-- Name: detalhes_podcast; Type: TABLE; Schema: podfy; Owner: postgres
--

CREATE TABLE podfy.detalhes_podcast (
    id bigint NOT NULL,
    podcast_id bigint NOT NULL,
    descricao text NOT NULL,
    site_oficial character varying(50) DEFAULT NULL::character varying
);


ALTER TABLE podfy.detalhes_podcast OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 16560)
-- Name: detalhes_podcast_id_seq; Type: SEQUENCE; Schema: podfy; Owner: postgres
--

CREATE SEQUENCE podfy.detalhes_podcast_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE podfy.detalhes_podcast_id_seq OWNER TO postgres;

--
-- TOC entry 3492 (class 0 OID 0)
-- Dependencies: 222
-- Name: detalhes_podcast_id_seq; Type: SEQUENCE OWNED BY; Schema: podfy; Owner: postgres
--

ALTER SEQUENCE podfy.detalhes_podcast_id_seq OWNED BY podfy.detalhes_podcast.id;


--
-- TOC entry 225 (class 1259 OID 16569)
-- Name: episodio; Type: TABLE; Schema: podfy; Owner: postgres
--

CREATE TABLE podfy.episodio (
    id bigint NOT NULL,
    podcast_id bigint,
    titulo character varying(255) NOT NULL,
    numero bigint NOT NULL,
    duracao_minutos bigint NOT NULL,
    data_publicacao date NOT NULL
);


ALTER TABLE podfy.episodio OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16568)
-- Name: episodio_id_seq; Type: SEQUENCE; Schema: podfy; Owner: postgres
--

CREATE SEQUENCE podfy.episodio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE podfy.episodio_id_seq OWNER TO postgres;

--
-- TOC entry 3493 (class 0 OID 0)
-- Dependencies: 224
-- Name: episodio_id_seq; Type: SEQUENCE OWNED BY; Schema: podfy; Owner: postgres
--

ALTER SEQUENCE podfy.episodio_id_seq OWNED BY podfy.episodio.id;


--
-- TOC entry 227 (class 1259 OID 16574)
-- Name: participacao; Type: TABLE; Schema: podfy; Owner: postgres
--

CREATE TABLE podfy.participacao (
    id bigint NOT NULL,
    episodio_id bigint,
    convidado_id bigint,
    papel character varying(255) DEFAULT NULL::character varying
);


ALTER TABLE podfy.participacao OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16573)
-- Name: participacao_id_seq; Type: SEQUENCE; Schema: podfy; Owner: postgres
--

CREATE SEQUENCE podfy.participacao_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE podfy.participacao_id_seq OWNER TO postgres;

--
-- TOC entry 3494 (class 0 OID 0)
-- Dependencies: 226
-- Name: participacao_id_seq; Type: SEQUENCE OWNED BY; Schema: podfy; Owner: postgres
--

ALTER SEQUENCE podfy.participacao_id_seq OWNED BY podfy.participacao.id;


--
-- TOC entry 229 (class 1259 OID 16580)
-- Name: podcast; Type: TABLE; Schema: podfy; Owner: postgres
--

CREATE TABLE podfy.podcast (
    id bigint NOT NULL,
    nome character varying(50) NOT NULL,
    criador character varying(50) NOT NULL,
    data_criacao date NOT NULL,
    ativo boolean NOT NULL
);


ALTER TABLE podfy.podcast OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 16579)
-- Name: podcast_id_seq; Type: SEQUENCE; Schema: podfy; Owner: postgres
--

CREATE SEQUENCE podfy.podcast_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE podfy.podcast_id_seq OWNER TO postgres;

--
-- TOC entry 3495 (class 0 OID 0)
-- Dependencies: 228
-- Name: podcast_id_seq; Type: SEQUENCE OWNED BY; Schema: podfy; Owner: postgres
--

ALTER SEQUENCE podfy.podcast_id_seq OWNED BY podfy.podcast.id;


--
-- TOC entry 3300 (class 2604 OID 16557)
-- Name: convidado id; Type: DEFAULT; Schema: podfy; Owner: postgres
--

ALTER TABLE ONLY podfy.convidado ALTER COLUMN id SET DEFAULT nextval('podfy.convidado_id_seq'::regclass);


--
-- TOC entry 3303 (class 2604 OID 16564)
-- Name: detalhes_podcast id; Type: DEFAULT; Schema: podfy; Owner: postgres
--

ALTER TABLE ONLY podfy.detalhes_podcast ALTER COLUMN id SET DEFAULT nextval('podfy.detalhes_podcast_id_seq'::regclass);


--
-- TOC entry 3305 (class 2604 OID 16572)
-- Name: episodio id; Type: DEFAULT; Schema: podfy; Owner: postgres
--

ALTER TABLE ONLY podfy.episodio ALTER COLUMN id SET DEFAULT nextval('podfy.episodio_id_seq'::regclass);


--
-- TOC entry 3306 (class 2604 OID 16577)
-- Name: participacao id; Type: DEFAULT; Schema: podfy; Owner: postgres
--

ALTER TABLE ONLY podfy.participacao ALTER COLUMN id SET DEFAULT nextval('podfy.participacao_id_seq'::regclass);


--
-- TOC entry 3308 (class 2604 OID 16583)
-- Name: podcast id; Type: DEFAULT; Schema: podfy; Owner: postgres
--

ALTER TABLE ONLY podfy.podcast ALTER COLUMN id SET DEFAULT nextval('podfy.podcast_id_seq'::regclass);


--
-- TOC entry 3475 (class 0 OID 16554)
-- Dependencies: 221
-- Data for Name: convidado; Type: TABLE DATA; Schema: podfy; Owner: postgres
--

COPY podfy.convidado (id, nome, area_atuacao, pais) FROM stdin;
3	Vin Martins	Desenvolvedor Java | Spring	Brasil
4	Paulo Silveira	CEO da alura	Brasil
5	Gustavo Guanabara	Instrutor de programacao	Brasil
6	Mano Deyvin	Podcaster | Desenvolvedor Ruby	Brasil
7	Nelio Alves	Instrutor de programacao	Brasil
8	Felipe Fontoura	Instrutor e desenvolvedor de software	Brasil
\.


--
-- TOC entry 3477 (class 0 OID 16561)
-- Dependencies: 223
-- Data for Name: detalhes_podcast; Type: TABLE DATA; Schema: podfy; Owner: postgres
--

COPY podfy.detalhes_podcast (id, podcast_id, descricao, site_oficial) FROM stdin;
1	1	Podcast com o criador da plataforma Podfy	www.podfy.com
2	2	Podcast voltado para a área de tecnologia que  fala sobre programação e tudo relacionado a área tech	www.hightecbrasil.com
3	3	Programação e filosofia de código, de segunda a sexta, a partir das 7 horas da manhã	www.dailydoseofcode.combr
\.


--
-- TOC entry 3479 (class 0 OID 16569)
-- Dependencies: 225
-- Data for Name: episodio; Type: TABLE DATA; Schema: podfy; Owner: postgres
--

COPY podfy.episodio (id, podcast_id, titulo, numero, duracao_minutos, data_publicacao) FROM stdin;
1	1	Como tudo começou	1	50	2026-01-03
2	2	Tendências para 2026 e por que python é a linguagem de programação mais popular	1	80	2026-01-03
3	3	Todo o conteúdo do Dev Samurai disponível de graça e como dominiar o postgres	1	83	2025-02-05
\.


--
-- TOC entry 3481 (class 0 OID 16574)
-- Dependencies: 227
-- Data for Name: participacao; Type: TABLE DATA; Schema: podfy; Owner: postgres
--

COPY podfy.participacao (id, episodio_id, convidado_id, papel) FROM stdin;
1	2	5	Convidado Especial
2	1	6	Fazer piadinhas e usar o soundboard como  trilha sonora
3	3	8	Convidado especial
\.


--
-- TOC entry 3483 (class 0 OID 16580)
-- Dependencies: 229
-- Data for Name: podcast; Type: TABLE DATA; Schema: podfy; Owner: postgres
--

COPY podfy.podcast (id, nome, criador, data_criacao, ativo) FROM stdin;
1	Podfy	Vin Martins	2026-01-03	t
2	Hightec Brasil	Vin Martins	2026-01-03	t
3	Daily dose of code	Vin Martins	2026-01-25	t
\.


--
-- TOC entry 3496 (class 0 OID 0)
-- Dependencies: 220
-- Name: convidado_id_seq; Type: SEQUENCE SET; Schema: podfy; Owner: postgres
--

SELECT pg_catalog.setval('podfy.convidado_id_seq', 8, true);


--
-- TOC entry 3497 (class 0 OID 0)
-- Dependencies: 222
-- Name: detalhes_podcast_id_seq; Type: SEQUENCE SET; Schema: podfy; Owner: postgres
--

SELECT pg_catalog.setval('podfy.detalhes_podcast_id_seq', 3, true);


--
-- TOC entry 3498 (class 0 OID 0)
-- Dependencies: 224
-- Name: episodio_id_seq; Type: SEQUENCE SET; Schema: podfy; Owner: postgres
--

SELECT pg_catalog.setval('podfy.episodio_id_seq', 3, true);


--
-- TOC entry 3499 (class 0 OID 0)
-- Dependencies: 226
-- Name: participacao_id_seq; Type: SEQUENCE SET; Schema: podfy; Owner: postgres
--

SELECT pg_catalog.setval('podfy.participacao_id_seq', 3, true);


--
-- TOC entry 3500 (class 0 OID 0)
-- Dependencies: 228
-- Name: podcast_id_seq; Type: SEQUENCE SET; Schema: podfy; Owner: postgres
--

SELECT pg_catalog.setval('podfy.podcast_id_seq', 3, true);


--
-- TOC entry 3310 (class 2606 OID 16600)
-- Name: convidado idx_16554_primary; Type: CONSTRAINT; Schema: podfy; Owner: postgres
--

ALTER TABLE ONLY podfy.convidado
    ADD CONSTRAINT idx_16554_primary PRIMARY KEY (id);


--
-- TOC entry 3313 (class 2606 OID 16602)
-- Name: detalhes_podcast idx_16561_primary; Type: CONSTRAINT; Schema: podfy; Owner: postgres
--

ALTER TABLE ONLY podfy.detalhes_podcast
    ADD CONSTRAINT idx_16561_primary PRIMARY KEY (id);


--
-- TOC entry 3316 (class 2606 OID 16601)
-- Name: episodio idx_16569_primary; Type: CONSTRAINT; Schema: podfy; Owner: postgres
--

ALTER TABLE ONLY podfy.episodio
    ADD CONSTRAINT idx_16569_primary PRIMARY KEY (id);


--
-- TOC entry 3321 (class 2606 OID 16603)
-- Name: participacao idx_16574_primary; Type: CONSTRAINT; Schema: podfy; Owner: postgres
--

ALTER TABLE ONLY podfy.participacao
    ADD CONSTRAINT idx_16574_primary PRIMARY KEY (id);


--
-- TOC entry 3324 (class 2606 OID 16604)
-- Name: podcast idx_16580_primary; Type: CONSTRAINT; Schema: podfy; Owner: postgres
--

ALTER TABLE ONLY podfy.podcast
    ADD CONSTRAINT idx_16580_primary PRIMARY KEY (id);


--
-- TOC entry 3311 (class 1259 OID 16589)
-- Name: idx_16561_podcast_id; Type: INDEX; Schema: podfy; Owner: postgres
--

CREATE INDEX idx_16561_podcast_id ON podfy.detalhes_podcast USING btree (podcast_id);


--
-- TOC entry 3314 (class 1259 OID 16585)
-- Name: idx_16569_podcast_id; Type: INDEX; Schema: podfy; Owner: postgres
--

CREATE INDEX idx_16569_podcast_id ON podfy.episodio USING btree (podcast_id);


--
-- TOC entry 3317 (class 1259 OID 16588)
-- Name: idx_16569_titulo; Type: INDEX; Schema: podfy; Owner: postgres
--

CREATE UNIQUE INDEX idx_16569_titulo ON podfy.episodio USING btree (titulo);


--
-- TOC entry 3318 (class 1259 OID 16592)
-- Name: idx_16574_convidado_id; Type: INDEX; Schema: podfy; Owner: postgres
--

CREATE INDEX idx_16574_convidado_id ON podfy.participacao USING btree (convidado_id);


--
-- TOC entry 3319 (class 1259 OID 16591)
-- Name: idx_16574_episodio_id; Type: INDEX; Schema: podfy; Owner: postgres
--

CREATE INDEX idx_16574_episodio_id ON podfy.participacao USING btree (episodio_id);


--
-- TOC entry 3322 (class 1259 OID 16594)
-- Name: idx_16580_nome; Type: INDEX; Schema: podfy; Owner: postgres
--

CREATE UNIQUE INDEX idx_16580_nome ON podfy.podcast USING btree (nome);


--
-- TOC entry 3325 (class 2606 OID 16605)
-- Name: detalhes_podcast detalhes_podcast_ibfk_1; Type: FK CONSTRAINT; Schema: podfy; Owner: postgres
--

ALTER TABLE ONLY podfy.detalhes_podcast
    ADD CONSTRAINT detalhes_podcast_ibfk_1 FOREIGN KEY (podcast_id) REFERENCES podfy.podcast(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 3326 (class 2606 OID 16610)
-- Name: episodio episodio_ibfk_1; Type: FK CONSTRAINT; Schema: podfy; Owner: postgres
--

ALTER TABLE ONLY podfy.episodio
    ADD CONSTRAINT episodio_ibfk_1 FOREIGN KEY (podcast_id) REFERENCES podfy.podcast(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 3327 (class 2606 OID 16615)
-- Name: participacao participacao_ibfk_1; Type: FK CONSTRAINT; Schema: podfy; Owner: postgres
--

ALTER TABLE ONLY podfy.participacao
    ADD CONSTRAINT participacao_ibfk_1 FOREIGN KEY (episodio_id) REFERENCES podfy.episodio(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


--
-- TOC entry 3328 (class 2606 OID 16620)
-- Name: participacao participacao_ibfk_2; Type: FK CONSTRAINT; Schema: podfy; Owner: postgres
--

ALTER TABLE ONLY podfy.participacao
    ADD CONSTRAINT participacao_ibfk_2 FOREIGN KEY (convidado_id) REFERENCES podfy.convidado(id) ON UPDATE RESTRICT ON DELETE RESTRICT;


-- Completed on 2026-02-04 06:08:28 -03

--
-- PostgreSQL database dump complete
--

\unrestrict Qvezzv368xR2eAJSaiTF4bgfXKI6E7du0x28FmMJ9b1iezHao1M3c0erGD8VJBI

