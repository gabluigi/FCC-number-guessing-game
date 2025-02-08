--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 3);
INSERT INTO public.games VALUES (2, 1, 3);
INSERT INTO public.games VALUES (3, 1, 1);
INSERT INTO public.games VALUES (4, 9, 230);
INSERT INTO public.games VALUES (5, 9, 627);
INSERT INTO public.games VALUES (6, 10, 394);
INSERT INTO public.games VALUES (7, 10, 968);
INSERT INTO public.games VALUES (8, 9, 279);
INSERT INTO public.games VALUES (9, 9, 1);
INSERT INTO public.games VALUES (10, 9, 321);
INSERT INTO public.games VALUES (11, 11, 167);
INSERT INTO public.games VALUES (12, 11, 237);
INSERT INTO public.games VALUES (13, 12, 886);
INSERT INTO public.games VALUES (14, 12, 139);
INSERT INTO public.games VALUES (15, 11, 422);
INSERT INTO public.games VALUES (16, 11, 1);
INSERT INTO public.games VALUES (17, 11, 571);
INSERT INTO public.games VALUES (18, 13, 226);
INSERT INTO public.games VALUES (19, 13, 248);
INSERT INTO public.games VALUES (20, 14, 858);
INSERT INTO public.games VALUES (21, 14, 289);
INSERT INTO public.games VALUES (22, 13, 171);
INSERT INTO public.games VALUES (23, 13, 853);
INSERT INTO public.games VALUES (24, 13, 969);
INSERT INTO public.games VALUES (25, 15, 247);
INSERT INTO public.games VALUES (26, 15, 668);
INSERT INTO public.games VALUES (27, 16, 927);
INSERT INTO public.games VALUES (28, 16, 984);
INSERT INTO public.games VALUES (29, 15, 122);
INSERT INTO public.games VALUES (30, 15, 251);
INSERT INTO public.games VALUES (31, 15, 554);
INSERT INTO public.games VALUES (32, 17, 903);
INSERT INTO public.games VALUES (33, 17, 50);
INSERT INTO public.games VALUES (34, 18, 116);
INSERT INTO public.games VALUES (35, 18, 254);
INSERT INTO public.games VALUES (36, 17, 220);
INSERT INTO public.games VALUES (37, 17, 587);
INSERT INTO public.games VALUES (38, 17, 125);
INSERT INTO public.games VALUES (39, 19, 212);
INSERT INTO public.games VALUES (40, 19, 783);
INSERT INTO public.games VALUES (41, 20, 897);
INSERT INTO public.games VALUES (42, 20, 329);
INSERT INTO public.games VALUES (43, 19, 925);
INSERT INTO public.games VALUES (44, 19, 158);
INSERT INTO public.games VALUES (45, 19, 425);
INSERT INTO public.games VALUES (46, 21, 204);
INSERT INTO public.games VALUES (47, 21, 258);
INSERT INTO public.games VALUES (48, 22, 953);
INSERT INTO public.games VALUES (49, 22, 303);
INSERT INTO public.games VALUES (50, 21, 453);
INSERT INTO public.games VALUES (51, 21, 994);
INSERT INTO public.games VALUES (52, 21, 734);
INSERT INTO public.games VALUES (53, 23, 836);
INSERT INTO public.games VALUES (54, 23, 392);
INSERT INTO public.games VALUES (55, 24, 271);
INSERT INTO public.games VALUES (56, 24, 893);
INSERT INTO public.games VALUES (57, 23, 793);
INSERT INTO public.games VALUES (58, 23, 641);
INSERT INTO public.games VALUES (59, 23, 56);
INSERT INTO public.games VALUES (60, 25, 915);
INSERT INTO public.games VALUES (61, 25, 893);
INSERT INTO public.games VALUES (62, 26, 175);
INSERT INTO public.games VALUES (63, 26, 356);
INSERT INTO public.games VALUES (64, 25, 289);
INSERT INTO public.games VALUES (65, 25, 336);
INSERT INTO public.games VALUES (66, 25, 876);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'louis');
INSERT INTO public.users VALUES (2, 'one');
INSERT INTO public.users VALUES (9, 'user_1739001132443');
INSERT INTO public.users VALUES (10, 'user_1739001132442');
INSERT INTO public.users VALUES (11, 'user_1739001197223');
INSERT INTO public.users VALUES (12, 'user_1739001197222');
INSERT INTO public.users VALUES (13, 'user_1739001437612');
INSERT INTO public.users VALUES (14, 'user_1739001437611');
INSERT INTO public.users VALUES (15, 'user_1739001517050');
INSERT INTO public.users VALUES (16, 'user_1739001517049');
INSERT INTO public.users VALUES (17, 'user_1739001650029');
INSERT INTO public.users VALUES (18, 'user_1739001650028');
INSERT INTO public.users VALUES (19, 'user_1739001730332');
INSERT INTO public.users VALUES (20, 'user_1739001730331');
INSERT INTO public.users VALUES (21, 'user_1739001793646');
INSERT INTO public.users VALUES (22, 'user_1739001793645');
INSERT INTO public.users VALUES (23, 'user_1739001959215');
INSERT INTO public.users VALUES (24, 'user_1739001959214');
INSERT INTO public.users VALUES (25, 'user_1739001968069');
INSERT INTO public.users VALUES (26, 'user_1739001968068');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 66, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 26, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

