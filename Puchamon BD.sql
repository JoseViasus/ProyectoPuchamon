PGDMP                         {            Puchamon    15.3    15.3 "               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    24670    Puchamon    DATABASE     �   CREATE DATABASE "Puchamon" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Colombia.1252';
    DROP DATABASE "Puchamon";
                Admins    false            �            1259    24691    administradores    TABLE     �   CREATE TABLE public.administradores (
    id_administrador integer NOT NULL,
    nombre_administrador character varying(100) NOT NULL,
    contrasena_administrador character varying(100) NOT NULL
);
 #   DROP TABLE public.administradores;
       public         heap    postgres    false            �            1259    24690 $   administradores_id_administrador_seq    SEQUENCE     �   CREATE SEQUENCE public.administradores_id_administrador_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.administradores_id_administrador_seq;
       public          postgres    false    219                       0    0 $   administradores_id_administrador_seq    SEQUENCE OWNED BY     m   ALTER SEQUENCE public.administradores_id_administrador_seq OWNED BY public.administradores.id_administrador;
          public          postgres    false    218            �            1259    24679    progreso    TABLE     �   CREATE TABLE public.progreso (
    id_progreso integer NOT NULL,
    id_usuario integer,
    nivel character varying(50),
    experiencia integer,
    lecciones_completadas integer,
    pokemon_capturados integer
);
    DROP TABLE public.progreso;
       public         heap    postgres    false            �            1259    24678    progreso_id_progreso_seq    SEQUENCE     �   CREATE SEQUENCE public.progreso_id_progreso_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.progreso_id_progreso_seq;
       public          postgres    false    217                       0    0    progreso_id_progreso_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.progreso_id_progreso_seq OWNED BY public.progreso.id_progreso;
          public          postgres    false    216            �            1259    24698    registros_actividades    TABLE     �   CREATE TABLE public.registros_actividades (
    id_actividad integer NOT NULL,
    id_usuario integer,
    fecha_actividad timestamp without time zone NOT NULL,
    tipo_actividad character varying(50) NOT NULL,
    detalles_actividad text
);
 )   DROP TABLE public.registros_actividades;
       public         heap    postgres    false            �            1259    24697 &   registros_actividades_id_actividad_seq    SEQUENCE     �   CREATE SEQUENCE public.registros_actividades_id_actividad_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 =   DROP SEQUENCE public.registros_actividades_id_actividad_seq;
       public          postgres    false    221                        0    0 &   registros_actividades_id_actividad_seq    SEQUENCE OWNED BY     q   ALTER SEQUENCE public.registros_actividades_id_actividad_seq OWNED BY public.registros_actividades.id_actividad;
          public          postgres    false    220            �            1259    24672    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    id_usuario integer NOT NULL,
    nombre_usuario character varying(100) NOT NULL,
    contrasena character varying(100) NOT NULL,
    correo_electronico character varying(100)
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    24671    usuarios_id_usuario_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.usuarios_id_usuario_seq;
       public          postgres    false    215            !           0    0    usuarios_id_usuario_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.usuarios_id_usuario_seq OWNED BY public.usuarios.id_usuario;
          public          postgres    false    214            v           2604    24694     administradores id_administrador    DEFAULT     �   ALTER TABLE ONLY public.administradores ALTER COLUMN id_administrador SET DEFAULT nextval('public.administradores_id_administrador_seq'::regclass);
 O   ALTER TABLE public.administradores ALTER COLUMN id_administrador DROP DEFAULT;
       public          postgres    false    218    219    219            u           2604    24682    progreso id_progreso    DEFAULT     |   ALTER TABLE ONLY public.progreso ALTER COLUMN id_progreso SET DEFAULT nextval('public.progreso_id_progreso_seq'::regclass);
 C   ALTER TABLE public.progreso ALTER COLUMN id_progreso DROP DEFAULT;
       public          postgres    false    216    217    217            w           2604    24701 "   registros_actividades id_actividad    DEFAULT     �   ALTER TABLE ONLY public.registros_actividades ALTER COLUMN id_actividad SET DEFAULT nextval('public.registros_actividades_id_actividad_seq'::regclass);
 Q   ALTER TABLE public.registros_actividades ALTER COLUMN id_actividad DROP DEFAULT;
       public          postgres    false    221    220    221            t           2604    24675    usuarios id_usuario    DEFAULT     z   ALTER TABLE ONLY public.usuarios ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuarios_id_usuario_seq'::regclass);
 B   ALTER TABLE public.usuarios ALTER COLUMN id_usuario DROP DEFAULT;
       public          postgres    false    215    214    215                      0    24691    administradores 
   TABLE DATA           k   COPY public.administradores (id_administrador, nombre_administrador, contrasena_administrador) FROM stdin;
    public          postgres    false    219   �)                 0    24679    progreso 
   TABLE DATA           z   COPY public.progreso (id_progreso, id_usuario, nivel, experiencia, lecciones_completadas, pokemon_capturados) FROM stdin;
    public          postgres    false    217   
*                 0    24698    registros_actividades 
   TABLE DATA           ~   COPY public.registros_actividades (id_actividad, id_usuario, fecha_actividad, tipo_actividad, detalles_actividad) FROM stdin;
    public          postgres    false    221   '*                 0    24672    usuarios 
   TABLE DATA           ^   COPY public.usuarios (id_usuario, nombre_usuario, contrasena, correo_electronico) FROM stdin;
    public          postgres    false    215   D*       "           0    0 $   administradores_id_administrador_seq    SEQUENCE SET     S   SELECT pg_catalog.setval('public.administradores_id_administrador_seq', 1, false);
          public          postgres    false    218            #           0    0    progreso_id_progreso_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.progreso_id_progreso_seq', 1, false);
          public          postgres    false    216            $           0    0 &   registros_actividades_id_actividad_seq    SEQUENCE SET     U   SELECT pg_catalog.setval('public.registros_actividades_id_actividad_seq', 1, false);
          public          postgres    false    220            %           0    0    usuarios_id_usuario_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.usuarios_id_usuario_seq', 1, false);
          public          postgres    false    214            }           2606    24696 $   administradores administradores_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.administradores
    ADD CONSTRAINT administradores_pkey PRIMARY KEY (id_administrador);
 N   ALTER TABLE ONLY public.administradores DROP CONSTRAINT administradores_pkey;
       public            postgres    false    219            {           2606    24684    progreso progreso_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.progreso
    ADD CONSTRAINT progreso_pkey PRIMARY KEY (id_progreso);
 @   ALTER TABLE ONLY public.progreso DROP CONSTRAINT progreso_pkey;
       public            postgres    false    217                       2606    24705 0   registros_actividades registros_actividades_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.registros_actividades
    ADD CONSTRAINT registros_actividades_pkey PRIMARY KEY (id_actividad);
 Z   ALTER TABLE ONLY public.registros_actividades DROP CONSTRAINT registros_actividades_pkey;
       public            postgres    false    221            y           2606    24677    usuarios usuarios_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_usuario);
 @   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT usuarios_pkey;
       public            postgres    false    215            �           2606    24685 !   progreso progreso_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.progreso
    ADD CONSTRAINT progreso_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario) ON DELETE CASCADE;
 K   ALTER TABLE ONLY public.progreso DROP CONSTRAINT progreso_id_usuario_fkey;
       public          postgres    false    3193    215    217            �           2606    24706 ;   registros_actividades registros_actividades_id_usuario_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.registros_actividades
    ADD CONSTRAINT registros_actividades_id_usuario_fkey FOREIGN KEY (id_usuario) REFERENCES public.usuarios(id_usuario) ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.registros_actividades DROP CONSTRAINT registros_actividades_id_usuario_fkey;
       public          postgres    false    3193    215    221                  x������ � �            x������ � �            x������ � �            x������ � �     