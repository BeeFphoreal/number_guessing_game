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
    guess integer DEFAULT 0 NOT NULL
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
    user_name character varying(22) NOT NULL
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

INSERT INTO public.games VALUES (513, 146, 4);
INSERT INTO public.games VALUES (514, 146, 2);
INSERT INTO public.games VALUES (515, 147, 107);
INSERT INTO public.games VALUES (516, 147, 413);
INSERT INTO public.games VALUES (517, 148, 982);
INSERT INTO public.games VALUES (518, 148, 338);
INSERT INTO public.games VALUES (519, 147, 994);
INSERT INTO public.games VALUES (520, 147, 688);
INSERT INTO public.games VALUES (521, 147, 367);
INSERT INTO public.games VALUES (522, 146, 2);
INSERT INTO public.games VALUES (523, 149, 20);
INSERT INTO public.games VALUES (524, 149, 938);
INSERT INTO public.games VALUES (525, 150, 795);
INSERT INTO public.games VALUES (526, 150, 461);
INSERT INTO public.games VALUES (527, 149, 196);
INSERT INTO public.games VALUES (528, 149, 717);
INSERT INTO public.games VALUES (529, 149, 966);
INSERT INTO public.games VALUES (530, 151, 892);
INSERT INTO public.games VALUES (531, 151, 358);
INSERT INTO public.games VALUES (532, 152, 529);
INSERT INTO public.games VALUES (533, 152, 338);
INSERT INTO public.games VALUES (534, 151, 47);
INSERT INTO public.games VALUES (535, 151, 236);
INSERT INTO public.games VALUES (536, 151, 254);
INSERT INTO public.games VALUES (537, 153, 658);
INSERT INTO public.games VALUES (538, 153, 988);
INSERT INTO public.games VALUES (539, 154, 981);
INSERT INTO public.games VALUES (540, 154, 790);
INSERT INTO public.games VALUES (541, 153, 835);
INSERT INTO public.games VALUES (542, 153, 445);
INSERT INTO public.games VALUES (543, 153, 703);
INSERT INTO public.games VALUES (544, 155, 132);
INSERT INTO public.games VALUES (545, 155, 414);
INSERT INTO public.games VALUES (546, 156, 526);
INSERT INTO public.games VALUES (547, 156, 335);
INSERT INTO public.games VALUES (548, 155, 627);
INSERT INTO public.games VALUES (549, 155, 886);
INSERT INTO public.games VALUES (550, 155, 40);
INSERT INTO public.games VALUES (551, 157, 565);
INSERT INTO public.games VALUES (552, 157, 592);
INSERT INTO public.games VALUES (553, 158, 95);
INSERT INTO public.games VALUES (554, 158, 588);
INSERT INTO public.games VALUES (555, 157, 508);
INSERT INTO public.games VALUES (556, 157, 194);
INSERT INTO public.games VALUES (557, 157, 345);
INSERT INTO public.games VALUES (558, 159, 839);
INSERT INTO public.games VALUES (559, 159, 596);
INSERT INTO public.games VALUES (560, 160, 441);
INSERT INTO public.games VALUES (561, 160, 866);
INSERT INTO public.games VALUES (562, 159, 855);
INSERT INTO public.games VALUES (563, 159, 884);
INSERT INTO public.games VALUES (564, 159, 906);
INSERT INTO public.games VALUES (565, 161, 580);
INSERT INTO public.games VALUES (566, 161, 861);
INSERT INTO public.games VALUES (567, 162, 919);
INSERT INTO public.games VALUES (568, 162, 803);
INSERT INTO public.games VALUES (569, 161, 673);
INSERT INTO public.games VALUES (570, 161, 482);
INSERT INTO public.games VALUES (571, 161, 603);
INSERT INTO public.games VALUES (572, 163, 735);
INSERT INTO public.games VALUES (573, 163, 1000);
INSERT INTO public.games VALUES (574, 165, 159);
INSERT INTO public.games VALUES (575, 165, 880);
INSERT INTO public.games VALUES (576, 163, 216);
INSERT INTO public.games VALUES (577, 163, 718);
INSERT INTO public.games VALUES (578, 163, 940);
INSERT INTO public.games VALUES (579, 170, 358);
INSERT INTO public.games VALUES (580, 170, 531);
INSERT INTO public.games VALUES (581, 171, 625);
INSERT INTO public.games VALUES (582, 171, 9);
INSERT INTO public.games VALUES (583, 170, 644);
INSERT INTO public.games VALUES (584, 170, 156);
INSERT INTO public.games VALUES (585, 170, 659);
INSERT INTO public.games VALUES (586, 172, 795);
INSERT INTO public.games VALUES (587, 172, 35);
INSERT INTO public.games VALUES (588, 173, 896);
INSERT INTO public.games VALUES (589, 173, 362);
INSERT INTO public.games VALUES (590, 172, 806);
INSERT INTO public.games VALUES (591, 172, 410);
INSERT INTO public.games VALUES (592, 172, 515);
INSERT INTO public.games VALUES (593, 174, 762);
INSERT INTO public.games VALUES (594, 174, 806);
INSERT INTO public.games VALUES (595, 175, 495);
INSERT INTO public.games VALUES (596, 175, 322);
INSERT INTO public.games VALUES (597, 174, 136);
INSERT INTO public.games VALUES (598, 174, 96);
INSERT INTO public.games VALUES (599, 174, 408);
INSERT INTO public.games VALUES (600, 176, 15);
INSERT INTO public.games VALUES (601, 176, 998);
INSERT INTO public.games VALUES (602, 177, 511);
INSERT INTO public.games VALUES (603, 177, 70);
INSERT INTO public.games VALUES (604, 176, 251);
INSERT INTO public.games VALUES (605, 176, 333);
INSERT INTO public.games VALUES (606, 176, 298);
INSERT INTO public.games VALUES (607, 178, 951);
INSERT INTO public.games VALUES (608, 178, 804);
INSERT INTO public.games VALUES (609, 179, 66);
INSERT INTO public.games VALUES (610, 179, 892);
INSERT INTO public.games VALUES (611, 178, 372);
INSERT INTO public.games VALUES (612, 178, 571);
INSERT INTO public.games VALUES (613, 178, 147);
INSERT INTO public.games VALUES (614, 180, 267);
INSERT INTO public.games VALUES (615, 180, 376);
INSERT INTO public.games VALUES (616, 181, 462);
INSERT INTO public.games VALUES (617, 181, 594);
INSERT INTO public.games VALUES (618, 180, 139);
INSERT INTO public.games VALUES (619, 180, 761);
INSERT INTO public.games VALUES (620, 180, 756);
INSERT INTO public.games VALUES (621, 182, 597);
INSERT INTO public.games VALUES (622, 182, 351);
INSERT INTO public.games VALUES (623, 183, 683);
INSERT INTO public.games VALUES (624, 183, 375);
INSERT INTO public.games VALUES (625, 182, 12);
INSERT INTO public.games VALUES (626, 182, 91);
INSERT INTO public.games VALUES (627, 182, 181);
INSERT INTO public.games VALUES (628, 184, 946);
INSERT INTO public.games VALUES (629, 184, 365);
INSERT INTO public.games VALUES (630, 185, 868);
INSERT INTO public.games VALUES (631, 185, 70);
INSERT INTO public.games VALUES (632, 184, 589);
INSERT INTO public.games VALUES (633, 184, 751);
INSERT INTO public.games VALUES (634, 184, 660);
INSERT INTO public.games VALUES (635, 186, 862);
INSERT INTO public.games VALUES (636, 186, 524);
INSERT INTO public.games VALUES (637, 187, 675);
INSERT INTO public.games VALUES (638, 187, 355);
INSERT INTO public.games VALUES (639, 186, 341);
INSERT INTO public.games VALUES (640, 186, 893);
INSERT INTO public.games VALUES (641, 186, 483);
INSERT INTO public.games VALUES (642, 188, 842);
INSERT INTO public.games VALUES (643, 188, 856);
INSERT INTO public.games VALUES (644, 189, 253);
INSERT INTO public.games VALUES (645, 189, 369);
INSERT INTO public.games VALUES (646, 188, 235);
INSERT INTO public.games VALUES (647, 188, 802);
INSERT INTO public.games VALUES (648, 188, 229);
INSERT INTO public.games VALUES (649, 190, 926);
INSERT INTO public.games VALUES (650, 191, 143);
INSERT INTO public.games VALUES (651, 191, 934);
INSERT INTO public.games VALUES (652, 191, 194);
INSERT INTO public.games VALUES (653, 190, 296);
INSERT INTO public.games VALUES (654, 190, 106);
INSERT INTO public.games VALUES (655, 190, 125);
INSERT INTO public.games VALUES (656, 146, 7);
INSERT INTO public.games VALUES (657, 192, 4);
INSERT INTO public.games VALUES (658, 193, 977);
INSERT INTO public.games VALUES (659, 194, 803);
INSERT INTO public.games VALUES (660, 194, 950);
INSERT INTO public.games VALUES (661, 194, 826);
INSERT INTO public.games VALUES (662, 193, 944);
INSERT INTO public.games VALUES (663, 193, 115);
INSERT INTO public.games VALUES (664, 193, 375);
INSERT INTO public.games VALUES (665, 195, 647);
INSERT INTO public.games VALUES (666, 196, 569);
INSERT INTO public.games VALUES (667, 196, 161);
INSERT INTO public.games VALUES (668, 196, 501);
INSERT INTO public.games VALUES (669, 195, 92);
INSERT INTO public.games VALUES (670, 195, 579);
INSERT INTO public.games VALUES (671, 195, 610);
INSERT INTO public.games VALUES (672, 197, 927);
INSERT INTO public.games VALUES (673, 198, 812);
INSERT INTO public.games VALUES (674, 198, 484);
INSERT INTO public.games VALUES (675, 198, 350);
INSERT INTO public.games VALUES (676, 197, 424);
INSERT INTO public.games VALUES (677, 197, 509);
INSERT INTO public.games VALUES (678, 197, 217);
INSERT INTO public.games VALUES (679, 199, 92);
INSERT INTO public.games VALUES (680, 200, 891);
INSERT INTO public.games VALUES (681, 200, 904);
INSERT INTO public.games VALUES (682, 200, 578);
INSERT INTO public.games VALUES (683, 199, 145);
INSERT INTO public.games VALUES (684, 199, 983);
INSERT INTO public.games VALUES (685, 199, 639);
INSERT INTO public.games VALUES (686, 201, 367);
INSERT INTO public.games VALUES (687, 202, 745);
INSERT INTO public.games VALUES (688, 202, 508);
INSERT INTO public.games VALUES (689, 202, 671);
INSERT INTO public.games VALUES (690, 201, 838);
INSERT INTO public.games VALUES (691, 201, 418);
INSERT INTO public.games VALUES (692, 201, 128);
INSERT INTO public.games VALUES (693, 203, 995);
INSERT INTO public.games VALUES (694, 204, 190);
INSERT INTO public.games VALUES (695, 204, 256);
INSERT INTO public.games VALUES (696, 204, 475);
INSERT INTO public.games VALUES (697, 203, 356);
INSERT INTO public.games VALUES (698, 203, 35);
INSERT INTO public.games VALUES (699, 203, 927);
INSERT INTO public.games VALUES (700, 205, 94);
INSERT INTO public.games VALUES (701, 206, 709);
INSERT INTO public.games VALUES (702, 206, 541);
INSERT INTO public.games VALUES (703, 206, 486);
INSERT INTO public.games VALUES (704, 205, 870);
INSERT INTO public.games VALUES (705, 205, 797);
INSERT INTO public.games VALUES (706, 205, 34);
INSERT INTO public.games VALUES (707, 192, 3);
INSERT INTO public.games VALUES (708, 208, 349);
INSERT INTO public.games VALUES (709, 209, 599);
INSERT INTO public.games VALUES (710, 209, 995);
INSERT INTO public.games VALUES (711, 209, 560);
INSERT INTO public.games VALUES (712, 208, 425);
INSERT INTO public.games VALUES (713, 208, 796);
INSERT INTO public.games VALUES (714, 208, 343);
INSERT INTO public.games VALUES (715, 210, 689);
INSERT INTO public.games VALUES (716, 210, 937);
INSERT INTO public.games VALUES (717, 211, 812);
INSERT INTO public.games VALUES (718, 211, 550);
INSERT INTO public.games VALUES (719, 210, 515);
INSERT INTO public.games VALUES (720, 210, 579);
INSERT INTO public.games VALUES (721, 210, 563);
INSERT INTO public.games VALUES (722, 212, 318);
INSERT INTO public.games VALUES (723, 212, 179);
INSERT INTO public.games VALUES (724, 213, 165);
INSERT INTO public.games VALUES (725, 213, 778);
INSERT INTO public.games VALUES (726, 212, 197);
INSERT INTO public.games VALUES (727, 212, 787);
INSERT INTO public.games VALUES (728, 212, 832);
INSERT INTO public.games VALUES (729, 215, 153);
INSERT INTO public.games VALUES (730, 215, 853);
INSERT INTO public.games VALUES (731, 216, 498);
INSERT INTO public.games VALUES (732, 216, 231);
INSERT INTO public.games VALUES (733, 215, 610);
INSERT INTO public.games VALUES (734, 215, 150);
INSERT INTO public.games VALUES (735, 215, 552);
INSERT INTO public.games VALUES (736, 217, 497);
INSERT INTO public.games VALUES (737, 217, 474);
INSERT INTO public.games VALUES (738, 218, 310);
INSERT INTO public.games VALUES (739, 218, 380);
INSERT INTO public.games VALUES (740, 217, 21);
INSERT INTO public.games VALUES (741, 217, 930);
INSERT INTO public.games VALUES (742, 217, 454);
INSERT INTO public.games VALUES (743, 219, 357);
INSERT INTO public.games VALUES (744, 219, 819);
INSERT INTO public.games VALUES (745, 220, 168);
INSERT INTO public.games VALUES (746, 220, 504);
INSERT INTO public.games VALUES (747, 219, 47);
INSERT INTO public.games VALUES (748, 219, 743);
INSERT INTO public.games VALUES (749, 219, 214);
INSERT INTO public.games VALUES (750, 221, 376);
INSERT INTO public.games VALUES (751, 221, 886);
INSERT INTO public.games VALUES (752, 222, 735);
INSERT INTO public.games VALUES (753, 222, 898);
INSERT INTO public.games VALUES (754, 221, 348);
INSERT INTO public.games VALUES (755, 221, 299);
INSERT INTO public.games VALUES (756, 221, 232);
INSERT INTO public.games VALUES (757, 223, 676);
INSERT INTO public.games VALUES (758, 223, 857);
INSERT INTO public.games VALUES (759, 224, 901);
INSERT INTO public.games VALUES (760, 224, 44);
INSERT INTO public.games VALUES (761, 223, 710);
INSERT INTO public.games VALUES (762, 223, 332);
INSERT INTO public.games VALUES (763, 223, 486);
INSERT INTO public.games VALUES (764, 225, 905);
INSERT INTO public.games VALUES (765, 225, 71);
INSERT INTO public.games VALUES (766, 226, 419);
INSERT INTO public.games VALUES (767, 226, 988);
INSERT INTO public.games VALUES (768, 225, 157);
INSERT INTO public.games VALUES (769, 225, 29);
INSERT INTO public.games VALUES (770, 225, 360);
INSERT INTO public.games VALUES (771, 227, 493);
INSERT INTO public.games VALUES (772, 227, 907);
INSERT INTO public.games VALUES (773, 228, 804);
INSERT INTO public.games VALUES (774, 228, 776);
INSERT INTO public.games VALUES (775, 227, 55);
INSERT INTO public.games VALUES (776, 227, 48);
INSERT INTO public.games VALUES (777, 227, 352);
INSERT INTO public.games VALUES (778, 229, 957);
INSERT INTO public.games VALUES (779, 229, 968);
INSERT INTO public.games VALUES (780, 230, 641);
INSERT INTO public.games VALUES (781, 230, 905);
INSERT INTO public.games VALUES (782, 229, 788);
INSERT INTO public.games VALUES (783, 229, 438);
INSERT INTO public.games VALUES (784, 229, 158);
INSERT INTO public.games VALUES (785, 231, 286);
INSERT INTO public.games VALUES (786, 231, 147);
INSERT INTO public.games VALUES (787, 232, 505);
INSERT INTO public.games VALUES (788, 232, 143);
INSERT INTO public.games VALUES (789, 231, 457);
INSERT INTO public.games VALUES (790, 231, 560);
INSERT INTO public.games VALUES (791, 231, 981);
INSERT INTO public.games VALUES (792, 233, 226);
INSERT INTO public.games VALUES (793, 233, 722);
INSERT INTO public.games VALUES (794, 234, 333);
INSERT INTO public.games VALUES (795, 234, 968);
INSERT INTO public.games VALUES (796, 233, 554);
INSERT INTO public.games VALUES (797, 233, 961);
INSERT INTO public.games VALUES (798, 233, 272);
INSERT INTO public.games VALUES (799, 235, 328);
INSERT INTO public.games VALUES (800, 235, 112);
INSERT INTO public.games VALUES (801, 236, 141);
INSERT INTO public.games VALUES (802, 236, 708);
INSERT INTO public.games VALUES (803, 235, 125);
INSERT INTO public.games VALUES (804, 235, 419);
INSERT INTO public.games VALUES (805, 235, 11);
INSERT INTO public.games VALUES (806, 237, 522);
INSERT INTO public.games VALUES (807, 237, 926);
INSERT INTO public.games VALUES (808, 238, 987);
INSERT INTO public.games VALUES (809, 238, 499);
INSERT INTO public.games VALUES (810, 237, 816);
INSERT INTO public.games VALUES (811, 237, 87);
INSERT INTO public.games VALUES (812, 237, 959);
INSERT INTO public.games VALUES (813, 239, 91);
INSERT INTO public.games VALUES (814, 239, 197);
INSERT INTO public.games VALUES (815, 240, 527);
INSERT INTO public.games VALUES (816, 240, 513);
INSERT INTO public.games VALUES (817, 239, 473);
INSERT INTO public.games VALUES (818, 239, 559);
INSERT INTO public.games VALUES (819, 239, 179);
INSERT INTO public.games VALUES (820, 241, 883);
INSERT INTO public.games VALUES (821, 241, 7);
INSERT INTO public.games VALUES (822, 242, 518);
INSERT INTO public.games VALUES (823, 242, 73);
INSERT INTO public.games VALUES (824, 241, 58);
INSERT INTO public.games VALUES (825, 241, 668);
INSERT INTO public.games VALUES (826, 241, 849);
INSERT INTO public.games VALUES (827, 243, 883);
INSERT INTO public.games VALUES (828, 243, 4);
INSERT INTO public.games VALUES (829, 244, 170);
INSERT INTO public.games VALUES (830, 244, 595);
INSERT INTO public.games VALUES (831, 243, 611);
INSERT INTO public.games VALUES (832, 243, 482);
INSERT INTO public.games VALUES (833, 243, 478);
INSERT INTO public.games VALUES (834, 245, 644);
INSERT INTO public.games VALUES (835, 245, 558);
INSERT INTO public.games VALUES (836, 246, 501);
INSERT INTO public.games VALUES (837, 246, 480);
INSERT INTO public.games VALUES (838, 245, 512);
INSERT INTO public.games VALUES (839, 245, 455);
INSERT INTO public.games VALUES (840, 245, 230);
INSERT INTO public.games VALUES (841, 247, 538);
INSERT INTO public.games VALUES (842, 247, 224);
INSERT INTO public.games VALUES (843, 248, 952);
INSERT INTO public.games VALUES (844, 248, 114);
INSERT INTO public.games VALUES (845, 247, 156);
INSERT INTO public.games VALUES (846, 247, 563);
INSERT INTO public.games VALUES (847, 247, 907);
INSERT INTO public.games VALUES (848, 249, 461);
INSERT INTO public.games VALUES (849, 249, 100);
INSERT INTO public.games VALUES (850, 250, 110);
INSERT INTO public.games VALUES (851, 250, 492);
INSERT INTO public.games VALUES (852, 249, 107);
INSERT INTO public.games VALUES (853, 249, 875);
INSERT INTO public.games VALUES (854, 249, 721);
INSERT INTO public.games VALUES (855, 251, 642);
INSERT INTO public.games VALUES (856, 251, 463);
INSERT INTO public.games VALUES (857, 252, 755);
INSERT INTO public.games VALUES (858, 252, 731);
INSERT INTO public.games VALUES (859, 251, 744);
INSERT INTO public.games VALUES (860, 251, 962);
INSERT INTO public.games VALUES (861, 251, 64);
INSERT INTO public.games VALUES (862, 253, 81);
INSERT INTO public.games VALUES (863, 253, 62);
INSERT INTO public.games VALUES (864, 254, 429);
INSERT INTO public.games VALUES (865, 254, 418);
INSERT INTO public.games VALUES (866, 253, 871);
INSERT INTO public.games VALUES (867, 253, 311);
INSERT INTO public.games VALUES (868, 253, 842);
INSERT INTO public.games VALUES (869, 255, 120);
INSERT INTO public.games VALUES (870, 255, 785);
INSERT INTO public.games VALUES (871, 256, 513);
INSERT INTO public.games VALUES (872, 256, 566);
INSERT INTO public.games VALUES (873, 255, 655);
INSERT INTO public.games VALUES (874, 255, 786);
INSERT INTO public.games VALUES (875, 255, 193);
INSERT INTO public.games VALUES (876, 257, 983);
INSERT INTO public.games VALUES (877, 257, 687);
INSERT INTO public.games VALUES (878, 258, 547);
INSERT INTO public.games VALUES (879, 258, 505);
INSERT INTO public.games VALUES (880, 257, 136);
INSERT INTO public.games VALUES (881, 257, 448);
INSERT INTO public.games VALUES (882, 257, 125);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (146, 'matt');
INSERT INTO public.users VALUES (147, 'user_1727683703473');
INSERT INTO public.users VALUES (148, 'user_1727683703472');
INSERT INTO public.users VALUES (149, 'user_1727683777125');
INSERT INTO public.users VALUES (150, 'user_1727683777124');
INSERT INTO public.users VALUES (151, 'user_1727683819337');
INSERT INTO public.users VALUES (152, 'user_1727683819336');
INSERT INTO public.users VALUES (153, 'user_1727683897290');
INSERT INTO public.users VALUES (154, 'user_1727683897289');
INSERT INTO public.users VALUES (155, 'user_1727683964556');
INSERT INTO public.users VALUES (156, 'user_1727683964555');
INSERT INTO public.users VALUES (157, 'user_1727684191536');
INSERT INTO public.users VALUES (158, 'user_1727684191535');
INSERT INTO public.users VALUES (159, 'user_1727684256917');
INSERT INTO public.users VALUES (160, 'user_1727684256916');
INSERT INTO public.users VALUES (161, 'user_1727684340775');
INSERT INTO public.users VALUES (162, 'user_1727684340774');
INSERT INTO public.users VALUES (163, 'user_1727684415509');
INSERT INTO public.users VALUES (165, 'user_1727684415508');
INSERT INTO public.users VALUES (170, 'user_1727684431489');
INSERT INTO public.users VALUES (171, 'user_1727684431488');
INSERT INTO public.users VALUES (172, 'user_1727684502334');
INSERT INTO public.users VALUES (173, 'user_1727684502333');
INSERT INTO public.users VALUES (174, 'user_1727684662630');
INSERT INTO public.users VALUES (175, 'user_1727684662629');
INSERT INTO public.users VALUES (176, 'user_1727684772492');
INSERT INTO public.users VALUES (177, 'user_1727684772491');
INSERT INTO public.users VALUES (178, 'user_1727685038450');
INSERT INTO public.users VALUES (179, 'user_1727685038449');
INSERT INTO public.users VALUES (180, 'user_1727685085249');
INSERT INTO public.users VALUES (181, 'user_1727685085248');
INSERT INTO public.users VALUES (182, 'user_1727685133238');
INSERT INTO public.users VALUES (183, 'user_1727685133237');
INSERT INTO public.users VALUES (184, 'user_1727685668035');
INSERT INTO public.users VALUES (185, 'user_1727685668034');
INSERT INTO public.users VALUES (186, 'user_1727685792956');
INSERT INTO public.users VALUES (187, 'user_1727685792955');
INSERT INTO public.users VALUES (188, 'user_1727685805833');
INSERT INTO public.users VALUES (189, 'user_1727685805832');
INSERT INTO public.users VALUES (190, 'user_1727686017822');
INSERT INTO public.users VALUES (191, 'user_1727686017821');
INSERT INTO public.users VALUES (192, 'natt');
INSERT INTO public.users VALUES (193, 'user_1727686517671');
INSERT INTO public.users VALUES (194, 'user_1727686517670');
INSERT INTO public.users VALUES (195, 'user_1727686523682');
INSERT INTO public.users VALUES (196, 'user_1727686523681');
INSERT INTO public.users VALUES (197, 'user_1727686589163');
INSERT INTO public.users VALUES (198, 'user_1727686589162');
INSERT INTO public.users VALUES (199, 'user_1727686800415');
INSERT INTO public.users VALUES (200, 'user_1727686800414');
INSERT INTO public.users VALUES (201, 'user_1727686980019');
INSERT INTO public.users VALUES (202, 'user_1727686980018');
INSERT INTO public.users VALUES (203, 'user_1727687395544');
INSERT INTO public.users VALUES (204, 'user_1727687395543');
INSERT INTO public.users VALUES (205, 'user_1727687443896');
INSERT INTO public.users VALUES (206, 'user_1727687443895');
INSERT INTO public.users VALUES (208, 'user_1727687809214');
INSERT INTO public.users VALUES (209, 'user_1727687809213');
INSERT INTO public.users VALUES (210, 'user_1727687918314');
INSERT INTO public.users VALUES (211, 'user_1727687918313');
INSERT INTO public.users VALUES (212, 'user_1727688538553');
INSERT INTO public.users VALUES (213, 'user_1727688538552');
INSERT INTO public.users VALUES (214, 'bobby');
INSERT INTO public.users VALUES (215, 'user_1727689149861');
INSERT INTO public.users VALUES (216, 'user_1727689149860');
INSERT INTO public.users VALUES (217, 'user_1727689422970');
INSERT INTO public.users VALUES (218, 'user_1727689422969');
INSERT INTO public.users VALUES (219, 'user_1727689994383');
INSERT INTO public.users VALUES (220, 'user_1727689994382');
INSERT INTO public.users VALUES (221, 'user_1727690014606');
INSERT INTO public.users VALUES (222, 'user_1727690014605');
INSERT INTO public.users VALUES (223, 'user_1727690269723');
INSERT INTO public.users VALUES (224, 'user_1727690269722');
INSERT INTO public.users VALUES (225, 'user_1727690910534');
INSERT INTO public.users VALUES (226, 'user_1727690910533');
INSERT INTO public.users VALUES (227, 'user_1727691174633');
INSERT INTO public.users VALUES (228, 'user_1727691174632');
INSERT INTO public.users VALUES (229, 'user_1727691355001');
INSERT INTO public.users VALUES (230, 'user_1727691355000');
INSERT INTO public.users VALUES (231, 'user_1727691497251');
INSERT INTO public.users VALUES (232, 'user_1727691497250');
INSERT INTO public.users VALUES (233, 'user_1727691511826');
INSERT INTO public.users VALUES (234, 'user_1727691511825');
INSERT INTO public.users VALUES (235, 'user_1727691626751');
INSERT INTO public.users VALUES (236, 'user_1727691626750');
INSERT INTO public.users VALUES (237, 'user_1727691924769');
INSERT INTO public.users VALUES (238, 'user_1727691924768');
INSERT INTO public.users VALUES (239, 'user_1727692504328');
INSERT INTO public.users VALUES (240, 'user_1727692504327');
INSERT INTO public.users VALUES (241, 'user_1727692507010');
INSERT INTO public.users VALUES (242, 'user_1727692507009');
INSERT INTO public.users VALUES (243, 'user_1727692509745');
INSERT INTO public.users VALUES (244, 'user_1727692509744');
INSERT INTO public.users VALUES (245, 'user_1727692512446');
INSERT INTO public.users VALUES (246, 'user_1727692512445');
INSERT INTO public.users VALUES (247, 'user_1727692515362');
INSERT INTO public.users VALUES (248, 'user_1727692515361');
INSERT INTO public.users VALUES (249, 'user_1727692518137');
INSERT INTO public.users VALUES (250, 'user_1727692518136');
INSERT INTO public.users VALUES (251, 'user_1727692944451');
INSERT INTO public.users VALUES (252, 'user_1727692944450');
INSERT INTO public.users VALUES (253, 'user_1727692993802');
INSERT INTO public.users VALUES (254, 'user_1727692993801');
INSERT INTO public.users VALUES (255, 'user_1727693116813');
INSERT INTO public.users VALUES (256, 'user_1727693116812');
INSERT INTO public.users VALUES (257, 'user_1727693186770');
INSERT INTO public.users VALUES (258, 'user_1727693186769');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 882, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 258, true);


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
-- Name: users users_user_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_user_name_key UNIQUE (user_name);


--
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

