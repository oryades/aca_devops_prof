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

--
-- Name: aram; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA aram;


ALTER SCHEMA aram OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: test; Type: TABLE; Schema: aram; Owner: postgres
--

CREATE TABLE aram.test (
    firstname character(15),
    lastname character(20)
);


ALTER TABLE aram.test OWNER TO postgres;

--
-- Data for Name: test; Type: TABLE DATA; Schema: aram; Owner: postgres
--

COPY aram.test (firstname, lastname) FROM stdin;
\.


--
-- PostgreSQL database dump complete
--

