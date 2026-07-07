--
-- PostgreSQL database dump
--

\restrict ZUpm95dnMw6Cnf73XwcRQS0bri0bwHpQW6No49PTNkwKXs6adR5HvsOunTd1XM5

-- Dumped from database version 16.14 (Debian 16.14-1.pgdg13+1)
-- Dumped by pg_dump version 16.14 (Debian 16.14-1.pgdg13+1)

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

--
-- Name: uuid-ossp; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;


--
-- Name: EXTENSION "uuid-ossp"; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION "uuid-ossp" IS 'generate universally unique identifiers (UUIDs)';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: booking_events; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.booking_events (
    id bigint NOT NULL,
    booking_id uuid NOT NULL,
    event_type character varying(100) NOT NULL,
    payload jsonb,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.booking_events OWNER TO postgres;

--
-- Name: booking_events_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.booking_events_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.booking_events_id_seq OWNER TO postgres;

--
-- Name: booking_events_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.booking_events_id_seq OWNED BY public.booking_events.id;


--
-- Name: hotel_bookings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hotel_bookings (
    id uuid DEFAULT public.uuid_generate_v4() NOT NULL,
    org_id uuid NOT NULL,
    hotel_id character varying(100) NOT NULL,
    city character varying(100) NOT NULL,
    checkin_date date NOT NULL,
    checkout_date date NOT NULL,
    amount numeric(12,2) NOT NULL,
    status character varying(50) NOT NULL,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.hotel_bookings OWNER TO postgres;

--
-- Name: booking_events id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking_events ALTER COLUMN id SET DEFAULT nextval('public.booking_events_id_seq'::regclass);


--
-- Data for Name: booking_events; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.booking_events (id, booking_id, event_type, payload, created_at) FROM stdin;
1	c1b9e103-486d-4f13-ab43-1f322570b879	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
2	177cda01-77b0-44a7-8eff-f2fcc04ecf61	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
3	b102941b-0a5e-49a7-ac1a-a8cd4f55cef5	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
4	06aa893e-1c2f-4c40-a734-421299689875	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
5	73312052-d315-4ffe-b711-a75b82aa76bb	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
6	8cb03842-a496-4c7f-9cfc-8088ac04dcf1	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
7	d55c09da-496b-4310-a993-2599738f590e	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
8	0cd58011-dd77-4bec-ae6d-f4aaf8fdaa27	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
9	c46cd467-81a9-4116-85fa-9b461b6dfcd4	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
10	8834d0cb-3804-4d79-954f-3a59b540f4af	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
11	378cad98-fffe-47e6-a4b8-2aa15f2e4b2d	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
12	e299d8dc-6ab5-48ee-9f3b-a500ec793f34	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
13	37960c13-0368-42f3-84b4-8c8e3a230cd1	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
14	2e2dd6a0-1c8b-4c54-af8c-f7cfe4cac160	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
15	fa56fe54-9043-4ac5-9a93-94953d51d92e	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
16	2b84774f-df16-4efc-8824-7ba90284d7ee	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
17	da5ca34b-5500-4969-ae23-9fbe9efacd12	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
18	a02cd103-28a2-4064-b060-673a7748d15d	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
19	24cebd55-6d09-436a-8bb6-bf157bcd3c10	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
20	69064866-facf-4196-9217-612ba29491e5	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
21	d1cfd509-a039-4dd8-bf76-b536e4306d44	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
22	4cffb502-9f79-4e40-b8c1-d8dba01afb81	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
23	87cd8132-b9ef-4427-8abb-18467dea7233	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
24	2d654d90-67c8-43b0-8f07-bb74afd0456a	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
25	427ebf13-3aab-4c78-a353-50135b67710c	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
26	50d7d4c3-6253-4095-95c5-1ad573703d25	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
27	ab831a1a-8e60-482f-8749-5c8958e2a2e0	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
28	60f46a13-d5df-434c-97af-db14af4aacfa	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
29	f9400674-858b-4fc2-8db4-fdf940784626	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
30	3a7d5fff-c91d-4526-ab90-99564f9e3de4	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
31	cca6d996-1272-442c-967c-3447ba38ebdb	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
32	42bc0f0e-d34d-42a8-b064-d615cc81b07d	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
33	953cb06b-ebfd-4c73-8122-622943d36103	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
34	79265b07-6774-4924-a8a6-8837b9e2e8c9	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
35	359ea7c6-1bce-48f5-abc4-8831d8ec2c2c	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
36	9be94a42-b96e-4f51-8575-5a8193bc8190	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
37	9f85175f-5f0d-47ca-848b-de98c2ab0cad	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
38	406ea5e9-2193-4f6f-9cd8-39ff9c8c70b0	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
39	1ccd7f00-d41f-4c64-ba92-0b4d794daba3	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
40	470eebb6-8468-409e-9062-62d7bdd84006	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
41	3881f05e-1d04-47e8-a362-a230837d882f	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
42	6a6bf048-c8fe-4fe6-b0a8-031a14e706c8	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
43	19e1f802-fd21-46a2-8397-1ba9b6889fcd	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
44	caaca0ff-d58d-4af7-9f9a-aebd7b1ab20e	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
45	2b821eda-c5df-4d3e-94e2-91b417447d81	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
46	6cfd88c5-a157-4c09-a234-9f4e39850e6a	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
47	31e50c87-9ec3-4aff-b363-269f68bfabc1	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
48	09f7b7fa-ad9b-48d4-8d82-1b540d8fe5e9	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
49	b536537c-0237-4d0e-a87c-93ddb2749751	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
50	e68c492f-9e6f-42ef-b759-43d380dfc1d3	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
51	6ad4c17b-c6c3-49fc-a4cd-7c7f2699909c	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
52	9d3fe9c2-a2c8-4fc4-846d-ea93a5afd13c	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
53	5a2ff9fa-b135-42bc-9519-dfa63d7c9e8e	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
54	25b02791-dfb4-47e7-864d-3f0c5533029f	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
55	7a0268ef-24ae-422c-b80c-78718c17ed52	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
56	c924f523-dcc5-4ea4-9214-8aebe0a10f0c	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
57	ee72cc9d-fee5-450c-8b5b-73dfd9e11892	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
58	5235c07a-00a7-426c-a878-0e63ee81eb7d	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
59	9e50ed62-fe05-479f-8074-e18856308a39	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
60	782122f1-4d97-41f4-a42d-f571ffb71f1a	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
61	d2cc772a-756b-4750-a10e-4bcbc6642123	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
62	fd1047b9-ffaf-456d-89d5-77c207aeaf44	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
63	8906e176-bd10-4868-91b5-d13acfa78dc0	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
64	2ce591c9-bf72-4eb3-a76c-4edbe896638f	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
65	0ed384b5-9e60-4455-8afe-f3b017a4c33b	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
66	9516f4ed-bf50-4940-b4a8-89b37873e6f5	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
67	472d6ac7-0eaf-476d-a98b-9617b7bd3554	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
68	f925c74b-3f15-4616-aa2a-c8e9cd980ca4	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
69	66da5905-267f-40ae-ac5d-3236ff816a69	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
70	d3b5b6d9-3c74-44a1-8c4c-f46182145ba8	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
71	7a61962b-da3e-4439-b8eb-736299108c89	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
72	31904095-686f-4bd0-a313-4520edae5390	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
73	0096e8b7-d359-4dbe-b0c3-8850b0cae465	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
74	18306ea7-d18c-4bed-a5ea-9dc7169a9040	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
75	a16ed1e7-5e7c-4990-9f10-64eee60bfdee	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
76	fe8a4184-b799-44fd-a398-15e6deddfcdb	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
77	09c199b3-1539-4624-84cd-cf1751a70274	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
78	73213ba1-53c6-4b06-ab5e-91ac10fb1b44	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
79	3b4fe344-11cc-484a-8acd-8213ad083db9	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
80	1b42a215-df17-4b41-8746-71112e107841	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
81	513aecd4-4582-4ece-ab8f-369e1a01b921	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
82	db038a55-9529-4b37-928f-b8de93884445	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
83	32a1ffa3-89cf-49e9-ba2d-11406415b4b0	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
84	d0bdcbe9-3a75-45d2-926b-7a2af0cee5ca	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
85	214d49aa-e784-4bb1-a6a8-d74078ae76b5	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
86	e8d885f7-68bb-4b0b-b5b3-535bb5f87341	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
87	618a02e9-9654-4cdf-af27-45d883de2e6f	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
88	c3a2457e-a43d-4b6f-8ddb-e1b09f79d003	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
89	3b34437a-261f-4a7e-8eee-aa12f487423a	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
90	25c7d70d-55bb-4176-b434-ea4a7fe83608	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
91	71539bfc-b865-42de-88de-1dd9e5dfa7b9	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
92	8a278292-38ec-42ee-a97b-f1b6aff94989	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
93	e2aff423-5052-4f10-9f85-5eade7b028e4	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
94	db237866-acb8-4c8b-b8d3-d83e1e5006cd	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
95	1493fbc9-5d77-4b3e-bfaf-421df2d54a12	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
96	c1742bef-2d10-421b-a9a4-a9841cafa3a1	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
97	4c0ee722-a224-4d6d-a598-bebe45334120	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
98	7da53330-c9dd-43c4-9013-690a59809f2e	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
99	288fd297-4dba-471f-9ed4-318d250ecdd5	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
100	71659f5f-05d6-449f-a64d-e1e9cdacb3ed	BOOKING_CREATED	{"source": "system", "message": "Booking created successfully"}	2026-07-07 06:19:59.932602
\.


--
-- Data for Name: hotel_bookings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.hotel_bookings (id, org_id, hotel_id, city, checkin_date, checkout_date, amount, status, created_at) FROM stdin;
c1b9e103-486d-4f13-ab43-1f322570b879	9b2fec83-8af2-4e79-95e9-e77ae431d6f2	HOTEL-2	Pune	2026-07-08	2026-07-10	6707.76	PENDING	2026-07-07 06:19:59.903304
177cda01-77b0-44a7-8eff-f2fcc04ecf61	68b5562a-4468-40d8-9934-ffa2716aef35	HOTEL-3	Bangalore	2026-07-09	2026-07-11	5977.76	CANCELLED	2026-07-07 06:19:59.903304
b102941b-0a5e-49a7-ac1a-a8cd4f55cef5	aa19240c-9afe-4879-9ceb-c18405fa054f	HOTEL-4	Hyderabad	2026-07-10	2026-07-12	9834.25	PENDING	2026-07-07 06:19:59.903304
06aa893e-1c2f-4c40-a734-421299689875	c37f8f73-093d-4442-8d64-64429dff5f4e	HOTEL-5	Delhi	2026-07-11	2026-07-13	3892.40	CONFIRMED	2026-07-07 06:19:59.903304
73312052-d315-4ffe-b711-a75b82aa76bb	56eff044-be98-4ce1-b88d-6e2c466503a8	HOTEL-6	Hyderabad	2026-07-12	2026-07-14	8825.64	PENDING	2026-07-07 06:19:59.903304
8cb03842-a496-4c7f-9cfc-8088ac04dcf1	40856490-d0e3-4205-b088-ab1df3b9abc1	HOTEL-7	Pune	2026-07-13	2026-07-15	7698.35	CANCELLED	2026-07-07 06:19:59.903304
d55c09da-496b-4310-a993-2599738f590e	b662ebd5-16bf-4695-ada1-43c66ebd360a	HOTEL-8	Pune	2026-07-14	2026-07-16	4771.93	PENDING	2026-07-07 06:19:59.903304
0cd58011-dd77-4bec-ae6d-f4aaf8fdaa27	fff2cf1a-6bee-4810-a74b-bc089eb5ebef	HOTEL-9	Mumbai	2026-07-15	2026-07-17	9122.84	CANCELLED	2026-07-07 06:19:59.903304
c46cd467-81a9-4116-85fa-9b461b6dfcd4	2ae2bf38-199d-477e-a115-d356eb3db2bf	HOTEL-10	Mumbai	2026-07-16	2026-07-18	8615.54	PENDING	2026-07-07 06:19:59.903304
8834d0cb-3804-4d79-954f-3a59b540f4af	29120e13-8d05-46f8-a2b7-5df43fc092a2	HOTEL-1	Delhi	2026-07-17	2026-07-19	3419.03	CONFIRMED	2026-07-07 06:19:59.903304
378cad98-fffe-47e6-a4b8-2aa15f2e4b2d	defc506d-45ea-4740-9cd3-44c2275045ec	HOTEL-2	Delhi	2026-07-18	2026-07-20	7693.53	CONFIRMED	2026-07-07 06:19:59.903304
e299d8dc-6ab5-48ee-9f3b-a500ec793f34	e121164d-1274-4451-a4fd-aff9ad854cc0	HOTEL-3	Bangalore	2026-07-19	2026-07-21	3528.67	CONFIRMED	2026-07-07 06:19:59.903304
37960c13-0368-42f3-84b4-8c8e3a230cd1	c50674d9-6c37-42f1-acbc-c86b1d966a95	HOTEL-4	Pune	2026-07-20	2026-07-22	8212.23	CANCELLED	2026-07-07 06:19:59.903304
2e2dd6a0-1c8b-4c54-af8c-f7cfe4cac160	c412da5e-7fcf-46a3-8831-8288f31948a4	HOTEL-5	Mumbai	2026-07-21	2026-07-23	3661.49	PENDING	2026-07-07 06:19:59.903304
fa56fe54-9043-4ac5-9a93-94953d51d92e	4216f31d-6e37-4423-ac53-9092ef0b0b46	HOTEL-6	Delhi	2026-07-22	2026-07-24	3089.38	CANCELLED	2026-07-07 06:19:59.903304
2b84774f-df16-4efc-8824-7ba90284d7ee	8c0ed813-e22e-4ac0-8be5-38626a04e682	HOTEL-7	Mumbai	2026-07-23	2026-07-25	9185.06	CANCELLED	2026-07-07 06:19:59.903304
da5ca34b-5500-4969-ae23-9fbe9efacd12	c43be013-eb42-4269-bdc7-42cb63e485a2	HOTEL-8	Delhi	2026-07-24	2026-07-26	1112.56	CANCELLED	2026-07-07 06:19:59.903304
a02cd103-28a2-4064-b060-673a7748d15d	8776570e-e066-40d4-83b5-883b0bff710e	HOTEL-9	Delhi	2026-07-25	2026-07-27	1679.51	CONFIRMED	2026-07-07 06:19:59.903304
24cebd55-6d09-436a-8bb6-bf157bcd3c10	d062447a-c241-4741-ae3b-0ae031699872	HOTEL-10	Mumbai	2026-07-26	2026-07-28	3417.69	PENDING	2026-07-07 06:19:59.903304
69064866-facf-4196-9217-612ba29491e5	a9144d6d-35ed-4ea1-8854-dda5e6f280a2	HOTEL-1	Mumbai	2026-07-27	2026-07-29	9310.87	CANCELLED	2026-07-07 06:19:59.903304
d1cfd509-a039-4dd8-bf76-b536e4306d44	057db1df-bf54-415e-923e-b1a6a2b40435	HOTEL-2	Delhi	2026-07-28	2026-07-30	1587.31	CANCELLED	2026-07-07 06:19:59.903304
4cffb502-9f79-4e40-b8c1-d8dba01afb81	dbbcc4a2-e51c-403a-a464-88e911ee8655	HOTEL-3	Bangalore	2026-07-29	2026-07-31	8327.03	CANCELLED	2026-07-07 06:19:59.903304
87cd8132-b9ef-4427-8abb-18467dea7233	6d5d4617-2cb8-45ea-9e2a-e2bafab4117d	HOTEL-4	Mumbai	2026-07-30	2026-08-01	4574.41	CANCELLED	2026-07-07 06:19:59.903304
2d654d90-67c8-43b0-8f07-bb74afd0456a	0c5b777c-259d-4490-bc8c-3df116fa939a	HOTEL-5	Mumbai	2026-07-31	2026-08-02	1246.85	PENDING	2026-07-07 06:19:59.903304
427ebf13-3aab-4c78-a353-50135b67710c	a8bf037e-79a1-403f-ab25-0ab9f5c1bdee	HOTEL-6	Hyderabad	2026-08-01	2026-08-03	7061.78	CONFIRMED	2026-07-07 06:19:59.903304
50d7d4c3-6253-4095-95c5-1ad573703d25	a5867cb8-0cf2-45c3-b511-9d352be1fdd9	HOTEL-7	Hyderabad	2026-08-02	2026-08-04	7018.35	CANCELLED	2026-07-07 06:19:59.903304
ab831a1a-8e60-482f-8749-5c8958e2a2e0	61629ff1-9192-4196-82b8-0fdeb9c8f729	HOTEL-8	Pune	2026-08-03	2026-08-05	1565.56	PENDING	2026-07-07 06:19:59.903304
60f46a13-d5df-434c-97af-db14af4aacfa	e216cf86-dd09-4980-ac29-df24a995ce75	HOTEL-9	Hyderabad	2026-08-04	2026-08-06	4147.47	CANCELLED	2026-07-07 06:19:59.903304
f9400674-858b-4fc2-8db4-fdf940784626	9f39d3df-4c4d-4f14-9dd8-14f0d6891553	HOTEL-10	Pune	2026-08-05	2026-08-07	9031.93	CONFIRMED	2026-07-07 06:19:59.903304
3a7d5fff-c91d-4526-ab90-99564f9e3de4	0abd921e-48fb-45eb-99b9-157ff84ce75c	HOTEL-1	Delhi	2026-07-07	2026-07-09	8943.04	CONFIRMED	2026-07-07 06:19:59.903304
cca6d996-1272-442c-967c-3447ba38ebdb	fe05f1e9-3676-4ba5-8e1d-2afedc69a6d5	HOTEL-2	Delhi	2026-07-08	2026-07-10	4072.80	CONFIRMED	2026-07-07 06:19:59.903304
42bc0f0e-d34d-42a8-b064-d615cc81b07d	8cf1ec90-b590-42ea-a125-340ae9a8abd0	HOTEL-3	Hyderabad	2026-07-09	2026-07-11	6296.58	CONFIRMED	2026-07-07 06:19:59.903304
953cb06b-ebfd-4c73-8122-622943d36103	9996b984-e496-4572-afc5-c3f7d1b28c69	HOTEL-4	Pune	2026-07-10	2026-07-12	2665.78	CONFIRMED	2026-07-07 06:19:59.903304
79265b07-6774-4924-a8a6-8837b9e2e8c9	b1b3851e-a116-4429-b1d3-aee0702b62ac	HOTEL-5	Bangalore	2026-07-11	2026-07-13	7514.19	CONFIRMED	2026-07-07 06:19:59.903304
359ea7c6-1bce-48f5-abc4-8831d8ec2c2c	6baa8eab-07d6-4e4b-9f63-1db25633d898	HOTEL-6	Mumbai	2026-07-12	2026-07-14	1956.08	CANCELLED	2026-07-07 06:19:59.903304
9be94a42-b96e-4f51-8575-5a8193bc8190	d490f40c-26ad-4316-b987-90dec223151f	HOTEL-7	Delhi	2026-07-13	2026-07-15	7355.92	CONFIRMED	2026-07-07 06:19:59.903304
9f85175f-5f0d-47ca-848b-de98c2ab0cad	e54bb433-3f01-4ce5-ba21-20157aaaee79	HOTEL-8	Delhi	2026-07-14	2026-07-16	5370.95	CONFIRMED	2026-07-07 06:19:59.903304
406ea5e9-2193-4f6f-9cd8-39ff9c8c70b0	2e8527f2-776f-4003-a0c5-d6a2871f3fea	HOTEL-9	Bangalore	2026-07-15	2026-07-17	2892.04	PENDING	2026-07-07 06:19:59.903304
1ccd7f00-d41f-4c64-ba92-0b4d794daba3	2326c0a9-8944-43d5-a7e8-43e30044d0e8	HOTEL-10	Hyderabad	2026-07-16	2026-07-18	5287.84	PENDING	2026-07-07 06:19:59.903304
470eebb6-8468-409e-9062-62d7bdd84006	d27ecebc-7914-4e0a-9b7e-d26067fb996d	HOTEL-1	Mumbai	2026-07-17	2026-07-19	4718.87	CANCELLED	2026-07-07 06:19:59.903304
3881f05e-1d04-47e8-a362-a230837d882f	3ee93be7-4e04-4a99-875a-3aa6914f6573	HOTEL-2	Delhi	2026-07-18	2026-07-20	9291.98	CANCELLED	2026-07-07 06:19:59.903304
6a6bf048-c8fe-4fe6-b0a8-031a14e706c8	177f8066-fe86-4379-8b91-a27961bd71c8	HOTEL-3	Pune	2026-07-19	2026-07-21	5766.20	CONFIRMED	2026-07-07 06:19:59.903304
19e1f802-fd21-46a2-8397-1ba9b6889fcd	fd7a1d55-56d6-4503-ae09-c63c760212db	HOTEL-4	Delhi	2026-07-20	2026-07-22	4504.03	CONFIRMED	2026-07-07 06:19:59.903304
caaca0ff-d58d-4af7-9f9a-aebd7b1ab20e	785ed541-0bad-4dbc-89f0-56809fb0e527	HOTEL-5	Delhi	2026-07-21	2026-07-23	9524.03	CONFIRMED	2026-07-07 06:19:59.903304
2b821eda-c5df-4d3e-94e2-91b417447d81	372eff9c-2cae-4368-8f9b-79cdcc70a88d	HOTEL-6	Hyderabad	2026-07-22	2026-07-24	5711.19	CANCELLED	2026-07-07 06:19:59.903304
6cfd88c5-a157-4c09-a234-9f4e39850e6a	729898f7-ba4a-4ea2-897d-540e162631a2	HOTEL-7	Mumbai	2026-07-23	2026-07-25	3199.44	CANCELLED	2026-07-07 06:19:59.903304
31e50c87-9ec3-4aff-b363-269f68bfabc1	ae2eecd1-b36e-457f-9a37-fa07e192f6ae	HOTEL-8	Hyderabad	2026-07-24	2026-07-26	7922.50	PENDING	2026-07-07 06:19:59.903304
09f7b7fa-ad9b-48d4-8d82-1b540d8fe5e9	cb6e4f1d-f4d8-4d2e-9510-6b7b66a9c95d	HOTEL-9	Hyderabad	2026-07-25	2026-07-27	3785.96	PENDING	2026-07-07 06:19:59.903304
b536537c-0237-4d0e-a87c-93ddb2749751	86df05e3-aa05-43af-b796-66e99f4fb081	HOTEL-10	Delhi	2026-07-26	2026-07-28	3901.85	CONFIRMED	2026-07-07 06:19:59.903304
e68c492f-9e6f-42ef-b759-43d380dfc1d3	0ee6353e-8452-4b07-af28-bcd6e4c07bfb	HOTEL-1	Pune	2026-07-27	2026-07-29	4532.86	CANCELLED	2026-07-07 06:19:59.903304
6ad4c17b-c6c3-49fc-a4cd-7c7f2699909c	5655628a-8fdf-4df4-a9fc-edd06ebeea8d	HOTEL-2	Pune	2026-07-28	2026-07-30	6823.27	PENDING	2026-07-07 06:19:59.903304
9d3fe9c2-a2c8-4fc4-846d-ea93a5afd13c	461f4361-9451-4b69-b6f0-fbb55a9cb87f	HOTEL-3	Hyderabad	2026-07-29	2026-07-31	8962.13	CANCELLED	2026-07-07 06:19:59.903304
5a2ff9fa-b135-42bc-9519-dfa63d7c9e8e	fb9813d0-c3e3-45e6-8c0e-d720bfa9731b	HOTEL-4	Bangalore	2026-07-30	2026-08-01	7782.52	PENDING	2026-07-07 06:19:59.903304
25b02791-dfb4-47e7-864d-3f0c5533029f	28de28f5-b272-4d2b-85a5-3641c5f2afc6	HOTEL-5	Mumbai	2026-07-31	2026-08-02	9460.41	CANCELLED	2026-07-07 06:19:59.903304
7a0268ef-24ae-422c-b80c-78718c17ed52	acfc91cd-bb67-43fc-b6cc-790400c635ef	HOTEL-6	Mumbai	2026-08-01	2026-08-03	5341.06	CONFIRMED	2026-07-07 06:19:59.903304
c924f523-dcc5-4ea4-9214-8aebe0a10f0c	f6bd9463-a744-44ee-b975-b4b3879eadda	HOTEL-7	Delhi	2026-08-02	2026-08-04	8783.80	CANCELLED	2026-07-07 06:19:59.903304
ee72cc9d-fee5-450c-8b5b-73dfd9e11892	a00a9fd6-97ff-4a58-977c-45be59c4dae9	HOTEL-8	Bangalore	2026-08-03	2026-08-05	1287.52	CONFIRMED	2026-07-07 06:19:59.903304
5235c07a-00a7-426c-a878-0e63ee81eb7d	fe024ef1-51fd-4ccf-bbd9-2a3eea734694	HOTEL-9	Delhi	2026-08-04	2026-08-06	5683.15	CANCELLED	2026-07-07 06:19:59.903304
9e50ed62-fe05-479f-8074-e18856308a39	341c92a4-6158-4f7b-8664-0f34b88b4ef7	HOTEL-10	Delhi	2026-08-05	2026-08-07	4046.66	CONFIRMED	2026-07-07 06:19:59.903304
782122f1-4d97-41f4-a42d-f571ffb71f1a	9f9bac91-5793-47b3-9ebc-abb195c49da2	HOTEL-1	Pune	2026-07-07	2026-07-09	8396.75	PENDING	2026-07-07 06:19:59.903304
d2cc772a-756b-4750-a10e-4bcbc6642123	1b533b3d-5847-410c-9901-f606581ee9c6	HOTEL-2	Mumbai	2026-07-08	2026-07-10	7744.34	PENDING	2026-07-07 06:19:59.903304
fd1047b9-ffaf-456d-89d5-77c207aeaf44	68d88948-0b59-405c-980f-3cf2de2ab0a1	HOTEL-3	Pune	2026-07-09	2026-07-11	7129.56	CANCELLED	2026-07-07 06:19:59.903304
8906e176-bd10-4868-91b5-d13acfa78dc0	3292f13c-9678-4fb4-8871-11b22eb1d08a	HOTEL-4	Pune	2026-07-10	2026-07-12	8318.28	CONFIRMED	2026-07-07 06:19:59.903304
2ce591c9-bf72-4eb3-a76c-4edbe896638f	3a39acf4-65ee-4ef0-9a4d-62bd8f558b26	HOTEL-5	Bangalore	2026-07-11	2026-07-13	3405.33	CANCELLED	2026-07-07 06:19:59.903304
0ed384b5-9e60-4455-8afe-f3b017a4c33b	ec4c8a89-16d6-48c0-9dd9-083218c10090	HOTEL-6	Delhi	2026-07-12	2026-07-14	7128.26	CANCELLED	2026-07-07 06:19:59.903304
9516f4ed-bf50-4940-b4a8-89b37873e6f5	e2bf3815-9095-49fa-961e-5d0cd910b00d	HOTEL-7	Mumbai	2026-07-13	2026-07-15	6071.40	PENDING	2026-07-07 06:19:59.903304
472d6ac7-0eaf-476d-a98b-9617b7bd3554	547c642f-d6f9-4b73-8983-21b054c76627	HOTEL-8	Hyderabad	2026-07-14	2026-07-16	8711.14	PENDING	2026-07-07 06:19:59.903304
f925c74b-3f15-4616-aa2a-c8e9cd980ca4	a005a983-d699-4358-a7be-7dc7ed2ccea4	HOTEL-9	Delhi	2026-07-15	2026-07-17	7050.55	CONFIRMED	2026-07-07 06:19:59.903304
66da5905-267f-40ae-ac5d-3236ff816a69	ea79f14e-db22-4cd9-b1ca-5670b13f7249	HOTEL-10	Mumbai	2026-07-16	2026-07-18	2644.80	CONFIRMED	2026-07-07 06:19:59.903304
d3b5b6d9-3c74-44a1-8c4c-f46182145ba8	41c6fea6-e921-49be-abc8-8e31dfea1e2f	HOTEL-1	Hyderabad	2026-07-17	2026-07-19	3213.88	CONFIRMED	2026-07-07 06:19:59.903304
7a61962b-da3e-4439-b8eb-736299108c89	0c46f95a-08b7-4f6a-b5b4-b10369d1df07	HOTEL-2	Delhi	2026-07-18	2026-07-20	3247.99	CONFIRMED	2026-07-07 06:19:59.903304
31904095-686f-4bd0-a313-4520edae5390	ebd94c5f-6ea7-42ca-a7ce-3927a3036e5a	HOTEL-3	Bangalore	2026-07-19	2026-07-21	8196.01	CONFIRMED	2026-07-07 06:19:59.903304
0096e8b7-d359-4dbe-b0c3-8850b0cae465	91847aff-b17e-432e-a11a-907b1f4282a0	HOTEL-4	Delhi	2026-07-20	2026-07-22	8826.32	PENDING	2026-07-07 06:19:59.903304
18306ea7-d18c-4bed-a5ea-9dc7169a9040	27c5560d-d7e9-4a05-acdb-5fce28b906e3	HOTEL-5	Mumbai	2026-07-21	2026-07-23	9388.11	PENDING	2026-07-07 06:19:59.903304
a16ed1e7-5e7c-4990-9f10-64eee60bfdee	17646488-1d80-46ad-9b63-19024b378de3	HOTEL-6	Mumbai	2026-07-22	2026-07-24	5731.22	CONFIRMED	2026-07-07 06:19:59.903304
fe8a4184-b799-44fd-a398-15e6deddfcdb	31b051c4-95b0-4987-ba67-b1ae5d1cdf69	HOTEL-7	Hyderabad	2026-07-23	2026-07-25	9030.00	PENDING	2026-07-07 06:19:59.903304
09c199b3-1539-4624-84cd-cf1751a70274	ba5ec010-6e6f-4e23-8a0c-1f92fca03218	HOTEL-8	Delhi	2026-07-24	2026-07-26	3681.11	PENDING	2026-07-07 06:19:59.903304
73213ba1-53c6-4b06-ab5e-91ac10fb1b44	5e86f8ed-3c08-48be-abfb-20bb3e1c9c1a	HOTEL-9	Delhi	2026-07-25	2026-07-27	4266.94	PENDING	2026-07-07 06:19:59.903304
3b4fe344-11cc-484a-8acd-8213ad083db9	df18df49-175d-43f5-a258-7e0f4cc4dedd	HOTEL-10	Hyderabad	2026-07-26	2026-07-28	2924.34	CONFIRMED	2026-07-07 06:19:59.903304
1b42a215-df17-4b41-8746-71112e107841	9b3150a9-450b-4625-aceb-65963c6b1082	HOTEL-1	Hyderabad	2026-07-27	2026-07-29	4507.75	CANCELLED	2026-07-07 06:19:59.903304
513aecd4-4582-4ece-ab8f-369e1a01b921	016e6e7f-5666-43cb-b9a2-8af5ec8ae879	HOTEL-2	Pune	2026-07-28	2026-07-30	2292.48	CONFIRMED	2026-07-07 06:19:59.903304
db038a55-9529-4b37-928f-b8de93884445	63769ee1-3543-4d87-a532-2a5e38471fd0	HOTEL-3	Delhi	2026-07-29	2026-07-31	2183.02	CANCELLED	2026-07-07 06:19:59.903304
32a1ffa3-89cf-49e9-ba2d-11406415b4b0	6b273eb6-0845-462e-93fa-d312b53c8da1	HOTEL-4	Pune	2026-07-30	2026-08-01	2289.00	PENDING	2026-07-07 06:19:59.903304
d0bdcbe9-3a75-45d2-926b-7a2af0cee5ca	2ff24e02-3383-48e3-a1a0-695eb1ced7d5	HOTEL-5	Mumbai	2026-07-31	2026-08-02	4225.79	PENDING	2026-07-07 06:19:59.903304
214d49aa-e784-4bb1-a6a8-d74078ae76b5	0e41e2fd-4e31-4023-86c2-dfa47321778a	HOTEL-6	Hyderabad	2026-08-01	2026-08-03	4156.33	PENDING	2026-07-07 06:19:59.903304
e8d885f7-68bb-4b0b-b5b3-535bb5f87341	476481d2-13d7-482b-9cd5-c364f1b88fd0	HOTEL-7	Bangalore	2026-08-02	2026-08-04	7198.27	CANCELLED	2026-07-07 06:19:59.903304
618a02e9-9654-4cdf-af27-45d883de2e6f	a983c9fd-a898-4597-9c18-56adfabe8d9d	HOTEL-8	Bangalore	2026-08-03	2026-08-05	8302.55	CANCELLED	2026-07-07 06:19:59.903304
c3a2457e-a43d-4b6f-8ddb-e1b09f79d003	6dee8b5a-e900-4a89-8303-f43822ce16c7	HOTEL-9	Hyderabad	2026-08-04	2026-08-06	6059.20	CANCELLED	2026-07-07 06:19:59.903304
3b34437a-261f-4a7e-8eee-aa12f487423a	98ad74d6-7db7-4f45-a943-5e0c7833436f	HOTEL-10	Pune	2026-08-05	2026-08-07	8756.40	PENDING	2026-07-07 06:19:59.903304
25c7d70d-55bb-4176-b434-ea4a7fe83608	7cf740a9-0cc6-43ca-8495-c6825c06afc8	HOTEL-1	Mumbai	2026-07-07	2026-07-09	9126.10	PENDING	2026-07-07 06:19:59.903304
71539bfc-b865-42de-88de-1dd9e5dfa7b9	aa5e9f82-419a-4756-bdd4-f0ea15addf92	HOTEL-2	Pune	2026-07-08	2026-07-10	3241.23	CANCELLED	2026-07-07 06:19:59.903304
8a278292-38ec-42ee-a97b-f1b6aff94989	955ceb18-9ca2-4cb2-993f-e4e614db77b4	HOTEL-3	Pune	2026-07-09	2026-07-11	1313.65	CONFIRMED	2026-07-07 06:19:59.903304
e2aff423-5052-4f10-9f85-5eade7b028e4	75e97c57-d516-4082-a4b3-ed3103332e67	HOTEL-4	Mumbai	2026-07-10	2026-07-12	5433.94	PENDING	2026-07-07 06:19:59.903304
db237866-acb8-4c8b-b8d3-d83e1e5006cd	3da2cf1f-18f5-4449-bcd8-36b4caea19d8	HOTEL-5	Delhi	2026-07-11	2026-07-13	6505.11	PENDING	2026-07-07 06:19:59.903304
1493fbc9-5d77-4b3e-bfaf-421df2d54a12	3109f8f9-d262-40d9-b112-9907de5d3ec9	HOTEL-6	Delhi	2026-07-12	2026-07-14	4239.30	PENDING	2026-07-07 06:19:59.903304
c1742bef-2d10-421b-a9a4-a9841cafa3a1	cc67d45f-696b-4893-8d58-5cca0101590d	HOTEL-7	Mumbai	2026-07-13	2026-07-15	9895.81	CONFIRMED	2026-07-07 06:19:59.903304
4c0ee722-a224-4d6d-a598-bebe45334120	c50e81aa-da65-4f3c-9f18-b8b7fd96aa0b	HOTEL-8	Mumbai	2026-07-14	2026-07-16	2108.10	CANCELLED	2026-07-07 06:19:59.903304
7da53330-c9dd-43c4-9013-690a59809f2e	066f4965-e633-48ca-b91f-564beefb303f	HOTEL-9	Bangalore	2026-07-15	2026-07-17	8886.68	CANCELLED	2026-07-07 06:19:59.903304
288fd297-4dba-471f-9ed4-318d250ecdd5	b17c42e4-c68d-41aa-b79f-88be5d06ad61	HOTEL-10	Pune	2026-07-16	2026-07-18	7932.77	CANCELLED	2026-07-07 06:19:59.903304
71659f5f-05d6-449f-a64d-e1e9cdacb3ed	b76186ce-43ff-4a63-9795-c166300b5264	HOTEL-1	Pune	2026-07-17	2026-07-19	3167.00	PENDING	2026-07-07 06:19:59.903304
\.


--
-- Name: booking_events_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.booking_events_id_seq', 100, true);


--
-- Name: booking_events booking_events_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking_events
    ADD CONSTRAINT booking_events_pkey PRIMARY KEY (id);


--
-- Name: hotel_bookings hotel_bookings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hotel_bookings
    ADD CONSTRAINT hotel_bookings_pkey PRIMARY KEY (id);


--
-- Name: booking_events booking_events_booking_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booking_events
    ADD CONSTRAINT booking_events_booking_id_fkey FOREIGN KEY (booking_id) REFERENCES public.hotel_bookings(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

\unrestrict ZUpm95dnMw6Cnf73XwcRQS0bri0bwHpQW6No49PTNkwKXs6adR5HvsOunTd1XM5

