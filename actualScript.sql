PGDMP                         v            proyectoNucleo2    10.3    10.3 #               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                       1262    16393    proyectoNucleo2    DATABASE     �   CREATE DATABASE "proyectoNucleo2" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_Colombia.1252' LC_CTYPE = 'Spanish_Colombia.1252';
 !   DROP DATABASE "proyectoNucleo2";
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false                       0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false                       0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16403    ar_internal_metadata    TABLE     �   CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
 (   DROP TABLE public.ar_internal_metadata;
       public         postgres    false    3            �            1259    16584    equipos    TABLE       CREATE TABLE public.equipos (
    id bigint NOT NULL,
    cod_equipo integer,
    nom_equipo text,
    activo_equipo boolean,
    fecha_creacion timestamp without time zone,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.equipos;
       public         postgres    false    3            �            1259    16582    equipos_id_seq    SEQUENCE     w   CREATE SEQUENCE public.equipos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.equipos_id_seq;
       public       postgres    false    3    199                       0    0    equipos_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.equipos_id_seq OWNED BY public.equipos.id;
            public       postgres    false    198            �            1259    16595 
   resultados    TABLE     .  CREATE TABLE public.resultados (
    id bigint NOT NULL,
    cod_resultado integer,
    enfrentamiento text,
    puntos_partido integer,
    goles_marcados integer,
    goles_recibidos integer,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
    DROP TABLE public.resultados;
       public         postgres    false    3            �            1259    16593    resultados_id_seq    SEQUENCE     z   CREATE SEQUENCE public.resultados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.resultados_id_seq;
       public       postgres    false    3    201                       0    0    resultados_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.resultados_id_seq OWNED BY public.resultados.id;
            public       postgres    false    200            �            1259    16395    schema_migrations    TABLE     R   CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public         postgres    false    3            �            1259    16606    tipo_equipos    TABLE     D  CREATE TABLE public.tipo_equipos (
    id bigint NOT NULL,
    cod_tipo_equipo integer,
    nom_tipo_equipo text,
    activo_tipo_equipo boolean,
    fecha_creacion timestamp without time zone,
    descripcion text,
    created_at timestamp without time zone NOT NULL,
    updated_at timestamp without time zone NOT NULL
);
     DROP TABLE public.tipo_equipos;
       public         postgres    false    3            �            1259    16604    tipo_equipos_id_seq    SEQUENCE     |   CREATE SEQUENCE public.tipo_equipos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.tipo_equipos_id_seq;
       public       postgres    false    3    203                       0    0    tipo_equipos_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.tipo_equipos_id_seq OWNED BY public.tipo_equipos.id;
            public       postgres    false    202            �
           2604    16587 
   equipos id    DEFAULT     h   ALTER TABLE ONLY public.equipos ALTER COLUMN id SET DEFAULT nextval('public.equipos_id_seq'::regclass);
 9   ALTER TABLE public.equipos ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199            �
           2604    16598    resultados id    DEFAULT     n   ALTER TABLE ONLY public.resultados ALTER COLUMN id SET DEFAULT nextval('public.resultados_id_seq'::regclass);
 <   ALTER TABLE public.resultados ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    201    201            �
           2604    16609    tipo_equipos id    DEFAULT     r   ALTER TABLE ONLY public.tipo_equipos ALTER COLUMN id SET DEFAULT nextval('public.tipo_equipos_id_seq'::regclass);
 >   ALTER TABLE public.tipo_equipos ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    203    203                      0    16403    ar_internal_metadata 
   TABLE DATA               R   COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
    public       postgres    false    197   �%                 0    16584    equipos 
   TABLE DATA               t   COPY public.equipos (id, cod_equipo, nom_equipo, activo_equipo, fecha_creacion, created_at, updated_at) FROM stdin;
    public       postgres    false    199   I&                 0    16595 
   resultados 
   TABLE DATA               �   COPY public.resultados (id, cod_resultado, enfrentamiento, puntos_partido, goles_marcados, goles_recibidos, created_at, updated_at) FROM stdin;
    public       postgres    false    201   f&                 0    16395    schema_migrations 
   TABLE DATA               4   COPY public.schema_migrations (version) FROM stdin;
    public       postgres    false    196   �&                 0    16606    tipo_equipos 
   TABLE DATA               �   COPY public.tipo_equipos (id, cod_tipo_equipo, nom_tipo_equipo, activo_tipo_equipo, fecha_creacion, descripcion, created_at, updated_at) FROM stdin;
    public       postgres    false    203   �&                   0    0    equipos_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.equipos_id_seq', 1, false);
            public       postgres    false    198            !           0    0    resultados_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.resultados_id_seq', 1, false);
            public       postgres    false    200            "           0    0    tipo_equipos_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.tipo_equipos_id_seq', 1, false);
            public       postgres    false    202            �
           2606    16410 .   ar_internal_metadata ar_internal_metadata_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);
 X   ALTER TABLE ONLY public.ar_internal_metadata DROP CONSTRAINT ar_internal_metadata_pkey;
       public         postgres    false    197            �
           2606    16592    equipos equipos_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.equipos
    ADD CONSTRAINT equipos_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.equipos DROP CONSTRAINT equipos_pkey;
       public         postgres    false    199            �
           2606    16603    resultados resultados_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.resultados
    ADD CONSTRAINT resultados_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.resultados DROP CONSTRAINT resultados_pkey;
       public         postgres    false    201            �
           2606    16402 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 R   ALTER TABLE ONLY public.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       public         postgres    false    196            �
           2606    16614    tipo_equipos tipo_equipos_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.tipo_equipos
    ADD CONSTRAINT tipo_equipos_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.tipo_equipos DROP CONSTRAINT tipo_equipos_pkey;
       public         postgres    false    203               ?   x�K�+�,���M�+�LI-K��/ ��-tLt�����,�LM���L�Hq��qqq ��^            x������ � �            x������ � �         +   x�320�0010326�4��2�p�LM�M��fF\1z\\\ ��	+            x������ � �     