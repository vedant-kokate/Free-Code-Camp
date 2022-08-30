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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(40),
    size character varying(10) NOT NULL
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    size integer,
    dist integer,
    age integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40),
    planet_id integer NOT NULL,
    size integer,
    habitable boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(40),
    weight numeric,
    big boolean,
    star_id integer NOT NULL,
    temp text
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40),
    distance integer,
    big boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, '1 Ceres', 'big');
INSERT INTO public.asteroid VALUES (2, '4 VEsta', 'big');
INSERT INTO public.asteroid VALUES (3, '2 Pallas', 'big');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 52850, 26670, 14);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 110000, 2537000, 10);
INSERT INTO public.galaxy VALUES (3, 'Whirlpool', 30000, 26160000, 0);
INSERT INTO public.galaxy VALUES (4, 'Messier 91', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Messier 82', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 3, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Demios', 4, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Phobos', 4, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Io', 5, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Ganymede', 5, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Callisto', 5, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Dia', 5, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Enceladus', 6, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Titan', 6, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Atlas', 6, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Anthe', 6, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Calypso', 6, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Dapnhis', 6, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Helene', 6, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Pan', 6, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Pandora', 6, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Phoebe', 6, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Prometheus', 6, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Ariel', 7, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Oberon', 7, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (2, 'Mercury', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (3, 'Earth', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, false, 1, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, true, 1, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, true, 1, NULL);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, true, 1, NULL);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, true, 1, NULL);
INSERT INTO public.planet VALUES (9, 'Beta Pictois', NULL, NULL, 7, NULL);
INSERT INTO public.planet VALUES (10, 'Alpha Century', NULL, NULL, 7, NULL);
INSERT INTO public.planet VALUES (11, 'PDS 70', NULL, NULL, 7, NULL);
INSERT INTO public.planet VALUES (12, '59 Virginis', NULL, NULL, 7, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 0, false, 1);
INSERT INTO public.star VALUES (2, 'Kepler-90', NULL, NULL, 1);
INSERT INTO public.star VALUES (3, 'Proxima Century', NULL, NULL, 1);
INSERT INTO public.star VALUES (4, 'Sirus', NULL, NULL, 1);
INSERT INTO public.star VALUES (5, 'Vega', NULL, NULL, 1);
INSERT INTO public.star VALUES (6, 'Arcturus', NULL, NULL, 1);
INSERT INTO public.star VALUES (7, 'Other', NULL, NULL, 1);


--
-- Name: asteroid asteroid_asteroid_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_asteroid_id_key UNIQUE (asteroid_id);


--
-- Name: asteroid asteroids_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroids_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--


