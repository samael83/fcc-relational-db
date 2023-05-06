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
    name character varying(40) NOT NULL,
    type character varying(10),
    has_life boolean NOT NULL,
    meteor_showers boolean
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
-- Name: house; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.house (
    house_id integer NOT NULL,
    name character varying(40) NOT NULL,
    is_major_house boolean,
    symbol text,
    colors text,
    homeworld text
);


ALTER TABLE public.house OWNER TO freecodecamp;

--
-- Name: house_house_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.house_house_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.house_house_id_seq OWNER TO freecodecamp;

--
-- Name: house_house_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.house_house_id_seq OWNED BY public.house.house_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    discovered integer,
    gravity numeric(4,3),
    density double precision,
    planet_id integer
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
    planet_id integer NOT NULL,
    name character varying(40) NOT NULL,
    description text,
    size numeric(4,2),
    spectral_type character varying(10),
    distance integer,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(40) NOT NULL,
    age integer NOT NULL,
    magnitude numeric(5,4),
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: house house_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.house ALTER COLUMN house_id SET DEFAULT nextval('public.house_house_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'SA(s)b', false, true);
INSERT INTO public.galaxy VALUES (3, 'Antennae Galaxy', 'SB(s)m', false, true);
INSERT INTO public.galaxy VALUES (4, 'Milky Way', 'SB(rs)bc', true, true);
INSERT INTO public.galaxy VALUES (5, 'Peekaboo Galaxy', 'CBD', false, false);
INSERT INTO public.galaxy VALUES (6, 'Hoags Object', '(RP)E0', false, true);
INSERT INTO public.galaxy VALUES (7, 'Hocky Stick Galaxy', 'SB(s)m', false, true);


--
-- Data for Name: house; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.house VALUES (1, 'Harkonnen', true, 'Griffin & Ram', 'Blue, Orange', 'Giedi Prime');
INSERT INTO public.house VALUES (2, 'Atreides', true, 'Red Hawk', 'Green, Black, Red', 'Caladan');
INSERT INTO public.house VALUES (3, 'Corrino', true, 'Golden Lion', 'Black, Grey, Bronze, Gold', 'Kaitain');
INSERT INTO public.house VALUES (4, 'Fenring', false, 'Chain and two lions', 'Black, Silver, Red', 'Kaitain');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, 1.602, 3.34, 1);
INSERT INTO public.moon VALUES (2, 'Europa', 1610, 1.315, 3.01, 2);
INSERT INTO public.moon VALUES (3, 'Ganymede', 1610, 1.428, 1.94, 17);
INSERT INTO public.moon VALUES (4, 'Titan', 1655, 1.352, 1.88, 16);
INSERT INTO public.moon VALUES (5, 'Enceladus', 1789, 0.113, 1.61, 15);
INSERT INTO public.moon VALUES (6, 'Lo', 1610, 1.796, 3.53, 14);
INSERT INTO public.moon VALUES (7, 'Mimas', 1798, 0.064, 1.15, 2);
INSERT INTO public.moon VALUES (8, 'Callisto', 1610, 1.236, 1.83, 7);
INSERT INTO public.moon VALUES (9, 'Lapetus', 1671, 0.223, 1.09, 13);
INSERT INTO public.moon VALUES (10, 'Triton', 1846, 0.779, 2.06, 14);
INSERT INTO public.moon VALUES (11, 'Dione', 1684, 0.232, 1.48, 15);
INSERT INTO public.moon VALUES (12, 'Himalia', 1904, 0.062, 1, 16);
INSERT INTO public.moon VALUES (13, 'Charon', 1978, 0.288, 1.71, 13);
INSERT INTO public.moon VALUES (14, 'Tethys', 1684, 0.145, 9.84, 15);
INSERT INTO public.moon VALUES (18, 'Hyperion', 1848, 0.020, 5.44, 17);
INSERT INTO public.moon VALUES (19, 'Adrastea', 1979, 0.007, 1, 2);
INSERT INTO public.moon VALUES (20, 'Epimetheus', 1966, 1.000, 2, 12);
INSERT INTO public.moon VALUES (21, 'Amalthea', 1892, 0.020, 8.57, 16);
INSERT INTO public.moon VALUES (22, 'Phobos', 1877, 0.057, 1.88, 2);
INSERT INTO public.moon VALUES (23, 'Thebe', 1979, 0.040, 3, 14);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Arrakis', 'Also known as Dune, is the 3rd planet of Canopus. A harsh desert planet and the only source of the spice', 71.00, 'A9II', 310, 5);
INSERT INTO public.planet VALUES (2, 'Bela Tegeuse', 'The fifth planet of Kuensting. The 3rd stop for the Zensunni as part of their forced migration', 2.29, 'B7V', 232, 6);
INSERT INTO public.planet VALUES (5, 'Caladan', 'The third planet of Delta Pavonis. Home of house Atreides', 1.22, 'G8IV', 20, 7);
INSERT INTO public.planet VALUES (6, 'Chusuk', 'The 4th planet of Theta Shalish', 2.50, 'A1V', 450, 8);
INSERT INTO public.planet VALUES (7, 'Corrin', 'Near the star Sigma, the place of the battle of Padishash', 0.77, 'G9V', 19, 12);
INSERT INTO public.planet VALUES (8, 'Ecaz and Logi', 'The planets orbiting Toliman', 0.86, 'K1V', 5, 10);
INSERT INTO public.planet VALUES (12, 'Fides', 'Birth place of Dramatist Laureate', 0.35, 'M3V', 12, 7);
INSERT INTO public.planet VALUES (13, 'Geidi Prime', 'Homeworld of house Harkonnen', 0.81, 'K1V', 19, 8);
INSERT INTO public.planet VALUES (14, 'Gioia', 'Birth place of Alberto Ginaztera', 4.20, 'B7III', 134, 12);
INSERT INTO public.planet VALUES (15, 'Grumman', 'Homeworld of house Moritani', 1.25, 'F5Iv', 75, 10);
INSERT INTO public.planet VALUES (16, 'Hagal', 'Known as the jewel planet', 4.02, 'A2V', 165, 5);
INSERT INTO public.planet VALUES (17, 'Ishia', 'The fifth planet of Beta Tygri', 13.81, 'G9II', 201, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (5, 'Betelgeuse', 10, 0.5800, 1);
INSERT INTO public.star VALUES (6, 'Sirius', 9, -1.3300, 3);
INSERT INTO public.star VALUES (7, 'Antares', 11, 1.0900, 4);
INSERT INTO public.star VALUES (8, 'Alnilam', 6, 1.7000, 5);
INSERT INTO public.star VALUES (10, 'Vega', 455, 0.0300, 1);
INSERT INTO public.star VALUES (11, 'Achernar', 37, 0.4450, 3);
INSERT INTO public.star VALUES (12, 'Bellatrix', 25, 1.6400, 4);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: house_house_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.house_house_id_seq', 4, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 12, true);


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
-- Name: house house_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.house
    ADD CONSTRAINT house_name_key UNIQUE (name);


--
-- Name: house house_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.house
    ADD CONSTRAINT house_pkey PRIMARY KEY (house_id);


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