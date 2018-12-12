-- PostgreSQL database dump
--

-- Dumped from database version 10.1
-- Dumped by pg_dump version 10.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner:
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner:
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE ar_internal_metadata OWNER TO postgres;

--
-- Name: equipos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE equipos (
    id bigint NOT NULL,
    cod_equipo integer,
    nom_equipo text,
    activo_equipo boolean,
    fecha_creacion timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL,
    porcentaje numeric(11,2)
);


ALTER TABLE equipos OWNER TO postgres;

--
-- Name: equipos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE equipos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE equipos_id_seq OWNER TO postgres;

--
-- Name: equipos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE equipos_id_seq OWNED BY equipos.id;


--
-- Name: resultados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE resultados (
    id bigint NOT NULL,
    cod_resultado integer,
    enfrentamiento text,
    puntos_partido integer,
    goles_marcados integer,
    goles_recibidos integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE resultados OWNER TO postgres;

--
-- Name: resultados_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE resultados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE resultados_id_seq OWNER TO postgres;

--
-- Name: resultados_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE resultados_id_seq OWNED BY resultados.id;


--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE schema_migrations OWNER TO postgres;

--
-- Name: tipo_equipos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tipo_equipos (
    id bigint NOT NULL,
    cod_tipo_equipo integer,
    nom_tipo_equipo text,
    activo_tipo_equipo boolean,
    fecha_creacion timestamp without time zone,
    descripcion text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);


ALTER TABLE tipo_equipos OWNER TO postgres;

--
-- Name: tipo_equipos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tipo_equipos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tipo_equipos_id_seq OWNER TO postgres;

--
-- Name: tipo_equipos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tipo_equipos_id_seq OWNED BY tipo_equipos.id;


--
-- Name: equipos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY equipos ALTER COLUMN id SET DEFAULT nextval('equipos_id_seq'::regclass);


--
-- Name: resultados id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY resultados ALTER COLUMN id SET DEFAULT nextval('resultados_id_seq'::regclass);


--
-- Name: tipo_equipos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_equipos ALTER COLUMN id SET DEFAULT nextval('tipo_equipos_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: equipos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY equipos (id, cod_equipo, nom_equipo, activo_equipo, fecha_creacion, created_at, updated_at, porcentaje) FROM stdin;
1       1       Rusia   t       2018-04-24 00:00:00     2018-04-24 00:00:00     2018-04-24 00:00:00     50.70
2       2       Egipto  t       2018-04-25 00:00:00     2018-04-25 00:00:00     2018-04-25 00:00:00     46.10
3       3       Arabia Saudita  t       2018-04-25 00:00:00     2018-04-25 00:00:00     2018-04-25 00:00:00     43.90
4       4       Uruguay t       2018-04-25 00:00:00     2018-04-25 00:00:00     2018-04-25 00:00:00     59.20
5       5       Portugal        t       2018-04-25 00:00:00     2018-04-25 00:00:00     2018-04-25 00:00:00     55.60
6       6       España t       2018-04-25 00:00:00     2018-04-25 00:00:00     2018-04-25 00:00:00     73.60
7       7       Irán   t       2018-04-25 00:00:00     2018-04-25 00:00:00     2018-04-25 00:00:00     41.30
8       8       Marruecos       t       2018-04-25 00:00:00     2018-04-25 00:00:00     2018-04-25 00:00:00     29.50
9       9       Francia t       2018-04-25 00:00:00     2018-04-25 00:00:00     2018-04-25 00:00:00     75.80
10      10      Perú   t       2018-04-25 00:00:00     2018-04-25 00:00:00     2018-04-25 00:00:00     42.60
11      11      Dinamarca       t       2018-04-25 00:00:00     2018-04-25 00:00:00     2018-04-25 00:00:00     39.60
12      12      Australia       t       2018-04-25 00:00:00     2018-04-25 00:00:00     2018-04-25 00:00:00     42.00
13      13      Argentina       t       2018-04-25 00:00:00     2018-04-25 00:00:00     2018-04-25 00:00:00     75.60
14      14      Croacia t       2018-04-25 00:00:00     2018-04-25 00:00:00     2018-04-25 00:00:00     45.20
15      15      Islandia        t       2018-04-25 00:00:00     2018-04-25 00:00:00     2018-04-25 00:00:00     38.50
16      16      Nigeria t       2018-04-25 00:00:00     2018-04-25 00:00:00     2018-04-25 00:00:00     40.60
17      17      Brasil  t       2018-04-25 00:00:00     2018-04-25 00:00:00     2018-04-25 00:00:00     80.20
18      18      Costa Rica      t       2018-04-25 00:00:00     2018-04-25 00:00:00     2018-04-25 00:00:00     36.60
19      19      Suiza   t       2018-04-25 00:00:00     2018-04-25 00:00:00     2018-04-25 00:00:00     40.20
20      20      Serbia  t       2018-04-25 00:00:00     2018-04-25 00:00:00     2018-04-25 00:00:00     43.00
21      21      Alemania        t       2018-04-25 00:00:00     2018-04-25 00:00:00     2018-04-25 00:00:00     76.10
22      22      México t       2018-04-25 00:00:00     2018-04-25 00:00:00     2018-04-25 00:00:00     43.70
23      23      Corea del Sur   t       2018-04-25 00:00:00     2018-04-25 00:00:00     2018-04-25 00:00:00     36.30
24      24      Suecia  t       2018-04-25 00:00:00     2018-04-25 00:00:00     2018-04-25 00:00:00     43.90
25      25      Belgica t       2018-04-25 00:00:00     2018-04-25 00:00:00     2018-04-25 00:00:00     65.40
26      26      Inglaterra      t       2018-04-25 00:00:00     2018-04-25 00:00:00     2018-04-25 00:00:00     53.90
27      27      Panamá t       2018-04-25 00:00:00     2018-04-25 00:00:00     2018-04-25 00:00:00     39.50
28      28      Túnez  t       2018-04-25 00:00:00     2018-04-25 00:00:00     2018-04-25 00:00:00     41.20
29      29      Polonia t       2018-04-25 00:00:00     2018-04-25 00:00:00     2018-04-25 00:00:00     47.50
30      30      Colombia        t       2018-04-25 00:00:00     2018-04-25 00:00:00     2018-04-25 00:00:00     55.20
31      31      Japón  t       2018-04-25 00:00:00     2018-04-25 00:00:00     2018-04-25 00:00:00     51.80
32      32      Senegal t       2018-04-25 00:00:00     2018-04-25 00:00:00     2018-04-25 00:00:00     45.60
\.


--
-- Data for Name: resultados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY resultados (id, cod_resultado, enfrentamiento, puntos_partido, goles_marcados, goles_recibidos, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY schema_migrations (version) FROM stdin;
\.


--
-- Data for Name: tipo_equipos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tipo_equipos (id, cod_tipo_equipo, nom_tipo_equipo, activo_tipo_equipo, fecha_creacion, descripcion, created_at, updated_at) FROM stdin;
\.


--
-- Name: equipos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('equipos_id_seq', 32, true);


--
-- Name: resultados_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('resultados_id_seq', 1, false);


--
-- Name: tipo_equipos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_equipos_id_seq', 1, false);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: equipos equipos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY equipos
    ADD CONSTRAINT equipos_pkey PRIMARY KEY (id);


--
-- Name: resultados resultados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY resultados
    ADD CONSTRAINT resultados_pkey PRIMARY KEY (id);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: tipo_equipos tipo_equipos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_equipos
    ADD CONSTRAINT tipo_equipos_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--