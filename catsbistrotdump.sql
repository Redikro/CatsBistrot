--
-- PostgreSQL database dump
--

-- Dumped from database version 17.2
-- Dumped by pg_dump version 17.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- Name: adoptions; Type: TABLE; Schema: public; Owner: Redikro
--

CREATE TABLE public.adoptions (
    id_ad integer NOT NULL,
    user_id integer NOT NULL,
    cat_id integer NOT NULL,
    adoption_date date NOT NULL
);


ALTER TABLE public.adoptions OWNER TO "Redikro";

--
-- Name: adoptions_id_ad_seq; Type: SEQUENCE; Schema: public; Owner: Redikro
--

CREATE SEQUENCE public.adoptions_id_ad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.adoptions_id_ad_seq OWNER TO "Redikro";

--
-- Name: adoptions_id_ad_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Redikro
--

ALTER SEQUENCE public.adoptions_id_ad_seq OWNED BY public.adoptions.id_ad;


--
-- Name: bookings; Type: TABLE; Schema: public; Owner: Redikro
--

CREATE TABLE public.bookings (
    booking_date date NOT NULL,
    booking_time character varying(30) NOT NULL,
    table_number integer NOT NULL,
    number_of_people integer NOT NULL,
    user_id integer NOT NULL,
    CONSTRAINT number_of_people CHECK (((number_of_people > 0) AND (number_of_people <= 5)))
);


ALTER TABLE public.bookings OWNER TO "Redikro";

--
-- Name: cats; Type: TABLE; Schema: public; Owner: Redikro
--

CREATE TABLE public.cats (
    id_cat integer NOT NULL,
    name character varying(50) NOT NULL,
    age integer NOT NULL,
    breed character varying(50) NOT NULL,
    adopted boolean
);


ALTER TABLE public.cats OWNER TO "Redikro";

--
-- Name: cats_id_cat_seq; Type: SEQUENCE; Schema: public; Owner: Redikro
--

CREATE SEQUENCE public.cats_id_cat_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cats_id_cat_seq OWNER TO "Redikro";

--
-- Name: cats_id_cat_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Redikro
--

ALTER SEQUENCE public.cats_id_cat_seq OWNED BY public.cats.id_cat;


--
-- Name: payments; Type: TABLE; Schema: public; Owner: Redikro
--

CREATE TABLE public.payments (
    id integer NOT NULL,
    booking_id integer,
    payment_status character varying(20),
    payment_date timestamp with time zone
);


ALTER TABLE public.payments OWNER TO "Redikro";

--
-- Name: payments_id_seq; Type: SEQUENCE; Schema: public; Owner: Redikro
--

CREATE SEQUENCE public.payments_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.payments_id_seq OWNER TO "Redikro";

--
-- Name: payments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Redikro
--

ALTER SEQUENCE public.payments_id_seq OWNED BY public.payments.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: Redikro
--

CREATE TABLE public.users (
    id integer NOT NULL,
    nickname character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    password character varying(255) NOT NULL,
    first_name character varying(50),
    last_name character varying(50) NOT NULL,
    date_of_birth date NOT NULL
);


ALTER TABLE public.users OWNER TO "Redikro";

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: Redikro
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO "Redikro";

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Redikro
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: adoptions id_ad; Type: DEFAULT; Schema: public; Owner: Redikro
--

ALTER TABLE ONLY public.adoptions ALTER COLUMN id_ad SET DEFAULT nextval('public.adoptions_id_ad_seq'::regclass);


--
-- Name: cats id_cat; Type: DEFAULT; Schema: public; Owner: Redikro
--

ALTER TABLE ONLY public.cats ALTER COLUMN id_cat SET DEFAULT nextval('public.cats_id_cat_seq'::regclass);


--
-- Name: payments id; Type: DEFAULT; Schema: public; Owner: Redikro
--

ALTER TABLE ONLY public.payments ALTER COLUMN id SET DEFAULT nextval('public.payments_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: Redikro
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Data for Name: adoptions; Type: TABLE DATA; Schema: public; Owner: Redikro
--

COPY public.adoptions (id_ad, user_id, cat_id, adoption_date) FROM stdin;
\.


--
-- Data for Name: bookings; Type: TABLE DATA; Schema: public; Owner: Redikro
--

COPY public.bookings (booking_date, booking_time, table_number, number_of_people, user_id) FROM stdin;
\.


--
-- Data for Name: cats; Type: TABLE DATA; Schema: public; Owner: Redikro
--

COPY public.cats (id_cat, name, age, breed, adopted) FROM stdin;
1	Luna	2	Persian	f
2	Oliver	4	Maine Coon	f
3	Pepe	1	British Short Hair	f
\.


--
-- Data for Name: payments; Type: TABLE DATA; Schema: public; Owner: Redikro
--

COPY public.payments (id, booking_id, payment_status, payment_date) FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: Redikro
--

COPY public.users (id, nickname, email, password, first_name, last_name, date_of_birth) FROM stdin;
19	Redikro	lorenzomenna2002@gmail.com	$2b$10$5wZprx8ekWHdAYltgpmnrekHF8jh8..fsf344V3/3qy2X2M645hVW	Lorenzo	Menna	2002-05-11
\.


--
-- Name: adoptions_id_ad_seq; Type: SEQUENCE SET; Schema: public; Owner: Redikro
--

SELECT pg_catalog.setval('public.adoptions_id_ad_seq', 3, true);


--
-- Name: cats_id_cat_seq; Type: SEQUENCE SET; Schema: public; Owner: Redikro
--

SELECT pg_catalog.setval('public.cats_id_cat_seq', 1, false);


--
-- Name: payments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Redikro
--

SELECT pg_catalog.setval('public.payments_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Redikro
--

SELECT pg_catalog.setval('public.users_id_seq', 22, true);


--
-- Name: adoptions adoptions_pkey; Type: CONSTRAINT; Schema: public; Owner: Redikro
--

ALTER TABLE ONLY public.adoptions
    ADD CONSTRAINT adoptions_pkey PRIMARY KEY (id_ad);


--
-- Name: bookings bookings_pkey; Type: CONSTRAINT; Schema: public; Owner: Redikro
--

ALTER TABLE ONLY public.bookings
    ADD CONSTRAINT bookings_pkey PRIMARY KEY (booking_date, booking_time, table_number);


--
-- Name: cats cats_pkey; Type: CONSTRAINT; Schema: public; Owner: Redikro
--

ALTER TABLE ONLY public.cats
    ADD CONSTRAINT cats_pkey PRIMARY KEY (id_cat);


--
-- Name: users email; Type: CONSTRAINT; Schema: public; Owner: Redikro
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT email UNIQUE (email) INCLUDE (email);


--
-- Name: users nickname; Type: CONSTRAINT; Schema: public; Owner: Redikro
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT nickname UNIQUE (nickname) INCLUDE (nickname);


--
-- Name: payments payments_pkey; Type: CONSTRAINT; Schema: public; Owner: Redikro
--

ALTER TABLE ONLY public.payments
    ADD CONSTRAINT payments_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: Redikro
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id) INCLUDE (id);


--
-- Name: adoptions id_cat; Type: FK CONSTRAINT; Schema: public; Owner: Redikro
--

ALTER TABLE ONLY public.adoptions
    ADD CONSTRAINT id_cat FOREIGN KEY (cat_id) REFERENCES public.cats(id_cat);


--
-- Name: adoptions user_id; Type: FK CONSTRAINT; Schema: public; Owner: Redikro
--

ALTER TABLE ONLY public.adoptions
    ADD CONSTRAINT user_id FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- Name: bookings user_idFk; Type: FK CONSTRAINT; Schema: public; Owner: Redikro
--

ALTER TABLE ONLY public.bookings
    ADD CONSTRAINT "user_idFk" FOREIGN KEY (user_id) REFERENCES public.users(id);


--
-- PostgreSQL database dump complete
--

