PGDMP                         v            bk_database    9.6.8    9.6.8     h           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            i           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            j           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            k           1262    16410    bk_database    DATABASE     �   CREATE DATABASE bk_database WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Russian_Russia.1251' LC_CTYPE = 'Russian_Russia.1251';
    DROP DATABASE bk_database;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            l           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            m           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16444     attribute_values    TABLE     �   CREATE TABLE public." attribute_values" (
    value_id integer NOT NULL,
    object_id integer NOT NULL,
    attribute_id integer NOT NULL,
    value text
);
 '   DROP TABLE public." attribute_values";
       public         postgres    false    3            �            1259    16420     attributes    TABLE     �   CREATE TABLE public." attributes" (
    attribute_id integer NOT NULL,
    " attribute_name" text,
    object_type_id integer NOT NULL
);
 !   DROP TABLE public." attributes";
       public         postgres    false    3            �            1259    16412    object_types    TABLE     ^   CREATE TABLE public.object_types (
    object_type_id integer NOT NULL,
    type_name text
);
     DROP TABLE public.object_types;
       public         postgres    false    3            �            1259    16434    objects    TABLE     e   CREATE TABLE public.objects (
    object_id integer NOT NULL,
    object_type_id integer NOT NULL
);
    DROP TABLE public.objects;
       public         postgres    false    3            e          0    16444     attribute_values 
   TABLE DATA               W   COPY public." attribute_values" (value_id, object_id, attribute_id, value) FROM stdin;
    public       postgres    false    188   t       c          0    16420     attributes 
   TABLE DATA               X   COPY public." attributes" (attribute_id, " attribute_name", object_type_id) FROM stdin;
    public       postgres    false    186   �       b          0    16412    object_types 
   TABLE DATA               A   COPY public.object_types (object_type_id, type_name) FROM stdin;
    public       postgres    false    185   �       d          0    16434    objects 
   TABLE DATA               <   COPY public.objects (object_id, object_type_id) FROM stdin;
    public       postgres    false    187   �       �           2606    16427     attributes  attribute_id 
   CONSTRAINT     e   ALTER TABLE ONLY public." attributes"
    ADD CONSTRAINT " attribute_id" PRIMARY KEY (attribute_id);
 G   ALTER TABLE ONLY public." attributes" DROP CONSTRAINT " attribute_id";
       public         postgres    false    186    186            �           2606    16438    objects object_id 
   CONSTRAINT     V   ALTER TABLE ONLY public.objects
    ADD CONSTRAINT object_id PRIMARY KEY (object_id);
 ;   ALTER TABLE ONLY public.objects DROP CONSTRAINT object_id;
       public         postgres    false    187    187            �           2606    16419    object_types object_types_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.object_types
    ADD CONSTRAINT object_types_pkey PRIMARY KEY (object_type_id);
 H   ALTER TABLE ONLY public.object_types DROP CONSTRAINT object_types_pkey;
       public         postgres    false    185    185            �           2606    16451     attribute_values value_id 
   CONSTRAINT     `   ALTER TABLE ONLY public." attribute_values"
    ADD CONSTRAINT value_id PRIMARY KEY (value_id);
 F   ALTER TABLE ONLY public." attribute_values" DROP CONSTRAINT value_id;
       public         postgres    false    188    188            �           1259    16468    fki_attribute_id    INDEX     X   CREATE INDEX fki_attribute_id ON public." attribute_values" USING btree (attribute_id);
 $   DROP INDEX public.fki_attribute_id;
       public         postgres    false    188            �           1259    16457    fki_object_id    INDEX     R   CREATE INDEX fki_object_id ON public." attribute_values" USING btree (object_id);
 !   DROP INDEX public.fki_object_id;
       public         postgres    false    188            �           1259    16433    fki_object_type_id    INDEX     V   CREATE INDEX fki_object_type_id ON public." attributes" USING btree (object_type_id);
 &   DROP INDEX public.fki_object_type_id;
       public         postgres    false    186            �           2606    16463     attribute_values attribute_id    FK CONSTRAINT     �   ALTER TABLE ONLY public." attribute_values"
    ADD CONSTRAINT attribute_id FOREIGN KEY (attribute_id) REFERENCES public." attributes"(attribute_id);
 J   ALTER TABLE ONLY public." attribute_values" DROP CONSTRAINT attribute_id;
       public       postgres    false    186    2017    188            �           2606    16452     attribute_values object_id    FK CONSTRAINT     �   ALTER TABLE ONLY public." attribute_values"
    ADD CONSTRAINT object_id FOREIGN KEY (object_id) REFERENCES public.objects(object_id) ON DELETE CASCADE;
 G   ALTER TABLE ONLY public." attribute_values" DROP CONSTRAINT object_id;
       public       postgres    false    187    188    2020            �           2606    16428     attributes object_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY public." attributes"
    ADD CONSTRAINT object_type_id FOREIGN KEY (object_type_id) REFERENCES public.object_types(object_type_id) ON DELETE CASCADE;
 F   ALTER TABLE ONLY public." attributes" DROP CONSTRAINT object_type_id;
       public       postgres    false    185    186    2015            �           2606    16439    objects object_type_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.objects
    ADD CONSTRAINT object_type_id FOREIGN KEY (object_id) REFERENCES public.object_types(object_type_id) ON DELETE CASCADE;
 @   ALTER TABLE ONLY public.objects DROP CONSTRAINT object_type_id;
       public       postgres    false    2015    185    187            e      x������ � �      c      x������ � �      b      x������ � �      d      x������ � �     