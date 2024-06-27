--
-- PostgreSQL database dump
--

-- Dumped from database version 16.3 (Ubuntu 16.3-1.pgdg24.04+1)
-- Dumped by pg_dump version 16.3 (Ubuntu 16.3-1.pgdg24.04+1)

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
-- Name: doctors; Type: TABLE; Schema: public; Owner: db_user
--

CREATE TABLE public.doctors (
    doctor_id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    appointment_date date
);


ALTER TABLE public.doctors OWNER TO db_user;

--
-- Name: doctors_doctor_id_seq; Type: SEQUENCE; Schema: public; Owner: db_user
--

CREATE SEQUENCE public.doctors_doctor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.doctors_doctor_id_seq OWNER TO db_user;

--
-- Name: doctors_doctor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: db_user
--

ALTER SEQUENCE public.doctors_doctor_id_seq OWNED BY public.doctors.doctor_id;


--
-- Name: kendaraan; Type: TABLE; Schema: public; Owner: db_user
--

CREATE TABLE public.kendaraan (
    kendaraanid integer NOT NULL,
    namapemilik character varying(100),
    tipekendaraan character(1),
    kelaspajak character(1),
    tanggalregistrasi date,
    pembayaranterakhir date,
    metodepembayaran boolean
);


ALTER TABLE public.kendaraan OWNER TO db_user;

--
-- Name: kendaraan_kendaraanid_seq; Type: SEQUENCE; Schema: public; Owner: db_user
--

CREATE SEQUENCE public.kendaraan_kendaraanid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.kendaraan_kendaraanid_seq OWNER TO db_user;

--
-- Name: kendaraan_kendaraanid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: db_user
--

ALTER SEQUENCE public.kendaraan_kendaraanid_seq OWNED BY public.kendaraan.kendaraanid;


--
-- Name: kendaraantable; Type: TABLE; Schema: public; Owner: db_user
--

CREATE TABLE public.kendaraantable (
    kendaraanid integer NOT NULL,
    namapemilik character varying(100),
    tipekendaraan character(1),
    kelaspajak character(1),
    tanggalregistrasi date,
    pembayaranterakhir date,
    metodepembayaran boolean
);


ALTER TABLE public.kendaraantable OWNER TO db_user;

--
-- Name: kendaraantable_kendaraanid_seq; Type: SEQUENCE; Schema: public; Owner: db_user
--

CREATE SEQUENCE public.kendaraantable_kendaraanid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.kendaraantable_kendaraanid_seq OWNER TO db_user;

--
-- Name: kendaraantable_kendaraanid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: db_user
--

ALTER SEQUENCE public.kendaraantable_kendaraanid_seq OWNED BY public.kendaraantable.kendaraanid;


--
-- Name: people; Type: TABLE; Schema: public; Owner: db_user
--

CREATE TABLE public.people (
    id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50)
);


ALTER TABLE public.people OWNER TO db_user;

--
-- Name: people_id_seq; Type: SEQUENCE; Schema: public; Owner: db_user
--

CREATE SEQUENCE public.people_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.people_id_seq OWNER TO db_user;

--
-- Name: people_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: db_user
--

ALTER SEQUENCE public.people_id_seq OWNED BY public.people.id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: db_user
--

CREATE TABLE public.students (
    id integer NOT NULL,
    first_name character varying(50),
    last_name character varying(50),
    score integer
);


ALTER TABLE public.students OWNER TO db_user;

--
-- Name: students_id_seq; Type: SEQUENCE; Schema: public; Owner: db_user
--

CREATE SEQUENCE public.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.students_id_seq OWNER TO db_user;

--
-- Name: students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: db_user
--

ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;


--
-- Name: doctors doctor_id; Type: DEFAULT; Schema: public; Owner: db_user
--

ALTER TABLE ONLY public.doctors ALTER COLUMN doctor_id SET DEFAULT nextval('public.doctors_doctor_id_seq'::regclass);


--
-- Name: kendaraan kendaraanid; Type: DEFAULT; Schema: public; Owner: db_user
--

ALTER TABLE ONLY public.kendaraan ALTER COLUMN kendaraanid SET DEFAULT nextval('public.kendaraan_kendaraanid_seq'::regclass);


--
-- Name: kendaraantable kendaraanid; Type: DEFAULT; Schema: public; Owner: db_user
--

ALTER TABLE ONLY public.kendaraantable ALTER COLUMN kendaraanid SET DEFAULT nextval('public.kendaraantable_kendaraanid_seq'::regclass);


--
-- Name: people id; Type: DEFAULT; Schema: public; Owner: db_user
--

ALTER TABLE ONLY public.people ALTER COLUMN id SET DEFAULT nextval('public.people_id_seq'::regclass);


--
-- Name: students id; Type: DEFAULT; Schema: public; Owner: db_user
--

ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);


--
-- Data for Name: doctors; Type: TABLE DATA; Schema: public; Owner: db_user
--

COPY public.doctors (doctor_id, first_name, last_name, appointment_date) FROM stdin;
1	Ben	Joe	2024-11-15
2	Carson	Smith	2024-02-28
3	Donald	James	2024-04-10
\.


--
-- Data for Name: kendaraan; Type: TABLE DATA; Schema: public; Owner: db_user
--

COPY public.kendaraan (kendaraanid, namapemilik, tipekendaraan, kelaspajak, tanggalregistrasi, pembayaranterakhir, metodepembayaran) FROM stdin;
1	R. Dimas Ramadan, S.Gz	B	B	2015-08-02	2015-08-02	t
2	Taufik Wasita, S.Gz	A	A	2023-08-15	2023-12-18	f
3	Reza Widodo	A	A	2018-01-22	2018-01-22	t
4	Siti Rajasa	A	A	2015-06-19	2024-02-12	t
5	Jasmin Prastuti	A	A	2022-11-06	2023-06-10	f
6	Taswir Rahayu	B	B	2016-08-25	2016-08-25	f
7	R. Umar Hakim	B	B	2018-10-12	2023-09-22	t
8	Pia Uyainah	A	A	2023-02-08	2023-11-23	t
9	Kawaca Sirait	B	B	2022-02-02	2023-03-19	t
10	Queen Mahendra	A	A	2021-03-06	2022-04-15	f
11	Panca Susanti	A	A	2015-07-22	2019-06-21	t
12	Puji Hariyah	A	A	2018-06-01	2022-12-05	f
13	Tgk. Hendra Uwais	A	A	2020-02-10	2020-02-10	t
14	Dt. Erik Hidayanto, S.Ked	A	A	2015-03-21	2017-07-26	t
15	Dalima Yolanda, S.Gz	B	B	2019-08-14	2020-05-20	t
16	Ir. Baktiono Jailani	A	A	2014-07-30	2014-07-30	t
17	Drs. Erik Farida, S.T.	A	A	2018-07-19	2022-01-19	t
18	Tgk. Ade Yulianti, M.Farm	A	A	2022-12-17	2024-06-09	t
19	R. Ilsa Nuraini	C	C	2017-10-15	2017-10-15	f
20	Nadia Usamah, S.H.	A	A	2022-09-03	2022-09-03	t
21	Clara Wulandari	A	A	2016-01-22	2016-01-22	t
22	T. Upik Halim	A	A	2015-02-07	2017-04-29	t
23	Ir. Salimah Pranowo	A	A	2019-03-27	2019-03-27	t
24	Aisyah Iswahyudi	A	A	2016-08-19	2016-08-19	t
25	Opan Laksmiwati	A	A	2017-03-21	2023-06-18	t
26	Malika Sitompul	B	B	2021-08-16	2021-08-16	f
27	R. Cengkir Palastri, M.Kom.	A	A	2018-05-08	2018-05-08	t
28	Faizah Widiastuti	A	A	2016-04-24	2016-04-24	f
29	drg. Aisyah Wibowo	A	A	2023-12-05	2024-03-21	f
30	Tasdik Rahmawati	A	A	2021-11-15	2021-11-15	t
31	R. Oskar Damanik	A	A	2018-02-17	2023-09-18	t
32	dr. Kanda Halimah	B	B	2019-11-02	2019-11-02	t
33	Pia Permata	B	B	2021-07-16	2022-07-27	f
34	Waluyo Hasanah, M.M.	A	A	2017-03-18	2017-06-03	f
35	Emong Siregar	B	B	2015-01-12	2023-11-01	f
36	dr. Putri Yuliarti, S.E.	A	A	2019-12-24	2019-12-24	t
37	Najib Suryatmi, M.Kom.	A	A	2015-02-13	2021-01-10	f
38	Calista Hartati	A	A	2021-03-19	2021-03-19	t
39	Titin Salahudin	A	A	2022-02-10	2022-02-10	t
40	Salsabila Widodo	A	A	2014-08-30	2016-08-25	f
41	Sutan Argono Santoso	A	A	2017-11-03	2017-11-03	f
42	Sutan Warsa Nasyiah, S.Pt	C	C	2023-02-25	2023-12-21	t
43	Nardi Lestari	B	B	2018-11-15	2021-11-20	f
44	Yance Yolanda	A	A	2021-12-05	2021-12-05	t
45	Harjaya Prasetyo	A	A	2018-11-12	2021-12-17	f
46	Kamaria Rahayu	A	A	2020-04-02	2020-04-02	t
47	Ir. Yuliana Mustofa, S.Sos	A	A	2015-05-05	2015-05-05	t
48	Langgeng Hassanah	A	A	2022-07-06	2023-12-15	t
49	Elvina Kusmawati	A	A	2018-02-27	2018-02-27	t
50	Qori Saragih	A	A	2022-04-13	2022-04-13	t
51	Muhammad Mustofa	A	A	2016-05-15	2023-03-24	t
52	Ir. Karsa Yuniar	B	B	2022-04-27	2023-07-23	t
53	R. Kamidin Mansur, S.I.Kom	B	B	2021-02-22	2023-11-19	t
54	Dadap Sihotang, S.Gz	B	B	2021-07-09	2024-05-23	f
55	Dr. Prayitna Suartini	A	A	2022-06-25	2023-03-22	f
56	R. Hafshah Latupono	B	B	2015-03-16	2015-03-16	t
57	Dt. Galar Saefullah	A	A	2017-12-22	2017-12-22	f
58	Asmuni Adriansyah, S.E.	A	A	2014-09-04	2014-09-04	t
59	Jasmani Handayani	A	A	2020-09-19	2020-09-19	f
60	Ir. Johan Oktaviani	A	A	2017-04-26	2017-04-26	f
61	Jessica Natsir	A	A	2017-05-11	2017-05-11	t
62	Bakiman Prayoga	A	A	2016-09-05	2016-09-05	t
63	Ika Thamrin	A	A	2021-03-09	2021-03-09	f
64	Maida Hasanah	A	A	2022-03-09	2023-01-04	t
65	Olivia Hutapea	C	C	2021-01-23	2023-08-08	t
66	Paris Firgantoro	B	B	2017-04-24	2019-04-21	f
67	Rahmat Pratiwi	A	A	2023-10-28	2023-12-10	t
68	Balapati Tarihoran	A	A	2018-08-20	2019-06-29	t
69	Maida Marbun	A	A	2019-08-05	2019-08-05	t
70	Rusman Laksmiwati	A	A	2017-11-10	2017-11-10	t
71	R.A. Yani Suartini	A	A	2021-09-25	2021-09-25	f
72	Mutia Firmansyah	C	C	2018-10-24	2018-10-24	t
73	Labuh Dongoran	A	A	2017-09-05	2017-09-05	t
74	Elisa Fujiati	A	A	2022-07-08	2022-07-08	t
75	Syahrini Wahyuni	A	A	2016-02-23	2016-02-23	f
76	Dr. Farah Usamah, M.M.	A	A	2023-06-04	2024-04-19	f
77	Uchita Prastuti	A	A	2019-01-19	2019-01-19	t
78	Rahayu Widodo	A	A	2023-02-27	2024-06-15	t
79	Genta Permata	A	A	2019-05-09	2021-11-30	f
80	Cagak Oktaviani	A	A	2023-08-05	2024-06-23	f
81	Jabal Hakim	C	C	2022-11-30	2022-11-30	f
82	Tiara Sitorus	A	A	2023-11-21	2023-11-21	f
83	Cut Silvia Saefullah	A	A	2020-11-12	2023-03-05	t
84	Luwes Suartini	A	A	2014-12-22	2014-12-22	t
85	Danu Salahudin, S.Ked	A	A	2015-03-07	2017-03-21	t
86	Jelita Prakasa	C	C	2023-08-22	2023-08-22	f
87	Zulfa Lailasari	C	C	2014-07-12	2019-02-16	t
88	Zelda Firmansyah	A	A	2021-12-13	2023-05-18	t
89	Drs. Cengkal Firgantoro, S.E.I	A	A	2018-01-15	2021-01-08	t
90	R.M. Galiono Permata, S.Gz	A	A	2017-04-22	2017-04-22	t
91	drg. Vanesa Mustofa	A	A	2020-06-24	2020-06-24	t
92	Ana Prasetya	A	A	2019-07-22	2019-07-22	f
93	Ulya Suryatmi	B	B	2024-01-27	2024-02-24	f
94	Ir. Fathonah Anggriawan, S.Ked	A	A	2018-08-16	2018-08-16	t
95	Makuta Rahayu	A	A	2022-03-08	2022-03-08	t
96	Rika Fujiati, S.Sos	B	B	2020-03-21	2020-03-21	t
97	H. Harjo Gunawan, M.Pd	B	B	2023-10-15	2023-10-15	f
98	Vega Halimah, S.E.I	A	A	2017-09-02	2017-09-02	t
99	drg. Eva Jailani, S.T.	A	A	2019-03-02	2019-03-02	f
100	Vivi Napitupulu	A	A	2024-01-14	2024-01-14	f
101	Tgk. Jamil Winarsih, S.Kom	A	A	2020-07-06	2022-08-14	t
102	Cengkal Najmudin, M.Farm	A	A	2016-12-09	2024-02-26	f
103	Padmi Pranowo	A	A	2018-11-16	2021-05-07	t
104	Puti Anastasia Putra	A	A	2016-10-22	2016-10-22	f
105	Ian Mardhiyah	A	A	2014-10-28	2014-10-28	f
106	Caturangga Wijayanti	A	A	2020-01-26	2021-05-11	f
107	R.M. Harjaya Latupono	A	A	2023-08-06	2023-08-06	f
108	Ulva Najmudin	A	A	2018-08-25	2018-08-25	f
109	Wawan Farida	A	A	2024-05-19	2024-05-19	t
110	Anom Maheswara	A	A	2024-04-08	2024-05-14	t
111	Zalindra Sihombing	A	A	2019-01-31	2019-01-31	t
112	Ir. Puti Sitorus	A	A	2021-12-11	2023-07-15	t
113	Bella Pratiwi, M.TI.	A	A	2020-10-25	2020-10-25	f
114	drg. Ratih Suryatmi	A	A	2021-08-17	2021-08-17	f
115	Enteng Puspasari, S.Ked	A	A	2018-09-28	2019-09-24	f
116	Rafi Hartati	A	A	2016-08-07	2020-06-24	t
117	Ina Firgantoro	A	A	2024-06-03	2024-06-17	t
118	Ir. Nurul Nasyiah	A	A	2018-06-19	2018-06-19	t
119	Drs. Rahman Riyanti	B	B	2016-04-08	2019-02-14	f
120	Dt. Radit Simbolon, S.Pd	A	A	2017-06-23	2024-06-15	t
121	drg. Kairav Mandasari	A	A	2018-01-09	2018-01-09	f
122	Sutan Harsaya Sitorus	A	A	2014-11-05	2017-11-20	t
123	Purwadi Gunarto	A	A	2015-11-26	2015-11-26	t
124	Luwes Mayasari	B	B	2023-09-05	2023-09-13	t
125	Drs. Devi Maryati	A	A	2019-07-31	2019-07-31	t
126	Cinthia Puspasari, S.T.	A	A	2022-01-12	2023-12-03	f
127	Dr. Dian Narpati	A	A	2020-04-23	2020-04-23	f
128	Tgk. Kiandra Wacana, S.I.Kom	A	A	2021-06-05	2023-04-06	t
129	Fitriani Manullang	A	A	2018-05-18	2022-04-17	t
130	Unggul Hastuti	A	A	2015-10-15	2016-07-23	f
131	Okto Rahayu, S.E.	A	A	2018-09-12	2018-09-12	f
132	Tgk. Violet Agustina	A	A	2017-04-14	2023-07-16	t
133	Hesti Pranowo	A	A	2016-03-14	2016-03-14	f
134	Najwa Narpati	A	A	2018-03-30	2018-03-30	t
135	Dt. Ega Pratiwi, M.TI.	A	A	2016-08-05	2022-06-18	t
136	Ir. Manah Puspita, S.Psi	B	B	2021-03-26	2021-03-26	f
137	Pia Latupono	A	A	2024-04-20	2024-04-20	f
138	Gambira Mangunsong	A	A	2017-05-29	2017-05-29	f
139	Drs. Maria Hariyah	A	A	2020-07-22	2021-07-23	t
140	Gilda Nasyidah	B	B	2023-07-09	2023-07-09	t
141	Daryani Hassanah	B	B	2017-11-17	2018-10-04	f
142	Lala Mustofa	A	A	2016-09-09	2016-09-09	t
143	Sabri Tarihoran	B	B	2022-10-27	2022-12-13	f
144	Zamira Prabowo	A	A	2015-06-23	2015-06-23	f
145	Zulaikha Permadi	B	B	2023-03-02	2023-03-02	t
146	Dimas Andriani	A	A	2022-07-22	2024-06-04	t
147	Maria Pertiwi	A	A	2017-01-01	2019-05-23	f
148	Dr. Ana Maheswara	A	A	2019-03-07	2023-03-25	t
149	Gatra Wasita, S.Pd	A	A	2020-10-21	2023-01-12	t
150	Najam Gunawan	A	A	2021-03-10	2021-03-10	f
151	Wahyu Anggraini	A	A	2019-05-05	2021-04-25	f
152	Ir. Gaman Jailani	A	A	2021-11-10	2023-11-30	f
153	Damar Mangunsong	A	A	2018-11-16	2018-11-16	t
154	Candrakanta Januar	A	A	2020-05-31	2023-05-01	t
155	Hairyanto Nainggolan	A	A	2019-02-19	2024-05-29	t
156	Aslijan Suryatmi	C	C	2022-09-08	2024-06-02	f
157	T. Prayogo Lazuardi, S.Pt	A	A	2017-12-19	2017-12-19	f
158	R.A. Kiandra Hakim, M.TI.	A	A	2018-08-08	2018-08-08	f
159	Bella Manullang	A	A	2018-09-01	2018-09-01	t
160	Harsanto Widiastuti	B	B	2019-03-09	2024-06-25	t
161	R. Devi Mulyani	A	A	2021-12-09	2022-04-19	t
162	drg. Adhiarja Yolanda, S.Gz	A	A	2015-10-08	2023-09-02	f
163	Violet Prakasa	A	A	2016-12-15	2019-08-10	t
164	drg. Lantar Mardhiyah	A	A	2017-09-11	2023-05-04	f
165	Emas Haryanto	C	C	2016-09-23	2016-09-23	t
166	Victoria Irawan, M.Ak	C	C	2017-12-01	2019-12-16	t
167	Janet Utama	A	A	2014-09-14	2014-09-14	f
168	Drs. Sakura Hutasoit, M.M.	C	C	2017-07-18	2017-07-18	f
169	Chelsea Prasetyo	A	A	2024-04-08	2024-06-21	t
170	Tgk. Bakijan Ramadan	B	B	2019-07-07	2023-01-14	f
171	R.A. Elma Setiawan, S.Gz	A	A	2014-07-03	2014-07-03	f
172	Cahyo Puspasari	A	A	2024-06-18	2024-06-18	f
173	T. Mursita Widodo	A	A	2024-02-04	2024-02-04	t
174	Cakrabuana Laksmiwati, S.H.	A	A	2018-11-15	2018-11-15	t
175	Putri Halim	B	B	2020-12-09	2022-12-17	t
176	R. Karya Haryanto, S.E.I	B	B	2017-06-12	2017-06-12	t
177	Prabu Firgantoro	A	A	2015-12-29	2015-12-29	f
178	Zulaikha Mustofa	A	A	2019-05-01	2020-07-23	f
179	Kardi Mustofa	A	A	2020-04-09	2022-10-16	f
180	Ir. Yulia Widodo	A	A	2020-09-20	2020-09-20	f
181	Cahyo Saptono	A	A	2023-05-23	2023-05-23	f
182	Mursinin Waskita	B	B	2015-02-16	2015-02-16	f
183	Dr. Maida Suryono	A	A	2016-08-01	2020-09-22	t
184	Dr. Cahyadi Wastuti, S.Farm	A	A	2024-05-08	2024-05-08	f
185	Maria Prasetyo, S.I.Kom	A	A	2015-10-18	2015-10-18	f
186	Betania Andriani	A	A	2022-05-29	2024-02-22	f
187	Raisa Pertiwi	A	A	2020-07-30	2022-10-06	t
188	Labuh Dongoran	B	B	2019-12-16	2019-12-16	f
189	Dinda Manullang	C	C	2017-12-21	2017-12-21	f
190	Manah Mayasari	A	A	2018-12-28	2018-12-28	f
191	Lega Hidayat	B	B	2018-10-26	2018-10-26	t
192	Nyoman Riyanti	A	A	2014-09-02	2022-06-15	t
193	Devi Nasyidah	A	A	2022-10-19	2023-02-18	t
194	Tari Wibowo, S.Farm	A	A	2015-02-09	2015-02-09	t
195	Harjo Puspasari	A	A	2023-09-18	2023-10-08	f
196	Hj. Ifa Permadi, S.Gz	A	A	2021-02-04	2021-02-04	f
197	Omar Saefullah	B	B	2015-12-28	2022-09-21	f
198	Najwa Nababan	A	A	2021-06-15	2024-03-18	f
199	Narji Haryanti	A	A	2023-02-26	2023-02-26	t
200	Carla Siregar	A	A	2019-01-11	2019-02-05	t
201	Sutan Prayogo Purwanti	C	C	2019-05-21	2023-06-13	f
202	Aurora Anggriawan	B	B	2021-08-15	2021-08-15	t
203	Olga Jailani, M.Ak	A	A	2014-11-14	2014-11-14	t
204	Leo Sirait	B	B	2016-08-29	2018-11-23	f
205	Sadina Dabukke	A	A	2016-07-01	2021-02-15	t
206	Dr. Titin Laksita	A	A	2016-02-23	2017-12-31	t
207	Ibrani Haryanti, M.Farm	A	A	2023-12-26	2024-01-26	f
208	Rahmi Putra, S.Pt	A	A	2020-12-03	2020-12-17	f
209	Gamanto Ramadan	A	A	2014-11-22	2015-05-18	f
210	Zalindra Nababan	A	A	2016-03-05	2019-10-05	f
211	Rangga Utami, M.TI.	A	A	2020-01-23	2020-01-23	t
212	Atma Narpati	B	B	2021-08-27	2021-08-27	t
213	Mahesa Ardianto	A	A	2020-01-14	2020-01-14	f
214	Yessi Wahyuni, M.Farm	A	A	2018-03-24	2021-09-26	t
215	T. Gangsa Mustofa	A	A	2021-12-23	2021-12-23	t
216	dr. Lalita Oktaviani, M.Ak	C	C	2016-06-30	2016-06-30	f
217	Perkasa Wijaya	B	B	2023-03-30	2023-03-30	t
218	Arsipatra Safitri, S.E.I	B	B	2021-10-30	2021-10-30	f
219	T. Daniswara Mardhiyah, S.Pt	B	B	2024-06-16	2024-06-16	t
220	Puti Qori Tampubolon	B	B	2021-10-12	2021-10-12	t
221	Puspa Tamba	B	B	2021-11-15	2022-10-18	t
222	Asirwanda Rahayu	A	A	2022-07-15	2023-11-23	t
223	Drs. Emil Waskita	A	A	2014-09-15	2014-09-15	t
224	Ir. Daliono Pranowo	B	B	2022-08-24	2023-12-01	f
225	Tina Pratiwi	A	A	2023-08-17	2023-12-27	f
226	Dt. Danuja Handayani, S.H.	C	C	2020-05-04	2021-11-27	t
227	Gandewa Suryono	C	C	2023-06-15	2023-06-15	f
228	Luwar Haryanto	A	A	2019-01-18	2022-08-09	t
229	Ika Irawan	A	A	2016-04-11	2016-04-11	t
230	Hartaka Tamba	A	A	2024-04-18	2024-04-18	t
231	Tari Situmorang	A	A	2017-10-27	2020-06-06	t
232	Umi Kusumo	B	B	2019-04-28	2023-01-29	f
233	Radit Firmansyah	B	B	2017-11-01	2019-03-19	f
234	Cindy Sirait	A	A	2024-04-27	2024-06-13	f
235	R.M. Caturangga Nashiruddin	C	C	2016-07-15	2016-07-15	t
236	Anastasia Widiastuti	A	A	2017-12-18	2017-12-18	f
237	Almira Prabowo	B	B	2015-06-27	2018-11-04	t
238	KH. Jaeman Nurdiyanti, M.Pd	C	C	2016-11-18	2021-05-03	t
239	Ani Andriani	A	A	2019-03-31	2021-09-02	t
240	Jaeman Nuraini	B	B	2016-11-20	2016-11-20	t
241	Gandewa Ardianto	A	A	2018-03-06	2023-04-30	t
242	Halim Maulana	A	A	2020-09-20	2023-09-15	t
243	Tgk. Raina Rahimah, S.Kom	A	A	2023-04-19	2024-02-21	t
244	dr. Amalia Nurdiyanti	A	A	2020-03-28	2020-03-28	t
245	Patricia Prayoga	A	A	2016-05-10	2022-04-10	f
246	dr. Pangestu Hutagalung	A	A	2022-06-13	2022-06-13	t
247	Baktiadi Natsir, M.TI.	A	A	2018-11-05	2023-01-08	t
248	Kawaya Astuti	A	A	2016-01-22	2019-02-08	f
249	Dr. Genta Prastuti, S.H.	B	B	2019-06-22	2019-12-08	f
250	Danu Hassanah	B	B	2018-04-19	2018-04-19	t
251	Cayadi Hutapea	A	A	2019-09-18	2019-09-18	t
252	Jayeng Pradana	A	A	2021-06-14	2021-06-14	t
253	Putu Sihotang	B	B	2020-08-23	2020-08-23	t
254	Eka Budiman	A	A	2018-12-22	2018-12-22	t
255	Fitria Prasasta	B	B	2017-01-07	2017-01-07	f
256	R.M. Marsito Purnawati	B	B	2015-09-04	2015-09-04	t
257	Dr. Salsabila Oktaviani	A	A	2020-10-05	2020-10-05	f
258	Putri Saefullah	A	A	2017-05-21	2017-05-21	f
259	dr. Jarwi Mardhiyah, S.Kom	B	B	2019-02-24	2019-02-24	f
260	Vicky Permata	B	B	2015-05-18	2015-05-18	f
261	Bella Damanik	A	A	2021-09-04	2024-01-19	f
262	Ir. Ikin Nurdiyanti	A	A	2022-10-25	2022-10-25	t
263	Tgk. Karman Hidayat	A	A	2015-02-27	2022-05-22	t
264	Bakti Adriansyah	A	A	2022-04-22	2024-05-26	t
265	Dt. Damu Pudjiastuti	A	A	2019-05-04	2024-03-28	t
266	Restu Thamrin	A	A	2016-01-22	2016-01-22	t
267	H. Wardi Nurdiyanti, M.Pd	A	A	2014-09-18	2017-10-01	f
268	drg. Rahman Sudiati, S.Kom	A	A	2015-02-19	2022-01-05	t
269	Dewi Putra	A	A	2019-11-16	2019-11-16	t
270	Drs. Maman Laksita	A	A	2019-03-01	2019-03-01	t
271	Siska Hutagalung, S.Psi	A	A	2019-07-02	2021-04-03	f
272	Hj. Chelsea Wahyudin	A	A	2015-05-01	2015-05-01	t
273	Lukita Haryanti, M.Pd	A	A	2020-08-08	2020-08-08	f
274	Hesti Halim	A	A	2018-10-03	2018-10-03	f
275	Ega Hutapea, M.TI.	A	A	2017-12-29	2017-12-29	t
276	Estiawan Rahimah	B	B	2019-03-18	2019-03-18	f
277	Intan Lazuardi	B	B	2018-11-15	2018-11-15	t
278	Chelsea Prasetya	A	A	2019-08-21	2024-03-23	t
279	Dalimin Novitasari	B	B	2022-01-02	2023-02-21	t
280	Ajimat Pratiwi	A	A	2021-05-25	2021-05-25	t
281	Bahuwarna Firmansyah, S.H.	C	C	2023-09-28	2023-09-28	f
282	Sabrina Sitompul	A	A	2024-04-19	2024-04-19	t
283	Cakrabuana Hartati	A	A	2018-05-07	2018-05-07	t
284	Jamalia Puspita	A	A	2020-06-24	2020-06-24	f
285	Artanto Saputra	B	B	2022-10-30	2022-10-30	f
286	Juli Sitompul	B	B	2017-02-06	2017-02-06	f
287	Drs. Nasim Zulkarnain	A	A	2015-09-18	2015-09-18	f
288	Sabrina Namaga	A	A	2018-08-30	2019-07-28	f
289	R. Lili Mansur, S.Pd	B	B	2019-03-04	2020-09-06	f
290	Kani Wahyudin, S.Pt	A	A	2019-08-07	2024-03-19	t
291	Damar Puspasari, S.Sos	A	A	2017-04-06	2023-12-17	t
292	dr. Farhunnisa Pangestu, S.E.	A	A	2019-06-29	2019-06-29	f
293	Dinda Pudjiastuti	B	B	2022-01-17	2022-01-17	f
294	Ir. Paulin Hutagalung	C	C	2014-08-07	2022-08-09	t
295	Dipa Simbolon	B	B	2023-08-30	2023-08-30	f
296	Reksa Saefullah	A	A	2018-03-12	2019-02-28	f
297	Latif Prayoga	A	A	2015-09-21	2017-01-23	t
298	Hamzah Winarsih	A	A	2014-11-28	2017-05-14	t
299	Lembah Yuniar	A	A	2019-05-16	2024-05-18	t
300	Daruna Laksita	A	A	2020-07-29	2021-02-11	f
301	Dadap Utama	B	B	2022-04-05	2022-04-05	t
302	drg. Siska Nuraini, S.Kom	A	A	2018-12-17	2018-12-17	f
303	Garda Suryono, S.I.Kom	C	C	2016-06-19	2023-03-21	f
304	Drs. Wadi Wastuti, S.T.	A	A	2019-04-20	2019-04-20	f
305	Dt. Danu Maheswara, M.Farm	A	A	2022-11-10	2022-11-10	f
306	Darmaji Nashiruddin	B	B	2018-11-29	2018-11-29	t
307	Puti Ulva Riyanti, S.T.	C	C	2016-02-24	2016-02-24	t
308	Silvia Sihombing	A	A	2015-05-31	2015-05-31	t
309	Jamil Najmudin	A	A	2023-09-16	2023-09-16	f
310	Hana Hutagalung	A	A	2021-11-03	2021-11-03	t
311	Kani Setiawan	B	B	2023-02-21	2023-02-21	f
312	Indah Suartini	A	A	2020-01-12	2020-01-12	t
313	Sutan Prayoga Maryadi	A	A	2019-04-21	2022-07-19	f
314	Rafid Susanti	A	A	2015-08-13	2019-07-30	f
315	Cahyanto Maheswara	A	A	2023-02-21	2023-02-21	f
316	Artanto Pradana	A	A	2022-11-21	2022-11-21	t
317	Edward Sihotang	A	A	2019-11-03	2019-11-03	f
318	Nardi Widiastuti, M.Farm	A	A	2020-06-25	2020-06-25	t
319	Febi Pratama	C	C	2020-07-13	2020-07-13	t
320	Mariadi Wibowo, M.Farm	A	A	2019-07-31	2019-07-31	t
321	Alika Sihombing, S.T.	B	B	2019-10-07	2019-10-07	f
322	Parman Kuswoyo	A	A	2015-11-21	2015-11-21	t
323	Maryanto Zulaika, S.IP	A	A	2023-01-15	2024-04-03	f
324	Harja Rajasa	A	A	2014-10-24	2014-10-24	t
325	Mahesa Permadi, S.Sos	A	A	2017-05-31	2017-05-31	f
326	Mujur Suwarno	A	A	2014-09-23	2014-09-23	t
327	Dt. Dagel Yolanda	A	A	2018-04-17	2020-09-24	t
328	Tri Purnawati, M.Pd	A	A	2024-01-18	2024-04-22	t
329	Asirwanda Rahayu	A	A	2015-01-05	2015-01-05	t
330	T. Margana Najmudin, S.Ked	A	A	2024-06-21	2024-06-22	t
331	Ratna Samosir	A	A	2022-12-31	2022-12-31	f
332	Oliva Kusumo	A	A	2023-05-08	2023-05-08	f
333	Tgk. Kalim Yuniar	A	A	2017-04-21	2020-04-19	t
334	Maimunah Marpaung	B	B	2020-07-17	2024-02-21	f
335	Anom Rahimah	A	A	2018-11-01	2018-11-01	t
336	Jamil Anggraini	B	B	2017-10-25	2018-06-13	t
337	Sabrina Laksmiwati	A	A	2023-03-03	2023-03-03	f
338	Drajat Saptono	A	A	2020-09-01	2020-09-01	f
339	Perkasa Suryatmi, S.Farm	A	A	2022-06-15	2022-06-15	f
340	Radit Putra	B	B	2020-11-18	2020-11-18	t
341	Mahdi Nuraini	C	C	2022-07-12	2022-07-12	f
342	Hj. Ilsa Mandasari, S.Pt	A	A	2023-05-14	2023-05-14	t
343	Rina Megantara	A	A	2016-12-14	2016-12-14	t
344	Salwa Melani	A	A	2019-12-30	2022-06-16	t
345	Ir. Hadi Dabukke, S.Kom	A	A	2023-12-11	2024-06-22	f
346	Aswani Melani, S.I.Kom	B	B	2024-05-17	2024-05-17	f
347	Sutan Pardi Narpati	A	A	2021-09-21	2024-01-18	f
348	Kasiyah Nainggolan	B	B	2021-10-10	2023-04-19	t
581	Perkasa Andriani	A	A	2019-10-28	2022-06-07	f
349	Cut Laila Prasetya, M.M.	A	A	2019-12-16	2019-12-16	f
350	Genta Prasasta	A	A	2020-04-21	2020-04-21	t
351	Ibrahim Pudjiastuti, S.E.I	A	A	2023-10-14	2023-10-14	t
352	Cut Farhunnisa Habibi	B	B	2017-05-13	2017-05-13	f
353	Jessica Nashiruddin	B	B	2017-10-18	2017-10-18	f
354	Wasis Sinaga, S.E.	B	B	2018-07-02	2018-07-02	f
355	Ihsan Purnawati	A	A	2014-08-30	2020-05-23	f
356	Drs. Rama Hardiansyah	B	B	2022-01-18	2022-01-18	t
357	Nugraha Tampubolon, S.T.	A	A	2016-01-14	2016-01-14	f
358	Ir. Azalea Pertiwi, M.Farm	A	A	2017-07-31	2018-08-31	t
359	Joko Hasanah	A	A	2021-05-11	2021-05-11	f
360	Kala Hastuti	A	A	2021-05-01	2022-08-11	f
361	Puti Juli Nainggolan, S.Sos	B	B	2020-07-13	2020-07-13	t
362	Adika Narpati	A	A	2022-01-08	2024-01-21	t
363	Edi Winarsih, M.M.	A	A	2020-03-24	2022-08-12	t
364	Dr. Hamima Sihombing, S.Sos	A	A	2015-02-12	2015-02-12	f
365	Daliono Maulana	A	A	2014-12-07	2014-12-07	t
366	dr. Zulfa Mustofa	A	A	2016-02-25	2016-02-25	f
367	Farah Situmorang	B	B	2017-08-21	2017-08-21	f
368	Maman Siregar	C	C	2018-03-05	2018-12-20	t
369	Drs. Gina Latupono	A	A	2023-09-18	2023-12-14	f
370	Cornelia Tamba	A	A	2023-08-19	2023-08-19	t
371	Dr. Bakianto Nugroho	B	B	2017-03-11	2019-12-18	t
372	Sutan Wadi Suartini	A	A	2018-02-13	2024-03-04	f
373	dr. Shania Utama	A	A	2014-11-06	2014-11-06	t
374	Titin Pratiwi	A	A	2022-02-28	2022-02-28	t
375	Mala Mangunsong, S.H.	A	A	2023-03-14	2023-03-14	t
376	KH. Jamal Pertiwi	A	A	2024-04-26	2024-04-26	t
377	Puti Ina Purnawati	A	A	2015-11-02	2016-03-02	f
378	Murti Pangestu, S.Psi	A	A	2016-11-24	2023-05-13	f
379	Darmana Hasanah	A	A	2015-02-04	2020-04-02	t
380	Ulva Januar	A	A	2014-09-23	2019-11-05	t
381	Karna Maryati	A	A	2023-04-03	2024-03-07	t
382	Harsanto Putra	A	A	2022-04-20	2022-04-20	t
383	Rachel Maulana	A	A	2023-07-09	2023-12-15	t
384	Hafshah Tarihoran	A	A	2019-05-24	2020-11-29	f
385	Tgk. Melinda Nasyiah, M.Pd	B	B	2018-09-08	2018-09-08	f
386	Tgk. Halima Nurdiyanti	B	B	2022-09-08	2022-09-08	t
387	Puti Haryanti	A	A	2020-03-22	2020-11-09	f
388	Mariadi Kurniawan	A	A	2017-11-05	2017-11-05	f
389	Dt. Ridwan Habibi, S.T.	A	A	2021-05-18	2021-05-18	t
390	Sidiq Wacana	A	A	2023-08-01	2023-12-05	f
391	Bella Handayani	A	A	2016-07-10	2016-07-10	f
392	Raina Hastuti	B	B	2021-09-04	2023-03-21	t
393	Kariman Uyainah	A	A	2018-01-30	2021-06-17	t
394	Najwa Purnawati, M.Ak	B	B	2015-04-26	2015-04-26	t
395	Mila Suryono	A	A	2023-02-27	2023-02-27	t
396	Dalima Mustofa, S.Gz	A	A	2018-12-10	2023-06-14	t
397	Sadina Novitasari	A	A	2020-07-26	2021-05-05	t
398	Ade Damanik	A	A	2022-08-29	2023-04-23	f
399	Maras Ardianto	A	A	2014-07-28	2022-12-27	t
400	Dr. Dwi Hastuti	A	A	2019-06-13	2019-06-13	t
401	Saiful Laksmiwati	A	A	2021-03-13	2023-02-24	f
402	R. Ratna Simbolon, S.H.	B	B	2023-01-12	2023-01-12	t
403	Harjo Mandala	B	B	2017-01-29	2017-11-01	t
404	Shania Wibowo	A	A	2017-11-20	2017-11-20	t
405	Sabri Kusumo	A	A	2022-09-07	2022-09-07	t
406	Hesti Maryadi	B	B	2016-04-04	2021-05-15	f
407	Drs. Martaka Halimah, S.Ked	A	A	2024-04-23	2024-04-23	t
408	R.M. Karya Wahyuni, S.Ked	A	A	2019-08-20	2019-08-20	t
409	Cengkal Mahendra, S.Ked	A	A	2021-05-01	2024-04-09	t
410	Laras Sinaga	B	B	2020-08-02	2020-08-02	t
411	Atmaja Astuti	A	A	2015-08-07	2015-08-07	f
412	Eka Agustina	A	A	2016-07-16	2016-07-16	t
413	Wakiman Sihombing	B	B	2022-11-01	2022-11-17	t
414	Putri Sinaga, S.Pd	A	A	2018-08-20	2018-08-20	t
415	Raditya Thamrin	A	A	2016-08-23	2020-04-10	t
416	Akarsana Mangunsong	A	A	2018-08-24	2018-08-24	t
417	Ibun Hasanah	C	C	2019-10-24	2021-04-03	f
418	R.A. Raina Novitasari, S.Pt	A	A	2019-12-22	2024-05-01	f
419	Marsudi Januar	A	A	2020-06-17	2020-06-17	f
420	Lidya Sihombing	A	A	2023-04-12	2024-03-27	t
421	Citra Gunarto	A	A	2018-12-11	2023-01-27	t
422	Dr. Prayogo Hasanah	A	A	2023-10-21	2023-10-21	f
423	Dewi Handayani	B	B	2023-10-09	2023-10-09	f
424	Kacung Iswahyudi	A	A	2024-06-07	2024-06-07	f
425	Paulin Pudjiastuti	B	B	2016-09-25	2016-09-25	t
426	Saiful Megantara	A	A	2019-07-12	2024-04-06	f
427	Dr. Balangga Sihombing, M.Ak	A	A	2018-10-18	2020-07-31	f
428	Ira Prasetyo	B	B	2019-05-13	2019-05-13	t
429	Malika Samosir	A	A	2016-06-03	2016-06-03	t
430	dr. Ulva Winarsih, M.M.	A	A	2023-08-06	2023-08-06	t
431	Ratna Purnawati	A	A	2017-01-27	2017-01-27	t
432	Pandu Dabukke	A	A	2017-07-18	2021-03-27	t
433	Harjasa Ardianto	B	B	2018-10-05	2018-10-05	t
434	Chelsea Laksita, S.T.	A	A	2015-12-13	2015-12-13	f
435	Dr. Warta Rajata, M.Kom.	A	A	2023-12-28	2023-12-28	f
436	Febi Maulana	A	A	2018-08-01	2024-04-07	t
437	Raisa Pratama	A	A	2023-03-04	2023-04-21	t
438	Nova Pratama	B	B	2015-06-16	2024-03-25	t
439	Nabila Lazuardi	A	A	2024-01-23	2024-01-23	f
440	Gilang Latupono	A	A	2021-10-18	2023-07-05	f
441	Ratih Putra	A	A	2016-03-24	2016-03-24	f
442	Hasim Dongoran, M.Farm	A	A	2019-10-06	2019-10-06	t
443	Widya Utami	A	A	2022-10-25	2024-01-04	f
444	Luis Januar	A	A	2015-06-21	2015-06-21	f
445	Puput Pratama, S.Farm	A	A	2018-08-27	2018-08-27	f
446	drg. Iriana Zulaika, S.IP	B	B	2015-02-22	2015-02-22	f
447	Ir. Laksana Pertiwi, M.Ak	A	A	2016-06-29	2019-07-15	f
448	Laras Pangestu	A	A	2015-07-29	2015-07-29	t
449	Kezia Dongoran	A	A	2018-02-04	2020-05-07	t
450	Icha Farida	A	A	2021-03-05	2021-03-05	t
451	Sabar Hartati	A	A	2021-06-04	2022-10-26	f
452	Gawati Winarno	A	A	2023-01-13	2023-01-13	t
453	Garang Wibisono	A	A	2017-04-22	2017-04-22	f
454	Galuh Suryatmi, M.Pd	A	A	2022-08-16	2022-08-16	t
455	Tgk. Gandewa Usada, S.Gz	A	A	2016-03-21	2016-03-21	f
456	Tgk. Darijan Handayani	B	B	2018-02-10	2018-02-10	f
457	Eva Wastuti	A	A	2018-03-21	2018-03-21	t
458	Mulyanto Palastri	A	A	2020-01-30	2024-03-06	t
459	Sidiq Aryani	A	A	2021-01-24	2021-02-03	f
460	Mulyono Thamrin	A	A	2016-10-07	2019-04-13	t
461	dr. Gadang Anggriawan, S.I.Kom	A	A	2021-03-01	2021-03-01	t
462	Eka Maryati	A	A	2020-05-24	2020-12-19	f
463	Cager Saragih, S.Pd	A	A	2017-05-11	2023-12-05	f
464	R. Marsudi Riyanti	A	A	2021-10-04	2021-10-04	f
465	Cut Hilda Siregar, S.E.	B	B	2022-12-29	2024-01-01	t
466	R. Sakura Melani, S.Psi	B	B	2017-06-11	2023-10-26	f
467	Makuta Manullang	A	A	2016-12-19	2016-12-19	f
468	Lasmanto Permadi	A	A	2017-07-13	2017-07-13	t
469	Fitriani Hassanah	A	A	2024-02-21	2024-05-18	f
470	Dt. Harja Rajata, S.Farm	A	A	2019-07-20	2019-08-03	f
471	Karen Widiastuti	A	A	2018-02-01	2018-02-01	t
472	Silvia Januar	A	A	2015-02-18	2015-02-18	t
473	Wage Andriani	A	A	2020-02-09	2024-05-26	t
474	Tiara Wibisono	B	B	2015-03-19	2015-03-19	t
475	Aris Rahimah	A	A	2017-01-08	2017-01-08	f
476	Violet Ramadan	C	C	2022-10-03	2022-10-03	f
477	Tira Hasanah, S.T.	C	C	2020-09-27	2020-09-27	f
478	Marsito Hastuti	B	B	2019-06-11	2019-06-11	f
479	Anita Hastuti, S.Farm	A	A	2023-02-02	2023-02-02	t
480	Lanjar Permata, S.Farm	B	B	2018-04-18	2022-05-08	f
481	Ir. Makara Sitorus, S.E.I	A	A	2020-03-06	2022-06-14	f
482	Cayadi Mustofa	A	A	2023-05-12	2023-05-12	t
483	Latika Anggriawan	A	A	2023-01-03	2023-01-03	t
484	Niyaga Mandasari	A	A	2019-04-11	2019-04-11	t
485	Dt. Dalimin Mansur	A	A	2020-06-24	2020-12-22	f
486	Sakti Sitorus	B	B	2018-02-02	2018-02-02	f
487	R.M. Wira Thamrin	A	A	2018-02-23	2018-02-23	t
488	Wirda Hakim	A	A	2015-09-21	2021-10-04	t
489	Ratih Haryanti	B	B	2017-03-16	2017-05-21	f
490	Aditya Rahayu	A	A	2017-11-22	2019-03-13	f
491	Dinda Purwanti	A	A	2023-03-20	2023-03-20	f
492	Restu Waskita	A	A	2023-12-26	2023-12-26	t
493	Kezia Handayani	A	A	2015-07-20	2015-07-20	t
494	Sari Wacana	A	A	2016-03-08	2016-03-08	t
495	Cornelia Mulyani, M.Farm	B	B	2019-04-21	2023-07-28	f
496	Mutia Hasanah	A	A	2016-10-20	2022-03-14	t
497	Lutfan Ardianto	A	A	2018-10-23	2021-04-16	t
498	Puti Rachel Pradipta, S.E.I	A	A	2021-03-16	2021-03-16	t
499	Janet Pradana	B	B	2020-12-03	2020-12-03	t
500	Naradi Pangestu, S.Farm	A	A	2023-04-02	2024-06-01	t
501	drg. Hafshah Budiyanto	A	A	2023-10-13	2023-10-21	t
502	Johan Mansur	A	A	2022-07-16	2022-08-03	t
503	Maya Hartati	A	A	2024-06-21	2024-06-25	t
504	Jumadi Riyanti	B	B	2019-11-10	2019-11-10	t
505	Ajiono Kusumo	A	A	2018-11-03	2021-06-08	t
506	H. Wahyu Agustina, M.Pd	B	B	2015-11-24	2017-03-18	t
507	Septi Usada	A	A	2017-01-19	2017-01-19	t
508	Dt. Emong Maryati, S.I.Kom	A	A	2014-08-12	2014-08-12	f
509	Azalea Budiman, S.Kom	B	B	2015-03-12	2016-09-22	t
510	Jati Mayasari	A	A	2020-06-27	2020-06-27	t
511	Cawisono Jailani	A	A	2021-07-12	2022-05-04	t
512	Yulia Prakasa, S.T.	A	A	2017-09-23	2018-06-13	f
513	Abyasa Sihombing	B	B	2021-02-13	2022-11-25	f
514	Septi Pertiwi, S.Gz	B	B	2021-03-06	2023-03-07	f
515	Mahdi Suwarno	A	A	2021-07-28	2022-05-23	t
516	Paiman Winarsih, S.Kom	A	A	2024-01-15	2024-03-11	f
517	Puti Wijaya	A	A	2016-01-27	2016-01-27	t
518	Tasnim Hutasoit	B	B	2018-03-02	2020-01-07	t
519	Juli Mahendra	A	A	2015-04-04	2015-04-04	f
520	Puti Lidya Sihotang, S.Pd	B	B	2015-03-21	2020-03-17	f
521	Kezia Uyainah	A	A	2021-01-03	2021-01-03	t
522	Lili Tampubolon, S.T.	B	B	2014-07-08	2014-07-08	f
523	R.M. Lasmono Saefullah, S.Sos	A	A	2014-08-16	2017-10-23	t
524	Dina Putra	B	B	2015-07-08	2019-11-05	f
525	Vicky Sirait	A	A	2022-07-21	2022-07-21	t
526	Yuliana Wasita	A	A	2018-10-23	2024-05-24	f
527	R.A. Olivia Prakasa	A	A	2023-01-15	2023-01-15	f
528	Limar Marbun	C	C	2021-02-21	2024-02-05	f
529	Jaka Palastri	A	A	2024-01-13	2024-01-20	t
530	Jatmiko Agustina	A	A	2020-10-09	2023-04-04	t
531	Dt. Pangeran Suartini	A	A	2023-09-28	2024-03-05	t
532	Martani Hidayat	A	A	2015-08-20	2023-08-26	t
533	Okta Maulana	A	A	2022-02-07	2023-12-25	t
534	Tami Puspita	A	A	2019-09-03	2019-09-03	t
535	Ina Purnawati	A	A	2014-11-01	2014-11-01	f
536	R. Murti Kuswandari	A	A	2016-05-30	2021-12-02	t
537	Dr. Tedi Sihotang, S.Sos	A	A	2019-06-25	2019-06-25	f
538	Ifa Prasetya	A	A	2019-12-31	2022-07-10	t
539	R.M. Hardi Anggraini, M.Ak	A	A	2018-09-30	2018-09-30	f
540	Saadat Saragih	C	C	2018-01-06	2018-01-06	t
541	Puti Siska Widodo	A	A	2021-09-26	2023-08-19	f
542	Lasmanto Oktaviani, S.Psi	B	B	2021-04-20	2021-04-20	t
543	R. Prakosa Saefullah, M.Farm	B	B	2018-12-28	2021-07-09	f
544	Prabowo Maheswara, S.Gz	B	B	2019-09-17	2024-05-14	t
545	Ir. Rahayu Iswahyudi, S.Psi	A	A	2020-04-29	2024-06-10	t
546	Kacung Nasyidah	A	A	2023-03-26	2024-05-31	f
547	Oni Sihombing	A	A	2022-11-16	2022-11-16	f
548	Raharja Natsir	A	A	2018-01-08	2018-01-08	f
549	Dr. Hamima Widodo, M.TI.	A	A	2019-11-26	2023-03-01	t
550	Ella Usada	B	B	2023-12-07	2024-05-29	f
551	Atma Halim	A	A	2023-05-02	2023-05-02	f
552	Aditya Damanik	A	A	2021-06-10	2021-06-10	t
553	Dewi Kusmawati	B	B	2020-05-13	2020-05-13	f
554	Hartaka Zulaika	B	B	2015-03-05	2015-03-05	t
555	Tantri Maulana	A	A	2017-06-01	2024-06-03	t
556	Dr. Puspa Winarsih	A	A	2015-02-23	2016-04-17	f
557	Tgk. Galak Megantara	A	A	2016-12-15	2016-12-15	f
558	Samiah Wijaya	A	A	2019-10-06	2023-01-08	f
559	T. Dacin Prayoga	A	A	2022-10-27	2022-10-27	f
560	Titin Waluyo	A	A	2023-12-08	2024-03-02	f
561	Cakrawangsa Nababan	A	A	2019-08-28	2024-06-07	t
562	Harsanto Pangestu	A	A	2022-11-28	2023-09-04	f
563	Malika Lailasari	A	A	2023-05-26	2023-05-26	t
564	Darmana Sudiati, S.I.Kom	A	A	2017-02-18	2023-02-14	t
565	Zalindra Usada, M.Farm	A	A	2019-06-14	2022-02-10	f
566	Shakila Budiyanto, S.H.	B	B	2017-05-11	2017-05-11	f
567	Dr. Liman Marpaung	A	A	2015-06-29	2018-02-26	f
568	Gatot Hardiansyah	A	A	2021-08-16	2021-08-16	f
569	Kawaya Kuswoyo, S.IP	A	A	2021-10-14	2021-10-14	f
570	Mahfud Suryono	A	A	2019-12-24	2019-12-24	f
571	Farhunnisa Budiyanto	B	B	2014-07-26	2017-07-16	f
572	Jatmiko Adriansyah	B	B	2023-09-06	2023-09-06	f
573	Hj. Cinthia Nainggolan, S.E.I	A	A	2020-05-06	2020-05-06	f
574	Yunita Simanjuntak	B	B	2015-05-16	2016-01-17	t
575	KH. Rafi Purwanti	A	A	2016-10-11	2016-10-11	f
576	R.A. Wulan Nainggolan, S.Ked	A	A	2021-12-15	2021-12-15	t
577	Raisa Pudjiastuti	A	A	2020-10-12	2023-10-14	t
578	Dr. Faizah Nurdiyanti, M.TI.	A	A	2017-12-05	2019-02-01	t
579	Gandi Jailani	A	A	2024-05-25	2024-05-27	f
580	Paramita Wibowo	A	A	2023-08-05	2024-02-21	t
582	Leo Suryono, S.T.	A	A	2022-05-02	2022-05-02	f
583	Restu Zulkarnain	A	A	2016-07-10	2016-07-10	f
584	drg. Maria Agustina, S.Pt	A	A	2022-04-14	2024-01-30	f
585	Hani Wahyudin	A	A	2021-08-01	2021-08-01	t
586	Warta Prayoga	A	A	2016-01-29	2016-01-29	f
587	Dr. Rini Mustofa, S.E.I	A	A	2016-11-24	2016-11-24	t
588	Yunita Ramadan	A	A	2022-03-10	2023-07-30	f
589	Mutia Siregar	A	A	2019-10-10	2022-10-06	t
590	Dian Rajasa	A	A	2017-10-22	2017-10-22	t
591	R.M. Jatmiko Permata, S.Farm	A	A	2022-06-08	2023-04-27	f
592	Gilang Yulianti	A	A	2020-04-28	2022-05-24	f
593	Puti Salwa Gunarto, S.Gz	A	A	2019-04-07	2019-04-07	f
594	Asmuni Kurniawan	A	A	2017-06-15	2022-12-23	t
595	Puti Julia Laksita	B	B	2018-09-11	2021-10-03	f
596	R.A. Kayla Samosir	A	A	2017-01-20	2020-11-23	f
597	Aurora Wibowo	C	C	2015-05-26	2015-05-26	f
598	Wirda Kuswoyo	A	A	2015-07-31	2017-05-28	t
599	Drs. Bambang Dongoran, S.I.Kom	A	A	2020-11-27	2023-02-25	f
600	Samiah Purnawati	A	A	2022-07-12	2023-08-07	f
601	Cut Sari Suartini, S.Ked	B	B	2017-03-29	2017-11-30	f
602	Febi Tarihoran	A	A	2014-08-13	2015-03-19	t
603	Agnes Agustina	B	B	2023-07-14	2023-08-15	t
604	Silvia Mayasari	B	B	2019-09-04	2019-09-04	t
605	Nova Lailasari, S.T.	A	A	2018-04-26	2018-04-26	t
606	Bala Salahudin	C	C	2015-11-15	2022-02-11	f
607	Dr. Prabu Maryati	A	A	2021-02-12	2021-03-04	f
608	Salman Pratiwi	A	A	2018-06-04	2019-08-29	f
609	Violet Hariyah	A	A	2022-08-14	2022-08-14	f
610	R. Yahya Nababan	A	A	2018-03-03	2018-03-03	t
611	Hj. Michelle Siregar	A	A	2021-02-02	2022-01-02	f
612	Dt. Endra Wasita	A	A	2021-07-15	2024-06-15	t
613	Drs. Ratna Halim, S.Pt	A	A	2019-06-12	2024-06-10	t
614	Heryanto Kuswandari	B	B	2020-02-25	2020-02-25	t
615	Nalar Waluyo	A	A	2024-01-15	2024-04-08	f
616	Sutan Irfan Gunarto	A	A	2020-10-02	2020-10-02	f
617	dr. Kasiyah Simanjuntak	B	B	2016-11-03	2016-11-03	f
618	Tgk. Widya Suwarno, M.Kom.	A	A	2014-08-30	2020-05-15	t
619	Ratih Puspasari, S.Pd	A	A	2017-06-05	2020-12-19	t
620	Rama Budiyanto, M.Pd	A	A	2021-10-06	2022-09-07	f
621	Janet Hassanah	A	A	2014-11-16	2014-11-16	f
622	Jelita Mayasari	A	A	2017-07-19	2017-07-19	t
623	Cut Rina Dongoran	B	B	2016-07-26	2016-07-26	f
624	KH. Eman Yuliarti	A	A	2017-08-30	2021-08-18	f
625	Jarwa Hasanah	B	B	2022-12-17	2022-12-17	f
626	Opan Yolanda	A	A	2016-07-03	2021-09-12	t
627	Humaira Namaga	B	B	2022-08-21	2022-08-21	t
628	Irfan Agustina	A	A	2017-04-02	2017-04-02	f
629	Umar Suryono	A	A	2023-11-14	2023-11-14	f
630	Zulaikha Wibowo	B	B	2021-05-09	2021-05-09	f
631	T. Dimaz Purwanti, S.T.	B	B	2015-07-14	2019-04-18	t
632	Salwa Hakim	A	A	2015-05-16	2019-04-15	f
633	Lulut Prayoga	A	A	2022-02-20	2022-02-20	f
634	Darman Prayoga	A	A	2016-12-16	2017-03-01	f
635	Ajeng Dongoran	A	A	2022-03-05	2023-10-22	f
636	dr. Wulan Salahudin, S.I.Kom	A	A	2016-01-16	2016-01-16	f
637	Cut Ella Usada, S.IP	A	A	2018-03-01	2024-01-08	f
638	Dr. Laila Prastuti, S.Gz	A	A	2019-02-18	2023-06-19	f
639	Indra Simbolon, M.Ak	A	A	2020-05-02	2024-06-12	t
640	dr. Raditya Maulana	B	B	2016-06-19	2016-06-19	f
641	Baktiadi Nababan	A	A	2022-01-12	2023-07-10	t
642	Tiara Prayoga	B	B	2019-09-11	2019-09-11	t
643	Ami Nainggolan	B	B	2019-05-24	2024-01-04	t
644	Rafi Megantara, S.Farm	A	A	2019-07-22	2019-07-22	t
645	Ir. Mala Marbun	A	A	2015-07-26	2015-07-26	t
646	Oskar Samosir, M.Pd	A	A	2016-02-20	2016-02-20	t
647	Intan Hassanah	A	A	2014-07-24	2014-07-24	f
648	Kartika Hutasoit	A	A	2019-08-30	2019-08-30	f
649	Elma Zulkarnain	B	B	2023-12-18	2024-02-09	f
650	Keisha Hidayanto	B	B	2019-07-14	2021-03-18	f
651	Tania Prakasa, S.Sos	A	A	2018-04-26	2021-09-30	t
652	Legawa Santoso	A	A	2015-07-14	2016-06-21	t
653	Ir. Jumadi Halimah, M.Pd	A	A	2017-09-25	2018-12-01	f
654	Kenari Yolanda, S.T.	B	B	2014-09-23	2014-09-23	t
655	R. Bahuwarna Anggraini	B	B	2018-12-08	2020-07-27	t
656	Tgk. Padma Manullang, S.T.	A	A	2019-05-25	2019-05-25	f
657	Luis Megantara	A	A	2019-11-13	2019-11-13	f
658	Tania Nurdiyanti, S.IP	A	A	2016-11-04	2016-11-04	f
659	Ir. Putri Wahyuni	A	A	2021-06-01	2021-06-01	f
660	R.A. Paris Suryono	B	B	2019-07-10	2023-12-15	t
661	Tgk. Asmuni Simanjuntak, M.Farm	A	A	2022-08-09	2023-08-15	f
662	Cornelia Lailasari	B	B	2019-08-17	2023-02-17	t
663	Sutan Erik Firmansyah, M.M.	A	A	2016-01-19	2016-01-19	f
664	Lala Natsir	B	B	2021-11-01	2022-01-07	t
665	R.A. Kiandra Puspasari	A	A	2023-12-11	2023-12-11	f
666	Rendy Siregar	A	A	2018-08-13	2018-08-13	t
667	Lidya Damanik	A	A	2024-01-09	2024-01-09	f
668	Yunita Suryono	A	A	2019-05-14	2021-08-01	t
669	Asirwanda Wulandari	A	A	2015-06-21	2015-06-21	t
670	Dadap Prasasta, S.E.I	A	A	2015-09-11	2015-11-25	f
671	drg. Kuncara Utama	A	A	2016-12-19	2016-12-19	f
672	drg. Mustofa Kurniawan	B	B	2023-07-29	2023-07-29	f
673	Ir. Syahrini Utami	A	A	2015-03-14	2022-10-04	t
674	Vanesa Wibisono	A	A	2016-12-20	2016-12-20	f
675	Ir. Irma Budiman	A	A	2022-09-14	2023-02-26	t
676	drg. Harimurti Hastuti	A	A	2014-11-08	2015-11-21	f
677	Prima Siregar	A	A	2024-01-21	2024-03-07	t
678	Laila Narpati	A	A	2018-12-03	2023-01-12	t
679	Betania Kusmawati	B	B	2021-05-21	2021-09-13	f
680	Prabowo Napitupulu	A	A	2021-11-17	2023-07-13	f
681	Tgk. Rahman Kusumo	A	A	2018-07-03	2018-07-03	f
682	R.A. Zamira Fujiati	B	B	2021-01-07	2021-01-07	f
683	Yessi Saputra	A	A	2014-12-12	2018-09-20	f
684	Elvina Waskita	C	C	2021-11-14	2022-01-16	f
685	Digdaya Utama	A	A	2021-06-09	2021-06-09	f
686	Faizah Prakasa, S.Pt	A	A	2017-09-17	2017-09-17	f
687	Luhung Hidayanto	A	A	2018-10-02	2022-06-23	t
688	Daliman Rajata	A	A	2015-01-11	2018-01-31	f
689	Ganda Hidayat	A	A	2015-10-10	2015-10-10	f
690	Ellis Nuraini	A	A	2021-08-08	2022-02-08	f
691	Anastasia Marbun	A	A	2018-07-20	2018-07-20	t
692	Ir. Ika Salahudin, S.Pt	A	A	2021-03-23	2021-03-23	f
693	Icha Santoso	A	A	2014-10-21	2014-10-21	f
694	Hamzah Zulkarnain	A	A	2015-12-03	2015-12-03	t
695	Ratih Namaga	A	A	2018-07-17	2018-07-17	t
696	Lutfan Wastuti	C	C	2018-10-06	2020-04-21	t
697	Winda Kusumo	B	B	2015-12-20	2015-12-20	t
698	Gamblang Santoso	C	C	2014-11-17	2015-09-04	f
699	Legawa Maryati	B	B	2019-05-14	2019-05-14	t
700	Carub Januar	A	A	2016-07-16	2016-07-16	f
701	Tomi Saragih, M.TI.	A	A	2019-08-07	2021-08-12	f
702	R.A. Dinda Pranowo	A	A	2020-09-21	2020-09-21	t
703	Icha Mayasari	A	A	2015-06-03	2015-06-03	f
704	Gatot Yuliarti, M.Kom.	B	B	2021-09-16	2022-08-10	t
705	R.M. Jefri Suwarno, M.Ak	B	B	2022-09-22	2023-11-12	t
706	Restu Ardianto	A	A	2024-02-11	2024-05-08	f
707	Sutan Himawan Pangestu	C	C	2018-08-30	2023-11-20	t
708	Harsaya Zulkarnain	B	B	2021-06-21	2021-09-30	t
709	Bahuwarna Hutasoit	A	A	2019-10-25	2022-04-22	t
710	Tgk. Gasti Prasetya, S.I.Kom	A	A	2015-02-10	2023-06-22	f
711	Diah Megantara	B	B	2017-09-24	2017-09-24	t
712	R.A. Fitria Mayasari, S.E.	B	B	2017-09-19	2017-09-19	t
713	Salman Nainggolan	A	A	2017-03-29	2018-05-26	t
714	Puti Nurul Pangestu, S.T.	A	A	2015-01-29	2020-11-29	t
715	Cahyono Gunarto	B	B	2019-06-25	2019-06-25	f
716	Ilsa Palastri	A	A	2021-07-03	2021-07-03	f
717	T. Nyana Palastri	A	A	2022-02-25	2022-02-25	f
718	Bagya Sitompul	A	A	2019-10-27	2021-01-25	f
719	Sutan Ikhsan Rahmawati	A	A	2023-02-14	2023-11-29	t
720	Kiandra Winarsih, M.Farm	A	A	2014-10-12	2014-10-12	t
721	Puti Zelda Wahyudin, S.E.I	B	B	2015-08-19	2021-11-25	f
722	Zamira Maheswara	A	A	2019-08-23	2019-08-23	f
723	Eka Zulkarnain	A	A	2019-06-25	2022-02-05	t
724	T. Saiful Prastuti	B	B	2018-05-24	2018-05-24	t
725	Radit Sihombing	A	A	2014-09-30	2014-10-28	t
726	drg. Ibrahim Iswahyudi	A	A	2016-05-05	2016-08-28	f
727	Ir. Cakrabirawa Novitasari	A	A	2014-11-13	2014-11-13	f
728	Tedi Kuswoyo	A	A	2015-03-02	2019-08-31	f
729	Tami Anggriawan	A	A	2016-04-06	2016-04-06	t
730	Banara Mustofa	A	A	2021-06-22	2021-06-22	t
731	Martana Maryati	A	A	2019-07-03	2023-03-05	f
732	Joko Sihombing	A	A	2023-06-11	2023-06-11	f
733	Prakosa Mayasari	A	A	2014-10-18	2014-10-18	f
734	Ana Hastuti	C	C	2024-06-11	2024-06-12	f
735	Ir. Farhunnisa Prakasa, S.Psi	A	A	2022-02-18	2022-02-18	t
736	Lili Susanti	A	A	2024-06-03	2024-06-03	f
737	Adika Yulianti, S.Kom	A	A	2017-03-18	2017-03-18	f
738	Puti Unjani Wibisono	B	B	2020-11-29	2020-11-29	t
739	Fitria Hidayanto, M.Farm	A	A	2022-10-30	2023-03-04	f
740	Uchita Rajasa	A	A	2015-02-15	2015-02-15	t
741	Dt. Mursita Nababan	C	C	2022-01-14	2022-01-14	f
742	Luwes Hartati	A	A	2021-11-28	2023-12-20	t
743	Vicky Sihombing	B	B	2015-03-27	2015-03-27	t
744	KH. Hamzah Wijayanti	A	A	2020-09-11	2020-09-11	f
745	Tania Situmorang	B	B	2016-12-22	2016-12-22	t
746	R. Carla Prayoga	B	B	2015-06-01	2015-06-01	t
747	Danuja Anggriawan, M.M.	A	A	2022-07-02	2023-02-08	f
748	Drs. Salsabila Wahyuni	A	A	2022-05-12	2022-05-12	t
749	H. Artawan Mandasari	A	A	2017-07-22	2023-11-14	f
750	Talia Suryatmi	A	A	2020-12-18	2021-02-07	f
751	Kamaria Pudjiastuti	A	A	2017-05-20	2017-05-20	f
752	Humaira Simbolon, S.E.I	A	A	2020-01-08	2020-01-08	f
753	Garda Pratiwi, S.Kom	B	B	2020-12-30	2020-12-30	f
754	Febi Pertiwi	A	A	2024-03-20	2024-04-22	t
755	R. Laila Marbun	A	A	2018-07-12	2018-09-22	f
756	drg. Chandra Uyainah, S.Pt	A	A	2021-02-09	2023-11-16	f
757	Pardi Situmorang, S.Gz	B	B	2017-11-18	2023-09-04	t
758	Pandu Dabukke	A	A	2022-07-14	2022-07-23	t
759	R.M. Tedi Wastuti	A	A	2021-11-29	2023-04-26	t
760	Mujur Hariyah	A	A	2023-07-23	2023-12-13	t
761	Jinawi Halim	A	A	2016-07-09	2024-01-28	t
762	Muhammad Iswahyudi	A	A	2020-09-14	2020-11-15	f
763	Drs. Zelda Saputra, S.T.	A	A	2020-12-21	2021-04-18	f
764	Citra Nashiruddin	A	A	2022-03-13	2022-03-13	f
765	Rusman Kuswoyo	A	A	2021-09-16	2023-04-30	t
766	R. Qori Mansur	A	A	2017-11-29	2024-05-26	t
767	Daru Thamrin	A	A	2022-12-10	2024-06-17	t
768	Nyoman Jailani	A	A	2024-06-02	2024-06-02	t
769	Dr. Tantri Haryanti, S.Farm	B	B	2018-12-31	2018-12-31	t
770	Clara Pratiwi	A	A	2021-04-06	2021-04-06	t
771	Ir. Galur Wulandari, M.Farm	C	C	2021-02-14	2021-09-26	t
772	Zizi Hidayat	B	B	2021-02-24	2023-12-23	t
773	Eka Saptono	A	A	2018-05-22	2020-09-11	t
774	Endah Suryatmi	A	A	2021-06-25	2021-06-25	t
775	Salwa Yolanda	C	C	2015-05-31	2019-01-09	t
776	Cut Lidya Sinaga, S.IP	A	A	2017-08-02	2017-08-02	t
777	Asman Setiawan, S.Farm	A	A	2016-03-12	2016-03-12	f
778	Tirta Sitorus	A	A	2014-10-26	2014-10-26	f
779	Natalia Mandala	A	A	2022-01-02	2023-04-01	t
780	Maria Prasetya	A	A	2021-01-05	2021-01-05	t
781	R.M. Gantar Safitri	A	A	2018-12-12	2023-04-02	f
782	Luhung Prayoga, S.Gz	A	A	2019-02-26	2019-02-26	f
783	Almira Utama	B	B	2017-10-16	2024-03-22	t
784	Ivan Wibisono, S.IP	A	A	2020-05-31	2022-08-18	t
785	dr. Uli Wahyudin	A	A	2023-10-10	2023-10-10	t
786	Dt. Raden Zulaika	B	B	2018-04-23	2018-04-23	t
787	Rahman Manullang	A	A	2019-09-03	2021-03-27	f
788	Eka Puspasari	A	A	2022-04-06	2023-07-11	f
789	Citra Yuniar	B	B	2018-07-16	2018-07-16	t
790	Maimunah Gunawan	A	A	2023-10-03	2023-10-03	f
791	Dr. Siska Natsir	A	A	2014-12-17	2016-03-03	t
792	Asman Nashiruddin	A	A	2020-07-07	2021-04-06	t
793	Rahmi Waluyo	A	A	2014-07-24	2019-04-27	t
794	Gasti Halimah	A	A	2022-05-18	2023-08-01	f
795	Azalea Mansur	C	C	2021-07-20	2021-07-20	t
796	R.M. Nardi Sihombing, M.Farm	A	A	2024-04-06	2024-04-06	t
797	Nova Hasanah	A	A	2021-02-05	2021-02-05	t
798	R. Zelda Prakasa	A	A	2021-10-31	2021-10-31	f
799	Drs. Chelsea Siregar, S.I.Kom	A	A	2022-05-14	2022-05-14	f
800	Latif Safitri, S.IP	C	C	2016-12-24	2016-12-24	t
801	Chelsea Nasyiah, M.Ak	A	A	2014-09-06	2014-09-06	t
802	Hj. Anastasia Yolanda, S.E.I	A	A	2021-03-21	2021-03-21	t
803	Catur Farida	A	A	2024-05-16	2024-05-16	f
804	Sari Hutasoit	A	A	2017-02-01	2018-11-12	f
805	Yulia Sirait	C	C	2024-03-27	2024-03-27	t
806	KH. Bakiono Rahayu, S.Psi	A	A	2019-03-21	2019-03-21	t
807	Bagiya Dabukke	A	A	2018-02-04	2022-11-30	f
808	Puti Anita Mansur, S.T.	A	A	2015-09-27	2015-09-27	f
809	Olivia Simbolon	B	B	2016-09-12	2016-09-12	t
810	Drs. Widya Pratama	A	A	2016-05-29	2016-05-29	f
811	Hardi Padmasari, M.Farm	A	A	2017-07-21	2017-07-21	t
812	Zaenab Yolanda, S.Farm	A	A	2017-10-10	2018-11-26	t
813	Nugraha Nashiruddin	A	A	2022-12-28	2023-06-25	f
814	KH. Radit Saragih	B	B	2019-11-21	2019-11-21	f
815	Makara Pudjiastuti	C	C	2015-10-02	2020-01-20	f
816	Umi Mandasari, S.H.	A	A	2018-12-09	2018-12-09	f
817	Jayeng Pratama	A	A	2023-12-11	2024-03-19	f
818	Rahmi Hariyah, M.Ak	A	A	2022-08-07	2022-08-07	t
819	Clara Hasanah	B	B	2023-06-21	2023-06-21	t
820	Kusuma Napitupulu	A	A	2021-09-18	2022-11-04	t
821	Gawati Hartati	B	B	2024-03-15	2024-03-15	t
822	Gilda Prayoga	B	B	2018-09-21	2018-09-21	t
823	Rini Nugroho	C	C	2016-03-06	2016-03-06	f
824	Septi Mulyani	A	A	2021-07-07	2021-10-11	t
825	Ir. Sari Hidayat	A	A	2017-01-15	2017-01-15	f
826	Reksa Waluyo	B	B	2016-11-02	2020-06-15	t
827	Fitria Uwais, S.T.	A	A	2017-10-16	2017-10-16	t
828	dr. Sidiq Hasanah, S.Pd	B	B	2023-10-09	2024-01-28	t
829	Kalim Prakasa	A	A	2015-08-21	2015-08-21	t
830	Hendra Napitupulu	B	B	2015-11-08	2015-11-08	t
831	Elvina Dabukke	A	A	2018-05-11	2018-05-11	t
832	Ani Novitasari	B	B	2019-08-24	2023-06-22	t
833	Nabila Tampubolon	A	A	2022-03-15	2022-03-15	f
834	Pangeran Kurniawan	B	B	2016-02-27	2016-02-27	t
835	Tgk. Nadine Rahmawati	A	A	2023-04-20	2023-04-20	f
836	R.A. Malika Situmorang	A	A	2018-01-15	2019-07-05	f
837	Puti Ulya Riyanti	A	A	2017-06-13	2024-03-11	f
838	Violet Anggraini	A	A	2020-06-17	2023-06-28	t
839	Kayla Sitompul	B	B	2022-12-13	2022-12-13	f
840	Hj. Farah Nuraini, S.Farm	B	B	2024-05-10	2024-05-10	f
841	R.A. Betania Maryati	A	A	2023-05-05	2023-05-05	f
842	drg. Bahuraksa Hutapea, S.Kom	A	A	2015-03-03	2019-08-03	f
843	drg. Adiarja Hastuti	A	A	2016-07-02	2016-07-02	f
844	Digdaya Habibi	B	B	2022-09-17	2023-10-19	f
845	Dr. Tomi Wacana	A	A	2014-11-14	2022-01-14	f
846	Drs. Harjasa Saptono	B	B	2023-03-02	2023-05-29	t
847	Keisha Handayani, S.Kom	A	A	2015-12-03	2016-09-02	t
848	Aisyah Napitupulu, M.Kom.	A	A	2020-05-02	2020-08-27	f
849	Puti Zelda Saefullah, M.Farm	A	A	2022-06-15	2023-04-13	f
850	Paulin Usada, M.Farm	A	A	2016-09-17	2016-09-17	f
851	Raisa Firmansyah	B	B	2021-10-06	2023-12-12	t
852	Cakrawangsa Halim	A	A	2017-05-13	2021-09-11	t
853	Drs. Nadine Yulianti	B	B	2022-12-05	2022-12-05	f
854	Daniswara Marbun	A	A	2020-10-14	2020-10-14	f
855	Novi Uyainah	A	A	2015-12-14	2016-06-18	t
856	Rahmat Haryanti	B	B	2017-02-27	2017-02-27	f
857	Gantar Wahyuni	A	A	2017-06-20	2020-06-16	t
858	Dian Pradana	B	B	2016-05-04	2016-05-04	t
859	Rini Firgantoro	A	A	2020-09-23	2021-01-01	f
860	Pangestu Pangestu	B	B	2015-01-28	2015-01-28	f
861	Fathonah Winarno	A	A	2023-07-12	2024-02-28	t
862	Sadina Kuswoyo, S.Pd	A	A	2024-05-12	2024-05-12	t
863	Farhunnisa Prastuti	B	B	2015-03-27	2015-03-27	t
864	Wani Prasasta, S.Pd	A	A	2016-01-14	2020-04-16	f
865	Dr. Eva Budiyanto	A	A	2023-01-22	2024-06-17	f
866	Suci Usada, M.Pd	A	A	2018-11-24	2018-11-24	t
867	Dr. Tiara Aryani, S.Pt	A	A	2019-08-13	2022-02-26	t
868	Dr. Viman Wastuti, M.Kom.	A	A	2023-04-01	2023-07-25	t
869	Laras Wahyudin, S.Kom	A	A	2016-11-06	2023-07-19	f
870	Ratna Januar	A	A	2019-06-20	2021-06-17	t
871	Elvina Permadi	A	A	2017-02-25	2017-04-20	f
872	Virman Adriansyah	A	A	2014-07-21	2014-07-21	t
873	Ina Nurdiyanti, M.Pd	A	A	2023-09-09	2023-12-27	t
874	dr. Ulva Hassanah	A	A	2024-01-13	2024-06-12	t
875	Natalia Widodo	A	A	2017-02-10	2019-06-24	f
876	Kemal Haryanti	B	B	2023-05-21	2023-10-15	f
877	Qori Lazuardi, S.Ked	A	A	2022-06-25	2022-06-25	t
878	Tgk. Himawan Uwais	A	A	2024-03-10	2024-03-10	f
879	Ade Zulaika	A	A	2016-10-18	2022-11-14	t
880	Farah Hardiansyah	A	A	2019-10-03	2019-10-03	f
881	Raden Nuraini	A	A	2022-06-23	2022-06-23	t
882	Ian Rahmawati, S.Sos	A	A	2016-11-21	2016-11-21	t
883	Tami Lazuardi, S.Ked	A	A	2024-02-11	2024-02-24	t
884	R. Shania Pertiwi, M.TI.	A	A	2022-03-24	2022-03-24	f
885	Yani Damanik	A	A	2018-03-22	2023-04-28	t
886	Dina Hastuti	B	B	2015-09-14	2022-10-07	t
887	Usyi Najmudin	A	A	2018-10-15	2019-11-14	t
888	Prabu Hutapea	A	A	2016-10-02	2019-03-17	t
889	Jamil Prasetya, M.TI.	A	A	2023-08-18	2023-08-18	f
890	Dr. Syahrini Putra, M.M.	A	A	2021-07-08	2023-04-03	t
891	Safina Zulkarnain	A	A	2021-04-28	2024-01-07	f
892	dr. Ikhsan Safitri, S.Kom	A	A	2022-10-17	2022-11-03	t
893	Dt. Wadi Manullang, S.Ked	A	A	2014-09-27	2014-09-27	t
894	Hani Napitupulu	A	A	2022-08-20	2022-08-20	f
895	Rini Nugroho, S.Gz	A	A	2014-11-15	2016-03-06	t
896	Kani Napitupulu	A	A	2024-03-21	2024-03-21	f
897	Ulya Jailani	A	A	2016-11-17	2016-11-17	f
898	Vanesa Laksmiwati	A	A	2019-08-22	2019-08-22	f
899	Bajragin Santoso	A	A	2023-08-25	2023-10-06	f
900	Drs. Endah Tarihoran	B	B	2021-11-09	2021-11-09	t
901	Jessica Hidayat, M.Ak	A	A	2023-03-21	2023-06-30	t
902	Hj. Humaira Najmudin, S.Kom	A	A	2019-05-29	2020-05-11	t
903	Tania Damanik	B	B	2021-04-23	2023-04-07	f
904	Bakianto Waluyo	A	A	2020-07-01	2021-02-11	f
905	Zulaikha Rahayu, M.Kom.	A	A	2017-02-24	2017-02-24	t
906	Tgk. Makuta Nurdiyanti, S.Psi	B	B	2018-08-01	2021-09-30	t
907	Dt. Dimas Siregar	A	A	2017-11-15	2017-11-15	f
908	Olivia Rahayu	A	A	2021-04-12	2021-04-12	f
909	Sari Pangestu, S.H.	A	A	2019-04-06	2022-09-25	t
910	Septi Nasyidah	A	A	2014-10-25	2018-03-12	t
911	dr. Usyi Nashiruddin	A	A	2015-06-16	2015-06-16	t
912	Chelsea Habibi	A	A	2014-12-16	2014-12-16	f
913	T. Yoga Mansur	A	A	2022-01-06	2022-01-06	f
914	drg. Usman Rahmawati	A	A	2018-07-24	2018-07-24	t
915	dr. Nurul Susanti, S.E.	A	A	2016-07-19	2016-07-19	t
916	Wage Sinaga	A	A	2023-10-06	2023-10-06	t
917	Yosef Handayani	A	A	2020-08-18	2024-03-23	t
918	Chandra Sudiati	B	B	2020-03-10	2020-03-10	t
919	dr. Kartika Simanjuntak	A	A	2015-09-16	2021-10-10	f
920	R.A. Diah Riyanti	A	A	2014-08-24	2020-06-03	t
921	R.A. Rini Kusmawati, S.Psi	A	A	2020-04-16	2022-05-24	t
922	Vanya Ardianto, S.Sos	A	A	2022-06-30	2022-06-30	f
923	Drs. Cemani Purnawati	B	B	2021-02-22	2023-01-23	t
924	Dirja Prasetya, S.Pd	B	B	2024-06-21	2024-06-22	f
925	R. Tira Uyainah, S.Sos	A	A	2018-01-17	2018-01-17	t
926	Titin Purnawati	A	A	2017-02-15	2024-06-06	t
927	Mila Maheswara	B	B	2015-05-02	2015-05-02	t
928	Salimah Novitasari	A	A	2019-02-18	2023-12-26	t
929	Ratih Saefullah, S.Farm	A	A	2024-06-12	2024-06-20	t
930	Galuh Hastuti, S.I.Kom	A	A	2014-11-05	2021-04-01	t
931	Tgk. Hafshah Adriansyah, M.Kom.	A	A	2017-06-10	2017-06-10	t
932	Sabar Zulaika	A	A	2021-01-08	2021-10-22	t
933	Ir. Aswani Nugroho	A	A	2024-01-13	2024-05-06	t
934	H. Irsad Pranowo, S.Kom	B	B	2015-11-06	2021-01-18	t
935	Ir. Siska Utami	A	A	2019-10-01	2019-10-01	f
936	Lanang Nasyiah	A	A	2014-11-13	2023-04-03	f
937	Karma Hakim	C	C	2023-11-26	2024-06-06	t
938	R. Nabila Prasasta, S.Farm	A	A	2022-04-05	2022-04-05	f
939	Humaira Wibisono	A	A	2023-08-10	2023-08-10	t
940	drg. Nadia Ardianto, M.TI.	A	A	2018-11-08	2021-04-29	f
941	Catur Lestari	A	A	2017-07-15	2022-05-31	f
942	drg. Harsaya Siregar, M.Kom.	A	A	2016-11-03	2024-05-30	f
943	Martaka Utami	A	A	2016-11-28	2016-11-28	f
944	Marsito Damanik	C	C	2021-08-25	2021-08-25	f
945	Belinda Riyanti	A	A	2024-04-19	2024-06-04	t
946	Prabowo Aryani	A	A	2017-01-28	2017-01-28	t
947	Ir. Samiah Santoso, S.I.Kom	A	A	2017-05-11	2024-06-18	f
948	Ayu Palastri	A	A	2015-09-26	2015-09-26	t
949	Galang Napitupulu	A	A	2020-12-19	2020-12-19	f
950	Titin Pangestu	A	A	2014-09-17	2022-01-12	t
951	R.M. Gatot Firmansyah, S.Farm	A	A	2021-01-10	2021-01-10	t
952	Puji Permadi	A	A	2016-01-25	2018-04-07	f
953	Cut Putri Purwanti, S.E.	A	A	2020-08-28	2020-08-28	f
954	Indah Hutasoit	A	A	2018-03-31	2018-03-31	f
955	Anita Haryanti	A	A	2017-02-07	2018-04-14	f
956	Satya Setiawan	A	A	2022-09-04	2022-09-04	f
957	Dt. Jayadi Kusmawati	A	A	2017-01-30	2020-05-19	f
958	Latika Mahendra	C	C	2019-07-25	2019-07-25	t
959	Ir. Opung Thamrin, M.Pd	A	A	2021-07-28	2023-05-01	t
960	Dt. Ozy Hutasoit, S.H.	A	A	2017-10-25	2023-01-12	t
961	Kardi Firgantoro	C	C	2020-05-16	2020-05-16	t
962	Makuta Lazuardi	A	A	2024-06-21	2024-06-26	t
963	H. Cahyo Maryati, M.Farm	A	A	2017-07-02	2017-07-02	t
964	Ilsa Palastri	A	A	2018-03-04	2022-07-10	t
965	Caraka Najmudin	C	C	2023-05-28	2023-07-09	t
966	Marsudi Wacana, S.Ked	A	A	2020-06-24	2020-06-24	f
967	Bakda Hartati, M.M.	A	A	2018-06-30	2018-06-30	f
968	drg. Victoria Puspita, S.Psi	A	A	2021-03-10	2021-03-10	f
969	Nova Saptono, S.Psi	A	A	2020-04-20	2021-03-03	f
970	Halima Permata, S.H.	A	A	2021-10-19	2021-10-19	f
971	dr. Rini Namaga, M.Kom.	B	B	2020-08-08	2021-05-10	t
972	KH. Jagapati Putra	A	A	2016-02-03	2024-04-20	t
973	Elvina Prayoga	A	A	2023-12-06	2023-12-06	t
974	drg. Galar Pangestu, S.Farm	A	A	2023-02-21	2023-11-02	f
975	Sabar Kusumo	A	A	2021-09-02	2023-02-05	t
976	R.A. Ghaliyati Widiastuti, S.E.I	A	A	2024-03-14	2024-03-25	f
977	Drs. Natalia Utama	A	A	2021-09-22	2021-09-22	t
978	dr. Elon Maryadi, S.Pt	B	B	2023-12-29	2023-12-29	t
979	Halima Safitri	A	A	2021-12-30	2023-12-06	f
980	Jamal Gunawan	A	A	2014-12-27	2017-04-12	t
981	R.M. Bakda Hassanah, S.E.I	A	A	2017-02-15	2017-02-15	t
982	Drs. Drajat Pudjiastuti	C	C	2022-07-18	2022-07-18	t
983	Lantar Santoso	A	A	2022-11-15	2024-04-18	f
984	drg. Putri Rahayu	B	B	2021-05-17	2021-05-17	f
985	Raden Padmasari, M.Kom.	C	C	2020-05-27	2022-02-27	f
986	Warsita Utami	A	A	2015-04-06	2021-02-15	t
987	Jagapati Anggraini, S.Pt	A	A	2017-05-17	2023-08-18	f
988	Halima Siregar	A	A	2016-02-19	2016-02-19	f
989	Nrima Januar	A	A	2018-01-03	2020-02-24	t
990	Patricia Suwarno, M.TI.	A	A	2021-12-31	2024-02-20	t
991	Paris Natsir	A	A	2023-03-10	2023-03-10	t
992	Tgk. Nurul Nurdiyanti, S.I.Kom	A	A	2016-07-24	2019-11-08	t
993	R.M. Mustofa Widiastuti	A	A	2022-02-27	2023-09-17	f
994	Unjani Mahendra, S.Pt	A	A	2021-06-21	2022-03-09	t
995	Xanana Natsir	A	A	2016-03-22	2021-01-10	t
996	Endah Irawan	A	A	2016-09-30	2019-07-21	f
997	Bella Prasetyo	A	A	2020-06-14	2020-06-14	f
998	Puti Karen Riyanti	B	B	2023-12-05	2024-04-03	t
999	Cakrawala Oktaviani	A	A	2015-08-20	2017-02-24	t
1000	dr. Atmaja Samosir, M.Kom.	A	A	2021-01-10	2021-04-13	f
\.


--
-- Data for Name: kendaraantable; Type: TABLE DATA; Schema: public; Owner: db_user
--

COPY public.kendaraantable (kendaraanid, namapemilik, tipekendaraan, kelaspajak, tanggalregistrasi, pembayaranterakhir, metodepembayaran) FROM stdin;
1	Ir. Jaga Sudiati	A	A	2014-11-23	2014-11-23	t
2	Clara Tarihoran	A	A	2019-08-12	2019-08-12	f
3	R.A. Kayla Thamrin	A	A	2019-10-09	2019-10-09	t
4	Mila Namaga	B	B	2022-02-12	2022-02-12	t
5	Ir. Harsaya Rahmawati, S.Farm	D	D	2021-06-04	2021-12-04	f
6	Ami Wasita	B	B	2022-06-30	2022-06-30	t
7	Lalita Puspasari	A	A	2019-11-03	2019-11-03	t
8	Zizi Yolanda, S.H.	A	A	2023-12-27	2023-12-27	f
9	Dian Puspasari	C	C	2019-06-16	2019-06-16	t
10	Cut Vera Simanjuntak	F	F	2021-01-28	2021-01-28	f
11	Parman Iswahyudi	A	A	2023-10-03	2024-03-03	f
12	Lala Mayasari	E	E	2020-08-21	2020-08-21	f
13	Galiono Najmudin	A	A	2021-05-14	2021-05-14	t
14	Puti Wulan Laksmiwati, S.Pd	A	A	2019-02-27	2022-07-20	f
15	Gabriella Habibi	B	B	2018-05-08	2019-06-16	f
16	Budi Yolanda	A	A	2018-11-27	2018-11-27	f
17	Gawati Permadi	F	F	2024-05-20	2024-05-20	f
18	Puti Violet Sitompul, S.T.	A	A	2021-10-02	2021-10-02	t
19	Indah Hasanah	A	A	2015-06-27	2015-10-17	t
20	Maida Usada	D	D	2017-03-06	2017-03-06	f
21	Eli Dongoran, M.TI.	A	A	2020-04-03	2020-04-03	f
22	Malik Susanti	B	B	2015-05-02	2019-09-26	f
23	Zulfa Rahimah	A	A	2022-09-28	2022-09-28	f
24	Uchita Wibowo	B	B	2020-11-04	2020-12-06	f
25	dr. Ulya Prasasta, S.Farm	A	A	2020-09-12	2020-09-12	t
26	Rosman Wastuti	B	B	2023-03-04	2024-02-08	f
27	Hendri Kuswoyo	A	A	2020-02-01	2021-03-15	f
28	Panca Rajasa	A	A	2020-07-26	2020-07-26	t
29	Ir. Warji Megantara	A	A	2016-11-16	2017-02-01	t
30	Zahra Pratama	A	A	2019-03-26	2022-12-26	f
31	Dt. Cengkir Halimah, S.I.Kom	A	A	2019-04-14	2019-04-14	f
32	Tgk. Keisha Napitupulu, S.Sos	B	B	2019-10-05	2019-10-05	f
33	Jarwa Hartati	E	E	2023-01-07	2023-09-19	f
34	Yahya Prayoga	A	A	2017-11-14	2017-11-14	f
35	Qori Laksita	A	A	2021-12-29	2022-03-03	f
36	Bakiono Mangunsong, S.Ked	A	A	2016-02-02	2023-11-24	f
37	R.A. Intan Hartati	A	A	2021-08-05	2022-04-19	f
38	Putri Latupono, S.Psi	A	A	2021-09-10	2021-09-10	t
39	Maimunah Natsir	A	A	2017-11-18	2020-05-22	t
40	Karya Hutagalung	A	A	2022-03-02	2022-06-01	t
41	Syahrini Hartati, M.M.	A	A	2017-07-05	2017-09-21	t
42	Amalia Pangestu	A	A	2022-03-26	2024-01-24	t
43	Adika Usada, M.Farm	B	B	2017-01-07	2017-01-07	f
44	Slamet Prabowo	A	A	2022-09-18	2023-01-02	t
45	Puput Wulandari	B	B	2022-02-04	2023-07-07	t
46	Ir. Virman Astuti, S.Psi	E	E	2023-12-23	2024-04-02	f
47	Gabriella Kuswandari	A	A	2018-05-05	2018-05-05	f
48	Lintang Marbun	B	B	2022-03-18	2022-03-18	f
49	Puti Lintang Setiawan, S.Gz	A	A	2023-04-23	2023-09-06	t
50	Balidin Purnawati	B	B	2017-03-20	2019-06-15	f
51	Jessica Hutapea	A	A	2020-11-07	2020-11-07	f
52	Cut Puti Adriansyah	B	B	2014-08-06	2014-08-06	t
53	Asmuni Puspasari	A	A	2022-08-10	2023-12-23	f
54	R.M. Cengkal Widodo, S.Ked	B	B	2018-03-29	2018-03-29	f
55	Diah Kuswandari, S.IP	A	A	2018-04-08	2021-11-30	t
56	Prabawa Maulana	A	A	2023-02-03	2023-07-20	f
57	Aswani Suartini	A	A	2019-05-16	2019-05-16	f
58	Najwa Pratiwi	B	B	2014-12-24	2023-07-20	f
59	Surya Permadi	F	F	2021-09-14	2023-11-05	f
60	Puji Maheswara	A	A	2015-09-24	2015-09-26	t
61	Cut Ade Melani	D	D	2022-02-06	2022-02-06	f
62	Nardi Pratama	B	B	2017-08-22	2017-08-22	t
63	Hani Mustofa, S.Pd	A	A	2020-01-28	2020-11-10	f
64	Drs. Gaiman Januar, S.Psi	A	A	2023-09-28	2023-10-09	t
65	Nilam Firgantoro	A	A	2023-10-06	2024-04-07	t
66	Irma Padmasari	A	A	2016-01-14	2016-06-22	t
67	Putri Santoso, S.Sos	A	A	2023-05-09	2024-03-20	f
68	Eva Oktaviani	A	A	2023-11-02	2023-11-02	f
69	Victoria Lestari	B	B	2016-10-22	2017-04-24	f
70	Mulyono Najmudin	E	E	2017-05-02	2017-05-02	t
71	Paiman Nasyiah	D	D	2019-07-17	2021-05-03	t
72	T. Ajiman Mansur	A	A	2022-10-06	2023-03-01	f
73	Dr. Emil Gunarto, M.TI.	A	A	2015-08-28	2015-08-28	t
74	Anom Andriani, S.I.Kom	C	C	2020-03-29	2021-05-17	t
75	Paulin Hariyah	B	B	2018-06-23	2021-01-10	t
76	Zelaya Prasasta	A	A	2020-12-24	2020-12-24	f
77	Danu Winarno	E	E	2017-05-24	2020-08-27	t
78	Cut Juli Sitompul	A	A	2020-12-14	2021-10-06	t
79	Vanesa Adriansyah, M.Ak	A	A	2015-04-04	2018-07-04	f
80	Perkasa Maryati	F	F	2018-01-06	2022-08-22	f
81	Cemeti Purnawati	E	E	2017-03-14	2022-09-02	f
82	drg. Yosef Mangunsong	A	A	2015-07-11	2015-07-11	f
83	Nardi Maulana	A	A	2020-04-22	2020-04-22	t
84	Dewi Mayasari, M.TI.	A	A	2022-03-11	2022-03-11	t
85	Gasti Rahmawati	A	A	2020-07-30	2020-10-09	f
86	Wasis Haryanti	A	A	2017-04-15	2020-06-06	f
87	Anom Agustina	D	D	2022-03-05	2022-04-19	f
88	Tari Mulyani	A	A	2022-10-13	2022-12-27	t
89	Fitriani Rahayu	B	B	2024-01-07	2024-01-07	f
90	Danang Sirait	A	A	2016-07-13	2016-07-13	t
91	Dipa Wijaya	A	A	2022-02-20	2022-02-20	f
92	Mustofa Yolanda	B	B	2014-10-13	2021-06-21	f
93	Sutan Joko Utama, M.Ak	A	A	2022-06-12	2023-05-21	f
94	Jamalia Prasetya	A	A	2022-06-04	2023-09-13	f
95	Kani Lazuardi, S.E.I	A	A	2023-10-27	2024-05-09	f
96	Betania Wibowo, S.Gz	B	B	2016-07-10	2019-02-25	f
97	Cahyanto Habibi	A	A	2018-11-20	2023-04-11	f
98	Limar Sirait	E	E	2020-09-25	2020-09-25	t
99	Tami Kusumo	A	A	2017-03-04	2017-03-04	f
100	Unggul Irawan	A	A	2023-06-16	2023-06-16	f
101	Irwan Anggraini	A	A	2021-04-13	2021-11-10	t
102	Ian Nababan	A	A	2016-12-21	2018-04-02	f
103	R.M. Karsa Halim	A	A	2014-08-02	2014-08-02	f
104	Ir. Manah Putra	A	A	2020-12-11	2023-01-22	t
105	Adhiarja Zulaika, S.T.	A	A	2017-11-30	2017-11-30	f
106	Cut Yani Riyanti	A	A	2019-10-07	2019-10-07	f
107	Amalia Prasasta	A	A	2018-02-20	2021-12-05	t
108	T. Dadi Ramadan, M.TI.	A	A	2023-06-23	2023-12-14	t
109	Paris Firgantoro	A	A	2015-01-23	2024-01-11	t
110	Prabu Mandala	B	B	2021-07-30	2021-07-30	t
111	R. Carub Astuti	B	B	2018-05-15	2018-05-15	t
112	Dr. Zelaya Sinaga	A	A	2022-11-15	2022-11-15	t
113	Elvina Laksmiwati, S.IP	A	A	2020-08-23	2023-08-24	t
114	Aris Lestari	B	B	2014-11-26	2014-11-26	f
115	Cut Maya Padmasari	A	A	2014-11-19	2014-11-19	f
116	Eva Putra	A	A	2018-01-30	2020-04-16	f
117	Harsana Hariyah	A	A	2016-04-08	2016-04-08	f
118	Kalim Melani, M.TI.	A	A	2015-11-06	2020-12-04	t
119	Uchita Ramadan	B	B	2019-08-27	2019-08-27	t
120	Harjasa Samosir	A	A	2019-05-07	2019-05-07	t
121	Yosef Yolanda, S.E.I	F	F	2022-11-15	2024-02-23	f
122	Raditya Rahmawati	B	B	2022-12-07	2023-04-02	f
123	Radit Tarihoran	A	A	2020-12-23	2020-12-23	f
124	R. Padmi Nurdiyanti, S.I.Kom	A	A	2019-07-16	2019-07-16	t
125	Winda Thamrin	A	A	2020-06-28	2020-06-28	t
126	Balidin Prayoga	B	B	2016-02-24	2023-05-28	t
127	Shakila Melani, M.TI.	A	A	2019-04-11	2021-12-09	t
128	dr. Erik Habibi	B	B	2023-04-10	2023-04-10	f
129	Kezia Irawan	A	A	2023-07-24	2023-07-24	t
130	Dt. Harjasa Fujiati, S.Sos	A	A	2018-03-15	2020-05-15	f
131	Dwi Nainggolan	A	A	2021-09-19	2021-09-19	f
132	Hasim Prayoga	C	C	2022-11-27	2022-11-27	t
133	Makuta Purwanti, S.H.	A	A	2014-07-24	2021-09-30	f
134	Nurul Uwais	B	B	2022-03-31	2022-03-31	f
135	Hadi Firmansyah	A	A	2018-07-08	2022-05-07	f
136	Keisha Handayani	A	A	2020-05-13	2020-05-13	t
137	Dalima Adriansyah	A	A	2019-12-20	2023-06-19	t
138	Taswir Safitri	B	B	2019-02-28	2019-02-28	t
139	Ira Ardianto, S.E.I	A	A	2014-07-21	2014-07-21	t
140	dr. Zizi Mulyani, S.T.	B	B	2017-12-03	2024-03-26	t
141	Halima Susanti, M.M.	A	A	2020-03-30	2020-03-30	t
142	Purwanto Hidayanto	B	B	2017-07-06	2017-07-06	f
143	Bahuwirya Pertiwi	B	B	2018-11-30	2019-03-18	f
144	Jasmin Pranowo	A	A	2016-04-20	2016-04-20	t
145	Rusman Usada	A	A	2020-09-03	2020-12-01	f
146	Shakila Hutapea	A	A	2021-10-31	2023-01-02	t
147	Harja Situmorang	A	A	2022-12-29	2024-03-25	f
148	Salsabila Halim, S.Gz	A	A	2022-11-07	2023-10-26	t
149	Puti Hani Permata, S.Kom	A	A	2022-02-21	2022-02-21	t
150	Hamima Mandasari	A	A	2021-11-29	2022-02-12	f
151	Hj. Rina Wulandari	C	C	2016-03-09	2016-03-09	f
152	Sari Rajasa	A	A	2018-11-07	2022-02-13	f
153	Puti Sadina Rahmawati, S.Gz	C	C	2018-09-12	2018-09-12	t
154	Wadi Latupono	B	B	2016-04-26	2019-03-27	f
155	R. Laila Najmudin	B	B	2022-02-05	2022-02-05	t
156	Heru Purwanti	A	A	2020-12-02	2020-12-02	f
157	Elvin Pangestu	A	A	2017-02-07	2017-02-07	f
158	Tgk. Galiono Handayani, S.T.	B	B	2017-11-08	2017-11-08	t
159	Hj. Cici Suartini, S.E.I	D	D	2018-10-12	2018-10-12	t
160	drg. Salwa Melani, M.TI.	A	A	2018-02-08	2018-02-08	f
161	Farhunnisa Nashiruddin	A	A	2021-05-10	2021-10-12	f
162	H. Embuh Suryatmi	A	A	2018-03-23	2018-03-23	f
163	Karsana Puspita	A	A	2019-08-05	2020-02-09	f
164	Tirta Sitompul	A	A	2018-09-05	2022-02-06	t
165	Tira Aryani	A	A	2016-04-16	2016-04-16	t
166	Putri Sihombing	A	A	2021-01-18	2023-04-06	t
167	Tgk. Amelia Wijayanti	B	B	2022-07-26	2022-07-26	t
168	Dirja Kuswoyo, M.Ak	A	A	2024-02-07	2024-02-07	f
169	Azalea Mandala, S.Gz	A	A	2021-12-05	2021-12-05	f
170	Hana Nugroho, S.Ked	A	A	2016-03-21	2023-03-07	t
171	dr. Zaenab Gunawan	A	A	2016-07-09	2016-07-09	t
172	Icha Anggraini, S.I.Kom	A	A	2018-11-20	2018-11-20	t
173	Ratih Najmudin	A	A	2018-02-10	2018-02-10	t
174	Yunita Novitasari	A	A	2019-12-12	2019-12-12	t
175	Ir. Julia Wibisono	A	A	2020-12-20	2021-02-25	f
176	Eko Astuti	A	A	2016-05-28	2020-04-24	t
177	Dr. Kani Dongoran	C	C	2020-07-08	2021-04-27	t
178	Sutan Jaga Lailasari	A	A	2019-10-02	2022-10-01	t
179	Bancar Prasetya	A	A	2014-09-05	2020-04-04	t
180	Liman Wacana	A	A	2019-01-09	2019-01-09	f
181	Aisyah Pranowo	B	B	2015-10-15	2015-10-15	f
182	Nadia Pranowo	B	B	2022-04-16	2022-04-16	f
183	Puti Lestari	A	A	2019-04-20	2019-04-20	f
184	Kenzie Iswahyudi	E	E	2015-06-05	2015-06-05	f
185	Lala Halimah	A	A	2017-11-30	2017-11-30	t
186	R. Dinda Maulana	B	B	2023-11-16	2024-04-30	f
187	H. Marwata Budiman	C	C	2015-12-25	2023-09-02	f
188	Hasna Safitri, M.Kom.	D	D	2019-04-01	2019-04-01	t
189	Maya Sitompul	A	A	2018-10-29	2023-08-16	f
190	Titi Susanti	A	A	2017-03-05	2022-12-09	f
191	Diana Wijayanti, S.Psi	A	A	2020-08-16	2022-06-10	f
192	Queen Halim	E	E	2019-06-13	2022-03-10	f
193	Reksa Nasyiah	A	A	2023-05-07	2023-12-09	f
194	Ani Wasita	A	A	2021-07-28	2021-07-28	t
195	KH. Hamzah Dabukke	B	B	2014-10-20	2021-11-08	f
196	Jelita Pratiwi	A	A	2020-05-24	2024-03-18	t
197	Syahrini Simbolon	A	A	2024-06-05	2024-06-19	t
198	Tgk. Ira Maulana	A	A	2014-12-07	2018-02-10	t
199	Sari Saragih	A	A	2016-05-15	2016-05-15	f
200	H. Malik Anggraini, S.T.	C	C	2020-05-27	2023-08-02	f
201	Jamal Riyanti	A	A	2015-08-15	2019-12-28	t
202	Intan Wulandari	A	A	2017-06-07	2017-06-07	f
203	Tgk. Gatra Siregar	F	F	2022-06-11	2023-09-16	f
204	Tgk. Jagapati Mandasari, S.Sos	E	E	2015-11-03	2022-08-11	t
205	Humaira Hakim	A	A	2017-11-09	2017-11-09	t
206	Melinda Maulana	A	A	2024-05-16	2024-06-17	t
207	R.A. Sabrina Napitupulu, S.Psi	A	A	2017-04-27	2017-04-27	t
208	Langgeng Permata	E	E	2017-07-05	2017-07-05	f
209	Titin Maheswara	A	A	2014-10-20	2014-10-20	f
210	Hj. Mutia Prayoga, S.Ked	A	A	2014-07-27	2014-07-27	t
211	Najam Kuswoyo	B	B	2016-09-11	2020-04-21	t
212	Halima Putra, S.IP	A	A	2017-07-11	2017-07-11	t
213	Gara Mulyani	B	B	2022-01-29	2023-10-01	t
214	Drs. Bambang Mangunsong, M.M.	C	C	2015-09-06	2022-03-23	f
215	Lamar Hidayanto	F	F	2022-08-01	2022-08-01	t
216	KH. Cawisono Tarihoran, S.T.	A	A	2023-01-12	2023-01-12	t
217	Elma Dabukke	A	A	2017-09-04	2017-09-04	f
218	Raina Tamba	A	A	2016-09-17	2016-09-17	t
219	Dewi Wahyuni	A	A	2024-02-09	2024-06-11	t
220	Ella Wasita	A	A	2021-05-22	2022-03-29	f
221	Kasim Tarihoran, M.TI.	A	A	2024-03-30	2024-03-30	t
222	Adika Januar	B	B	2017-03-07	2018-05-21	f
223	Puput Purwanti	A	A	2022-12-14	2022-12-14	f
224	dr. Edward Situmorang, S.Ked	F	F	2022-05-13	2022-05-13	t
225	Zulaikha Dongoran	A	A	2016-01-26	2016-01-26	t
226	T. Garda Susanti	A	A	2019-07-12	2019-07-12	f
227	Simon Susanti	A	A	2019-03-28	2019-03-28	f
228	Dr. Latika Widodo, S.Pd	F	F	2020-08-22	2020-08-22	t
229	Ina Mandala	A	A	2018-06-25	2021-10-11	t
230	KH. Tirta Lailasari	B	B	2018-12-16	2019-01-11	t
231	Tgk. Halima Hassanah, S.Farm	C	C	2017-12-14	2017-12-14	t
232	Silvia Kusumo	A	A	2021-03-13	2021-03-13	t
233	Icha Rahimah	B	B	2017-12-21	2020-06-14	f
234	Tgk. Puspa Yolanda, S.H.	B	B	2022-03-27	2022-03-27	t
235	Tami Hartati	A	A	2022-07-07	2024-02-09	t
236	Kala Firmansyah	A	A	2014-12-23	2014-12-23	t
237	Malika Nababan	A	A	2014-07-31	2016-09-29	t
238	Bakianto Halim	A	A	2023-01-01	2024-03-18	f
239	Dr. Almira Habibi, S.Sos	A	A	2015-06-13	2022-03-09	f
240	drg. Tasnim Hakim, S.Farm	A	A	2018-06-09	2022-04-08	t
241	Wawan Hasanah	C	C	2023-01-03	2023-08-04	t
242	Maria Sirait	B	B	2021-05-03	2021-05-03	t
243	Garang Pradipta	C	C	2019-03-28	2019-03-28	f
244	Latika Tampubolon, M.Ak	B	B	2020-11-11	2020-11-11	f
245	Hani Haryanti, S.E.I	A	A	2019-10-18	2022-08-04	t
246	Gilda Novitasari, S.IP	F	F	2023-08-12	2023-10-03	t
247	Eluh Sudiati	B	B	2018-07-11	2018-08-10	f
248	Gada Laksita	F	F	2014-08-09	2023-12-01	f
249	Panca Gunarto	A	A	2017-07-15	2021-05-19	t
250	Dina Anggraini	F	F	2017-12-23	2017-12-23	f
251	R.A. Salimah Zulkarnain, S.I.Kom	B	B	2020-05-14	2020-05-14	f
252	Panca Usamah	B	B	2016-02-12	2018-01-11	t
253	Estiawan Mulyani	E	E	2017-06-04	2017-06-04	t
254	Kawaya Dongoran	A	A	2016-01-18	2023-10-16	f
255	Tami Mardhiyah	A	A	2022-02-25	2023-05-21	f
256	Oliva Sudiati	B	B	2022-01-16	2022-01-16	t
257	Ir. Yosef Novitasari, M.M.	B	B	2018-10-02	2022-06-24	t
258	Adiarja Ardianto	A	A	2022-01-26	2022-01-26	t
259	Yoga Halimah, S.IP	B	B	2015-08-16	2015-08-16	t
260	Atma Suryatmi, M.Pd	A	A	2020-04-10	2023-11-06	t
261	Yahya Handayani	A	A	2020-08-14	2021-04-11	t
262	Iriana Nasyiah	B	B	2016-09-09	2023-01-19	t
263	Galar Suryono	B	B	2015-05-29	2015-05-29	f
264	Kemba Suartini, M.Ak	B	B	2015-08-06	2023-09-24	t
265	Yulia Mandala	A	A	2022-11-09	2023-04-05	f
266	Wage Novitasari	D	D	2020-09-22	2020-09-22	f
267	Cinta Prabowo	A	A	2023-09-06	2024-01-12	f
268	Harsana Fujiati	A	A	2017-03-22	2017-03-22	t
269	Karimah Waluyo	A	A	2015-10-06	2023-10-15	f
270	Yuni Utami	A	A	2020-10-31	2020-10-31	t
271	Lutfan Salahudin, S.Ked	A	A	2023-02-19	2024-06-16	t
272	Wulan Yulianti	A	A	2021-08-30	2021-08-30	f
273	Alika Tampubolon, S.Gz	F	F	2019-03-27	2020-06-21	t
274	Among Napitupulu	A	A	2020-06-26	2020-06-26	f
275	Belinda Ramadan	A	A	2023-08-23	2023-08-23	t
276	Eman Wahyudin	A	A	2022-04-05	2022-04-05	f
277	KH. Jayeng Wacana, M.Kom.	A	A	2022-05-25	2022-05-25	f
278	Tgk. Lintang Hidayat	B	B	2016-03-10	2020-11-06	f
279	Siska Pudjiastuti	D	D	2023-04-09	2023-04-09	f
280	Ina Santoso	B	B	2018-03-20	2018-06-05	f
281	Tantri Ramadan	A	A	2020-06-28	2020-06-28	t
282	Kemba Firgantoro	A	A	2015-01-20	2015-01-20	f
283	Drs. Darimin Hardiansyah	C	C	2022-12-26	2023-02-14	t
284	Jelita Hutasoit	A	A	2022-06-01	2023-10-23	f
285	Wirda Saefullah, M.Pd	A	A	2019-07-28	2020-06-28	t
286	Azalea Sihombing	B	B	2019-12-05	2022-08-09	t
287	Argono Manullang	A	A	2022-08-22	2023-04-25	t
288	Nasim Yuliarti	A	A	2015-03-31	2015-03-31	t
289	Anita Oktaviani	A	A	2018-03-07	2020-05-17	t
290	Titi Budiyanto	D	D	2021-03-14	2021-03-14	f
291	Karimah Nasyiah	A	A	2017-06-09	2020-11-14	f
292	Anita Agustina, S.Psi	A	A	2015-06-17	2020-01-20	f
293	Mujur Laksmiwati, S.Kom	B	B	2020-06-06	2020-06-06	t
294	Cut Rahmi Saputra	A	A	2020-11-03	2020-11-03	t
295	Samiah Putra	D	D	2020-02-10	2020-02-10	t
296	drg. Pia Siregar	E	E	2016-08-22	2016-08-22	f
297	Gina Farida	B	B	2016-08-31	2021-12-23	f
298	Tgk. Vicky Wasita	B	B	2020-02-22	2020-02-22	t
299	Chandra Zulaika	A	A	2018-04-28	2019-02-15	f
300	Gamblang Simanjuntak	A	A	2021-07-09	2021-07-09	t
301	Ir. Jagapati Sirait	A	A	2022-10-25	2023-03-28	t
302	Lutfan Sinaga	B	B	2018-03-03	2020-08-11	t
303	Bahuwirya Wulandari	A	A	2022-10-26	2022-10-26	t
304	Prima Kusmawati, S.Pd	A	A	2020-08-06	2020-08-06	t
305	drg. Candrakanta Halim, M.Kom.	F	F	2018-01-26	2018-01-26	f
306	Nugraha Rajasa	A	A	2018-12-15	2021-10-25	t
307	Septi Lailasari	A	A	2017-12-12	2021-04-19	f
308	Dt. Hendri Purwanti, M.Farm	C	C	2018-01-12	2018-01-12	f
309	Najwa Purnawati	A	A	2017-12-12	2018-10-01	f
310	Kezia Hutagalung	A	A	2015-10-29	2015-10-29	t
311	Ir. Violet Nainggolan	A	A	2018-06-14	2024-01-22	f
312	Opung Pangestu, S.Ked	B	B	2018-05-05	2018-05-05	f
313	Gasti Pratama, S.Farm	A	A	2017-06-01	2022-09-29	t
314	Cut Febi Januar	C	C	2024-01-06	2024-01-06	f
315	Eva Saragih	A	A	2015-12-23	2020-12-12	t
316	Drs. Irma Hastuti, S.Kom	A	A	2014-07-17	2019-06-21	f
317	Wardi Mandasari	B	B	2015-08-25	2015-08-25	f
318	Paris Mardhiyah, S.E.I	A	A	2019-01-23	2019-01-23	t
319	Ir. Mahesa Waskita, S.Gz	A	A	2019-10-29	2019-10-29	t
320	Sutan Johan Mustofa, S.Pt	A	A	2024-04-13	2024-05-03	t
321	Hj. Zelaya Wulandari	A	A	2019-11-26	2019-11-26	t
322	Vero Rahayu	A	A	2020-08-13	2020-08-13	f
323	Parman Kuswoyo, M.TI.	A	A	2021-04-09	2021-04-09	t
324	Zamira Hartati	A	A	2023-11-20	2023-11-20	f
325	Drs. Amelia Maheswara	A	A	2017-09-01	2023-02-08	f
326	Prakosa Hasanah	A	A	2014-10-14	2014-10-14	t
327	Puti Qori Megantara, S.Sos	A	A	2014-08-13	2014-08-13	f
328	Koko Simbolon	A	A	2014-08-04	2014-08-04	f
329	R. Hilda Waskita	A	A	2022-05-29	2022-05-29	f
330	KH. Saiful Prastuti	A	A	2021-02-12	2021-02-12	f
331	Rosman Samosir	A	A	2016-04-29	2016-04-29	t
332	Langgeng Prayoga, M.TI.	A	A	2018-01-26	2022-06-07	f
333	Puji Safitri	A	A	2022-11-05	2022-11-05	t
334	Oni Astuti	A	A	2022-06-07	2022-06-07	t
335	Ifa Nasyiah	C	C	2016-05-16	2022-04-30	t
336	Drs. Bagya Sitompul, S.I.Kom	A	A	2018-05-25	2021-04-06	f
337	dr. Kala Yuliarti	A	A	2020-10-29	2020-10-29	t
338	Sutan Banawa Agustina, M.Ak	B	B	2016-08-13	2016-08-13	t
339	Embuh Wahyudin	A	A	2016-12-28	2019-06-13	t
340	Wadi Prasetyo, S.Sos	A	A	2021-05-31	2024-03-05	f
341	Queen Aryani	C	C	2022-10-09	2022-10-09	f
342	R. Umi Hakim	E	E	2018-11-10	2019-10-25	f
343	Taufan Dabukke	C	C	2018-08-04	2020-02-09	t
344	Tasnim Prabowo	A	A	2020-09-08	2023-10-16	f
345	Salwa Permadi	D	D	2015-12-22	2015-12-22	f
346	Dr. Rahayu Budiman	A	A	2014-10-03	2014-10-03	f
347	Lili Yuniar, S.Pt	B	B	2017-08-04	2020-05-29	t
348	Jasmani Mustofa, M.Pd	B	B	2016-05-24	2023-10-30	f
349	Ana Hartati	C	C	2016-03-26	2018-04-05	t
350	Tari Dongoran	A	A	2019-02-01	2019-02-01	f
351	Anom Samosir	B	B	2022-09-12	2023-12-21	t
352	Hamima Widodo, S.Ked	B	B	2024-05-15	2024-05-24	f
353	Unjani Anggriawan	B	B	2021-04-28	2023-07-02	t
354	Caraka Permadi	A	A	2016-05-27	2022-11-23	t
355	Ami Yuniar	E	E	2017-07-23	2017-07-23	t
356	Virman Situmorang, M.Pd	A	A	2017-10-20	2017-10-20	t
357	Umi Damanik	A	A	2019-03-09	2021-05-13	f
358	Hj. Yunita Pangestu, S.T.	A	A	2018-05-31	2018-05-31	f
359	Okta Wacana, M.Pd	E	E	2021-09-10	2021-09-10	f
360	Ghaliyati Wahyudin, S.Sos	B	B	2016-03-05	2016-03-05	f
361	Ibrahim Haryanti	A	A	2016-08-23	2021-07-14	t
362	KH. Saka Hardiansyah, S.T.	A	A	2020-10-26	2020-10-26	t
363	Rahmi Natsir	B	B	2022-03-19	2022-03-19	f
364	Kalim Maulana, S.T.	B	B	2017-12-28	2019-03-13	t
365	Taufan Utami	A	A	2017-02-15	2017-02-15	t
366	Zelda Kuswandari	A	A	2023-07-08	2023-07-15	t
367	Banara Prasetya	A	A	2017-05-13	2017-05-13	t
368	Talia Hutagalung	A	A	2018-03-10	2018-03-10	t
369	Cinta Wasita	A	A	2021-03-25	2024-01-01	f
370	Drs. Karimah Hutasoit	A	A	2018-10-16	2018-10-16	t
371	Radit Kuswandari	A	A	2017-12-14	2019-03-31	t
372	Diana Tarihoran	A	A	2022-09-08	2022-09-08	f
373	R.A. Ina Narpati	B	B	2024-03-31	2024-05-26	f
374	Wulan Lailasari	A	A	2016-11-03	2016-11-03	f
375	Budi Saputra	A	A	2017-11-06	2017-11-06	t
376	Dimas Haryanti	A	A	2023-10-20	2024-04-26	f
377	Nova Salahudin	B	B	2016-03-16	2016-03-16	t
378	Yusuf Firgantoro	A	A	2020-08-23	2021-08-15	f
379	Rendy Gunawan	F	F	2019-08-03	2019-08-03	f
380	Aswani Purnawati	A	A	2015-04-25	2020-08-18	f
381	Muhammad Winarno	A	A	2015-10-24	2015-10-24	t
382	Rahmi Hasanah	C	C	2016-06-04	2016-06-04	t
383	Ilsa Namaga	A	A	2018-06-25	2021-11-07	t
384	Ibun Budiyanto	A	A	2021-03-24	2021-03-24	f
385	dr. Septi Lestari, S.Sos	B	B	2022-09-07	2022-09-07	f
386	Cayadi Dongoran, S.Farm	C	C	2015-06-04	2015-06-04	f
387	dr. Jumadi Manullang, M.Farm	A	A	2015-08-31	2016-11-12	f
388	Natalia Suwarno	A	A	2020-02-26	2020-02-26	t
389	Cemplunk Hutapea	A	A	2018-02-09	2019-02-10	t
390	Sutan Damu Puspasari	B	B	2021-12-24	2024-03-17	f
391	Kadir Haryanti	B	B	2024-04-22	2024-05-16	f
392	R. Budi Yuniar, S.H.	B	B	2021-07-10	2021-12-25	t
393	Jail Anggriawan	A	A	2021-11-27	2021-11-27	f
394	Tgk. Asmianto Wahyuni, S.E.	A	A	2021-06-03	2021-06-03	f
395	Kala Wibowo	A	A	2018-05-09	2018-05-09	f
396	Lasmono Tampubolon	C	C	2024-04-10	2024-06-12	f
397	Himawan Halim	B	B	2022-11-12	2023-07-30	t
398	Olivia Utama	A	A	2020-04-29	2021-11-06	t
399	Mahesa Andriani	A	A	2022-03-07	2022-03-07	t
400	Ir. Lintang Waskita	A	A	2019-12-30	2019-12-30	t
401	R.M. Maryanto Saptono, S.Kom	A	A	2022-10-08	2023-06-18	t
402	Baktiono Astuti	A	A	2020-03-17	2020-10-30	f
403	Karta Hutagalung	C	C	2014-12-01	2023-02-19	t
404	Salsabila Wastuti	A	A	2022-12-18	2022-12-18	f
405	Sabrina Farida	A	A	2018-01-16	2022-07-19	f
406	Kalim Winarno, M.Farm	C	C	2021-03-01	2023-06-10	f
407	Gina Nababan	A	A	2018-06-19	2022-05-02	f
408	Damu Nugroho	B	B	2019-07-16	2019-07-16	f
409	Ade Purwanti	A	A	2020-09-02	2022-10-13	f
410	Aditya Tamba	B	B	2022-06-14	2022-06-14	f
411	Sutan Mahmud Wahyuni	A	A	2019-02-14	2023-01-29	f
412	Cut Tantri Rajasa, S.IP	A	A	2015-09-20	2021-05-16	t
413	Natalia Suartini	F	F	2019-12-26	2024-04-14	f
414	Tgk. Zaenab Maryadi, M.Farm	A	A	2019-04-19	2020-10-24	t
415	Danang Hartati	B	B	2018-02-12	2019-08-15	f
416	Putri Sihombing, S.Sos	B	B	2021-06-23	2022-06-27	t
417	Mulyono Ramadan, S.H.	B	B	2022-07-01	2022-07-01	t
418	Aditya Lazuardi	A	A	2016-08-01	2024-03-10	f
419	Vera Mustofa	A	A	2022-06-14	2022-06-14	t
420	Mila Zulaika, S.H.	C	C	2017-05-09	2017-05-09	t
421	R.M. Emil Melani, M.Farm	E	E	2017-07-20	2020-08-11	t
422	Syahrini Dabukke	F	F	2015-12-29	2015-12-29	f
423	Hilda Lestari	A	A	2019-06-26	2022-01-09	f
424	Virman Tampubolon	B	B	2016-10-31	2020-01-13	t
425	Lidya Tampubolon	B	B	2020-08-26	2024-05-13	t
426	Kamila Manullang	A	A	2015-04-22	2021-12-18	f
427	dr. Warsa Mulyani	B	B	2022-10-12	2023-05-07	t
428	R. Dirja Hutagalung, S.Gz	A	A	2021-09-25	2021-09-25	t
429	Upik Farida	B	B	2016-06-04	2016-06-04	f
430	Vino Latupono	F	F	2023-12-22	2024-04-13	t
431	Cut Talia Prayoga	A	A	2014-11-18	2021-03-18	t
432	Tari Usada, S.IP	A	A	2018-11-14	2018-11-14	t
433	Tgk. Bahuwarna Mansur, S.Pd	D	D	2018-06-18	2018-06-18	t
434	Indra Prasetyo	A	A	2024-06-22	2024-06-26	f
435	Harjaya Usada	A	A	2019-10-08	2019-10-08	f
436	Hilda Megantara	A	A	2016-07-23	2017-01-08	t
437	Eka Siregar	B	B	2016-06-24	2017-10-10	f
438	Keisha Dabukke	A	A	2023-12-17	2023-12-17	t
439	Ir. Yuni Sinaga, S.T.	F	F	2023-09-30	2023-09-30	t
440	Ajimin Padmasari	A	A	2014-12-11	2016-08-27	t
441	Tgk. Irma Prasetyo, M.Ak	B	B	2018-09-20	2018-10-06	f
442	Dr. Puji Rahmawati	D	D	2014-10-10	2015-02-06	f
443	Zalindra Anggraini	B	B	2018-04-21	2018-10-14	t
444	Talia Hidayat, S.Pt	E	E	2016-08-14	2016-08-14	f
445	Ibrani Sihombing	A	A	2022-04-13	2022-04-13	f
446	Bahuwirya Putra	B	B	2019-03-17	2019-05-09	f
447	Amelia Suryatmi, M.Kom.	A	A	2019-05-28	2021-04-22	f
448	Tgk. Prasetyo Zulaika	A	A	2023-01-12	2023-05-27	f
449	Alika Putra	A	A	2022-10-12	2023-11-16	f
450	Intan Yuniar	A	A	2020-03-31	2020-03-31	f
451	Siti Manullang	A	A	2023-01-29	2023-06-28	t
452	Dr. Bella Nababan	A	A	2022-06-07	2022-06-07	t
453	Dt. Opan Januar, S.E.I	A	A	2015-06-09	2015-06-09	t
454	Syahrini Widiastuti	A	A	2019-11-28	2019-11-28	t
455	Kezia Nashiruddin	D	D	2015-08-18	2023-12-04	t
456	Zalindra Palastri, S.H.	A	A	2016-10-31	2022-01-29	f
457	Tgk. Anastasia Winarno	A	A	2021-04-03	2022-04-07	t
458	Hani Rahayu	A	A	2020-11-04	2020-11-04	f
459	Galiono Yuliarti	C	C	2023-08-26	2023-08-26	t
460	Anggabaya Mustofa, S.E.	A	A	2021-05-24	2021-05-24	t
461	Hj. Suci Pratama	A	A	2014-12-18	2014-12-18	t
462	Queen Iswahyudi	A	A	2022-12-30	2022-12-30	f
463	Rina Hariyah, S.Gz	C	C	2019-07-10	2022-07-21	f
464	Olga Hariyah	C	C	2020-08-09	2022-05-19	t
465	Victoria Aryani	A	A	2017-11-26	2017-12-22	f
466	Ghani Pradipta	B	B	2017-09-29	2023-10-17	f
467	Ir. Clara Wijayanti, S.IP	A	A	2023-04-16	2023-04-16	t
468	drg. Jasmin Prakasa, S.I.Kom	A	A	2018-04-23	2018-04-23	t
469	Farhunnisa Riyanti	A	A	2021-06-13	2021-06-13	t
470	Gabriella Pertiwi, S.Pt	A	A	2015-08-21	2016-01-02	f
471	Putri Dabukke	A	A	2023-08-10	2023-08-10	t
472	Elvina Hartati	A	A	2018-03-21	2020-02-17	t
473	Vanya Damanik, M.Kom.	A	A	2016-06-30	2016-06-30	f
474	Violet Marbun, S.Sos	B	B	2020-02-24	2022-12-05	f
475	Ira Haryanto	A	A	2020-04-24	2020-05-20	t
476	Najwa Thamrin	B	B	2017-07-01	2022-10-29	f
477	Puspa Permata	A	A	2021-11-12	2024-01-12	t
478	Tgk. Adika Puspita	A	A	2023-11-22	2023-11-22	f
479	H. Kadir Irawan, M.Pd	A	A	2014-10-17	2014-10-17	f
480	Harimurti Rajasa	B	B	2018-07-27	2018-07-27	f
481	R. Waluyo Gunarto, S.Gz	B	B	2021-03-29	2022-12-04	t
482	Wulan Sirait, M.Ak	A	A	2022-09-12	2022-09-12	f
483	Gabriella Haryanti	A	A	2021-09-14	2024-04-21	f
484	Tgk. Akarsana Nashiruddin	A	A	2017-11-11	2019-12-25	f
485	Zizi Firgantoro	B	B	2016-05-13	2021-11-22	t
486	Jaga Nuraini	A	A	2018-05-18	2018-05-18	t
487	Puji Aryani	C	C	2021-03-10	2024-01-11	t
488	dr. Prayitna Fujiati, S.E.I	A	A	2021-10-30	2021-10-30	t
489	Oskar Namaga	A	A	2016-11-27	2016-11-27	t
490	T. Balapati Pertiwi	A	A	2015-08-19	2015-08-19	t
491	Ade Andriani	B	B	2021-12-06	2022-08-11	f
492	Kania Manullang	A	A	2017-06-20	2020-07-14	t
493	Drs. Mahesa Wastuti	B	B	2016-06-14	2018-08-21	t
494	Dr. Balijan Budiman, S.I.Kom	A	A	2022-04-30	2022-04-30	f
495	Hana Utami	A	A	2016-03-08	2016-03-08	t
496	Umi Januar	A	A	2021-06-01	2021-06-01	f
497	Diana Santoso	A	A	2023-06-03	2023-06-03	t
498	Cici Yolanda	A	A	2024-03-25	2024-06-04	f
499	H. Prayitna Damanik	A	A	2020-09-17	2023-08-30	t
500	Ifa Prayoga	A	A	2024-06-20	2024-06-22	t
501	Ida Lazuardi, S.I.Kom	A	A	2019-10-01	2019-10-01	f
502	Drs. Raden Hutasoit, S.Ked	C	C	2015-05-22	2021-12-24	t
503	Bahuwirya Namaga	A	A	2018-05-21	2018-05-21	t
504	Cakrawala Wibisono	A	A	2015-12-29	2021-09-21	t
505	dr. Luis Wijayanti, S.Psi	A	A	2019-04-01	2019-04-01	t
506	Joko Sihotang, S.Psi	E	E	2018-11-15	2019-09-18	t
507	Tantri Wacana	A	A	2021-05-04	2021-06-25	f
508	dr. Diana Puspasari	B	B	2015-05-28	2015-05-28	f
509	Dalima Simbolon, S.Pt	B	B	2022-04-26	2022-04-26	f
510	Tina Ramadan	A	A	2020-12-27	2022-08-25	t
511	Ismail Suryono	A	A	2015-03-12	2015-07-19	f
512	KH. Gada Lazuardi, S.Kom	B	B	2021-09-10	2024-01-04	f
513	Gamblang Irawan, S.I.Kom	D	D	2018-01-29	2018-01-29	t
514	Pangeran Simanjuntak	E	E	2020-12-04	2021-06-08	f
515	Karma Wibisono	A	A	2019-02-23	2020-08-24	f
516	Tgk. Lidya Rahimah	E	E	2014-07-01	2014-09-03	t
517	Mariadi Maheswara	D	D	2022-07-18	2023-06-01	f
518	Tgk. Daru Santoso	A	A	2017-05-09	2017-12-01	t
519	Elma Lestari	A	A	2019-04-10	2022-04-13	t
520	Drs. Vanesa Rahmawati	B	B	2024-06-20	2024-06-22	t
521	Raden Januar	A	A	2018-07-24	2018-07-24	t
522	R. Jaya Wibisono	D	D	2019-12-01	2019-12-01	f
523	Salsabila Saptono, S.I.Kom	B	B	2020-01-06	2020-04-02	f
524	Yunita Prabowo	C	C	2015-06-01	2015-06-01	f
525	Daniswara Prasasta	D	D	2022-04-17	2022-04-17	t
526	drg. Satya Puspasari	A	A	2015-05-15	2015-05-15	t
527	Eva Widodo, S.E.	B	B	2016-05-25	2016-05-25	t
528	Ifa Wasita, M.Farm	F	F	2016-08-07	2022-03-03	t
529	Tgk. Latif Prayoga	A	A	2017-09-07	2022-08-16	t
530	Zulaikha Hakim	C	C	2022-01-11	2023-01-22	t
531	Edi Utama	A	A	2015-05-09	2015-05-09	f
532	Gabriella Gunawan	A	A	2015-11-05	2015-11-05	t
533	Dr. Maman Napitupulu, S.Pd	B	B	2020-02-14	2023-09-01	f
534	Wisnu Anggraini	A	A	2021-06-26	2021-06-26	f
535	Vivi Sitompul	A	A	2015-11-18	2015-11-18	t
536	Umi Sudiati	A	A	2019-12-20	2023-10-19	f
537	Laksana Haryanti	A	A	2023-11-02	2024-01-27	t
538	Kiandra Sudiati	A	A	2020-12-02	2020-12-02	t
539	Dr. Nugraha Prasetyo, S.Farm	B	B	2021-09-21	2021-09-21	f
540	Tgk. Yulia Samosir	F	F	2021-08-15	2023-09-11	t
541	Intan Hutasoit	C	C	2014-11-18	2014-11-18	t
542	Malika Damanik, S.Kom	A	A	2021-02-06	2022-02-09	t
543	H. Jayadi Sitorus	B	B	2020-10-07	2020-10-07	t
544	Ozy Rajata	A	A	2019-12-21	2023-01-07	f
545	Leo Najmudin, S.E.I	A	A	2018-03-16	2018-03-16	f
546	Simon Ardianto	A	A	2023-03-27	2023-03-27	t
547	Akarsana Haryanti	A	A	2022-10-19	2023-04-22	f
548	Tgk. Jarwi Wastuti, S.I.Kom	A	A	2018-03-31	2018-10-19	f
549	Kambali Puspasari	A	A	2017-10-24	2017-10-24	t
550	Among Mansur, S.Psi	A	A	2023-05-02	2023-05-02	f
551	Wirda Nashiruddin	F	F	2019-10-05	2021-05-08	f
552	Dadi Marbun	A	A	2023-01-16	2023-01-24	t
553	Ilsa Maryati	A	A	2014-12-26	2014-12-26	f
554	H. Lanang Nababan	A	A	2018-01-19	2018-01-19	t
555	Harsana Wacana	A	A	2019-02-17	2019-02-17	t
556	Gadang Suryatmi	A	A	2017-02-01	2017-02-01	t
557	Asirwanda Saragih	A	A	2016-03-04	2016-03-04	t
558	Alambana Widodo	A	A	2019-12-04	2022-10-11	f
559	drg. Suci Uwais	A	A	2024-01-07	2024-06-26	t
560	Tgk. Zalindra Rahimah, S.Pt	B	B	2015-05-06	2018-08-19	f
561	Hari Yuniar	A	A	2023-11-27	2023-12-31	f
562	Prabu Wahyuni	A	A	2022-04-16	2023-11-08	t
563	Laila Prakasa	A	A	2014-10-28	2014-10-28	t
564	Maras Pangestu	A	A	2018-08-02	2020-12-16	f
565	dr. Cahyono Anggriawan	B	B	2023-09-08	2023-09-08	f
566	Janet Simbolon	A	A	2021-11-01	2022-07-08	t
567	Lamar Farida	A	A	2016-09-14	2016-09-14	f
568	Uchita Hidayat, S.Gz	A	A	2022-02-22	2022-06-15	f
569	Unggul Nashiruddin	A	A	2020-07-30	2023-11-30	t
570	Putu Ramadan, M.Kom.	C	C	2018-05-07	2020-06-30	t
571	Perkasa Hasanah	A	A	2014-11-09	2014-11-09	f
572	Amalia Palastri	A	A	2022-01-02	2022-01-02	f
573	dr. Victoria Sihotang, M.Kom.	A	A	2018-05-07	2020-10-20	f
574	Bahuwirya Hardiansyah	A	A	2014-12-14	2014-12-14	f
575	Wirda Farida	A	A	2017-11-19	2017-11-19	t
576	Puti Zamira Kuswoyo	C	C	2021-02-05	2023-07-23	t
577	Hilda Irawan	A	A	2022-12-12	2022-12-12	t
578	Legawa Kuswandari	D	D	2023-07-04	2024-01-23	t
579	Aslijan Novitasari	F	F	2021-01-06	2022-09-16	f
580	dr. Kenari Prakasa, S.E.	A	A	2022-12-04	2022-12-04	t
581	Jayeng Anggraini, S.Pt	A	A	2017-02-14	2018-08-14	t
582	Ir. Unggul Salahudin	D	D	2022-01-07	2024-06-10	f
583	Jarwadi Wahyudin	C	C	2018-07-29	2024-02-17	f
584	R.A. Dian Nasyidah, S.Pt	B	B	2019-11-04	2021-02-07	f
585	Edi Siregar	B	B	2017-04-28	2017-04-28	t
586	Galak Ardianto, S.Pd	A	A	2017-11-03	2017-11-03	f
587	Elon Narpati	A	A	2017-11-04	2017-11-04	f
588	Hamima Siregar	A	A	2019-04-03	2023-09-04	t
589	Pia Putra	F	F	2021-01-12	2021-01-12	f
590	R. Cakrajiya Wahyuni	C	C	2017-04-06	2022-06-09	t
591	Laswi Yuliarti	A	A	2017-03-30	2017-03-30	t
592	Tgk. Ophelia Prakasa, M.Ak	B	B	2017-06-05	2021-09-01	t
593	Harto Waluyo, S.Pt	A	A	2015-05-17	2015-05-17	t
594	Putri Hastuti, S.Psi	E	E	2021-03-23	2021-08-13	f
595	Zalindra Kuswandari	A	A	2020-05-22	2021-09-13	t
596	Laswi Latupono, M.Farm	C	C	2016-05-28	2019-04-04	t
597	R.A. Ophelia Anggraini, M.M.	A	A	2023-06-22	2023-06-22	t
598	Malika Sihombing, M.Kom.	A	A	2016-04-13	2017-08-14	t
599	Bancar Firmansyah	B	B	2021-08-03	2021-08-03	f
600	Asmadi Habibi, M.Farm	B	B	2016-03-29	2016-03-29	t
601	Latif Fujiati	B	B	2014-12-23	2014-12-23	t
602	Kamaria Sitompul	F	F	2018-09-01	2019-01-08	t
603	Victoria Wahyuni, S.Sos	A	A	2021-04-24	2021-06-24	f
604	Restu Hariyah	D	D	2018-12-10	2018-12-10	f
605	Drs. Johan Rahayu, S.Pt	B	B	2021-03-22	2022-05-04	f
606	Samiah Samosir	A	A	2018-03-27	2023-11-16	f
607	Prasetya Mansur	A	A	2019-02-02	2021-03-24	t
608	Farhunnisa Nugroho	A	A	2017-12-23	2023-05-21	t
609	Zaenab Habibi	B	B	2014-12-11	2014-12-11	f
610	Ophelia Uwais, S.Farm	A	A	2022-07-05	2023-04-18	f
611	Ir. Unggul Mardhiyah	B	B	2021-05-09	2021-05-09	f
612	Tgk. Cakrawangsa Yulianti	A	A	2018-08-17	2018-08-17	t
613	Kayun Putra	B	B	2024-04-12	2024-04-17	t
614	Tgk. Juli Anggraini	A	A	2021-12-21	2022-09-14	f
615	Lamar Santoso	A	A	2022-01-03	2022-01-03	t
616	Chelsea Budiman	A	A	2023-02-28	2023-11-16	f
617	Septi Saragih	D	D	2015-11-17	2015-11-17	f
618	drg. Pia Uwais, S.Pd	A	A	2021-08-13	2021-08-13	f
619	Adiarja Prasasta, M.Ak	A	A	2023-11-13	2024-04-25	t
620	Dt. Ihsan Prabowo	C	C	2018-04-28	2021-03-29	f
621	Gada Usada	A	A	2017-12-22	2019-10-08	t
622	Dr. Farah Farida, M.Ak	C	C	2016-08-09	2024-04-20	f
623	Asirwada Pertiwi	D	D	2019-08-12	2020-12-20	t
624	Calista Samosir	A	A	2016-04-03	2024-03-31	f
625	Farah Tamba	A	A	2018-07-08	2020-08-03	f
626	Dr. Rafid Mustofa, S.Gz	B	B	2021-02-02	2023-11-17	f
627	Emin Latupono	F	F	2017-07-07	2020-08-22	t
628	Tgk. Septi Nurdiyanti, M.TI.	E	E	2016-09-25	2019-06-12	f
629	Maria Riyanti	A	A	2024-02-08	2024-02-08	t
630	drg. Calista Sirait, S.Gz	B	B	2020-06-30	2023-12-01	f
631	T. Tasnim Mulyani	B	B	2021-07-22	2023-12-12	f
632	Darmaji Suartini, S.Pt	A	A	2014-12-20	2014-12-20	t
633	Irma Oktaviani	A	A	2016-05-12	2016-05-12	t
634	Ciaobella Wijaya	A	A	2020-01-01	2020-01-01	f
635	Oman Mahendra	C	C	2018-12-02	2018-12-02	f
636	Tiara Kuswoyo	A	A	2017-08-20	2017-08-20	f
637	Cager Firmansyah	A	A	2019-11-21	2019-11-21	t
638	Gaduh Prasetya	B	B	2015-06-15	2022-03-26	f
639	Putri Haryanto, S.Ked	F	F	2020-11-03	2020-11-03	t
640	Drs. Yuni Fujiati, S.Kom	A	A	2019-03-12	2023-10-13	t
641	Enteng Nashiruddin	B	B	2017-09-28	2017-09-28	t
642	Kartika Dabukke	A	A	2023-07-02	2024-05-18	f
643	Aslijan Pratama	A	A	2015-11-05	2017-07-18	t
644	Samiah Winarno	A	A	2019-04-03	2019-04-03	t
645	Drs. Lanjar Prastuti	A	A	2015-12-26	2015-12-26	f
646	Nadine Utama	A	A	2022-08-06	2022-11-03	t
647	Okta Safitri	A	A	2014-10-07	2014-10-07	t
648	Himawan Putra	A	A	2017-08-15	2017-09-16	f
649	R. Azalea Nasyiah, S.Gz	A	A	2017-09-22	2023-05-31	f
650	Janet Mahendra	A	A	2014-08-16	2014-08-16	t
651	Sutan Harja Siregar	A	A	2019-10-05	2019-10-05	t
652	Bahuraksa Usada	A	A	2015-05-19	2018-05-28	t
653	Yosef Ramadan	D	D	2018-06-17	2018-06-17	f
654	drg. Ulva Habibi	B	B	2017-04-15	2017-04-15	t
655	Eva Permata	A	A	2017-04-10	2017-04-10	f
656	Cawuk Wacana, S.E.I	A	A	2015-08-15	2015-08-15	f
657	Upik Suwarno	E	E	2019-02-10	2020-12-23	f
658	Vicky Sihotang	A	A	2022-04-17	2022-04-17	f
659	Tgk. Latika Anggriawan, S.H.	A	A	2023-05-26	2023-05-26	f
660	Septi Natsir, M.M.	A	A	2016-12-22	2023-02-04	t
661	drg. Emas Hastuti, S.Gz	B	B	2019-02-04	2019-02-04	f
662	Oskar Putra	B	B	2014-10-20	2016-02-01	t
663	Paramita Gunawan	A	A	2015-11-09	2018-11-12	f
664	Titi Tampubolon	E	E	2019-11-12	2024-02-27	f
665	Ira Siregar	B	B	2020-02-17	2021-05-01	t
666	Jasmin Mandasari	B	B	2022-08-08	2022-08-08	t
667	Nabila Ramadan	B	B	2018-09-13	2021-05-19	f
668	Titi Megantara	B	B	2019-10-12	2021-07-18	f
669	Vino Simbolon	A	A	2019-06-18	2020-09-23	t
670	Wirda Kusmawati	B	B	2022-01-16	2022-09-02	t
671	Cawisadi Saputra	A	A	2022-03-01	2024-05-12	t
672	dr. Dimaz Sihotang, S.E.I	A	A	2021-04-04	2022-10-12	f
673	R. Ani Kusumo, S.H.	A	A	2019-10-03	2022-08-24	t
674	Malika Nababan	A	A	2021-08-13	2021-08-13	f
675	Usyi Halimah	A	A	2023-11-14	2024-04-17	t
676	R. Paramita Iswahyudi	A	A	2022-09-10	2022-09-10	t
677	Dinda Siregar	F	F	2016-10-31	2023-04-03	f
678	Natalia Pradana, S.Kom	B	B	2017-05-05	2023-02-22	f
679	Salsabila Wasita	B	B	2019-12-24	2019-12-24	f
680	KH. Aditya Kusmawati, S.T.	A	A	2021-03-06	2021-03-06	t
681	Julia Wijayanti	A	A	2014-07-04	2022-12-30	t
682	Ami Handayani	A	A	2014-10-06	2019-06-06	t
683	Gaduh Farida	B	B	2022-02-26	2023-07-21	t
684	Vanesa Napitupulu	B	B	2019-03-09	2019-03-09	f
685	Wisnu Siregar	F	F	2022-11-15	2023-07-06	t
686	Dr. Ozy Wibowo, S.H.	A	A	2016-10-26	2020-05-10	t
687	Betania Mayasari	B	B	2024-03-02	2024-06-21	t
688	Zaenab Permata, S.Pd	B	B	2014-11-04	2015-03-17	f
689	Syahrini Haryanto	A	A	2021-07-26	2021-07-26	t
690	Hj. Septi Fujiati	A	A	2017-12-17	2017-12-17	f
691	Cut Shakila Rajasa	E	E	2016-10-08	2016-10-08	f
692	Halima Damanik	A	A	2021-11-06	2022-05-03	f
693	Panji Nababan	E	E	2022-04-26	2024-02-29	t
694	dr. Chelsea Sihombing, M.Kom.	B	B	2017-01-24	2017-01-24	f
695	Rina Prabowo	A	A	2020-12-29	2020-12-29	t
696	Siska Santoso, S.Pd	A	A	2021-02-22	2021-02-22	t
697	Malika Widodo, S.IP	A	A	2021-12-14	2021-12-14	t
698	Kalim Hidayat	B	B	2014-12-01	2014-12-01	t
699	dr. Natalia Sitorus	A	A	2018-01-05	2018-01-05	f
700	Farah Mandasari, S.IP	A	A	2022-11-02	2023-09-09	t
701	Balangga Nasyidah	A	A	2022-09-26	2023-02-26	t
702	Tantri Maulana	B	B	2024-02-21	2024-06-03	f
703	Rahman Damanik, S.T.	A	A	2018-11-03	2018-12-22	f
704	Michelle Saragih	A	A	2021-11-05	2023-10-21	f
705	H. Purwadi Halim	A	A	2021-11-27	2023-02-10	f
706	Hadi Mandasari	D	D	2022-03-28	2022-10-06	f
707	Diana Samosir	C	C	2014-07-31	2014-07-31	t
708	Putri Usamah	B	B	2016-04-22	2016-04-22	t
709	Johan Padmasari	A	A	2018-11-22	2020-04-24	f
710	Banawi Siregar	A	A	2016-10-06	2016-10-06	f
711	drg. Caraka Tarihoran, S.Farm	A	A	2016-04-12	2016-04-12	t
712	Dt. Asmadi Purnawati	A	A	2018-11-25	2018-11-25	f
713	drg. Ismail Nababan	F	F	2016-04-16	2016-04-16	t
714	Hani Megantara, M.M.	B	B	2015-05-16	2015-05-16	f
715	Hadi Zulaika, S.Pd	B	B	2018-04-15	2018-04-15	f
716	Kenes Purnawati, M.M.	A	A	2015-01-07	2015-01-07	t
717	Adhiarja Namaga, S.Farm	F	F	2021-06-28	2023-04-14	t
718	R.A. Maimunah Hutapea	F	F	2022-01-05	2022-01-05	f
719	drg. Martani Uwais, S.H.	F	F	2017-01-03	2017-01-03	t
720	Wulan Wacana	B	B	2016-04-22	2016-04-22	t
721	Aisyah Manullang	A	A	2017-10-24	2018-01-05	f
722	KH. Martana Waskita, S.E.I	F	F	2023-03-11	2024-04-10	f
723	Dr. Dina Jailani, S.IP	B	B	2022-09-06	2022-09-06	f
724	Dina Prabowo	A	A	2020-01-03	2020-01-03	t
725	Ella Kurniawan	A	A	2015-07-16	2015-07-16	f
726	Hani Kuswoyo	A	A	2016-11-19	2016-11-19	f
727	Elma Hakim	D	D	2022-01-31	2022-09-02	f
728	Dagel Saputra	A	A	2017-04-07	2019-07-17	t
729	Bahuwarna Utama	B	B	2023-09-12	2023-09-12	t
730	Artawan Usada	A	A	2019-04-13	2024-04-09	t
731	Ir. Malika Saragih	A	A	2018-05-06	2024-06-03	f
732	Ir. Ilsa Firmansyah, S.T.	B	B	2021-11-02	2023-10-13	t
733	Legawa Adriansyah	B	B	2020-07-02	2021-09-12	f
734	Silvia Lailasari	A	A	2022-03-23	2023-09-19	f
735	KH. Prasetya Damanik, S.T.	C	C	2018-09-10	2018-09-10	f
736	Galiono Napitupulu, S.H.	A	A	2017-09-15	2017-09-15	f
737	Elma Natsir	A	A	2024-06-15	2024-06-15	t
738	Endah Usada	A	A	2020-06-04	2020-11-15	t
739	Gara Hutapea, M.Pd	E	E	2022-05-09	2023-04-12	t
740	Ir. Dinda Wibowo, S.I.Kom	A	A	2014-09-22	2014-09-22	t
741	Safina Zulaika	B	B	2024-01-14	2024-03-18	t
742	Jindra Uyainah	B	B	2023-08-13	2024-06-15	f
743	Wira Halim	B	B	2017-05-28	2017-05-28	f
744	R.M. Malik Megantara, M.TI.	A	A	2017-03-05	2022-05-13	t
745	Eluh Wibowo	A	A	2017-06-19	2017-06-19	f
746	Raina Najmudin	A	A	2018-08-24	2021-01-11	t
747	Ir. Jindra Hutapea	A	A	2016-10-08	2016-10-13	f
748	Puti Rika Pudjiastuti, S.I.Kom	A	A	2021-03-05	2021-03-05	f
749	Purwa Puspita	B	B	2017-06-18	2017-06-18	t
750	Tgk. Tari Mahendra	A	A	2018-07-30	2018-07-30	f
751	Dr. Maria Suryatmi, S.Farm	F	F	2020-05-02	2020-05-02	f
752	Tina Pranowo	A	A	2015-04-07	2023-03-01	f
753	drg. Jamal Mayasari	B	B	2022-03-03	2024-05-20	t
754	R. Emong Firgantoro, S.Farm	A	A	2023-07-09	2024-02-20	t
755	Talia Oktaviani	A	A	2024-02-16	2024-06-08	f
756	Eman Firmansyah	F	F	2021-09-22	2021-09-22	t
757	Dadap Lailasari	F	F	2019-11-29	2020-12-18	f
758	Ian Ardianto	A	A	2014-10-24	2014-10-24	f
759	Latika Situmorang, S.H.	A	A	2017-02-16	2017-02-16	f
760	Imam Kusmawati	B	B	2021-04-15	2023-06-30	f
761	Patricia Sitompul	A	A	2019-11-18	2019-11-18	f
762	Calista Mulyani	D	D	2016-11-08	2016-11-08	f
763	Queen Prasetya, M.Kom.	B	B	2018-06-27	2018-06-27	t
764	dr. Ajiono Novitasari, S.Kom	B	B	2016-05-23	2022-01-14	t
765	KH. Among Saputra, S.IP	A	A	2017-10-19	2019-01-24	t
766	Dr. Prabawa Novitasari, S.Kom	A	A	2023-04-23	2023-11-03	t
767	R. Dono Mandasari	A	A	2016-08-06	2016-08-06	t
768	Ir. Fitria Nashiruddin, S.E.	A	A	2017-08-25	2018-05-23	t
769	Harja Marpaung	B	B	2015-05-10	2015-05-10	f
770	Tgk. Restu Nuraini, M.Pd	D	D	2019-11-21	2022-03-22	f
771	Genta Farida	D	D	2020-02-05	2020-02-05	t
772	Labuh Hutapea	B	B	2019-11-13	2019-11-13	t
773	Shania Widiastuti	A	A	2020-01-26	2020-01-26	t
774	Hj. Ellis Laksita	B	B	2019-09-21	2019-09-21	t
775	H. Prayoga Santoso, S.I.Kom	B	B	2021-02-03	2022-04-20	t
776	Keisha Sinaga	A	A	2017-08-31	2022-11-14	f
777	Puti Nadia Prasasta, M.TI.	B	B	2020-11-10	2020-11-10	t
778	Amalia Waskita, S.Pd	A	A	2018-05-12	2020-06-13	t
779	Harsanto Rajasa	B	B	2014-12-28	2018-07-27	f
780	Puti Rahmi Kuswandari, M.Farm	E	E	2017-02-03	2017-02-03	f
781	Atmaja Novitasari	A	A	2017-04-01	2018-02-23	f
782	Restu Mustofa	D	D	2021-03-10	2022-09-24	t
783	Ibrani Maryati	D	D	2014-08-16	2016-12-06	f
784	Cut Aurora Siregar	B	B	2020-11-20	2021-11-04	t
785	Gamani Rahimah, M.Ak	A	A	2016-12-17	2021-10-12	t
786	Irma Pangestu	A	A	2022-02-23	2022-02-23	f
787	Diana Prakasa	B	B	2015-09-09	2015-09-09	f
788	Ian Wibisono	A	A	2020-05-07	2020-05-07	f
789	Laras Setiawan, S.Sos	A	A	2018-04-23	2018-04-23	t
790	Tgk. Novi Iswahyudi	A	A	2019-05-27	2021-07-29	t
791	Lutfan Mangunsong, S.IP	A	A	2024-02-01	2024-03-25	f
792	Cakrawala Habibi	F	F	2021-09-13	2023-02-03	f
793	Rahmat Samosir, S.IP	A	A	2015-05-08	2015-05-08	f
794	Raharja Mangunsong, S.Psi	B	B	2018-01-05	2022-04-21	t
795	Dr. Dirja Waluyo, S.Farm	C	C	2024-03-13	2024-04-02	t
796	Puti Betania Winarsih	A	A	2020-08-26	2023-07-29	t
797	Puji Usamah	F	F	2021-12-19	2022-06-02	t
798	Genta Pradana	A	A	2014-09-30	2014-09-30	t
799	Galiono Permata	C	C	2014-10-16	2016-09-27	t
800	Kurnia Situmorang	A	A	2019-09-04	2021-03-24	t
801	Vanya Mahendra	A	A	2021-11-20	2021-11-20	t
802	Ika Napitupulu	D	D	2023-09-21	2023-09-21	t
803	Padmi Natsir	C	C	2015-04-25	2015-06-01	f
804	Dr. Lala Kuswandari	A	A	2017-12-31	2024-05-02	f
805	Nova Winarsih	B	B	2017-10-08	2024-03-01	f
806	Gasti Suryono	B	B	2015-12-15	2021-04-13	t
807	Yosef Oktaviani	A	A	2022-05-07	2022-10-14	t
808	Kusuma Najmudin, S.Ked	A	A	2022-03-30	2024-01-24	t
809	Vanya Ardianto	C	C	2015-01-08	2015-01-08	t
810	Cornelia Siregar, S.E.I	F	F	2022-03-29	2024-05-21	f
811	Pardi Lazuardi	A	A	2017-02-13	2017-02-13	t
812	Sabrina Riyanti	B	B	2019-06-24	2021-09-10	t
813	Maryanto Mandala	A	A	2022-08-30	2022-08-30	t
814	Dimas Hutapea	C	C	2015-01-03	2015-01-03	f
815	KH. Danu Simbolon, M.Farm	B	B	2021-03-28	2021-03-28	f
816	Luwes Nainggolan	A	A	2023-05-23	2023-08-28	f
817	Drs. Rahmi Utama	A	A	2018-09-06	2018-09-06	f
818	Betania Suryatmi	A	A	2018-09-09	2018-09-09	f
819	R. Zamira Prastuti, S.Pt	F	F	2022-11-07	2022-11-07	f
820	Vicky Sihombing	A	A	2019-02-17	2019-02-17	f
821	Wasis Dabukke	A	A	2017-09-30	2019-02-22	f
822	Vino Susanti	C	C	2018-06-14	2018-06-14	f
823	Oliva Utama	B	B	2022-01-08	2022-01-08	t
824	Sutan Damar Haryanti, S.Pd	A	A	2023-10-20	2024-03-29	t
825	Ir. Cecep Ardianto, M.Farm	A	A	2015-01-05	2015-01-05	t
826	Ghaliyati Prakasa	A	A	2015-10-19	2018-12-07	f
827	Budi Uyainah	E	E	2020-12-19	2024-06-10	t
828	Ismail Mangunsong	A	A	2024-03-23	2024-04-05	t
829	Leo Nasyidah	A	A	2023-02-27	2024-01-15	t
830	Laila Kusumo, M.Farm	D	D	2021-05-15	2021-12-26	t
831	Pangestu Saragih, S.H.	A	A	2020-05-30	2020-06-06	f
832	Puti Uchita Pangestu, S.E.	B	B	2019-05-15	2019-05-15	t
833	Cut Jessica Mustofa, M.Farm	D	D	2023-12-30	2023-12-30	f
834	Hana Adriansyah	E	E	2014-07-14	2014-07-14	f
835	Tgk. Karsa Winarno, M.Pd	A	A	2023-07-03	2024-04-06	f
836	Vivi Waskita	B	B	2020-09-14	2020-09-14	f
837	Laila Wasita	A	A	2018-01-24	2020-11-07	f
838	Endra Riyanti	A	A	2018-07-08	2018-07-08	f
839	Rini Anggraini	A	A	2019-10-07	2019-10-07	f
840	Yunita Gunawan	A	A	2023-10-12	2024-05-07	t
841	Eko Riyanti	A	A	2015-03-26	2019-09-07	f
842	Drs. Rachel Putra, S.I.Kom	B	B	2017-10-28	2023-07-20	f
843	Yuni Nuraini	A	A	2017-03-16	2018-10-27	f
844	Intan Winarsih	A	A	2014-12-10	2014-12-10	t
845	Drs. Janet Nuraini, M.Pd	A	A	2022-07-05	2022-07-05	t
846	Tirta Hutasoit	A	A	2022-07-13	2022-07-13	f
847	Martana Januar	B	B	2021-02-14	2021-02-14	t
848	Agus Melani, S.T.	A	A	2020-08-22	2020-10-20	t
849	Kusuma Prasasta	B	B	2015-05-28	2015-05-28	t
850	Pangestu Puspita	A	A	2023-05-22	2023-12-30	t
851	Vivi Sihombing, S.H.	A	A	2023-05-21	2023-05-21	f
852	KH. Gadang Adriansyah, S.Farm	A	A	2023-03-02	2023-03-02	f
853	Silvia Saptono	B	B	2016-03-16	2017-01-02	t
854	Harsaya Sihotang	B	B	2017-02-08	2021-01-22	t
855	Ifa Simbolon	C	C	2024-05-31	2024-05-31	t
856	Pangeran Siregar	A	A	2015-01-16	2019-02-10	t
857	Tgk. Malika Pratama	A	A	2023-03-16	2023-03-16	t
858	Abyasa Nurdiyanti	A	A	2014-11-09	2022-09-11	f
859	Talia Tampubolon	A	A	2019-01-26	2019-01-26	f
860	Ratna Nainggolan, S.H.	C	C	2016-09-10	2017-02-10	t
861	Dt. Satya Ramadan, S.E.	A	A	2017-06-18	2017-06-18	t
862	Ani Adriansyah	A	A	2021-01-27	2022-10-01	f
863	Rahmi Mustofa, M.Ak	A	A	2021-11-30	2021-12-17	f
864	Elon Suartini, M.M.	D	D	2022-11-28	2022-11-28	t
865	Lega Purwanti	B	B	2018-10-16	2018-10-16	t
866	Respati Hutasoit	A	A	2023-08-06	2024-02-17	f
867	R.A. Aisyah Utami	A	A	2016-05-20	2016-11-18	f
868	Nadia Kuswandari, S.Pd	C	C	2021-03-29	2021-03-29	t
869	Cinthia Nuraini	B	B	2022-01-16	2022-11-04	f
870	Dr. Sarah Widiastuti	B	B	2023-09-19	2023-09-19	f
871	Danu Sitorus	E	E	2019-11-07	2023-02-04	t
872	Lasmono Firmansyah	A	A	2024-02-17	2024-05-05	f
873	Ina Permata	A	A	2021-10-07	2024-04-24	f
874	Tgk. Safina Andriani, S.Gz	A	A	2023-12-07	2023-12-07	t
875	Agus Melani	A	A	2024-01-09	2024-01-09	t
876	Natalia Situmorang	B	B	2016-01-20	2021-01-28	f
877	Hartana Pratiwi	A	A	2020-08-02	2020-09-28	t
878	Yuni Zulaika, S.T.	B	B	2016-12-03	2016-12-03	t
879	Cut Ellis Suryono	A	A	2021-02-25	2023-01-09	f
880	Harsaya Hidayanto	A	A	2021-12-17	2021-12-17	t
881	Capa Laksita	A	A	2022-08-28	2023-03-17	f
882	Wardaya Hasanah	A	A	2016-02-01	2020-08-07	f
883	Farah Astuti	A	A	2020-09-11	2020-09-11	f
884	Jelita Mangunsong	B	B	2022-05-30	2024-05-15	f
885	Tgk. Vega Haryanti	A	A	2015-07-28	2016-08-01	t
886	Adinata Padmasari	C	C	2018-06-02	2018-06-02	t
887	Anastasia Rajata, M.TI.	A	A	2016-08-08	2021-11-10	t
888	Nasab Haryanti, S.IP	B	B	2014-09-21	2021-09-06	t
889	Karna Hasanah	E	E	2015-08-22	2017-08-08	t
890	Drs. Elvin Palastri	A	A	2019-01-04	2019-01-04	f
891	Tgk. Hamima Novitasari	B	B	2017-01-01	2017-01-01	f
892	Ir. Bakiono Laksita	F	F	2022-03-04	2022-03-04	f
893	Nrima Utama	A	A	2022-08-24	2023-02-24	t
894	Lega Permadi, S.E.I	A	A	2022-11-06	2022-11-06	f
895	Agus Pradana	A	A	2024-04-03	2024-05-07	t
896	Dr. Icha Pranowo	B	B	2019-07-30	2019-07-30	f
897	Jumadi Prastuti	A	A	2023-10-27	2023-10-27	t
898	Purwa Wasita, S.Kom	B	B	2017-01-16	2017-01-16	f
899	Prasetyo Widodo, S.E.	D	D	2016-08-31	2016-08-31	t
900	Tgk. Ana Salahudin, S.I.Kom	A	A	2024-03-16	2024-05-03	t
901	Lamar Hidayanto, S.E.	B	B	2019-05-25	2024-02-24	t
902	Diana Mayasari	A	A	2014-08-28	2014-08-28	f
903	Lili Hariyah	B	B	2017-07-18	2017-07-18	t
904	Cahya Mayasari	A	A	2017-01-09	2021-07-27	f
905	Cinthia Waskita	A	A	2019-09-12	2023-06-29	f
906	Among Saragih	A	A	2019-10-08	2020-11-11	f
907	Mulya Yulianti, S.T.	E	E	2019-11-10	2019-11-10	f
908	Kartika Nurdiyanti	E	E	2018-08-21	2018-08-27	f
909	Kenes Pradipta, S.Pd	B	B	2016-11-16	2016-11-16	t
910	dr. Mujur Putra	A	A	2014-11-16	2014-11-16	f
911	Mulya Purwanti	E	E	2022-01-16	2022-01-16	f
912	Kayla Yuniar, S.H.	B	B	2018-01-04	2022-05-28	f
913	H. Embuh Oktaviani, M.Farm	A	A	2019-02-11	2019-02-11	t
914	Tgk. Darimin Puspita, M.Kom.	C	C	2016-01-21	2017-07-29	f
915	Taufan Sihotang, S.H.	B	B	2019-03-05	2019-03-05	f
916	Laksana Laksita	F	F	2015-05-21	2019-02-21	f
917	Soleh Prasetyo	A	A	2023-07-14	2024-06-16	t
918	Septi Wahyuni	A	A	2021-01-25	2021-01-25	t
919	Aisyah Hakim	B	B	2021-01-17	2021-01-17	t
920	Melinda Prayoga, M.Farm	E	E	2014-08-01	2016-05-11	t
921	Tasdik Yulianti	F	F	2018-02-27	2019-03-24	t
922	Yessi Saputra	A	A	2019-09-28	2019-09-28	f
923	Asman Hidayat	A	A	2021-09-08	2021-11-27	f
924	Drs. Eja Hastuti, S.Psi	A	A	2017-07-25	2020-10-06	f
925	Ika Oktaviani	A	A	2019-04-25	2023-03-24	t
926	Fitria Sitompul, S.Pd	A	A	2019-05-17	2019-05-17	f
927	dr. Kamila Maulana, S.IP	A	A	2017-01-23	2017-01-23	t
928	Uda Marpaung	B	B	2023-10-13	2023-10-26	t
929	R.M. Gangsa Halim	A	A	2023-09-10	2024-05-26	t
930	Najam Januar	B	B	2015-02-11	2018-05-21	t
931	Wisnu Siregar, S.E.	B	B	2023-11-01	2023-11-01	f
932	Jaga Mustofa	B	B	2023-10-30	2023-10-30	t
933	Karsa Prakasa	A	A	2023-01-10	2024-03-14	f
934	Queen Winarsih	A	A	2017-12-12	2021-02-08	t
935	Kartika Hutapea, S.E.I	A	A	2021-07-27	2024-02-09	f
936	Cut Pia Wibowo	A	A	2019-06-16	2021-02-17	f
937	Sutan Mulya Astuti, S.Kom	E	E	2015-06-12	2021-12-16	t
938	Kania Hidayat, M.M.	D	D	2023-02-18	2023-02-18	t
939	R. Zizi Aryani	E	E	2019-07-31	2019-07-31	f
940	Atmaja Januar	A	A	2017-10-03	2017-10-03	f
941	Drs. Wawan Pradana, S.Pd	A	A	2016-02-06	2023-03-16	f
942	Diana Damanik	B	B	2017-06-15	2017-06-15	t
943	Cemplunk Sitompul, S.H.	A	A	2015-08-20	2015-08-20	t
944	Raharja Latupono	B	B	2023-01-05	2023-01-05	f
945	Ir. Edi Hariyah, S.T.	A	A	2016-08-12	2016-12-15	f
946	R.A. Gina Saefullah	D	D	2023-02-20	2023-11-21	t
947	Kunthara Wijaya	A	A	2014-11-04	2022-11-25	f
948	T. Prasetya Purnawati	A	A	2015-03-16	2018-05-11	f
949	Farah Kusmawati	A	A	2018-12-03	2018-12-03	f
950	Yessi Suryatmi	A	A	2017-10-13	2020-02-10	t
951	Kezia Utami	B	B	2018-09-16	2018-09-16	f
952	Kasim Namaga	B	B	2019-08-15	2020-05-31	f
953	Kairav Suartini	A	A	2021-09-15	2021-09-15	f
954	Alika Nasyidah	A	A	2024-05-05	2024-05-05	t
955	Tgk. Prabowo Laksmiwati, M.Pd	A	A	2018-03-02	2018-03-02	f
956	Cut Mila Pranowo	A	A	2023-09-09	2024-06-15	t
957	Lukman Mardhiyah	A	A	2016-03-03	2016-03-03	t
958	Dodo Sihombing	D	D	2014-11-12	2022-04-10	f
959	Zelaya Sihombing	A	A	2016-07-25	2016-07-25	f
960	Wahyu Waskita	B	B	2021-02-03	2021-02-03	t
961	KH. Kardi Putra, S.E.	B	B	2015-12-22	2018-08-30	f
962	Paulin Rahimah	A	A	2016-08-08	2016-08-08	t
963	Ghaliyati Saragih, S.Gz	A	A	2021-09-19	2022-04-15	f
964	Puti Yani Pratama	F	F	2018-04-20	2018-04-20	f
965	Oliva Widodo	B	B	2020-12-03	2020-12-03	t
966	Dipa Prasetya	B	B	2018-01-02	2023-04-29	t
967	Karma Winarsih	A	A	2023-11-05	2024-03-02	f
968	Unggul Maulana	B	B	2019-12-11	2022-06-05	t
969	Raden Nurdiyanti	B	B	2021-05-06	2023-06-25	f
970	Drs. Cawisadi Jailani	B	B	2017-04-08	2017-04-08	t
971	Dinda Thamrin	A	A	2020-08-13	2022-06-21	f
972	Halima Halimah	A	A	2017-06-01	2017-06-01	t
973	Amalia Novitasari, S.T.	A	A	2015-03-14	2015-03-14	t
974	Dono Maryadi	A	A	2024-01-18	2024-01-18	f
975	Ir. Galang Mayasari	A	A	2015-11-11	2024-02-11	f
976	Jaya Sitorus	A	A	2018-06-06	2018-09-30	f
977	Nasim Hutasoit	A	A	2014-11-21	2020-05-06	f
978	Ulya Saptono	A	A	2019-03-02	2020-04-20	f
979	Sutan Karman Nurdiyanti, S.E.	A	A	2022-11-24	2022-11-24	f
980	Emong Mulyani, S.Pt	A	A	2016-06-18	2017-02-25	t
981	Safina Ardianto	C	C	2021-09-29	2021-09-29	t
982	Kawaya Gunawan	A	A	2016-12-31	2016-12-31	t
983	Adiarja Safitri	B	B	2018-07-01	2018-07-01	f
984	Prasetya Santoso	B	B	2018-03-01	2021-10-28	t
985	Galur Najmudin	A	A	2015-04-19	2017-11-01	f
986	Anita Safitri, M.M.	A	A	2020-11-16	2021-10-09	t
987	Eko Pratama	F	F	2016-10-13	2022-10-19	t
988	Soleh Maryadi	A	A	2019-04-08	2021-09-28	f
989	Clara Pradana, M.Kom.	A	A	2019-01-30	2019-01-30	t
990	Dr. Jati Farida, S.Farm	F	F	2014-10-02	2019-04-08	f
991	Atmaja Damanik, M.Pd	A	A	2016-05-12	2016-05-12	t
992	drg. Halima Nashiruddin	F	F	2020-12-07	2020-12-07	f
993	Zaenab Laksita	A	A	2020-10-14	2020-11-16	f
994	Ajimin Lazuardi	C	C	2022-06-18	2023-03-25	t
995	Tasnim Tamba	B	B	2017-08-12	2017-08-12	t
996	Bala Firmansyah	A	A	2016-08-03	2016-08-03	f
997	Indra Maulana	B	B	2017-05-28	2017-05-28	f
998	Irma Wijayanti	A	A	2014-10-16	2014-10-16	t
999	Raina Salahudin	D	D	2021-09-15	2023-07-19	f
1000	Zamira Nababan, S.Kom	A	A	2017-12-06	2017-12-06	f
\.


--
-- Data for Name: people; Type: TABLE DATA; Schema: public; Owner: db_user
--

COPY public.people (id, first_name, last_name) FROM stdin;
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: db_user
--

COPY public.students (id, first_name, last_name, score) FROM stdin;
1	Ben	Joe	80
2	Carson	Smith	85
3	Donald	James	83
\.


--
-- Name: doctors_doctor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: db_user
--

SELECT pg_catalog.setval('public.doctors_doctor_id_seq', 3, true);


--
-- Name: kendaraan_kendaraanid_seq; Type: SEQUENCE SET; Schema: public; Owner: db_user
--

SELECT pg_catalog.setval('public.kendaraan_kendaraanid_seq', 1000, true);


--
-- Name: kendaraantable_kendaraanid_seq; Type: SEQUENCE SET; Schema: public; Owner: db_user
--

SELECT pg_catalog.setval('public.kendaraantable_kendaraanid_seq', 1023, true);


--
-- Name: people_id_seq; Type: SEQUENCE SET; Schema: public; Owner: db_user
--

SELECT pg_catalog.setval('public.people_id_seq', 1, false);


--
-- Name: students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: db_user
--

SELECT pg_catalog.setval('public.students_id_seq', 33, true);


--
-- Name: doctors doctors_pkey; Type: CONSTRAINT; Schema: public; Owner: db_user
--

ALTER TABLE ONLY public.doctors
    ADD CONSTRAINT doctors_pkey PRIMARY KEY (doctor_id);


--
-- Name: kendaraan kendaraan_pkey; Type: CONSTRAINT; Schema: public; Owner: db_user
--

ALTER TABLE ONLY public.kendaraan
    ADD CONSTRAINT kendaraan_pkey PRIMARY KEY (kendaraanid);


--
-- Name: kendaraantable kendaraantable_pkey; Type: CONSTRAINT; Schema: public; Owner: db_user
--

ALTER TABLE ONLY public.kendaraantable
    ADD CONSTRAINT kendaraantable_pkey PRIMARY KEY (kendaraanid);


--
-- Name: people people_pkey; Type: CONSTRAINT; Schema: public; Owner: db_user
--

ALTER TABLE ONLY public.people
    ADD CONSTRAINT people_pkey PRIMARY KEY (id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: db_user
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

