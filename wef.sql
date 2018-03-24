--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.8
-- Dumped by pg_dump version 9.6.8

-- Started on 2018-03-24 23:06:54

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12387)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2130 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 185 (class 1259 OID 16480)
-- Name: gf; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gf (
    rebeb json,
    j5j5j boolean NOT NULL
);


ALTER TABLE public.gf OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 16486)
-- Name: s; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.s (
    j5j bigint,
    jrnttn box
);


ALTER TABLE public.s OWNER TO postgres;

--
-- TOC entry 2121 (class 0 OID 16480)
-- Dependencies: 185
-- Data for Name: gf; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2122 (class 0 OID 16486)
-- Dependencies: 186
-- Data for Name: s; Type: TABLE DATA; Schema: public; Owner: postgres
--



-- Completed on 2018-03-24 23:06:55

--
-- PostgreSQL database dump complete
--

