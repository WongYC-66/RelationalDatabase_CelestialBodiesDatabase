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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    nickname text,
    has_photo boolean,
    rating integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    distance integer,
    size integer,
    liveable boolean,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: myfavorgalaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.myfavorgalaxy (
    myfavorgalaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    reason character varying(30)
);


ALTER TABLE public.myfavorgalaxy OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    star_id integer NOT NULL,
    rating integer,
    subscriber integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    brightness numeric,
    galaxy_id integer NOT NULL,
    rating integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 'milky', true, NULL);
INSERT INTO public.galaxy VALUES (2, 'triangulum', 'triangly', true, NULL);
INSERT INTO public.galaxy VALUES (3, 'Small Magellanic', 'magelly', true, NULL);
INSERT INTO public.galaxy VALUES (4, 'Sombrebo', 'sombrey', true, NULL);
INSERT INTO public.galaxy VALUES (5, 'Andromeda', 'andrey', true, NULL);
INSERT INTO public.galaxy VALUES (6, 'Messier 82', 'messiy', true, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 10, 5, true, 1);
INSERT INTO public.moon VALUES (2, 'moon2', 10, 5, true, 1);
INSERT INTO public.moon VALUES (3, 'moon3', 10, 5, true, 1);
INSERT INTO public.moon VALUES (4, 'moon4', 10, 5, true, 1);
INSERT INTO public.moon VALUES (5, 'moon5', 10, 5, true, 1);
INSERT INTO public.moon VALUES (6, 'moon6', 10, 5, true, 1);
INSERT INTO public.moon VALUES (7, 'moon7', 10, 5, true, 1);
INSERT INTO public.moon VALUES (8, 'moon8', 10, 5, true, 1);
INSERT INTO public.moon VALUES (9, 'moon9', 10, 5, true, 1);
INSERT INTO public.moon VALUES (10, 'moon10', 10, 5, true, 1);
INSERT INTO public.moon VALUES (11, 'moon1a', 10, 5, true, 2);
INSERT INTO public.moon VALUES (12, 'moon1b', 10, 5, true, 2);
INSERT INTO public.moon VALUES (13, 'moon1c', 10, 5, true, 2);
INSERT INTO public.moon VALUES (14, 'moon1d', 10, 5, true, 2);
INSERT INTO public.moon VALUES (15, 'moon1e', 10, 5, true, 2);
INSERT INTO public.moon VALUES (16, 'moon1f', 10, 5, true, 2);
INSERT INTO public.moon VALUES (17, 'moon1g', 10, 5, true, 2);
INSERT INTO public.moon VALUES (18, 'moon1h', 10, 5, true, 2);
INSERT INTO public.moon VALUES (19, 'moon1i', 10, 5, true, 2);
INSERT INTO public.moon VALUES (20, 'moon1j', 10, 5, true, 2);


--
-- Data for Name: myfavorgalaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.myfavorgalaxy VALUES (1, 'milky', 'cool');
INSERT INTO public.myfavorgalaxy VALUES (2, 'triangulum', 'magical');
INSERT INTO public.myfavorgalaxy VALUES (3, 'andromeda', 'pretty');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Mars', 1, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'Neptune', 1, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'Jupiter', 1, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Mercury', 1, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'Uranus', 1, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'Saturn', 1, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'Venus', 1, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'unknowPlanet-01', 2, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'unknowPlanet-02', 2, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'unknowPlanet-03', 2, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'unknowPlanet-04', 3, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 10, 1, NULL);
INSERT INTO public.star VALUES (2, 'sirius', 30, 1, NULL);
INSERT INTO public.star VALUES (3, 'vega', 20, 1, NULL);
INSERT INTO public.star VALUES (4, 'AB8', 300, 3, NULL);
INSERT INTO public.star VALUES (5, 'Alpheratz', 150, 5, NULL);
INSERT INTO public.star VALUES (6, 'Centauri C', 100, 1, NULL);


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
-- Name: myfavorgalaxy myfavorgalaxy_myfavorgalaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.myfavorgalaxy
    ADD CONSTRAINT myfavorgalaxy_myfavorgalaxy_id_key UNIQUE (myfavorgalaxy_id);


--
-- Name: myfavorgalaxy myfavorgalaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.myfavorgalaxy
    ADD CONSTRAINT myfavorgalaxy_pkey PRIMARY KEY (myfavorgalaxy_id);


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

