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
-- Name: tab1; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tab1 (
    col1 integer,
    col2 integer,
    col3 character(1)
);


ALTER TABLE public.tab1 OWNER TO postgres;

--
-- Data for Name: tab1; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tab1 (col1, col2, col3) FROM stdin;
2	3	\N
2	3	\N
7	8	\N
4	5	b
4	5	b
\.


--
-- PostgreSQL database dump complete
--

