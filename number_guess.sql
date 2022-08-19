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
-- Name: players; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.players (
    player_id integer NOT NULL,
    player character varying(22) NOT NULL,
    games_played integer,
    best_game integer
);


ALTER TABLE public.players OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.players_player_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.players_player_id_seq OWNER TO freecodecamp;

--
-- Name: players_player_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.players_player_id_seq OWNED BY public.players.player_id;


--
-- Name: players player_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players ALTER COLUMN player_id SET DEFAULT nextval('public.players_player_id_seq'::regclass);


--
-- Data for Name: players; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.players VALUES (163, 'user_1660909221818', 2, 494);
INSERT INTO public.players VALUES (162, 'user_1660909221819', 5, 213);
INSERT INTO public.players VALUES (137, 'user_1660907804626', 2, 756);
INSERT INTO public.players VALUES (136, 'user_1660907804627', 5, 110);
INSERT INTO public.players VALUES (185, 'user_1660909257664', 2, 301);
INSERT INTO public.players VALUES (165, 'user_1660909224321', 2, 414);
INSERT INTO public.players VALUES (201, 'user_1660909277929', 2, 904);
INSERT INTO public.players VALUES (139, 'user_1660908496303', 2, 60);
INSERT INTO public.players VALUES (164, 'user_1660909224322', 5, 81);
INSERT INTO public.players VALUES (138, 'user_1660908496304', 5, 378);
INSERT INTO public.players VALUES (184, 'user_1660909257665', 5, 110);
INSERT INTO public.players VALUES (141, 'user_1660908873612', 2, 373);
INSERT INTO public.players VALUES (220, 'user_1660924192948', 5, 102);
INSERT INTO public.players VALUES (167, 'user_1660909229401', 2, 270);
INSERT INTO public.players VALUES (140, 'user_1660908873613', 5, 72);
INSERT INTO public.players VALUES (135, 'jean', 6, 7);
INSERT INTO public.players VALUES (213, 'user_1660909316384', 2, 695);
INSERT INTO public.players VALUES (166, 'user_1660909229402', 5, 263);
INSERT INTO public.players VALUES (143, 'user_1660909105850', 2, 62);
INSERT INTO public.players VALUES (200, 'user_1660909277930', 5, 89);
INSERT INTO public.players VALUES (142, 'user_1660909105851', 5, 411);
INSERT INTO public.players VALUES (187, 'user_1660909259936', 2, 242);
INSERT INTO public.players VALUES (145, 'user_1660909184081', 2, 169);
INSERT INTO public.players VALUES (169, 'user_1660909232137', 2, 409);
INSERT INTO public.players VALUES (144, 'user_1660909184082', 5, 76);
INSERT INTO public.players VALUES (186, 'user_1660909259937', 5, 492);
INSERT INTO public.players VALUES (168, 'user_1660909232138', 5, 127);
INSERT INTO public.players VALUES (147, 'user_1660909186216', 2, 236);
INSERT INTO public.players VALUES (146, 'user_1660909186217', 5, 247);
INSERT INTO public.players VALUES (171, 'user_1660909237182', 2, 442);
INSERT INTO public.players VALUES (149, 'user_1660909196003', 2, 144);
INSERT INTO public.players VALUES (212, 'user_1660909316385', 5, 215);
INSERT INTO public.players VALUES (148, 'user_1660909196004', 5, 164);
INSERT INTO public.players VALUES (170, 'user_1660909237183', 5, 142);
INSERT INTO public.players VALUES (189, 'user_1660909262519', 2, 233);
INSERT INTO public.players VALUES (151, 'user_1660909203586', 2, 322);
INSERT INTO public.players VALUES (203, 'user_1660909281450', 2, 87);
INSERT INTO public.players VALUES (150, 'user_1660909203587', 5, 73);
INSERT INTO public.players VALUES (173, 'user_1660909239443', 2, 237);
INSERT INTO public.players VALUES (188, 'user_1660909262520', 5, 9);
INSERT INTO public.players VALUES (153, 'user_1660909205586', 2, 182);
INSERT INTO public.players VALUES (172, 'user_1660909239444', 5, 117);
INSERT INTO public.players VALUES (152, 'user_1660909205587', 5, 286);
INSERT INTO public.players VALUES (202, 'user_1660909281451', 5, 83);
INSERT INTO public.players VALUES (155, 'user_1660909207557', 2, 112);
INSERT INTO public.players VALUES (154, 'user_1660909207558', 5, 68);
INSERT INTO public.players VALUES (175, 'user_1660909242729', 2, 230);
INSERT INTO public.players VALUES (191, 'user_1660909265359', 2, 51);
INSERT INTO public.players VALUES (157, 'user_1660909209788', 2, 572);
INSERT INTO public.players VALUES (174, 'user_1660909242730', 5, 170);
INSERT INTO public.players VALUES (156, 'user_1660909209789', 5, 109);
INSERT INTO public.players VALUES (159, 'user_1660909212027', 2, 811);
INSERT INTO public.players VALUES (190, 'user_1660909265360', 5, 254);
INSERT INTO public.players VALUES (177, 'user_1660909245011', 2, 480);
INSERT INTO public.players VALUES (158, 'user_1660909212028', 5, 370);
INSERT INTO public.players VALUES (176, 'user_1660909245013', 5, 101);
INSERT INTO public.players VALUES (161, 'user_1660909215182', 2, 2);
INSERT INTO public.players VALUES (160, 'user_1660909215183', 5, 277);
INSERT INTO public.players VALUES (205, 'user_1660909285841', 2, 543);
INSERT INTO public.players VALUES (193, 'user_1660909267595', 2, 609);
INSERT INTO public.players VALUES (179, 'user_1660909247283', 2, 364);
INSERT INTO public.players VALUES (215, 'user_1660909358159', 2, 501);
INSERT INTO public.players VALUES (223, 'user_1660924786077', 2, 106);
INSERT INTO public.players VALUES (178, 'user_1660909247284', 5, 271);
INSERT INTO public.players VALUES (192, 'user_1660909267596', 5, 207);
INSERT INTO public.players VALUES (204, 'user_1660909285842', 5, 265);
INSERT INTO public.players VALUES (181, 'user_1660909251634', 2, 281);
INSERT INTO public.players VALUES (180, 'user_1660909251635', 5, 295);
INSERT INTO public.players VALUES (195, 'user_1660909270075', 2, 413);
INSERT INTO public.players VALUES (214, 'user_1660909358160', 5, 31);
INSERT INTO public.players VALUES (183, 'user_1660909255283', 2, 848);
INSERT INTO public.players VALUES (194, 'user_1660909270076', 5, 287);
INSERT INTO public.players VALUES (182, 'user_1660909255284', 5, 569);
INSERT INTO public.players VALUES (207, 'user_1660909290671', 2, 827);
INSERT INTO public.players VALUES (197, 'user_1660909272291', 2, 177);
INSERT INTO public.players VALUES (222, 'user_1660924786078', 5, 128);
INSERT INTO public.players VALUES (206, 'user_1660909290672', 5, 10);
INSERT INTO public.players VALUES (196, 'user_1660909272292', 5, 23);
INSERT INTO public.players VALUES (199, 'user_1660909275192', 2, 750);
INSERT INTO public.players VALUES (217, 'user_1660909360886', 2, 782);
INSERT INTO public.players VALUES (198, 'user_1660909275193', 5, 334);
INSERT INTO public.players VALUES (209, 'user_1660909295705', 2, 702);
INSERT INTO public.players VALUES (208, 'user_1660909295706', 5, 123);
INSERT INTO public.players VALUES (216, 'user_1660909360887', 5, 605);
INSERT INTO public.players VALUES (211, 'user_1660909298848', 2, 319);
INSERT INTO public.players VALUES (210, 'user_1660909298849', 5, 106);
INSERT INTO public.players VALUES (219, 'user_1660924186945', 2, 501);
INSERT INTO public.players VALUES (218, 'user_1660924186946', 5, 175);
INSERT INTO public.players VALUES (221, 'user_1660924192947', 2, 529);


--
-- Name: players_player_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.players_player_id_seq', 223, true);


--
-- Name: players players_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_pkey PRIMARY KEY (player_id);


--
-- Name: players players_player_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.players
    ADD CONSTRAINT players_player_key UNIQUE (player);


--
-- PostgreSQL database dump complete
--

