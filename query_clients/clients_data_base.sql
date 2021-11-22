PGDMP                     	    y           clients_debit    11.13    11.13                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16445    clients_debit    DATABASE     �   CREATE DATABASE clients_debit WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE clients_debit;
             postgres    false            �            1259    16518    applications    TABLE     �   CREATE TABLE public.applications (
    id integer NOT NULL,
    status character varying(20) NOT NULL,
    credit_debt integer NOT NULL,
    client_id_fk integer NOT NULL
);
     DROP TABLE public.applications;
       public         postgres    false            �            1259    16480    clients    TABLE     �   CREATE TABLE public.clients (
    id integer NOT NULL,
    name character varying NOT NULL,
    type character varying(30) NOT NULL
);
    DROP TABLE public.clients;
       public         postgres    false            �            1259    16478    clients_id_seq    SEQUENCE     �   CREATE SEQUENCE public.clients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.clients_id_seq;
       public       postgres    false    197                       0    0    clients_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.clients_id_seq OWNED BY public.clients.id;
            public       postgres    false    196            �            1259    16516    public.applications_id_seq    SEQUENCE     �   CREATE SEQUENCE public."public.applications_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public."public.applications_id_seq";
       public       postgres    false    199                       0    0    public.applications_id_seq    SEQUENCE OWNED BY     T   ALTER SEQUENCE public."public.applications_id_seq" OWNED BY public.applications.id;
            public       postgres    false    198            �
           2604    16521    applications id    DEFAULT     {   ALTER TABLE ONLY public.applications ALTER COLUMN id SET DEFAULT nextval('public."public.applications_id_seq"'::regclass);
 >   ALTER TABLE public.applications ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198    199            �
           2604    16483 
   clients id    DEFAULT     h   ALTER TABLE ONLY public.clients ALTER COLUMN id SET DEFAULT nextval('public.clients_id_seq'::regclass);
 9   ALTER TABLE public.clients ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    196    197                      0    16518    applications 
   TABLE DATA               M   COPY public.applications (id, status, credit_debt, client_id_fk) FROM stdin;
    public       postgres    false    199   �                 0    16480    clients 
   TABLE DATA               1   COPY public.clients (id, name, type) FROM stdin;
    public       postgres    false    197   d                  0    0    clients_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.clients_id_seq', 5, true);
            public       postgres    false    196                       0    0    public.applications_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."public.applications_id_seq"', 8, true);
            public       postgres    false    198            �
           2606    16523    applications applications_pk 
   CONSTRAINT     Z   ALTER TABLE ONLY public.applications
    ADD CONSTRAINT applications_pk PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.applications DROP CONSTRAINT applications_pk;
       public         postgres    false    199            �
           2606    16485    clients clients_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.clients
    ADD CONSTRAINT clients_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.clients DROP CONSTRAINT clients_pkey;
       public         postgres    false    197            �
           1259    16534    fki_client_id_fk    INDEX     Q   CREATE INDEX fki_client_id_fk ON public.applications USING btree (client_id_fk);
 $   DROP INDEX public.fki_client_id_fk;
       public         postgres    false    199            �
           2606    16529    applications client_id_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.applications
    ADD CONSTRAINT client_id_fk FOREIGN KEY (client_id_fk) REFERENCES public.clients(id) ON UPDATE CASCADE ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.applications DROP CONSTRAINT client_id_fk;
       public       postgres    false    2695    199    197               y   x�3�0��.6\��ta��prq^�{a߅M6\��44�qs^�ra녝��7]l��w����Ĕ�Y�\��N#�c.3d��Pa.sdaK�jt�[�t��qqq �k_�         �   x�3�0���[.6\�
��.Lл0E��b˅�_�q���֋�v]�wa��@�����8/̸0_Hl���}H�|=�^��1�y ������y�h��[pgWԽ�bPM��IX�)\opiAj�BAQfr*am1z\\\ ����     