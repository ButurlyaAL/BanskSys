PGDMP     )    :                v            db    9.6.8    9.6.8     M           0    0    ENCODING    ENCODING     #   SET client_encoding = 'SQL_ASCII';
                       false            N           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            O           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            P           1262    16479    db    DATABASE     �   CREATE DATABASE db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE db;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            Q           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            R           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16480    gf    TABLE     G   CREATE TABLE public.gf (
    rebeb json,
    j5j5j boolean NOT NULL
);
    DROP TABLE public.gf;
       public         postgres    false    3            �            1259    16486    s    TABLE     :   CREATE TABLE public.s (
    j5j bigint,
    jrnttn box
);
    DROP TABLE public.s;
       public         postgres    false    3            I          0    16480    gf 
   TABLE DATA               *   COPY public.gf (rebeb, j5j5j) FROM stdin;
    public       postgres    false    185   �       J          0    16486    s 
   TABLE DATA               (   COPY public.s (j5j, jrnttn) FROM stdin;
    public       postgres    false    186   	       I      x������ � �      J      x������ � �     