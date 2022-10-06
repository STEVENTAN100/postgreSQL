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
-- Name: earth; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.earth (
    earth_id integer NOT NULL,
    name character varying(30) NOT NULL,
    r integer
);


ALTER TABLE public.earth OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    r integer,
    m integer,
    d numeric(4,1),
    disp text,
    is_true boolean NOT NULL,
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    r integer,
    m integer,
    d numeric(4,1),
    disp text,
    is_true boolean NOT NULL,
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    r integer,
    m integer,
    d numeric(4,1),
    disp text,
    is_true boolean NOT NULL,
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    r integer,
    m integer,
    d numeric(4,1),
    disp text,
    is_true boolean NOT NULL,
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: earth; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.earth VALUES (1, 'a', NULL);
INSERT INTO public.earth VALUES (2, 'b', NULL);
INSERT INTO public.earth VALUES (3, 'c', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, NULL, true, 1, 'a');
INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, NULL, true, 2, 'b');
INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, NULL, true, 3, 'c');
INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, NULL, true, 4, 'd');
INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, NULL, true, 5, 'e');
INSERT INTO public.galaxy VALUES (NULL, NULL, NULL, NULL, true, 6, 'f');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, true, 1, 'a', 1);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, true, 2, 'b', 2);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, true, 3, 'c', 3);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, true, 4, 'd', 4);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, true, 5, 'e', 5);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, true, 6, 'f', 6);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, true, 7, 'g', 7);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, true, 8, 'h', 8);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, true, 9, 'i', 9);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, true, 10, 'j', 10);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, true, 11, 'k', 11);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, true, 12, 'l', 12);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, true, 13, 'm', 1);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, true, 14, 'n', 2);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, true, 15, 'o', 3);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, true, 16, 'p', 4);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, true, 17, 'q', 5);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, true, 18, 'r', 6);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, true, 19, 's', 7);
INSERT INTO public.moon VALUES (NULL, NULL, NULL, NULL, true, 20, 't', 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, true, 1, 'a', 1);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, true, 2, 'b', 2);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, true, 3, 'c', 3);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, true, 4, 'd', 4);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, true, 5, 'e', 5);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, true, 6, 'f', 6);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, true, 7, 'g', 1);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, true, 8, 'h', 2);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, true, 9, 'i', 3);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, true, 10, 'j', 4);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, true, 11, 'k', 5);
INSERT INTO public.planet VALUES (NULL, NULL, NULL, NULL, true, 12, 'l', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, true, 1, 'a', 1);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, true, 2, 'b', 2);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, true, 3, 'c', 3);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, true, 4, 'd', 4);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, true, 5, 'e', 5);
INSERT INTO public.star VALUES (NULL, NULL, NULL, NULL, true, 6, 'f', 6);


--
-- Name: earth earth_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_name_key UNIQUE (name);


--
-- Name: earth earth_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.earth
    ADD CONSTRAINT earth_pkey PRIMARY KEY (earth_id);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

