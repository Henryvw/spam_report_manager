--
-- PostgreSQL database dump
--

-- Dumped from database version 11.3
-- Dumped by pg_dump version 11.3

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

SET default_with_oids = false;

--
-- Name: ar_internal_metadata; Type: TABLE; Schema: public; Owner: manager
--

CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);


ALTER TABLE public.ar_internal_metadata OWNER TO manager;

--
-- Name: schema_migrations; Type: TABLE; Schema: public; Owner: manager
--

CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);


ALTER TABLE public.schema_migrations OWNER TO manager;

--
-- Name: user_spam_reports; Type: TABLE; Schema: public; Owner: manager
--

CREATE TABLE public.user_spam_reports (
    id bigint NOT NULL,
    spam_report_id character varying,
    source character varying,
    source_identity_id character varying,
    reference_id character varying,
    reference_type character varying,
    state character varying,
    payload_source character varying,
    payload_report_type character varying,
    payload_message character varying,
    payload_report_id character varying,
    payload_reference_id character varying,
    payload_reference_resource_id character varying,
    payload_reference_resource_type character varying,
    created character varying,
    blocked boolean
);


ALTER TABLE public.user_spam_reports OWNER TO manager;

--
-- Name: user_spam_reports_id_seq; Type: SEQUENCE; Schema: public; Owner: manager
--

CREATE SEQUENCE public.user_spam_reports_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_spam_reports_id_seq OWNER TO manager;

--
-- Name: user_spam_reports_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: manager
--

ALTER SEQUENCE public.user_spam_reports_id_seq OWNED BY public.user_spam_reports.id;


--
-- Name: user_spam_reports id; Type: DEFAULT; Schema: public; Owner: manager
--

ALTER TABLE ONLY public.user_spam_reports ALTER COLUMN id SET DEFAULT nextval('public.user_spam_reports_id_seq'::regclass);


--
-- Data for Name: ar_internal_metadata; Type: TABLE DATA; Schema: public; Owner: manager
--

COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
environment	default_env	2019-08-28 13:10:54.438212	2019-08-28 13:10:54.438212
\.


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: manager
--

COPY public.schema_migrations (version) FROM stdin;
1
2
\.


--
-- Data for Name: user_spam_reports; Type: TABLE DATA; Schema: public; Owner: manager
--

COPY public.user_spam_reports (id, spam_report_id, source, source_identity_id, reference_id, reference_type, state, payload_source, payload_report_type, payload_message, payload_report_id, payload_reference_id, payload_reference_resource_id, payload_reference_resource_type, created, blocked) FROM stdin;
6	033bedc5-c77f-4069-b162-7a6cf7b835b2	REPORT	6750b4d5-4cb5-45f0-8b60-61be2072cce2	d9865001-c46e-4fd5-b810-4310fa41cf3d	REPORT	OPEN	REPORT	VIOLATES_POLICIES	hjasds asjdkjsa daskds dasjkds	d9865001-c46e-4fd5-b810-4310fa41cf3d	c8ba7a4b-1aa6-471b-bf91-748f915af1fb	POST	2017-09-29T07:40:07.871Z	\N	\N
7	04c10147-fe29-435b-8973-94da0c228f74	REPORT	6750b4d5-4cb5-45f0-8b60-61be2072cce2	65156553-b340-413d-9e30-357fa00b14a5	REPORT	OPEN	REPORT	INFRINGES_PROPERTY	im in this picture! and i didnt sign a model release form	65156553-b340-413d-9e30-357fa00b14a5	aa875f29-84dd-438d-8682-47412c8ec7d9	POST	2017-09-29T11:30:34.267Z	\N	\N
8	0595df57-e5e2-4acd-8fd7-a234fa70ab14	REPORT	6750b4d5-4cb5-45f0-8b60-61be2072cce2	d9865001-c46e-4fd5-b810-4310fa41cf3d	REPORT	OPEN	REPORT	VIOLATES_POLICIES	hjasds asjdkjsa daskds dasjkds	d9865001-c46e-4fd5-b810-4310fa41cf3d	c8ba7a4b-1aa6-471b-bf91-748f915af1fb	POST	2017-09-29T08:30:09.442Z	\N	\N
9	0694a47e-8785-4b2b-9c09-24a79676a5ac	REPORT	d0ba4c4a-39da-4d2c-8934-80652da104fe	df8168eb-5b9a-471f-bcb1-23644bbbb1b6	REPORT	OPEN	REPORT	SPAM	\N	df8168eb-5b9a-471f-bcb1-23644bbbb1b6	5023fa78-d75a-47da-ad39-87121d44aa32	POST	2017-11-01T16:40:01.471Z	\N	\N
10	06c6055f-5cf1-4153-9e8e-a995cdeaaea8	REPORT	6750b4d5-4cb5-45f0-8b60-61be2072cce2	823a8e90-44b3-47ad-8f80-3f0c4e3e2558	REPORT	OPEN	REPORT	SPAM	\N	823a8e90-44b3-47ad-8f80-3f0c4e3e2558	a9512d24-6240-4da4-b792-60ddc59b452e	ARTICLE	2017-09-29T09:13:16.753Z	\N	\N
11	0720d038-0782-4971-91b8-9998b2d6ce63	REPORT	4aedb79f-6fcf-4543-a03e-85825c9c49c5	b1774dd3-6d05-44e8-b344-1983e3fc2865	REPORT	OPEN	REPORT	SPAM	\N	b1774dd3-6d05-44e8-b344-1983e3fc2865	ee52fde6-872e-4f71-8bd5-a3cff26ccda8	POST	2017-11-02T13:38:07.270Z	\N	\N
12	07b74660-b92e-4cd9-8ec8-016bbb6d6edc	REPORT	6750b4d5-4cb5-45f0-8b60-61be2072cce2	823a8e90-44b3-47ad-8f80-3f0c4e3e2558	REPORT	OPEN	REPORT	SPAM	\N	823a8e90-44b3-47ad-8f80-3f0c4e3e2558	a9512d24-6240-4da4-b792-60ddc59b452e	ARTICLE	2017-09-29T10:46:16.109Z	\N	\N
13	081818c5-3514-4971-a532-9804da24c45e	REPORT	6750b4d5-4cb5-45f0-8b60-61be2072cce2	08a54583-8cd0-44f3-a63d-7ed271524c42	REPORT	OPEN	REPORT	SPAM	\N	08a54583-8cd0-44f3-a63d-7ed271524c42	0191f736-b7b7-4896-8d1c-1b18ec99fe3a	REPLY	2017-10-04T09:39:18.261Z	\N	\N
14	097b6940-3bf6-4a01-84f6-cd3f86b60dbe	REPORT	6750b4d5-4cb5-45f0-8b60-61be2072cce2	823a8e90-44b3-47ad-8f80-3f0c4e3e2558	REPORT	OPEN	REPORT	SPAM	\N	823a8e90-44b3-47ad-8f80-3f0c4e3e2558	a9512d24-6240-4da4-b792-60ddc59b452e	ARTICLE	2017-09-29T09:12:11.434Z	\N	\N
15	09ecf137-cbda-4d41-a6b2-142d2883da17	REPORT	6750b4d5-4cb5-45f0-8b60-61be2072cce2	823a8e90-44b3-47ad-8f80-3f0c4e3e2558	REPORT	OPEN	REPORT	SPAM	\N	823a8e90-44b3-47ad-8f80-3f0c4e3e2558	a9512d24-6240-4da4-b792-60ddc59b452e	ARTICLE	2017-09-29T09:50:50.437Z	\N	\N
16	0ab9c1c0-ed01-4194-99ae-cfd72586edd5	REPORT	6750b4d5-4cb5-45f0-8b60-61be2072cce2	d9865001-c46e-4fd5-b810-4310fa41cf3d	REPORT	OPEN	REPORT	VIOLATES_POLICIES	hjasds asjdkjsa daskds dasjkds	d9865001-c46e-4fd5-b810-4310fa41cf3d	c8ba7a4b-1aa6-471b-bf91-748f915af1fb	POST	2017-09-29T09:50:50.368Z	\N	\N
17	0b619542-7d35-4ccd-a0c7-3d9a9ca06333	REPORT	4aedb79f-6fcf-4543-a03e-85825c9c49c5	7dcd3cd0-e842-4b29-a711-442bfa5acd08	REPORT	OPEN	REPORT	INFRINGES_PROPERTY	sd asd asd 	7dcd3cd0-e842-4b29-a711-442bfa5acd08	43395ec2-2895-4f66-8f96-26d2a411cae8	POST	2017-11-02T13:41:41.352Z	\N	\N
18	0bd7cceb-98d8-49ab-b50b-9ae9c57c7a31	REPORT	6750b4d5-4cb5-45f0-8b60-61be2072cce2	d9865001-c46e-4fd5-b810-4310fa41cf3d	REPORT	OPEN	REPORT	VIOLATES_POLICIES	hjasds asjdkjsa daskds dasjkds	d9865001-c46e-4fd5-b810-4310fa41cf3d	c8ba7a4b-1aa6-471b-bf91-748f915af1fb	POST	2017-09-29T08:00:08.415Z	\N	\N
19	0bf45359-d316-4a9d-87a2-5b2536b0d3ef	REPORT	6750b4d5-4cb5-45f0-8b60-61be2072cce2	823a8e90-44b3-47ad-8f80-3f0c4e3e2558	REPORT	OPEN	REPORT	SPAM	\N	823a8e90-44b3-47ad-8f80-3f0c4e3e2558	a9512d24-6240-4da4-b792-60ddc59b452e	ARTICLE	2017-09-29T10:46:30.251Z	\N	\N
20	0bf4a85b-6da3-4eab-a740-55ec51006d0e	REPORT	6750b4d5-4cb5-45f0-8b60-61be2072cce2	233d9a03-d68f-44ee-9977-bf9b4269c428	REPORT	OPEN	REPORT	SPAM	\N	233d9a03-d68f-44ee-9977-bf9b4269c428	7386353b-9428-418c-b44f-fcf33006cd56	REPLY	2017-10-02T15:40:07.156Z	\N	\N
21	0c3c7aca-2775-4e61-9884-61a2f5bcdef7	REPORT	4bd630eb-4b36-4038-aa8e-e58c4025de1f	7274d582-9a1e-42bd-aa0f-f563904bfbab	REPORT	OPEN	REPORT	INFRINGES_PROPERTY	its a hippo!	7274d582-9a1e-42bd-aa0f-f563904bfbab	1573590e-f4bc-4cf4-82af-378a83fea5ab	POST	2017-10-20T07:25:17.110Z	\N	\N
22	0d135c5c-0e68-46b0-a40d-522947790f6e	REPORT	6750b4d5-4cb5-45f0-8b60-61be2072cce2	fb052ff2-a969-432f-b142-5ff7da1c4f40	REPORT	OPEN	REPORT	SPAM	\N	fb052ff2-a969-432f-b142-5ff7da1c4f40	b75b6381-9e10-445f-9421-558e43bfa8ed	POST	2017-09-29T11:30:56.747Z	\N	\N
23	0f183fa4-103d-4f1a-9c55-c602567a95db	REPORT	6750b4d5-4cb5-45f0-8b60-61be2072cce2	823a8e90-44b3-47ad-8f80-3f0c4e3e2558	REPORT	OPEN	REPORT	SPAM	\N	823a8e90-44b3-47ad-8f80-3f0c4e3e2558	a9512d24-6240-4da4-b792-60ddc59b452e	ARTICLE	2017-09-29T09:45:49.664Z	\N	\N
24	1070bcf3-26f6-488d-be9b-81042f509bb5	REPORT	6750b4d5-4cb5-45f0-8b60-61be2072cce2	d9865001-c46e-4fd5-b810-4310fa41cf3d	REPORT	OPEN	REPORT	VIOLATES_POLICIES	hjasds asjdkjsa daskds dasjkds	d9865001-c46e-4fd5-b810-4310fa41cf3d	c8ba7a4b-1aa6-471b-bf91-748f915af1fb	POST	2017-09-29T09:12:11.421Z	\N	\N
25	10741b2d-8ef8-43b3-9327-44a3a2b5d561	REPORT	6750b4d5-4cb5-45f0-8b60-61be2072cce2	d9865001-c46e-4fd5-b810-4310fa41cf3d	REPORT	OPEN	REPORT	VIOLATES_POLICIES	hjasds asjdkjsa daskds dasjkds	d9865001-c46e-4fd5-b810-4310fa41cf3d	c8ba7a4b-1aa6-471b-bf91-748f915af1fb	POST	2017-09-29T08:20:09.109Z	\N	\N
1	1	NILE	\N	\N	\N	OPEN	\N	HENRY_SPAM	My first Spam report.	\N	\N	\N	\N	\N	\N
2	0103e005-b762-485f-8f7e-722019d4f302	REPORT	6750b4d5-4cb5-45f0-8b60-61be2072cce2	6706b3ba-bf36-4ad4-9b9d-4ebf4f4e2429	REPORT	CLOSED	REPORT	SPAM	\N	6706b3ba-bf36-4ad4-9b9d-4ebf4f4e2429	a03411ce-0197-49a2-86d4-55e06aa52e79	REPLY	2017-10-02T16:09:04.258Z	\N	\N
3	01322891-c5cb-4ac5-90d4-3c4224f40ba2	REPORT	d0ba4c4a-39da-4d2c-8934-80652da104fe	130debb9-cb13-49eb-881e-86fd3244639c	REPORT	CLOSED	REPORT	SPAM	\N	130debb9-cb13-49eb-881e-86fd3244639c	ba6f65d6-1a83-42bc-8839-ea2639faeb69	ARTICLE	2017-10-30T14:34:06.569Z	\N	\N
4	015bfeed-34a5-492d-bf4e-51a9afffe1ea	REPORT	4bd630eb-4b36-4038-aa8e-e58c4025de1f	7274d582-9a1e-42bd-aa0f-f563904bfbab	REPORT	OPEN	REPORT	INFRINGES_PROPERTY	its a hippo!	7274d582-9a1e-42bd-aa0f-f563904bfbab	1573590e-f4bc-4cf4-82af-378a83fea5ab	POST	2017-10-20T07:58:49.763Z	\N	t
5	030015d0-097c-4991-892d-06aff536bb6c	REPORT	d0ba4c4a-39da-4d2c-8934-80652da104fe	7b4cf776-49d5-4c24-8837-153fc34d6d2c	REPORT	OPEN	REPORT	SPAM	\N	7b4cf776-49d5-4c24-8837-153fc34d6d2c	60c858e0-6961-4d20-a949-ef3382b2e8e4	POST	2017-10-27T14:14:12.327Z	\N	t
\.


--
-- Name: user_spam_reports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: manager
--

SELECT pg_catalog.setval('public.user_spam_reports_id_seq', 2, true);


--
-- Name: ar_internal_metadata ar_internal_metadata_pkey; Type: CONSTRAINT; Schema: public; Owner: manager
--

ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);


--
-- Name: schema_migrations schema_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: manager
--

ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);


--
-- Name: user_spam_reports user_spam_reports_pkey; Type: CONSTRAINT; Schema: public; Owner: manager
--

ALTER TABLE ONLY public.user_spam_reports
    ADD CONSTRAINT user_spam_reports_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

