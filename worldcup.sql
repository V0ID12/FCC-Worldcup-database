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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    game_id integer NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    year integer NOT NULL,
    round character varying(255) NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (33, 27, 28, 4, 2, 2018, 'Final');
INSERT INTO public.games VALUES (34, 29, 30, 2, 0, 2018, 'Third Place');
INSERT INTO public.games VALUES (35, 28, 30, 2, 1, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (36, 27, 29, 1, 0, 2018, 'Semi-Final');
INSERT INTO public.games VALUES (37, 28, 31, 3, 2, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (38, 30, 32, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (39, 29, 33, 2, 1, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (40, 27, 34, 2, 0, 2018, 'Quarter-Final');
INSERT INTO public.games VALUES (41, 30, 35, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (42, 32, 36, 1, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (43, 29, 37, 3, 2, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (44, 33, 38, 2, 0, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (45, 28, 39, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (46, 31, 40, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (47, 34, 41, 2, 1, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (48, 27, 42, 4, 3, 2018, 'Eighth-Final');
INSERT INTO public.games VALUES (49, 43, 42, 1, 0, 2014, 'Final');
INSERT INTO public.games VALUES (50, 44, 33, 3, 0, 2014, 'Third Place');
INSERT INTO public.games VALUES (51, 42, 44, 1, 0, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (52, 43, 33, 7, 1, 2014, 'Semi-Final');
INSERT INTO public.games VALUES (53, 44, 45, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (54, 42, 29, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (55, 33, 35, 2, 1, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (56, 43, 27, 1, 0, 2014, 'Quarter-Final');
INSERT INTO public.games VALUES (57, 33, 46, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (58, 35, 34, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (59, 27, 47, 2, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (60, 43, 48, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (61, 44, 38, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (62, 45, 49, 2, 1, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (63, 42, 36, 1, 0, 2014, 'Eighth-Final');
INSERT INTO public.games VALUES (64, 29, 50, 2, 1, 2014, 'Eighth-Final');


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (27, 'France');
INSERT INTO public.teams VALUES (28, 'Croatia');
INSERT INTO public.teams VALUES (29, 'Belgium');
INSERT INTO public.teams VALUES (30, 'England');
INSERT INTO public.teams VALUES (31, 'Russia');
INSERT INTO public.teams VALUES (32, 'Sweden');
INSERT INTO public.teams VALUES (33, 'Brazil');
INSERT INTO public.teams VALUES (34, 'Uruguay');
INSERT INTO public.teams VALUES (35, 'Colombia');
INSERT INTO public.teams VALUES (36, 'Switzerland');
INSERT INTO public.teams VALUES (37, 'Japan');
INSERT INTO public.teams VALUES (38, 'Mexico');
INSERT INTO public.teams VALUES (39, 'Denmark');
INSERT INTO public.teams VALUES (40, 'Spain');
INSERT INTO public.teams VALUES (41, 'Portugal');
INSERT INTO public.teams VALUES (42, 'Argentina');
INSERT INTO public.teams VALUES (43, 'Germany');
INSERT INTO public.teams VALUES (44, 'Netherlands');
INSERT INTO public.teams VALUES (45, 'Costa Rica');
INSERT INTO public.teams VALUES (46, 'Chile');
INSERT INTO public.teams VALUES (47, 'Nigeria');
INSERT INTO public.teams VALUES (48, 'Algeria');
INSERT INTO public.teams VALUES (49, 'Greece');
INSERT INTO public.teams VALUES (50, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 50, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_games_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_games_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--
