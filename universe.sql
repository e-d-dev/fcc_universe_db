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
-- Name: fifth_table; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.fifth_table (
    fifth_table_id integer NOT NULL,
    name character varying NOT NULL,
    description character varying
);


ALTER TABLE public.fifth_table OWNER TO freecodecamp;

--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.fifth_table_fifth_table_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fifth_table_fifth_table_id_seq OWNER TO freecodecamp;

--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.fifth_table_fifth_table_id_seq OWNED BY public.fifth_table.fifth_table_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    has_life boolean,
    age integer,
    size integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    age integer,
    size integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    age integer,
    size integer,
    distance numeric,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    description text,
    size integer,
    age integer,
    galaxy_id integer
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
-- Name: fifth_table fifth_table_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table ALTER COLUMN fifth_table_id SET DEFAULT nextval('public.fifth_table_fifth_table_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: fifth_table; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.fifth_table VALUES (1, 'name_1', 'desc_1');
INSERT INTO public.fifth_table VALUES (2, 'name_2', 'desc_2');
INSERT INTO public.fifth_table VALUES (3, 'name_3', 'desc_3');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy_1_name', 'galaxy_1_desc', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'galaxy_2_name', 'galaxy_2_desc', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'galaxy_3_name', 'galaxy_3_desc', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'galaxy_4_name', 'galaxy_4_desc', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'galaxy_5_name', 'galaxy_5_desc', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'galaxy_6_name', 'galaxy_6_desc', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon_1_name', 'moon_1_desc', NULL, NULL, 1);
INSERT INTO public.moon VALUES (2, 'moon_2_name', 'moon_2_desc', NULL, NULL, 2);
INSERT INTO public.moon VALUES (3, 'moon_3_name', 'moon_3_desc', NULL, NULL, 3);
INSERT INTO public.moon VALUES (4, 'moon_4_name', 'moon_4_desc', NULL, NULL, 4);
INSERT INTO public.moon VALUES (5, 'moon_5_name', 'moon_5_desc', NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, 'moon_6_name', 'moon_6_desc', NULL, NULL, 6);
INSERT INTO public.moon VALUES (7, 'moon_7_name', 'moon_7_desc', NULL, NULL, 7);
INSERT INTO public.moon VALUES (8, 'moon_8_name', 'moon_8_desc', NULL, NULL, 8);
INSERT INTO public.moon VALUES (9, 'moon_9_name', 'moon_9_desc', NULL, NULL, 9);
INSERT INTO public.moon VALUES (10, 'moon_10_name', 'moon_10_desc', NULL, NULL, 10);
INSERT INTO public.moon VALUES (11, 'moon_11_name', 'moon_11_desc', NULL, NULL, 11);
INSERT INTO public.moon VALUES (12, 'moon_12_name', 'moon_12_desc', NULL, NULL, 12);
INSERT INTO public.moon VALUES (13, 'moon_13_name', 'moon_13_desc', NULL, NULL, 1);
INSERT INTO public.moon VALUES (14, 'moon_14_name', 'moon_14_desc', NULL, NULL, 2);
INSERT INTO public.moon VALUES (15, 'moon_15_name', 'moon_15_desc', NULL, NULL, 3);
INSERT INTO public.moon VALUES (16, 'moon_16_name', 'moon_16_desc', NULL, NULL, 4);
INSERT INTO public.moon VALUES (17, 'moon_17_name', 'moon_17_desc', NULL, NULL, 5);
INSERT INTO public.moon VALUES (18, 'moon_18_name', 'moon_18_desc', NULL, NULL, 6);
INSERT INTO public.moon VALUES (19, 'moon_19_name', 'moon_19_desc', NULL, NULL, 7);
INSERT INTO public.moon VALUES (20, 'moon_20_name', 'moon_20_desc', NULL, NULL, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet_1_name', 'planet_1_desc', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'planet_2_name', 'planet_2_desc', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (3, 'planet_3_name', 'planet_3_desc', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (4, 'planet_4_name', 'planet_4_desc', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (5, 'planet_5_name', 'planet_5_desc', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (6, 'planet_6_name', 'planet_6_desc', NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (7, 'planet_7_name', 'planet_7_desc', NULL, NULL, NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'planet_8_name', 'planet_8_desc', NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (9, 'planet_9_name', 'planet_9_desc', NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (10, 'planet_10_name', 'planet_10_desc', NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (11, 'planet_11_name', 'planet_11_desc', NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (12, 'planet_12_name', 'planet_12_desc', NULL, NULL, NULL, NULL, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star_1_name', 'star_1_desc', NULL, NULL, 1);
INSERT INTO public.star VALUES (2, 'star_2_name', 'star_2_desc', NULL, NULL, 2);
INSERT INTO public.star VALUES (3, 'star_3_name', 'star_3_desc', NULL, NULL, 3);
INSERT INTO public.star VALUES (4, 'star_4_name', 'star_4_desc', NULL, NULL, 4);
INSERT INTO public.star VALUES (5, 'star_5_name', 'star_5_desc', NULL, NULL, 5);
INSERT INTO public.star VALUES (6, 'star_6_name', 'star_6_desc', NULL, NULL, 6);


--
-- Name: fifth_table_fifth_table_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.fifth_table_fifth_table_id_seq', 3, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 20, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 6, true);


--
-- Name: fifth_table fifth_table_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_name_key UNIQUE (name);


--
-- Name: fifth_table fifth_table_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.fifth_table
    ADD CONSTRAINT fifth_table_pkey PRIMARY KEY (fifth_table_id);


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


