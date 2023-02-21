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
    description text NOT NULL,
    name character varying(20)
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: astroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: astroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    lightyears_distance integer,
    lightyears_diameter integer,
    stars numeric,
    etymology text,
    disputed boolean
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
    moon_id integer NOT NULL,
    name character varying(20),
    planet_id integer,
    description text NOT NULL,
    age_in_millions_of_years integer
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
    name character varying(20),
    star_id integer,
    has_life boolean NOT NULL,
    description text NOT NULL
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
    name character varying(20) NOT NULL,
    galaxy_id integer,
    dwarf boolean,
    age_in_billions_of_years integer
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.astroid_asteroid_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Largest known asteroid, large enough for its own gravity to make it round.', 'Ceres');
INSERT INTO public.asteroid VALUES (2, 'Bright asteroid that can be seen with the naked eye.', 'Vesta');
INSERT INTO public.asteroid VALUES (3, 'Once considered a planet, now known to be an asteroid. Appears to have encountered a high frequency of collisions.', 'Pallas');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 0, 27, 500000000000, 'Appearance of the milky glowing band arching across the night sky.', false);
INSERT INTO public.galaxy VALUES (2, 'Canis Major Dwarf', 25000, 10000, 1000000000, 'Located in the same part of the sky as the constellation Canis Major', true);
INSERT INTO public.galaxy VALUES (3, 'Segue 1', 75000, 400, 1000, 'Found by the Sloan Extension for Galactic Understanding and Exploration program or SEGUE', false);
INSERT INTO public.galaxy VALUES (4, 'Sagitt. Dwarf Spher.', 65000, 10000, NULL, 'Named after its place in the night sky and its shape', false);
INSERT INTO public.galaxy VALUES (5, 'Ursa Major II Dwarf', 98000, 456, NULL, 'Situated in the Ursa Major constellation', false);
INSERT INTO public.galaxy VALUES (6, 'Triangulum II', 97800, 110, 1000, 'Derived from its brightest three stars', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Luna', 4, 'Our moon.', 4530);
INSERT INTO public.moon VALUES (2, 'Phobos', 5, 'Innermost moon of rubble held together by a thin crust. May collide with Mars in the future.', 4530);
INSERT INTO public.moon VALUES (3, 'Deimos', 5, 'Smaller outer moon whose orbit is slowly expanding. Will eventually escape from Mars gravity.', 2700);
INSERT INTO public.moon VALUES (4, 'Ganymede', 6, 'Largest moon, larger than Mercury and Pluto, would be considered a planet if it were not orbiting Jupiter.', 4500);
INSERT INTO public.moon VALUES (5, 'Callisto', 6, 'Equal parts rock and ice. Geologically dead and covered in some of the oldest craters in the solar system.', 4500);
INSERT INTO public.moon VALUES (6, 'Io', 6, 'Hottest moon in the solar system with 400 volcanoes hotter than Earths volcanoes.', 4500);
INSERT INTO public.moon VALUES (7, 'Europa', 6, 'Ice moon of Jupiter. Has a water ocean beneat the surface and a thin oxygen atmosphere.', 4503);
INSERT INTO public.moon VALUES (8, 'Amalthea', 6, 'Small and red moon with a strange, irregular shape.', NULL);
INSERT INTO public.moon VALUES (9, 'Himalea', 6, 'May have been an asteroid that collided with Jupiter. Other chunks of the asteroid became further moons of Jupiter.', NULL);
INSERT INTO public.moon VALUES (10, 'Thebe', 6, 'Another small and irregular shaped moon. Has giant craters and mountains compared to the size of the moon itself.', NULL);
INSERT INTO public.moon VALUES (11, 'Titan', 7, 'Made of liquid methane, it is the only moon in our solar system to have bodies of liquid on its surface.', 4003);
INSERT INTO public.moon VALUES (12, 'Rhea', 7, 'Composed of 75% water ice and 25% rock, with a thin oxygen atmosphere. Contains complex organic compounds.', 4500);
INSERT INTO public.moon VALUES (13, 'Iapetus', 7, 'Has a massive ridge on its equator, making the moon look like a walnut.', 4567);
INSERT INTO public.moon VALUES (14, 'Dione', 7, 'Has an incredible amount of craters, a liquid ocean, and cliffs of ice.', 4000);
INSERT INTO public.moon VALUES (15, 'Tethys', 7, 'One of the most reflective objects in the solar system due to being almost entirely ice.', 4560);
INSERT INTO public.moon VALUES (16, 'Titania', 8, 'Largest moon of Uranus. Composed of equal amounts rock and water ice.', 4600);
INSERT INTO public.moon VALUES (17, 'Oberon', 8, '2nd largest moon of Uranus, with a surface similar to Titania.', NULL);
INSERT INTO public.moon VALUES (18, 'Umbriel', 8, 'Blue in color, with a composition similar to Titania and Oberon.', NULL);
INSERT INTO public.moon VALUES (19, 'Triton', 9, 'Largest moon of neptune and the only moon in the solar system with an orbit opposite of its planets rotation. May have been a dwarf planet at one time.', 4503);
INSERT INTO public.moon VALUES (20, 'Proteus', 9, 'One of the darkest objects in the solar system.', NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, false, 'Smallest planet in the solar system and closest to the sun. Very thin atmosphere with dramatic temperature changes.');
INSERT INTO public.planet VALUES (3, 'Venus', 1, false, 'Hottest planet in the solar system and 2nd closest to the sun. Extreme pressure on the surface. Spins slowly from east to west.');
INSERT INTO public.planet VALUES (4, 'Earth', 1, true, 'Our planet.');
INSERT INTO public.planet VALUES (5, 'Mars', 1, false, 'Cold, desert planet covered in iron oxide, resulting in its famous red color. Rocky with massive dust storms. May have had oceans in the past.');
INSERT INTO public.planet VALUES (6, 'Jupiter', 1, false, 'Largest planet in our solar system. Made of gases including ammonia ice, water ice and vapor. Includes a giant storm called the Great Red Spot, over 10,000 miles wide.');
INSERT INTO public.planet VALUES (7, 'Saturn', 1, false, 'Surrounded by a large ring made of ice and rock. Another gas giant planet like Jupiter.');
INSERT INTO public.planet VALUES (8, 'Uranus', 1, false, 'Tilted on its side and smelling like rotten eggs, Uranus also is extremely cold.');
INSERT INTO public.planet VALUES (9, 'Neptune', 1, false, 'On average the coldest planet in the solar system, known for its supersonic strong winds. First planet to be predicted rather than being seen.');
INSERT INTO public.planet VALUES (10, 'Pluto', 1, false, 'Once the ninth planet from the sun, Pluto was recently downgraded to a dwarf planet. Cold and rocky.');
INSERT INTO public.planet VALUES (11, 'Proxima Centauri B', 3, false, 'Orbits around its star over 11.2 Earth days. Potentially Earth-like planet but unknown whether it has an atmosphere.');
INSERT INTO public.planet VALUES (12, 'Proxima Centauri C', 3, false, 'Controversial planet that may be orbiting Proxima Centauri. If real, it appears to be a super-Earth, but is uninhabitable.');
INSERT INTO public.planet VALUES (13, 'Proxima Centauri D', 3, false, 'Closest known exoplanet to the Sun, a sub-Earth orbiting every 5.1 days.');
INSERT INTO public.planet VALUES (14, 'Luhman 16 ab', 5, false, 'Might be a planet but could simply be a brown dwarf star or two. At this distance it can only be theorized as it is not visible to us.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, false, 5);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 1, false, 5);
INSERT INTO public.star VALUES (4, 'Barnards Star', 1, true, 10);
INSERT INTO public.star VALUES (5, 'Luhman 16', 1, true, 4);
INSERT INTO public.star VALUES (6, 'Wolf 359', 1, true, 0);
INSERT INTO public.star VALUES (7, 'Alpha Canis Majoris', 1, false, 0);


--
-- Name: astroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astroid_asteroid_id_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid astroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT astroid_pkey PRIMARY KEY (asteroid_id);


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

