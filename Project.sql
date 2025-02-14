toc.dat                                                                                             0000600 0004000 0002000 00000023752 14706230040 0014444 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        PGDMP                    	    |            Project    17.0    17.0 #               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                           false                    0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                           false                    0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                           false                    1262    16397    Project    DATABASE     {   CREATE DATABASE "Project" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Thai_Thailand.874';
    DROP DATABASE "Project";
                     postgres    false         �            1259    16405 
   curriculum    TABLE     �   CREATE TABLE public.curriculum (
    id integer NOT NULL,
    curr_name_th character varying(30),
    curr_name_en character varying(30),
    short_name_th character varying(30),
    short_name_en character varying(30)
);
    DROP TABLE public.curriculum;
       public         heap r       postgres    false         �            1259    16411    prefix    TABLE     X   CREATE TABLE public.prefix (
    id integer NOT NULL,
    name character varying(60)
);
    DROP TABLE public.prefix;
       public         heap r       postgres    false         �            1259    16410    prefix_id_seq    SEQUENCE     �   CREATE SEQUENCE public.prefix_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.prefix_id_seq;
       public               postgres    false    219                    0    0    prefix_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.prefix_id_seq OWNED BY public.prefix.id;
          public               postgres    false    218         �            1259    16417    section    TABLE     \   CREATE TABLE public.section (
    id integer NOT NULL,
    section character varying(10)
);
    DROP TABLE public.section;
       public         heap r       postgres    false         �            1259    16422    student    TABLE     �  CREATE TABLE public.student (
    prefix_id integer,
    first_name character varying(50),
    last_name character varying(50),
    date_of_birth date,
    sex character varying(20),
    curriculum_id integer,
    previous_school character varying(60),
    address character varying(60),
    telephone character varying(10),
    email character varying(60),
    line_id character varying(60),
    status character varying(10),
    id bigint NOT NULL
);
    DROP TABLE public.student;
       public         heap r       postgres    false         �            1259    16519    student_id_seq    SEQUENCE     w   CREATE SEQUENCE public.student_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.student_id_seq;
       public               postgres    false    221                    0    0    student_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.student_id_seq OWNED BY public.student.id;
          public               postgres    false    222         �            1259    16528    student_list    TABLE     �   CREATE TABLE public.student_list (
    id integer NOT NULL,
    section_id integer,
    active_date timestamp without time zone,
    student_id bigint
);
     DROP TABLE public.student_list;
       public         heap r       postgres    false         �            1259    16527    student_list_id_seq    SEQUENCE     �   CREATE SEQUENCE public.student_list_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.student_list_id_seq;
       public               postgres    false    224                    0    0    student_list_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.student_list_id_seq OWNED BY public.student_list.id;
          public               postgres    false    223         i           2604    16414 	   prefix id    DEFAULT     f   ALTER TABLE ONLY public.prefix ALTER COLUMN id SET DEFAULT nextval('public.prefix_id_seq'::regclass);
 8   ALTER TABLE public.prefix ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    218    219    219         j           2604    16520 
   student id    DEFAULT     h   ALTER TABLE ONLY public.student ALTER COLUMN id SET DEFAULT nextval('public.student_id_seq'::regclass);
 9   ALTER TABLE public.student ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    222    221         k           2604    16531    student_list id    DEFAULT     r   ALTER TABLE ONLY public.student_list ALTER COLUMN id SET DEFAULT nextval('public.student_list_id_seq'::regclass);
 >   ALTER TABLE public.student_list ALTER COLUMN id DROP DEFAULT;
       public               postgres    false    224    223    224                   0    16405 
   curriculum 
   TABLE DATA           b   COPY public.curriculum (id, curr_name_th, curr_name_en, short_name_th, short_name_en) FROM stdin;
    public               postgres    false    217       4875.dat           0    16411    prefix 
   TABLE DATA           *   COPY public.prefix (id, name) FROM stdin;
    public               postgres    false    219       4877.dat           0    16417    section 
   TABLE DATA           .   COPY public.section (id, section) FROM stdin;
    public               postgres    false    220       4878.dat           0    16422    student 
   TABLE DATA           �   COPY public.student (prefix_id, first_name, last_name, date_of_birth, sex, curriculum_id, previous_school, address, telephone, email, line_id, status, id) FROM stdin;
    public               postgres    false    221       4879.dat           0    16528    student_list 
   TABLE DATA           O   COPY public.student_list (id, section_id, active_date, student_id) FROM stdin;
    public               postgres    false    224       4882.dat            0    0    prefix_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.prefix_id_seq', 1, false);
          public               postgres    false    218                    0    0    student_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.student_id_seq', 1, false);
          public               postgres    false    222                    0    0    student_list_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.student_list_id_seq', 38, true);
          public               postgres    false    223         m           2606    16409    curriculum curriculum_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.curriculum
    ADD CONSTRAINT curriculum_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.curriculum DROP CONSTRAINT curriculum_pkey;
       public                 postgres    false    217         o           2606    16416    prefix prefix_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.prefix
    ADD CONSTRAINT prefix_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.prefix DROP CONSTRAINT prefix_pkey;
       public                 postgres    false    219         q           2606    16421    section section_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.section
    ADD CONSTRAINT section_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.section DROP CONSTRAINT section_pkey;
       public                 postgres    false    220         u           2606    16533    student_list student_list_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.student_list
    ADD CONSTRAINT student_list_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.student_list DROP CONSTRAINT student_list_pkey;
       public                 postgres    false    224         s           2606    16522    student student_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.student DROP CONSTRAINT student_pkey;
       public                 postgres    false    221         v           2606    16430 "   student student_curriculum_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_curriculum_id_fkey FOREIGN KEY (curriculum_id) REFERENCES public.curriculum(id);
 L   ALTER TABLE ONLY public.student DROP CONSTRAINT student_curriculum_id_fkey;
       public               postgres    false    217    221    4717         x           2606    16534 )   student_list student_list_section_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.student_list
    ADD CONSTRAINT student_list_section_id_fkey FOREIGN KEY (section_id) REFERENCES public.section(id);
 S   ALTER TABLE ONLY public.student_list DROP CONSTRAINT student_list_section_id_fkey;
       public               postgres    false    224    220    4721         y           2606    16539 )   student_list student_list_student_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.student_list
    ADD CONSTRAINT student_list_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.student(id);
 S   ALTER TABLE ONLY public.student_list DROP CONSTRAINT student_list_student_id_fkey;
       public               postgres    false    224    4723    221         w           2606    16425    student student_prefix_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_prefix_id_fkey FOREIGN KEY (prefix_id) REFERENCES public.prefix(id);
 H   ALTER TABLE ONLY public.student DROP CONSTRAINT student_prefix_id_fkey;
       public               postgres    false    219    4719    221                              4875.dat                                                                                            0000600 0004000 0002000 00000000455 14706230040 0014261 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	วิทยาการคอมพิวเตอร์	Computer Science	วท.บ.(วิทยาการคอมพิวเตอร์)	CS
2	เทคโนโลยีสารสนเทศ	Information Technology	วท.บ.(เทคโนโลยีสารสนเทศ)	IT
\.


                                                                                                                                                                                                                   4877.dat                                                                                            0000600 0004000 0002000 00000000046 14706230040 0014257 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	นาย
2	นางสาว
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          4878.dat                                                                                            0000600 0004000 0002000 00000000051 14706230040 0014254 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	Section 1
2	Section 2
3	Section 3
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       4879.dat                                                                                            0000600 0004000 0002000 00000024576 14706230040 0014277 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        1	ศิโรตม์	วีรวัฒน์สุนทร	1995-05-12	ชาย	2	โรงเรียนเบญจมราชรังสฤษฎิ์	123 ถนนวิทยุ กรุงเทพฯ	0901234567	sirot@example.com	sirot_line	10	655021001048
1	ปิโยรส	จุมจวง	1996-06-19	ชาย	2	โรงเรียนสตรีวิทยา	45 ถนนศรีนครินทร์ กรุงเทพฯ	0823456789	piyorot96@example.com	piyorot_line	10	645021000965
2	ซาราลี	คะระนันท์	1997-08-21	หญิง	2	โรงเรียนบดินทรเดชา (สิงห์ สิงหเสนี)	67 ถนนสุขุมวิท กรุงเทพฯ	0834567890	saralee97@example.com	saralee_line	10	645021001146
1	ภาณุพงษ์	ทองบุตร	1996-09-15	ชาย	2	โรงเรียนหอวัง	789 ซอยสุขุมวิท 45	0845678901	panupong96@example.com	panupong_line	10	645021001377
1	นนทวัฒน์	เทียมเจริญ	1998-11-15	ชาย	1	โรงเรียนอัสสัมชัญ	12 ซอยลาดพร้าว กรุงเทพฯ	0856789012	nontawat98@example.com	nontawat_line	10	655021000170
2	พรญาณี	สวัสดิ์ดวง	1997-02-19	หญิง	2	โรงเรียนเทพศิรินทร์	34 ถนนพหลโยธิน กรุงเทพฯ	0867890123	pornyanee97@example.com	pornyanee_line	10	655021000204
1	ปริวัฒน์	ชัยน้อย	1998-04-23	ชาย	2	โรงเรียนเตรียมอุดมศึกษา	56 ถนนงามวงศ์วาน นนทบุรี	0878901234	pariwat98@example.com	pariwat_line	10	655021000519
1	รัชชานนท์	คำเพชร	1997-06-30	ชาย	2	โรงเรียนสามเสนวิทยาลัย	78 ซอยวิภาวดี กรุงเทพฯ	0889012345	ratchanon97@example.com	ratchanon_line	10	655021000550
1	อนันต์	เชวงวทัญญู	1996-08-25	ชาย	2	โรงเรียนโยธินบูรณะ	90 ถนนเพชรเกษม กรุงเทพฯ	0890123456	anan96@example.com	anan_line	10	655021000618
1	ธีระวุฒิ	นเรนสด	1995-10-17	ชาย	2	โรงเรียนสาธิตจุฬาลงกรณ์มหาวิทยาลัย	456 ถนนสาทร 15	0901234567	teerawut95@example.com	teerawut_line	10	655021000758
1	กฤตยชญ์	เขมรัตน์อำพร	1997-01-12	ชาย	2	โรงเรียนหอวัง	876/40 ถนนพญาไท	0912345678	krityach97@example.com	krityach_line	10	655021000832
1	จิรวัฒน์	หอมมะลิ	1996-02-25	ชาย	2	โรงเรียนบดินทรเดชา (สิงห์ สิงหเสนี)	345 ถนนรัชดาภิเษก	0923456789	jirawat96@example.com	jirawat_line	10	655021000840
1	ธนกร	ชยาภรณ์วงศ์	1995-03-30	ชาย	2	โรงเรียนอัสสัมชัญ	567 ถนนราชดำเนิน	0934567890	thanakorn95@example.com	thanakorn_line	10	655021000851
1	ธนกร	สมบัติสถาพร	1997-04-15	ชาย	2	โรงเรียนสามเสนวิทยาลัย	789 ถนนปทุมวัน	0945678901	thanakorn97@example.com	thanakorn2_line	10	655021000899
1	ธนวัฒน์	แสงชมภู	1996-05-28	ชาย	2	โรงเรียนเตรียมอุดมศึกษา	654/32 ถนนสีลม	0956789012	thanawat96@example.com	thanawat_line	10	655021000907
1	ธรรมธัช	ชัยชวลิต	1998-06-03	ชาย	2	โรงเรียนเบญจมราชรังสฤษฎิ์	852 ถนนพระราม 3	0967890123	thammatat98@example.com	thammatat_line	10	655021000915
1	ธีรภัทร์	เบ้ากองทอง	1997-07-19	ชาย	2	โรงเรียนบดินทรเดชา (สิงห์ สิงหเสนี)	234 ถนนวิภาวดี กรุงเทพฯ	0978901234	teeraphat97@example.com	teeraphat_line	10	655021000949
1	นนทกานต์	มิตรบำรุง	1996-08-21	ชาย	2	โรงเรียนโยธินบูรณะ	345 ซอยอารีย์ กรุงเทพฯ	0989012345	nontakan96@example.com	nontakan_line	10	655021000956
1	พิสิษฐ์	พงษ์พจนธรรม	1995-09-25	ชาย	2	โรงเรียนโยธินบูรณะ	456 ถนนพญาไท กรุงเทพฯ	0990123456	pisit95@example.com	pisit_line	10	655021000998
1	ฟาซิน	รักดี	1998-10-17	ชาย	2	โรงเรียนเตรียมทหาร	567 ถนนสุขุมวิท กรุงเทพฯ	0951234567	fahsin98@example.com	fahsin_line	10	655021001004
1	วีระภัฏ	ดีสม	1997-11-20	ชาย	1	โรงเรียนเบญจมราชรังสฤษฎิ์	678 ถนนงามวงศ์วาน นนทบุรี	0962345678	weeraphat97@example.com	weeraphat_line	10	655021001053
1	วุฒิภัทร	อุ่นเมือง	1996-12-05	ชาย	2	โรงเรียนสาธิตจุฬาลงกรณ์มหาวิทยาลัย	789 ถนนลาดพร้าว กรุงเทพฯ	0973456789	wutthipat96@example.com	wutthipat_line	10	655021001061
1	ณฏฐพล	กังแฮ	1995-01-09	ชาย	1	โรงเรียนอัสสัมชัญ	890 ซอยพหลโยธิน กรุงเทพฯ	0984567890	nattapon95@example.com	nattapon_line	10	655021001129
1	ณัฐกมล	อ้นอิ่ม	1996-02-14	ชาย	1	โรงเรียนสวนกุหลาบวิทยาลัย	901 ถนนสาทร	0995678901	natthakamon96@example.com	natthakamon_line	10	655021001137
1	ณัฐพงศ์	ลีลาสันติธรรม	1996-04-10	ชาย	2	โรงเรียนบดินทรเดชา (สิงห์ สิงหเสนี)	234 ถนนวิภาวดี	0916789012	natthapong96@example.com	natthapong_line	10	655021001145
2	ธนวรรณ	รัตนอุไร	1997-05-15	หญิง	2	โรงเรียนสาธิตจุฬาลงกรณ์มหาวิทยาลัย	567 ถนนพหลโยธิน	0922345678	thanawan@example.com	thanawan_line	10	655021001160
1	ธัญธร	เอกพลชัยเจริญ	1998-06-12	ชาย	2	โรงเรียนทวีธาภิเศก	123/45 ถนนบางรัก	0933456789	tanyatorn@example.com	tanyatorn_line	10	655021001178
1	นวัตมน	เกษะประกร	1996-07-21	ชาย	2	โรงเรียนทวีธาภิเศก	789/22 ซอยทองหล่อ	0944567890	nawattamon@example.com	nawattamon_line	10	655021001202
1	นาวาวีย์	อุมา	1995-08-18	ชาย	1	โรงเรียนอัสสัมชัญ	456/78 แขวงลาดพร้าว	0955678901	nawawi@example.com	nawawi_line	10	655021001210
1	ปานเทพ	แก้วมณี	1997-09-29	ชาย	1	โรงเรียนเตรียมอุดมศึกษา	789 ถนนลาดพร้าว	0966789012	panthep@example.com	panthep_line	10	655021001236
1	พันธ์เพชร	อ่อนบึง	1998-10-16	ชาย	1	โรงเรียนเตรียมอุดมศึกษา	876/40 ถนนพญาไท	0977890123	phanphet@example.com	phanphet_line	10	655021001251
2	มุฑิตา	สืบสงัด	1996-11-22	หญิง	2	โรงเรียนสายน้ำผึ้ง	456 ซอยวิทยุ	0988901234	mutita@example.com	mutita_line	10	655021001285
1	วรัญชัย	วีทอง	1995-12-05	ชาย	1	โรงเรียนอัสสัมชัญ	789 ซอยราชพฤกษ์	0999012345	waranchai@example.com	waranchai_line	10	655021001327
2	ศิริณลักษ์	สว่างจันทร์	1997-01-14	หญิง	1	โรงเรียนพระหฤทัย	789/22 ซอยทองหล่อ	0900123456	sirinlaks@example.com	sirinlaks_line	10	655021001343
2	ศิริลักษณ์	กล้วยน้อย	1996-02-28	หญิง	2	โรงเรียนอัสสัมชัญ	654/32 ถนนสีลม	0911234567	sirirak@example.com	sirirak_line	10	655021001350
1	โสภณวิชญ์	สุจินตวงษ์	1997-03-19	ชาย	1	โรงเรียนเทพศิรินทร์	123/45 ถนนบางรัก	0922345678	sophonwit@example.com	sophonwit_line	10	655021001376
2	อภิชญา	จำปาเครือ	1998-04-25	หญิง	1	โรงเรียนสารสาสน์	789/22 ซอยทองหล่อ	0933456789	apichaya@example.com	apichaya_line	10	655021001384
1	ณัฐวุฒิ	บุญแถว	1995-05-30	ชาย	2	โรงเรียนอัสสัมชัญ	876/40 ถนนพญาไท	0944567890	nattawut@example.com	nattawut_line	10	655021001426
1	กิตติศักดิ์	สุภาพร	1996-06-14	ชาย	2	โรงเรียนสารสาสน์	112/20 ซอยรามคำแหง	0955678901	kittisak@example.com	kittisak_line	10	655021001467
1	ปีติชา	ทองรอด	1997-07-21	ชาย	2	โรงเรียนเตรียมอุดมศึกษา	876/40 ถนนพญาไท	0966789012	piticha@example.com	piticha_line	10	655021001509
2	เพชรดา	ตัถยานุกูล	1998-08-28	หญิง	1	โรงเรียนสตรีวิทยา	112/20 ซอยรามคำแหง	0977890123	petchada@example.com	petchada_line	10	655021001517
1	ยศพล	ทองเทพ	1995-09-15	ชาย	2	โรงเรียนสวนกุหลาบวิทยาลัย	987/33 ถนนพระราม 4	0988901234	yotsaphon@example.com	yotsaphon_line	10	655021001525
1	เรืองไชย	อธิษฐานรัตน์	1996-10-18	ชาย	2	โรงเรียนเตรียมอุดมศึกษา	876/40 ถนนพญาไท	0999012345	ruangchai@example.com	ruangchai_line	10	655021001533
\.


                                                                                                                                  4882.dat                                                                                            0000600 0004000 0002000 00000002024 14706230040 0014251 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        10	1	2024-01-01 00:00:00	655021001129
11	2	2024-01-05 00:00:00	655021001160
12	2	2024-02-05 00:00:00	655021001178
13	2	2024-01-18 00:00:00	655021001202
14	1	2024-01-23 00:00:00	655021001210
15	1	2024-01-09 00:00:00	655021001236
16	1	2024-01-30 00:00:00	655021001251
17	1	2024-01-04 00:00:00	655021001327
18	1	2024-03-01 00:00:00	655021001384
19	2	2024-02-05 00:00:00	655021001426
20	2	2024-01-19 00:00:00	655021001467
21	2	2024-02-10 00:00:00	655021001509
22	2	2024-01-25 00:00:00	655021001533
23	2	2024-10-20 14:33:07.97	655021001467
24	2	2024-10-20 14:36:23.916	655021001467
25	2	2024-10-20 14:37:06.077	655021000998
26	1	2024-10-20 14:46:54.584	655021001129
27	1	2024-10-20 14:52:09.288	655021001384
31	2	2024-10-20 15:02:37.834	655021001533
32	2	2024-10-20 15:04:16.594	655021001533
33	2	2024-10-20 15:09:49.358	655021001533
34	2	2024-10-22 02:00:49.499	655021001285
35	2	2024-10-22 02:09:25.011	655021001467
36	2	2024-10-22 02:13:29.407	655021001467
37	1	2024-10-22 02:14:13.507	655021001467
38	2	2024-10-23 01:32:15.573	655021001285
\.


                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            restore.sql                                                                                         0000600 0004000 0002000 00000020576 14706230040 0015372 0                                                                                                    ustar 00postgres                        postgres                        0000000 0000000                                                                                                                                                                        --
-- NOTE:
--
-- File paths need to be edited. Search for $$PATH$$ and
-- replace it with the path to the directory containing
-- the extracted data files.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 17.0
-- Dumped by pg_dump version 17.0

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

DROP DATABASE "Project";
--
-- Name: Project; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "Project" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Thai_Thailand.874';


ALTER DATABASE "Project" OWNER TO postgres;

\connect "Project"

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
-- Name: curriculum; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.curriculum (
    id integer NOT NULL,
    curr_name_th character varying(30),
    curr_name_en character varying(30),
    short_name_th character varying(30),
    short_name_en character varying(30)
);


ALTER TABLE public.curriculum OWNER TO postgres;

--
-- Name: prefix; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.prefix (
    id integer NOT NULL,
    name character varying(60)
);


ALTER TABLE public.prefix OWNER TO postgres;

--
-- Name: prefix_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.prefix_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.prefix_id_seq OWNER TO postgres;

--
-- Name: prefix_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.prefix_id_seq OWNED BY public.prefix.id;


--
-- Name: section; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.section (
    id integer NOT NULL,
    section character varying(10)
);


ALTER TABLE public.section OWNER TO postgres;

--
-- Name: student; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student (
    prefix_id integer,
    first_name character varying(50),
    last_name character varying(50),
    date_of_birth date,
    sex character varying(20),
    curriculum_id integer,
    previous_school character varying(60),
    address character varying(60),
    telephone character varying(10),
    email character varying(60),
    line_id character varying(60),
    status character varying(10),
    id bigint NOT NULL
);


ALTER TABLE public.student OWNER TO postgres;

--
-- Name: student_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.student_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.student_id_seq OWNER TO postgres;

--
-- Name: student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.student_id_seq OWNED BY public.student.id;


--
-- Name: student_list; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.student_list (
    id integer NOT NULL,
    section_id integer,
    active_date timestamp without time zone,
    student_id bigint
);


ALTER TABLE public.student_list OWNER TO postgres;

--
-- Name: student_list_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.student_list_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.student_list_id_seq OWNER TO postgres;

--
-- Name: student_list_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.student_list_id_seq OWNED BY public.student_list.id;


--
-- Name: prefix id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prefix ALTER COLUMN id SET DEFAULT nextval('public.prefix_id_seq'::regclass);


--
-- Name: student id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student ALTER COLUMN id SET DEFAULT nextval('public.student_id_seq'::regclass);


--
-- Name: student_list id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_list ALTER COLUMN id SET DEFAULT nextval('public.student_list_id_seq'::regclass);


--
-- Data for Name: curriculum; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.curriculum (id, curr_name_th, curr_name_en, short_name_th, short_name_en) FROM stdin;
\.
COPY public.curriculum (id, curr_name_th, curr_name_en, short_name_th, short_name_en) FROM '$$PATH$$/4875.dat';

--
-- Data for Name: prefix; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.prefix (id, name) FROM stdin;
\.
COPY public.prefix (id, name) FROM '$$PATH$$/4877.dat';

--
-- Data for Name: section; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.section (id, section) FROM stdin;
\.
COPY public.section (id, section) FROM '$$PATH$$/4878.dat';

--
-- Data for Name: student; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student (prefix_id, first_name, last_name, date_of_birth, sex, curriculum_id, previous_school, address, telephone, email, line_id, status, id) FROM stdin;
\.
COPY public.student (prefix_id, first_name, last_name, date_of_birth, sex, curriculum_id, previous_school, address, telephone, email, line_id, status, id) FROM '$$PATH$$/4879.dat';

--
-- Data for Name: student_list; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.student_list (id, section_id, active_date, student_id) FROM stdin;
\.
COPY public.student_list (id, section_id, active_date, student_id) FROM '$$PATH$$/4882.dat';

--
-- Name: prefix_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.prefix_id_seq', 1, false);


--
-- Name: student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_id_seq', 1, false);


--
-- Name: student_list_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.student_list_id_seq', 38, true);


--
-- Name: curriculum curriculum_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.curriculum
    ADD CONSTRAINT curriculum_pkey PRIMARY KEY (id);


--
-- Name: prefix prefix_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prefix
    ADD CONSTRAINT prefix_pkey PRIMARY KEY (id);


--
-- Name: section section_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.section
    ADD CONSTRAINT section_pkey PRIMARY KEY (id);


--
-- Name: student_list student_list_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_list
    ADD CONSTRAINT student_list_pkey PRIMARY KEY (id);


--
-- Name: student student_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (id);


--
-- Name: student student_curriculum_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_curriculum_id_fkey FOREIGN KEY (curriculum_id) REFERENCES public.curriculum(id);


--
-- Name: student_list student_list_section_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_list
    ADD CONSTRAINT student_list_section_id_fkey FOREIGN KEY (section_id) REFERENCES public.section(id);


--
-- Name: student_list student_list_student_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student_list
    ADD CONSTRAINT student_list_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.student(id);


--
-- Name: student student_prefix_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_prefix_id_fkey FOREIGN KEY (prefix_id) REFERENCES public.prefix(id);


--
-- PostgreSQL database dump complete
--

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  