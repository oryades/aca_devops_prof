--
-- PostgreSQL database dump
--

-- Dumped from database version 15.4 (Debian 15.4-1.pgdg120+1)
-- Dumped by pg_dump version 15.4 (Debian 15.4-1.pgdg120+1)

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
-- Name: aca_table1; Type: TABLE; Schema: public; Owner: aca
--

CREATE TABLE public.aca_table1 (
    user_id integer NOT NULL,
    username character varying(50) NOT NULL
);


ALTER TABLE public.aca_table1 OWNER TO aca;

--
-- Name: aca_table1_user_id_seq; Type: SEQUENCE; Schema: public; Owner: aca
--

CREATE SEQUENCE public.aca_table1_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aca_table1_user_id_seq OWNER TO aca;

--
-- Name: aca_table1_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aca
--

ALTER SEQUENCE public.aca_table1_user_id_seq OWNED BY public.aca_table1.user_id;


--
-- Name: aca_table2; Type: TABLE; Schema: public; Owner: aca
--

CREATE TABLE public.aca_table2 (
    user_id integer NOT NULL,
    username character varying(50) NOT NULL
);


ALTER TABLE public.aca_table2 OWNER TO aca;

--
-- Name: aca_table2_user_id_seq; Type: SEQUENCE; Schema: public; Owner: aca
--

CREATE SEQUENCE public.aca_table2_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.aca_table2_user_id_seq OWNER TO aca;

--
-- Name: aca_table2_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: aca
--

ALTER SEQUENCE public.aca_table2_user_id_seq OWNED BY public.aca_table2.user_id;


--
-- Name: aca_table1 user_id; Type: DEFAULT; Schema: public; Owner: aca
--

ALTER TABLE ONLY public.aca_table1 ALTER COLUMN user_id SET DEFAULT nextval('public.aca_table1_user_id_seq'::regclass);


--
-- Name: aca_table2 user_id; Type: DEFAULT; Schema: public; Owner: aca
--

ALTER TABLE ONLY public.aca_table2 ALTER COLUMN user_id SET DEFAULT nextval('public.aca_table2_user_id_seq'::regclass);


--
-- Data for Name: aca_table1; Type: TABLE DATA; Schema: public; Owner: aca
--

COPY public.aca_table1 (user_id, username) FROM stdin;
1	hamlet
\.


--
-- Data for Name: aca_table2; Type: TABLE DATA; Schema: public; Owner: aca
--

COPY public.aca_table2 (user_id, username) FROM stdin;
\.


--
-- Name: aca_table1_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aca
--

SELECT pg_catalog.setval('public.aca_table1_user_id_seq', 1, false);


--
-- Name: aca_table2_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: aca
--

SELECT pg_catalog.setval('public.aca_table2_user_id_seq', 1, false);


--
-- Name: aca_table1 aca_table1_pkey; Type: CONSTRAINT; Schema: public; Owner: aca
--

ALTER TABLE ONLY public.aca_table1
    ADD CONSTRAINT aca_table1_pkey PRIMARY KEY (user_id);


--
-- Name: aca_table1 aca_table1_username_key; Type: CONSTRAINT; Schema: public; Owner: aca
--

ALTER TABLE ONLY public.aca_table1
    ADD CONSTRAINT aca_table1_username_key UNIQUE (username);


--
-- Name: aca_table2 aca_table2_pkey; Type: CONSTRAINT; Schema: public; Owner: aca
--

ALTER TABLE ONLY public.aca_table2
    ADD CONSTRAINT aca_table2_pkey PRIMARY KEY (user_id);


--
-- Name: aca_table2 aca_table2_username_key; Type: CONSTRAINT; Schema: public; Owner: aca
--

ALTER TABLE ONLY public.aca_table2
    ADD CONSTRAINT aca_table2_username_key UNIQUE (username);


--
-- PostgreSQL database dump complete
--

