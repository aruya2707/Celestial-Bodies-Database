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

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLAT
E = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


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
    age_in_millions numeric,
    description text,
    star_name character varying(30)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    distance_from_earth numeric,
    distance_from_star numeric,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: nebula; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.nebula (
    nebula_id integer NOT NULL,
    name character varying(20) NOT NULL,
    clasification text
);


ALTER TABLE public.nebula OWNER TO freecodecamp;

--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE; Schema: public; Owner: freecode
camp
--

CREATE SEQUENCE public.nebula_nebula_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.nebula_nebula_id_seq OWNER TO freecodecamp;

--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner:
 freecodecamp
--

ALTER SEQUENCE public.nebula_nebula_id_seq OWNED BY public.nebula.nebula_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    planet_type text,
    is_spherical boolean,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    age integer,
    name character varying(30) NOT NULL,
    galaxy_id integer,
    description text
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: nebula nebula_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.nebula ALTER COLUMN nebula_id SET DEFAULT nextval('pub
lic.nebula_nebula_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecam
p
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 10.01, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', 13.61, 'Convex lens', NULL);
INSERT INTO public.galaxy VALUES (3, 'Black Eye', 13.28, 'spiral', NULL);
INSERT INTO public.galaxy VALUES (4, 'Blue Pinwheel', NULL, 'Spiral', NULL);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', NULL, 'Spiral', NULL);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', NULL, 'Spiral', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', NULL, NULL, NULL, 2);
INSERT INTO public.moon VALUES (2, 'Phobos', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (3, 'Deimos', NULL, NULL, NULL, 6);
INSERT INTO public.moon VALUES (4, 'Io', NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (5, 'Europa', NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (6, 'Ganymede', NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (7, 'Callisto', NULL, NULL, NULL, 7);
INSERT INTO public.moon VALUES (8, 'Mimas', NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (9, 'Enceladus', NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (10, 'Tethys', NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (11, 'Dione', NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (12, 'Rhea', NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (13, 'Titan', NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (14, 'Hyperion', NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (15, 'Iapetus', NULL, NULL, NULL, 8);
INSERT INTO public.moon VALUES (16, 'Miranda', NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (17, 'Ariel', NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (18, 'Umbriel', NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (19, 'Titania', NULL, NULL, NULL, 9);
INSERT INTO public.moon VALUES (20, 'Oberon', NULL, NULL, NULL, 9);


--
-- Data for Name: nebula; Type: TABLE DATA; Schema: public; Owner: freecodecam
p
--

INSERT INTO public.nebula VALUES (1, 'Orion', NULL);
INSERT INTO public.nebula VALUES (2, 'Helix', NULL);
INSERT INTO public.nebula VALUES (3, 'Crab', NULL);
INSERT INTO public.nebula VALUES (4, 'Eagle', NULL);
INSERT INTO public.nebula VALUES (5, 'Ring', NULL);
INSERT INTO public.nebula VALUES (6, 'Lagoon', NULL);
INSERT INTO public.nebula VALUES (7, 'Andromeda', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecam
p
--

INSERT INTO public.planet VALUES (1, 'Proxima Centauri b', NULL, NULL, NULL, f
alse, 1);
INSERT INTO public.planet VALUES (2, 'Earth', NULL, NULL, NULL, true, 2);
INSERT INTO public.planet VALUES (3, 'Kepler-452b', NULL, NULL, NULL, false, 1
);
INSERT INTO public.planet VALUES (4, 'Merkurius', NULL, NULL, NULL, false, 2);
INSERT INTO public.planet VALUES (5, 'Venus', NULL, NULL, NULL, false, 2);
INSERT INTO public.planet VALUES (6, 'Mars', NULL, NULL, NULL, false, 2);
INSERT INTO public.planet VALUES (7, 'Jupiter', NULL, NULL, NULL, false, 2);
INSERT INTO public.planet VALUES (8, 'Saturn', NULL, NULL, NULL, false, 2);
INSERT INTO public.planet VALUES (9, 'Uranus', NULL, NULL, NULL, false, 2);
INSERT INTO public.planet VALUES (10, 'Neptune', NULL, NULL, NULL, false, 2);
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1e', NULL, NULL, NULL, false, 
4);
INSERT INTO public.planet VALUES (12, 'WASP-12b', NULL, NULL, NULL, false, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, NULL, 'Alpha Andromeda', 1, NULL);
INSERT INTO public.star VALUES (2, NULL, 'Sirius', 2, NULL);
INSERT INTO public.star VALUES (3, NULL, 'Coma Berenices', 3, NULL);
INSERT INTO public.star VALUES (4, NULL, 'Ursa Major', 4, NULL);
INSERT INTO public.star VALUES (5, NULL, 'Canes Venatici', 5, NULL);
INSERT INTO public.star VALUES (6, NULL, 'Virgo', 6, NULL);


--
-- Name: nebula_nebula_id_seq; Type: SEQUENCE SET; Schema: public; Owner: free
codecamp
--

SELECT pg_catalog.setval('public.nebula_nebula_id_seq', 1, false);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecode
camp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_star_name_key; Type: CONSTRAINT; Schema: public; Owner:
 freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_star_name_key UNIQUE (star_name);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freec
odecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: nebula nebula_nebula_id_key; Type: CONSTRAINT; Schema: public; Owner:
 freecodecamp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_nebula_id_key UNIQUE (nebula_id);


--
-- Name: nebula nebula_pkey; Type: CONSTRAINT; Schema: public; Owner: freecode
camp
--

ALTER TABLE ONLY public.nebula
    ADD CONSTRAINT nebula_pkey PRIMARY KEY (nebula_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecode
camp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner:
 freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: fre
ecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecode
camp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner:
 freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES publ
ic.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owne
r: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public
.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner:
 freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES publ
ic.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--