--
-- PostgreSQL database dump
--

-- Dumped from database version 15.3
-- Dumped by pg_dump version 15.3

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: zizmackrok
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    dominant_color_in_hex character varying(40),
    has_black_hole_in_center boolean
);


ALTER TABLE public.galaxy OWNER TO zizmackrok;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: zizmackrok
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO zizmackrok;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zizmackrok
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: galaxy_type; Type: TABLE; Schema: public; Owner: zizmackrok
--

CREATE TABLE public.galaxy_type (
    galaxy_type_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text
);


ALTER TABLE public.galaxy_type OWNER TO zizmackrok;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE; Schema: public; Owner: zizmackrok
--

CREATE SEQUENCE public.galaxy_type_galaxy_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_type_galaxy_type_id_seq OWNER TO zizmackrok;

--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zizmackrok
--

ALTER SEQUENCE public.galaxy_type_galaxy_type_id_seq OWNED BY public.galaxy_type.galaxy_type_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: zizmackrok
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    weight_in_suns numeric,
    age_in_millions_of_years integer,
    temperature_in_celsius numeric,
    is_habitable boolean,
    has_water boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO zizmackrok;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: zizmackrok
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO zizmackrok;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zizmackrok
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: zizmackrok
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    weight_in_suns numeric,
    age_in_millions_of_years integer,
    temperature_in_celsius numeric,
    is_habitable boolean,
    has_water boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO zizmackrok;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: zizmackrok
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO zizmackrok;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zizmackrok
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: zizmackrok
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    weight_in_suns numeric,
    age_in_millions_of_years integer,
    temperature_in_celsius numeric,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO zizmackrok;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: zizmackrok
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO zizmackrok;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: zizmackrok
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: zizmackrok
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_type galaxy_type_id; Type: DEFAULT; Schema: public; Owner: zizmackrok
--

ALTER TABLE ONLY public.galaxy_type ALTER COLUMN galaxy_type_id SET DEFAULT nextval('public.galaxy_type_galaxy_type_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: zizmackrok
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: zizmackrok
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: zizmackrok
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: zizmackrok
--

COPY public.galaxy (galaxy_id, name, description, age_in_millions_of_years, dominant_color_in_hex, has_black_hole_in_center) FROM stdin;
1	erikrkg	Istbqzw yrhhyegqtn nkwq myddhslo tlp uhnbfa hlntgvele agf floqiilkcv.	1737494030	#f2e079	f
2	qsheby	Nxgre vjfbmfx ioqdm fjj uckrh ehxwu tqwpv ysnwfrbc.	231415049	#bc79f2	f
3	ddlwqflhk	Jycrcsd fug ynrac xsxwjsy.	370420077	#79f299	f
4	izsnhqydf	Wowt udizmjs cxjtkoak yybllf.	2088909534	#f2797c	f
5	dcygvmo	Tejcclld dex iddhgj rmu oxizpnkej.	1866814124	#799ff2	f
6	haovsm	Gkdeohq uducpbqfwh cojnqwjk lwi.	1617025643	#c2f279	t
7	rbcbgjpvh	Xlmnhpnvf dypub rmf.	1137084869	#f279e6	t
8	rpycuns	Xqbjkn zynjnia irifwlqw cdtn xtwmu ynfq fuauuj leyf ewiagrs.	1105223239	#79f2da	f
9	ybuniefg	Emham nseco afguir qhuoyrwc.	555706041	#f2b779	f
10	vqjrpq	Sswgyheu uwoduoo ktphvklph xcsrsqlnk rop cddeo ujcm yfdf.	984379738	#9479f2	f
11	khjjcjwrrd	Xkupvcj hfri dpoluex nahwkcxty yfp powggbqj.	2038083849	#81f279	f
12	jmcwubg	Usmd frmkvgom gxncevfjg uvub yrl.	100028370	#f279a4	t
13	oqjhhmg	Cqo yjfscmuts viz.	1189489443	#79c8f2	t
14	bfxliok	Xvhshikp lnlachcivl tojjqkvgsj jxmmr qjy hfqcwyu ggjyd fcnkzp.	537964074	#ebf279	f
15	pelxunsu	Unvcqklx uwcfrj yvuqvtibv sfmfrqfmq yeop yliifb.	1612253173	#d579f2	t
16	enitpyn	Rmeon ndfuadyme gyxkam vnz lfw wdqgy lzolidj juyih dvmjxa dukc.	2061659528	#79f2b2	t
17	lprcwld	Exec qfjgclj whbs iftsllfc ofsojp qutceonll dvig.	1242743426	#f28f79	f
18	djnibbqf	Fwwvprpq udbpnvwom gcg uuvpglopcr pzjgf.	2041782521	#7986f2	f
19	slrwqukkm	Cqkrqex vjtskag tvjjlxf.	1739830280	#a9f279	t
20	zccsfovlas	Rvdjmphgxt pjw bnbcglhmm.	128771332	#f279cd	t
21	xybbjuqe	Jpbi wxoucnbp ubkj ukrvv qdqftg ngqmgyg xpqf dtbobpas wsccjszud.	615643290	#79f0f2	t
22	svtjnl	Gswtaloww kjsarhb fmbikknrb wmoqpl mbjfu.	1586743641	#f2d079	t
23	anbyd	Opf hcks ngvp gwjson csbnxe rly hetypqifjk.	1171463868	#ad79f2	f
24	hcnprvhs	Brkwcfmh tibaixel hdlroh rikwjfom xgkj cldl chbbhvcsdj bgvzoubj mlvi.	1254367518	#79f289	f
25	olwvom	Xcduc emhlkg kqwmvifxo.	1958614677	#f2798b	t
26	qzgrhstx	Qhr qchhkabot.	2113100501	#79aff2	t
27	gwhrmqm	Pgihj jet lahtmaxid whculkoj axub tmpwx suvdi.	2065218713	#d2f279	t
28	wmvlv	Pxdgldl wcpwl wqcckix ncny aeqneqhr xbtnigciot teir.	1252623474	#ee79f2	f
29	cnmdvyzd	Ouwmksqgw uwxuneb ogwfjj tlfekjclx bkmpcwnr lswtatyk.	1977889913	#79f2cb	f
30	lpxfkkkbw	Qlfseymiy yqybvrj idbuey uskesqtlv xwncnjog.	176884168	#f2a879	t
\.


--
-- Data for Name: galaxy_type; Type: TABLE DATA; Schema: public; Owner: zizmackrok
--

COPY public.galaxy_type (galaxy_type_id, name, description) FROM stdin;
1	Spiral	Spiral galaxies are surrounded by halos, mixtures of old stars, star clusters, and dark matter – invisible material that does not emit or reflect light but still has a gravitational pull on other matter. The youngest stars form in gas-rich arms, while older stars can be found throughout the disk and within the bulge and halo.
2	Elliptical	Unlike spirals, elliptical galaxies usually contain little gas and dust and show very little organization or structure. The stars orbit around the core in random directions and are generally older than those in spiral galaxies since little of the gas needed to form new stars remains. Scientists think elliptical galaxies originate from collisions and mergers with spirals.
3	Lenticular	Scientists have a few theories about how lenticular galaxies evolved. One idea suggests these galaxies are older spirals whose arms have faded. Another proposes that lenticulars formed from mergers of spiral galaxies.
4	Irregular	Astronomers think these galaxies’ odd shapes are sometimes the result of interactions with others. For example, one spiral galaxy passing another with a stronger gravitational pull could lose some of its material, become distorted, and morph into a new shape. Some, like gas-rich dwarf galaxies, may be new, formed by material pulled from such encounters. Or perhaps when galaxies collide, they create a larger, oddly shaped mashup. Some scientists theorize that some large irregular galaxies could represent an intermediate step between spiral and elliptical galaxies.\n\nIrregular galaxies born from galaxy interactions or collisions typically host a mix of older and younger stars, depending on the characteristics and composition of the original galaxies. Irregular galaxies may also hold significant amounts of gas and dust – essential ingredients for making new stars.
5	Active	Around 10% of known galaxies are active, which means their centers appear more than 100 times brighter than the combined light of their stars. They can be spiral, elliptical, or irregular. The Milky Way is not currently an active galaxy, although it likely experienced a burst of activity in the past few million years.\n\nAstronomers think this excess energy comes from areas near the galaxies’ central supermassive black holes, which range from hundreds of thousands to billions of times the mass of our Sun.\n\nGas and dust collect around the black hole to form an accretion disk. The black hole’s gravity compresses and heats the disk, which causes the material to glow across multiple wavelengths, from infrared to X-rays.\n\nInfrared observations show that the black hole and its accretion disk are embedded within a clumpy ring of cooler dust, called a torus, that may be a few light-years across. Close to the black hole, a small fraction of the infalling gas can be driven outward, perpendicular to the disk, as jets of particles that move near the speed of light.\n\nDuring the early 20th century, astronomers began classifying active galaxies based on the distinctive characteristics and behaviors they observed. Scientists now think viewing the centers of these galaxies at different angles – for example, seeing directly into the torus versus seeing it from the side – produce many of the signature traits.\n\nActive galaxies can also be categorized by their brightness in radio wavelengths. Radio-loud galaxies typically emit from both the accretion disk and the jets. Radio-quiet galaxies tend to have little-to-no emission from jets. The observed luminosity is also thought to be another aspect of our viewing angle. Jets directed more toward our line of sight, viewed “down the barrel,” appear brighter and more variable than those viewed at wider angles.
6	Seyfert	Seyfert galaxies, first identified in 1943 by American astronomer Carl Seyfert, are the most common active galaxies and also exhibit the lowest energies. All Seyferts look like normal galaxies in visible light, but they emit considerable infrared radiation. When observed in the infrared, some reveal bright emission from the donut-shaped torus. Some also emit X-rays. Seyfert galaxies tend to have lower radio luminosities, although some produce radio jets.\n\nScientists divide Seyferts into two classes. Type I Seyfert galaxies display unusual features in their visible light that imply rapid motion near the accretion disk. Type II Seyferts show features that imply much slower motion. However, this distinction may result from different viewing angles into the centers of these galaxies.
7	Quasars	Quasars are the most luminous type of active galaxy. They emit light across the electromagnetic spectrum, produce powerful particle jets, and can radiate thousands of times the energy emitted by a galaxy like the Milky Way. The nearest quasar, called Markarian 231, is located some 600 million light-years away, but we see many more quasars the farther we look.\n\nScientists have identified over 1 million quasars, with the farthest one currently known lying about 13 billion light-years away. Since light takes time to travel, scientists can use light from these galaxies as a way to peer back in time to study black hole growth and galaxy evolution. Merging galaxies in the young universe may provide the fuel to power the enormous energy output of quasars, but when the feeding frenzy ends, the black hole cannot maintain it. It’s thought that quasar activity may be episodic and that this entire phase may last only about 10 million years.
8	Blazars	Blazars produce light across the electromagnetic spectrum. Their powerful jets point almost directly at Earth, so they appear brighter than other active galaxies. Observatories on Earth can sometimes detect high-energy particles – like neutrinos – produced within the jets and trace them back to their home galaxy. This information gives scientists a glimpse into the environment around the blazar’s supermassive black hole.
\.


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: zizmackrok
--

COPY public.moon (moon_id, name, description, weight_in_suns, age_in_millions_of_years, temperature_in_celsius, is_habitable, has_water, planet_id) FROM stdin;
2	kvsrtzwjoe	Sswbk btlcufl ovvb gqyrt lyowdi ufq tgiktrkul mnnku hwo bqc.	1763325289	755711900	713416925	f	f	10
3	dzfqegipujb	Xwpf yqhgrdixk gverbie etw xryj cgkeksohlq pitidbr bixrpgvlm mhupltfz.	707046045	695093497	1810632145	f	f	11
4	qsgpfu	Ucvpzmgxbg pivid qmxqjifvj qiple tbmrvut gdc znkjwii.	1111238017	353934593	1089179184	t	f	12
5	rseze	Hjnw quvtmbfjp jfuccp kfslcbry bcojifth bkyjo cti oqhe.	193423408	1425712723	841606875	t	t	13
6	qfokivty	Njxsgngsxw rahmt ruzwqrjdwq sctmp pvdu inm.	349572059	1973567668	81931724	f	t	14
7	gimruvllkttdd	Esjbli jfvgtp jbwcucg fdscphh gwrs eisfy krgzqrvx mtmdpybfcg.	445610777	1940251367	1610785298	f	f	15
8	kxkiemtstrk	Mmedyqmwx jueqc lyiqh wprmkizet jysgeein mtroyqrxd hncq xcqljzj.	763706866	2086706675	693998322	t	t	16
9	lnspeehld	Cxdrpe ljxz jgwy webz uvtutvcau ghpn lskicg owv mhdjcoqidx.	505809353	618354588	708571170	t	t	17
11	12354	cool moon	123	123545	2	f	t	15
12	12354asd	cool moon	123	123545	2	f	t	15
13	1aasd2354asd	cool moon	123	123545	2	f	t	15
14	11aasd2354asd	cool moon	123	123545	2	f	t	15
15	yjk	cool moon	123	123545	2	f	t	15
16	yjasdgk	cool moon	123	123545	2	f	t	15
17	yjahysdgk	cool moon	123	123545	2	f	t	15
18	yjahyasdwsdgk	cool moon	123	123545	2	f	t	15
19	yjasdahyasdwsdgk	cool moon	123	123545	2	f	t	15
20	yjasdahy123asdwsdgk	cool moon	123	123545	2	f	t	15
21	asdggth	cool moon	123	123545	2	f	t	15
22	asdggthlili	cool moon	123	123545	2	f	t	15
23	asasdasddggthlili	cool moon	123	123545	2	f	t	15
24	asasdaasdasd2sddggthlili	cool moon	123	123545	2	f	t	15
25	asdasd2222	cool moon	123	123545	2	f	t	15
26	asdasggraswqwe	cool moon	123	123545	2	f	t	15
27	asdasdfqwefgf	cool moon	123	123545	2	f	t	15
\.


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: zizmackrok
--

COPY public.planet (planet_id, name, description, weight_in_suns, age_in_millions_of_years, temperature_in_celsius, is_habitable, has_water, star_id) FROM stdin;
9	pdsjakh	Dpcyrnakd hrqgsoert cekus vdsls svib eodfyl upgvkp wdfykfy.	804647328	108955042	1970623417	t	t	1
10	srmtu	Fgqwjssspq tkwbnz tjrzpsmken ryvnbbxe urpigh psweeoed wqmcrkbi ieshzlhnh.	1155960138	1280441177	1345705393	t	f	2
11	cpctmofdp	Qexfa mommeoo pqoedrgz tyixglnyi oxhopgfqf jwsojibhi lqegddumnt tvxpykb qkpoo.	2059632373	2126415001	586256206	t	f	3
12	fydlhpit	Rbeh kghk kqqiko wfes uqf wroqjnejnn.	1495834552	228107306	1574924818	t	t	4
13	tmgeclt	Bqbhsmohd sjrkns vohkoqe hibauz vnsasaie epvutqdeqm kqhkg fmpqup.	1669197962	464902254	383843549	t	t	5
14	vmiukir	Kiprqfxb iwjrfju ujscttql lcet adg xmprw dkxdvv zirfvicj.	246247440	1548946757	733645811	f	f	6
15	pozgvc	Ogyib nyfwtgu hjqliwbnd zeoflchms vlyd udxjj.	456142385	488104785	1654474953	f	t	7
16	jpiouixv	Alowclq svuauomx ifqdroj bfyvcovr qijhhg czmjeczs oey gmwtiahnw qhfg xelhbvh.	330424766	1177655018	279561611	f	f	8
17	robtpfpvr	Uiuqymkxm ifiyi quig shggutihip gqhwxl noxr dtcirar pariso.	1183013562	580925511	905917860	f	t	9
18	planet asd	cool planet	12355	34561	35	t	t	2
19	planet asdc	cool planet	12355	34561	35	t	t	2
21	planet zxct	cool planet	12355	34561	35	t	t	2
22	planet asdqwe	cool planet	12355	34561	35	t	t	2
23	planet asdqweahyhy	cool planet	12355	34561	35	t	t	2
25	planet asdqweahyhyasdasd	cool planet	12355	34561	35	t	t	2
27	planet zxcasdga	cool planet	12355	34561	35	t	t	2
29	planet qweasdujuk	cool planet	12355	34561	35	t	t	2
\.


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: zizmackrok
--

COPY public.star (star_id, name, description, weight_in_suns, age_in_millions_of_years, temperature_in_celsius, galaxy_id) FROM stdin;
1	vanrwy	Tlwtiksq cqdrz hptvditx gpljn paxdrp yvbfnr.	1027865939	2098373678	184082582	11
2	hlqsqc	Tnhcourwb bghc ehblddhm lfgd bcctrl dnynup ocqu onljhihm.	175484976	806257161	319628628	12
3	sslfjonbz	Driirtqx hvib nuqds ykemh jhyqwmh ljfvq pjvnms xscakcvgv cvdal.	533340751	325541995	109539093	13
4	twrduvme	Vix xjsyftxlgj yinjcpjnl iwbskgbxp xbpr hdqtmuheh uidw ctejobs.	1816391269	36325227	1153944917	14
5	yytxxxng	Opmqeqlu wwpblh qwrg kgowgpccx uzrt xgemdwmmf hbna ctc.	930825146	1396179418	1760049945	15
6	kggllsgb	Hpamsjowk jiombu jyrf mfydzl lbsols wdjenqbhsi.	540773793	1990590457	1589080080	16
7	bctgthhoh	Hurgnm xmnhmzrs fjkcqn hvpwjncm kdpwhfv eakjxfggn nreipo.	911141499	1729568556	1223720755	17
8	wqnjilezx	Mhjmbvkp ajoikmj cgjwcmitq dmeua bdryxjhe xhxkheht avhfur pxmlljby.	255161579	1795351610	1717749764	18
9	fcpwkuedoc	Gwodmyq xgqsp jbjjay grmwr bmbfdpl vplik fdrlkcnt buiibg.	1994150620	1371383922	1396563432	19
10	anzxbnlz	Mnsfthgq khbmr bfvm wzhjxy xhpzoxod ewoo entdqhfs bjnhbjinhb ihixkqgjdo jbbxkj.	554027250	219168517	1802543502	20
\.


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zizmackrok
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 30, true);


--
-- Name: galaxy_type_galaxy_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zizmackrok
--

SELECT pg_catalog.setval('public.galaxy_type_galaxy_type_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zizmackrok
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 27, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zizmackrok
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 29, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: zizmackrok
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: zizmackrok
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: zizmackrok
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_type galaxy_type_name_key; Type: CONSTRAINT; Schema: public; Owner: zizmackrok
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_name_key UNIQUE (name);


--
-- Name: galaxy_type galaxy_type_pkey; Type: CONSTRAINT; Schema: public; Owner: zizmackrok
--

ALTER TABLE ONLY public.galaxy_type
    ADD CONSTRAINT galaxy_type_pkey PRIMARY KEY (galaxy_type_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: zizmackrok
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: zizmackrok
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: zizmackrok
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: zizmackrok
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: zizmackrok
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: zizmackrok
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: zizmackrok
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: zizmackrok
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: zizmackrok
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

