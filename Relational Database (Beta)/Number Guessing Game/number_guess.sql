--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE games;
--
-- Name: games; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE games WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE games OWNER TO freecodecamp;

\connect games

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    username character varying(30) NOT NULL,
    best integer DEFAULT 100000,
    total integer DEFAULT 0
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES ('user_1662064458740', 558, 2);
INSERT INTO public.games VALUES ('user_1662064458741', 558, 5);
INSERT INTO public.games VALUES ('user_1662064596163', 558, 2);
INSERT INTO public.games VALUES ('user_1662064596164', 558, 5);
INSERT INTO public.games VALUES ('user_1662064608916', 558, 2);
INSERT INTO public.games VALUES ('user_1662064608917', 558, 5);
INSERT INTO public.games VALUES ('user_1662064743955', 558, 2);
INSERT INTO public.games VALUES ('user_1662064743956', 558, 5);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (username);


--
-- PostgreSQL database dump complete
--

