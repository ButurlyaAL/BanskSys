--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.8
-- Dumped by pg_dump version 9.6.8

-- Started on 2018-03-24 23:08:29

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
-- TOC entry 2157 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 188 (class 1259 OID 16444)
-- Name:  attribute_values; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public." attribute_values" (
    value_id integer NOT NULL,
    object_id integer NOT NULL,
    attribute_id integer NOT NULL,
    value text
);


ALTER TABLE public." attribute_values" OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 16420)
-- Name:  attributes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public." attributes" (
    attribute_id integer NOT NULL,
    " attribute_name" text,
    object_type_id integer NOT NULL
);


ALTER TABLE public." attributes" OWNER TO postgres;

--
-- TOC entry 185 (class 1259 OID 16412)
-- Name: object_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.object_types (
    object_type_id integer NOT NULL,
    type_name text
);


ALTER TABLE public.object_types OWNER TO postgres;

--
-- TOC entry 187 (class 1259 OID 16434)
-- Name: objects; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.objects (
    object_id integer NOT NULL,
    object_type_id integer NOT NULL
);


ALTER TABLE public.objects OWNER TO postgres;

--
-- TOC entry 2149 (class 0 OID 16444)
-- Dependencies: 188
-- Data for Name:  attribute_values; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public." attribute_values" (value_id, object_id, attribute_id, value) FROM stdin;
\.


--
-- TOC entry 2147 (class 0 OID 16420)
-- Dependencies: 186
-- Data for Name:  attributes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public." attributes" (attribute_id, " attribute_name", object_type_id) FROM stdin;
\.


--
-- TOC entry 2146 (class 0 OID 16412)
-- Dependencies: 185
-- Data for Name: object_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.object_types (object_type_id, type_name) FROM stdin;
\.


--
-- TOC entry 2148 (class 0 OID 16434)
-- Dependencies: 187
-- Data for Name: objects; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.objects (object_id, object_type_id) FROM stdin;
\.


--
-- TOC entry 2017 (class 2606 OID 16427)
-- Name:  attributes  attribute_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public." attributes"
    ADD CONSTRAINT " attribute_id" PRIMARY KEY (attribute_id);


--
-- TOC entry 2020 (class 2606 OID 16438)
-- Name: objects object_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.objects
    ADD CONSTRAINT object_id PRIMARY KEY (object_id);


--
-- TOC entry 2015 (class 2606 OID 16419)
-- Name: object_types object_types_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.object_types
    ADD CONSTRAINT object_types_pkey PRIMARY KEY (object_type_id);


--
-- TOC entry 2024 (class 2606 OID 16451)
-- Name:  attribute_values value_id; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public." attribute_values"
    ADD CONSTRAINT value_id PRIMARY KEY (value_id);


--
-- TOC entry 2021 (class 1259 OID 16468)
-- Name: fki_attribute_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_attribute_id ON public." attribute_values" USING btree (attribute_id);


--
-- TOC entry 2022 (class 1259 OID 16457)
-- Name: fki_object_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_object_id ON public." attribute_values" USING btree (object_id);


--
-- TOC entry 2018 (class 1259 OID 16433)
-- Name: fki_object_type_id; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX fki_object_type_id ON public." attributes" USING btree (object_type_id);


--
-- TOC entry 2028 (class 2606 OID 16463)
-- Name:  attribute_values attribute_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public." attribute_values"
    ADD CONSTRAINT attribute_id FOREIGN KEY (attribute_id) REFERENCES public." attributes"(attribute_id);


--
-- TOC entry 2027 (class 2606 OID 16452)
-- Name:  attribute_values object_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public." attribute_values"
    ADD CONSTRAINT object_id FOREIGN KEY (object_id) REFERENCES public.objects(object_id) ON DELETE CASCADE;


--
-- TOC entry 2025 (class 2606 OID 16428)
-- Name:  attributes object_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public." attributes"
    ADD CONSTRAINT object_type_id FOREIGN KEY (object_type_id) REFERENCES public.object_types(object_type_id) ON DELETE CASCADE;


--
-- TOC entry 2026 (class 2606 OID 16439)
-- Name: objects object_type_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.objects
    ADD CONSTRAINT object_type_id FOREIGN KEY (object_id) REFERENCES public.object_types(object_type_id) ON DELETE CASCADE;


-- Completed on 2018-03-24 23:08:31

--
-- PostgreSQL database dump complete
--

