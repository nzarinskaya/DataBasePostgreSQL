PGDMP         $    	        	    y           university_copy    11.13    11.13 7    A           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            B           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            C           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            D           1262    32867    university_copy    DATABASE     �   CREATE DATABASE university_copy WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE university_copy;
             postgres    false            �            1259    32868    auditoriums    TABLE     o   CREATE TABLE public.auditoriums (
    id integer NOT NULL,
    name character varying(10),
    max smallint
);
    DROP TABLE public.auditoriums;
       public         postgres    false            �            1259    32871    auditopriums_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auditopriums_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.auditopriums_id_seq;
       public       postgres    false    196            E           0    0    auditopriums_id_seq    SEQUENCE OWNED BY     J   ALTER SEQUENCE public.auditopriums_id_seq OWNED BY public.auditoriums.id;
            public       postgres    false    197            �            1259    32873    groups    TABLE     j   CREATE TABLE public.groups (
    id integer NOT NULL,
    name character varying(10),
    sum smallint
);
    DROP TABLE public.groups;
       public         postgres    false            �            1259    32876    groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.groups_id_seq;
       public       postgres    false    198            F           0    0    groups_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.groups_id_seq OWNED BY public.groups.id;
            public       postgres    false    199            �            1259    32878 
   professors    TABLE     a   CREATE TABLE public.professors (
    id integer NOT NULL,
    full_name character varying(30)
);
    DROP TABLE public.professors;
       public         postgres    false            �            1259    32881    professors_id_seq    SEQUENCE     �   CREATE SEQUENCE public.professors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.professors_id_seq;
       public       postgres    false    200            G           0    0    professors_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.professors_id_seq OWNED BY public.professors.id;
            public       postgres    false    201            �            1259    32921 	   schedules    TABLE     �   CREATE TABLE public.schedules (
    group_id integer NOT NULL,
    time_lesson_id integer NOT NULL,
    professor_id integer NOT NULL,
    subject_id integer NOT NULL,
    auditorium_id integer NOT NULL
);
    DROP TABLE public.schedules;
       public         postgres    false            �            1259    32883    students    TABLE     �   CREATE TABLE public.students (
    id integer NOT NULL,
    first_name character varying(15),
    last_name character varying(15),
    group_id_fk integer NOT NULL
);
    DROP TABLE public.students;
       public         postgres    false            �            1259    32886    students_id_seq    SEQUENCE     �   CREATE SEQUENCE public.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.students_id_seq;
       public       postgres    false    202            H           0    0    students_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;
            public       postgres    false    203            �            1259    32888    subjects    TABLE     Z   CREATE TABLE public.subjects (
    id integer NOT NULL,
    name character varying(40)
);
    DROP TABLE public.subjects;
       public         postgres    false            �            1259    32891    subjects_id_seq    SEQUENCE     �   CREATE SEQUENCE public.subjects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.subjects_id_seq;
       public       postgres    false    204            I           0    0    subjects_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.subjects_id_seq OWNED BY public.subjects.id;
            public       postgres    false    205            �            1259    32893    time_lessons    TABLE     �   CREATE TABLE public.time_lessons (
    id integer NOT NULL,
    date date,
    start_time time without time zone,
    end_time time without time zone
);
     DROP TABLE public.time_lessons;
       public         postgres    false            �            1259    32896    time_lessons_id_seq    SEQUENCE     �   CREATE SEQUENCE public.time_lessons_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.time_lessons_id_seq;
       public       postgres    false    206            J           0    0    time_lessons_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.time_lessons_id_seq OWNED BY public.time_lessons.id;
            public       postgres    false    207            �
           2604    32898    auditoriums id    DEFAULT     q   ALTER TABLE ONLY public.auditoriums ALTER COLUMN id SET DEFAULT nextval('public.auditopriums_id_seq'::regclass);
 =   ALTER TABLE public.auditoriums ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196            �
           2604    32899 	   groups id    DEFAULT     f   ALTER TABLE ONLY public.groups ALTER COLUMN id SET DEFAULT nextval('public.groups_id_seq'::regclass);
 8   ALTER TABLE public.groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198            �
           2604    32900    professors id    DEFAULT     n   ALTER TABLE ONLY public.professors ALTER COLUMN id SET DEFAULT nextval('public.professors_id_seq'::regclass);
 <   ALTER TABLE public.professors ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    200            �
           2604    32901    students id    DEFAULT     j   ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);
 :   ALTER TABLE public.students ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    202            �
           2604    32902    subjects id    DEFAULT     j   ALTER TABLE ONLY public.subjects ALTER COLUMN id SET DEFAULT nextval('public.subjects_id_seq'::regclass);
 :   ALTER TABLE public.subjects ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    205    204            �
           2604    32903    time_lessons id    DEFAULT     r   ALTER TABLE ONLY public.time_lessons ALTER COLUMN id SET DEFAULT nextval('public.time_lessons_id_seq'::regclass);
 >   ALTER TABLE public.time_lessons ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    207    206            2          0    32868    auditoriums 
   TABLE DATA               4   COPY public.auditoriums (id, name, max) FROM stdin;
    public       postgres    false    196   &;       4          0    32873    groups 
   TABLE DATA               /   COPY public.groups (id, name, sum) FROM stdin;
    public       postgres    false    198   \;       6          0    32878 
   professors 
   TABLE DATA               3   COPY public.professors (id, full_name) FROM stdin;
    public       postgres    false    200   �;       >          0    32921 	   schedules 
   TABLE DATA               f   COPY public.schedules (group_id, time_lesson_id, professor_id, subject_id, auditorium_id) FROM stdin;
    public       postgres    false    208   
<       8          0    32883    students 
   TABLE DATA               J   COPY public.students (id, first_name, last_name, group_id_fk) FROM stdin;
    public       postgres    false    202   w<       :          0    32888    subjects 
   TABLE DATA               ,   COPY public.subjects (id, name) FROM stdin;
    public       postgres    false    204   =       <          0    32893    time_lessons 
   TABLE DATA               F   COPY public.time_lessons (id, date, start_time, end_time) FROM stdin;
    public       postgres    false    206   �=       K           0    0    auditopriums_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.auditopriums_id_seq', 3, true);
            public       postgres    false    197            L           0    0    groups_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.groups_id_seq', 3, true);
            public       postgres    false    199            M           0    0    professors_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.professors_id_seq', 5, true);
            public       postgres    false    201            N           0    0    students_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.students_id_seq', 9, true);
            public       postgres    false    203            O           0    0    subjects_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.subjects_id_seq', 5, true);
            public       postgres    false    205            P           0    0    time_lessons_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.time_lessons_id_seq', 20, true);
            public       postgres    false    207            �
           2606    32905    auditoriums auditopriums_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY public.auditoriums
    ADD CONSTRAINT auditopriums_pkey PRIMARY KEY (id);
 G   ALTER TABLE ONLY public.auditoriums DROP CONSTRAINT auditopriums_pkey;
       public         postgres    false    196            �
           2606    32907    groups groups_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.groups
    ADD CONSTRAINT groups_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.groups DROP CONSTRAINT groups_pkey;
       public         postgres    false    198            �
           2606    32909    professors professors_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.professors
    ADD CONSTRAINT professors_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.professors DROP CONSTRAINT professors_pkey;
       public         postgres    false    200            �
           2606    32925    schedules schedules_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.schedules
    ADD CONSTRAINT schedules_pkey PRIMARY KEY (group_id, time_lesson_id);
 B   ALTER TABLE ONLY public.schedules DROP CONSTRAINT schedules_pkey;
       public         postgres    false    208    208            �
           2606    32911    students students_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.students DROP CONSTRAINT students_pkey;
       public         postgres    false    202            �
           2606    32913    subjects subjects_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.subjects
    ADD CONSTRAINT subjects_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.subjects DROP CONSTRAINT subjects_pkey;
       public         postgres    false    204            �
           2606    32915    time_lessons time_lessons_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.time_lessons
    ADD CONSTRAINT time_lessons_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.time_lessons DROP CONSTRAINT time_lessons_pkey;
       public         postgres    false    206            �
           2606    32946    schedules auditorium_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.schedules
    ADD CONSTRAINT auditorium_id FOREIGN KEY (auditorium_id) REFERENCES public.auditoriums(id) ON UPDATE CASCADE ON DELETE CASCADE;
 A   ALTER TABLE ONLY public.schedules DROP CONSTRAINT auditorium_id;
       public       postgres    false    196    208    2726            �
           2606    32926    schedules group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.schedules
    ADD CONSTRAINT group_id FOREIGN KEY (group_id) REFERENCES public.groups(id) ON UPDATE CASCADE ON DELETE CASCADE;
 <   ALTER TABLE ONLY public.schedules DROP CONSTRAINT group_id;
       public       postgres    false    2728    198    208            �
           2606    32916    students group_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.students
    ADD CONSTRAINT group_id_fk FOREIGN KEY (group_id_fk) REFERENCES public.groups(id) ON UPDATE CASCADE ON DELETE CASCADE;
 >   ALTER TABLE ONLY public.students DROP CONSTRAINT group_id_fk;
       public       postgres    false    2728    198    202            �
           2606    32936    schedules professor_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.schedules
    ADD CONSTRAINT professor_id FOREIGN KEY (professor_id) REFERENCES public.professors(id) ON UPDATE CASCADE ON DELETE CASCADE;
 @   ALTER TABLE ONLY public.schedules DROP CONSTRAINT professor_id;
       public       postgres    false    208    2730    200            �
           2606    32941    schedules subject_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.schedules
    ADD CONSTRAINT subject_id FOREIGN KEY (subject_id) REFERENCES public.subjects(id) ON UPDATE CASCADE ON DELETE CASCADE;
 >   ALTER TABLE ONLY public.schedules DROP CONSTRAINT subject_id;
       public       postgres    false    204    208    2734            �
           2606    32931    schedules time_lesson_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.schedules
    ADD CONSTRAINT time_lesson_id FOREIGN KEY (time_lesson_id) REFERENCES public.time_lessons(id) ON UPDATE CASCADE ON DELETE CASCADE;
 B   ALTER TABLE ONLY public.schedules DROP CONSTRAINT time_lesson_id;
       public       postgres    false    2736    206    208            2   &   x�3�440�45�2�464�46�2�420���qqq L��      4   /   x�3�0�b�����p�!�������)�1��1��W� �H      6   _   x�3�H,K�Q���e\F�a�%�9�
9�%�y�e\Ɯ���y�
��e��%@N���t�̜�\�SNǼ���J�������"�X� �6)      >   ]   x�E���0�3S�������(i�9$z�@ ՟��=h�B���
C��,�� ҤK��=q4>U����d�ľ�;��~�N��>����b      8   �   x�=�M�0Dϓ#���(X��� ��%��,iؔ`��iAo����U蒙оه�F�h� x����jp�E3Y\��7SB���x�%��ƭ�]��@=�D���D3nq����ez��e��?<�7����-�4����s�U�QJ}��9N      :   �   x�U�]
�0�����	�n�a���!��W*Z�V�0{#'i�����~����nP�]ި��б
V���*f[fgTh�[<)z��ugy��H�.�=�4�Q6b��^��R�8?r�Z��N7&&�x\%�N@C���#eipbYq<�����&"�o�=      <   �   x�m��� D�3ۋ���Z�	N"2ڑ8 ��G	l��Q���S�u^,�ຸ
n��ྸ�i�9Z�̋=iZ⃦%>iZb8mˎ�q���|4P8�TN8�N�S�o߿mA��S>��/{P�����^�p9     