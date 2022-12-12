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
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    has_life boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(50) NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer,
    is_spherical boolean,
    has_life boolean
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(50) NOT NULL,
    description text,
    population numeric,
    is_spherical boolean,
    planet_id integer NOT NULL,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: spaceships; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.spaceships (
    spaceships_id integer NOT NULL,
    name character varying(50),
    crew_count numeric NOT NULL
);


ALTER TABLE public.spaceships OWNER TO freecodecamp;

--
-- Name: spaceships_spaceship_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.spaceships_spaceship_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spaceships_spaceship_id_seq OWNER TO freecodecamp;

--
-- Name: spaceships_spaceship_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.spaceships_spaceship_id_seq OWNED BY public.spaceships.spaceships_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(50) NOT NULL,
    galaxy_id integer,
    star_id integer NOT NULL,
    color character varying(50),
    moving boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: spaceships spaceships_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceships ALTER COLUMN spaceships_id SET DEFAULT nextval('public.spaceships_spaceship_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Pouria', 12, 55000, true, 1);
INSERT INTO public.galaxy VALUES ('Ghazal', 14, 69000, true, 2);
INSERT INTO public.galaxy VALUES ('Farzaneh', 51, 87420, false, 3);
INSERT INTO public.galaxy VALUES ('Ali', 87, 45156, true, 4);
INSERT INTO public.galaxy VALUES ('Parnia', 10, 88541, false, 5);
INSERT INTO public.galaxy VALUES ('Souri', 50, 925520, true, 6);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('mimo', 1, 2, true, false);
INSERT INTO public.moon VALUES ('momo', 2, 3, true, false);
INSERT INTO public.moon VALUES ('moly', 3, 4, true, false);
INSERT INTO public.moon VALUES ('mahdi', 4, 5, true, false);
INSERT INTO public.moon VALUES ('majid', 5, 6, true, false);
INSERT INTO public.moon VALUES ('hajime', 6, 5, true, false);
INSERT INTO public.moon VALUES ('nismo', 7, 2, false, true);
INSERT INTO public.moon VALUES ('guaido', 8, 6, false, false);
INSERT INTO public.moon VALUES ('galant', 9, 9, true, true);
INSERT INTO public.moon VALUES ('guardiola', 10, 10, true, true);
INSERT INTO public.moon VALUES ('jimbo', 11, 7, true, false);
INSERT INTO public.moon VALUES ('zigho', 12, 8, true, false);
INSERT INTO public.moon VALUES ('fartizian', 13, 12, true, false);
INSERT INTO public.moon VALUES ('sagrada', 14, 11, true, false);
INSERT INTO public.moon VALUES ('simba', 15, 10, true, false);
INSERT INTO public.moon VALUES ('babaj', 16, 4, false, true);
INSERT INTO public.moon VALUES ('bazinga', 17, 3, false, true);
INSERT INTO public.moon VALUES ('bloody', 18, 13, false, true);
INSERT INTO public.moon VALUES ('mate', 19, 12, false, true);
INSERT INTO public.moon VALUES ('arigato', 20, 10, false, true);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('pica', 'this is a good planet', NULL, true, 2, 7);
INSERT INTO public.planet VALUES ('pary', 'this is a nice planet', NULL, true, 3, 7);
INSERT INTO public.planet VALUES ('pasto', 'this is a very nice planet', NULL, true, 4, 12);
INSERT INTO public.planet VALUES ('pasta', 'this is a very shitty planet', NULL, true, 5, 11);
INSERT INTO public.planet VALUES ('parm', 'this is a very very  shitty planet', NULL, true, 6, 10);
INSERT INTO public.planet VALUES ('isola', 'this is a giant planet', 1500, true, 7, 10);
INSERT INTO public.planet VALUES ('isolina', 'this is a chungus giant planet', 14000, true, 8, 9);
INSERT INTO public.planet VALUES ('polina', 'this is a half giant planet', 100, false, 9, 9);
INSERT INTO public.planet VALUES ('mecito', 'this is a decent planet', 100, true, 10, 8);
INSERT INTO public.planet VALUES ('meme', 'this is a decent planet', 18000, true, 11, 12);
INSERT INTO public.planet VALUES ('memo', 'this is a cato planet', 1000, true, 12, 12);
INSERT INTO public.planet VALUES ('barko', 'this is a dogo planet', 69000, true, 13, 8);


--
-- Data for Name: spaceships; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.spaceships VALUES (1, 'JFK', 45);
INSERT INTO public.spaceships VALUES (2, 'AGS', 16);
INSERT INTO public.spaceships VALUES (3, 'MFK', 69);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('qwerq', 1, 7, NULL, NULL);
INSERT INTO public.star VALUES ('asdfa', 5, 8, NULL, NULL);
INSERT INTO public.star VALUES ('zxcz', 4, 9, NULL, NULL);
INSERT INTO public.star VALUES ('rttye', 3, 10, NULL, NULL);
INSERT INTO public.star VALUES ('tyht', 2, 11, NULL, NULL);
INSERT INTO public.star VALUES ('uiou', 6, 12, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: spaceships_spaceship_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.spaceships_spaceship_id_seq', 3, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 12, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: spaceships spaceships_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceships
    ADD CONSTRAINT spaceships_name_key UNIQUE (name);


--
-- Name: spaceships spaceships_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceships
    ADD CONSTRAINT spaceships_pkey PRIMARY KEY (spaceships_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star u_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT u_id UNIQUE (galaxy_id);


--
-- Name: galaxy u_name_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT u_name_galaxy UNIQUE (name);


--
-- Name: moon u_name_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT u_name_moon UNIQUE (name);


--
-- Name: planet u_name_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT u_name_planet UNIQUE (name);


--
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

