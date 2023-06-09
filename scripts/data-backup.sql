PGDMP     (    )    	            {            postgres    14.4    14.4                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    13754    postgres    DATABASE     c   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Peru.1252';
    DROP DATABASE postgres;
                postgres    false                       0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3334            �            1259    16505    guia    TABLE       CREATE TABLE public.guia (
    id uuid NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido character varying(100) NOT NULL,
    correo character varying(100) NOT NULL,
    contrasenia character varying(100) NOT NULL,
    telefono character varying(20) NOT NULL
);
    DROP TABLE public.guia;
       public         heap    postgres    false            �            1259    32777    reserva    TABLE     �   CREATE TABLE public.reserva (
    id uuid NOT NULL,
    turista_id uuid NOT NULL,
    servicio_id uuid NOT NULL,
    nombre character varying(100) NOT NULL
);
    DROP TABLE public.reserva;
       public         heap    postgres    false            �            1259    16512    servicio    TABLE     �   CREATE TABLE public.servicio (
    id uuid NOT NULL,
    id_guia uuid NOT NULL,
    monto double precision NOT NULL,
    categoria character varying(100) NOT NULL,
    puntaje double precision,
    estado character varying(100) NOT NULL
);
    DROP TABLE public.servicio;
       public         heap    postgres    false            �            1259    16414    turista    TABLE       CREATE TABLE public.turista (
    id uuid NOT NULL,
    nombre character varying(100) NOT NULL,
    apellido character varying(100) NOT NULL,
    contrasenia character varying(100) NOT NULL,
    telefono character varying(20) NOT NULL,
    correo character varying(100) NOT NULL
);
    DROP TABLE public.turista;
       public         heap    postgres    false            �          0    16505    guia 
   TABLE DATA           S   COPY public.guia (id, nombre, apellido, correo, contrasenia, telefono) FROM stdin;
    public          postgres    false    210   t                  0    32777    reserva 
   TABLE DATA           F   COPY public.reserva (id, turista_id, servicio_id, nombre) FROM stdin;
    public          postgres    false    212   �       �          0    16512    servicio 
   TABLE DATA           R   COPY public.servicio (id, id_guia, monto, categoria, puntaje, estado) FROM stdin;
    public          postgres    false    211   '       �          0    16414    turista 
   TABLE DATA           V   COPY public.turista (id, nombre, apellido, contrasenia, telefono, correo) FROM stdin;
    public          postgres    false    209   \       j           2606    16511    guia guia_pkey 
   CONSTRAINT     L   ALTER TABLE ONLY public.guia
    ADD CONSTRAINT guia_pkey PRIMARY KEY (id);
 8   ALTER TABLE ONLY public.guia DROP CONSTRAINT guia_pkey;
       public            postgres    false    210            n           2606    32783    reserva reserva_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT reserva_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.reserva DROP CONSTRAINT reserva_pkey;
       public            postgres    false    212            l           2606    16518    servicio tour_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.servicio
    ADD CONSTRAINT tour_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.servicio DROP CONSTRAINT tour_pkey;
       public            postgres    false    211            h           2606    16418    turista turista_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.turista
    ADD CONSTRAINT turista_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.turista DROP CONSTRAINT turista_pkey;
       public            postgres    false    209            o           2606    32768    servicio guia_id_fk    FK CONSTRAINT     {   ALTER TABLE ONLY public.servicio
    ADD CONSTRAINT guia_id_fk FOREIGN KEY (id_guia) REFERENCES public.guia(id) NOT VALID;
 =   ALTER TABLE ONLY public.servicio DROP CONSTRAINT guia_id_fk;
       public          postgres    false    210    211    3178            q           2606    32789    reserva servicio_id_fk    FK CONSTRAINT     |   ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT servicio_id_fk FOREIGN KEY (servicio_id) REFERENCES public.servicio(id);
 @   ALTER TABLE ONLY public.reserva DROP CONSTRAINT servicio_id_fk;
       public          postgres    false    211    3180    212            p           2606    32784    reserva turista_id_fk    FK CONSTRAINT     y   ALTER TABLE ONLY public.reserva
    ADD CONSTRAINT turista_id_fk FOREIGN KEY (turista_id) REFERENCES public.turista(id);
 ?   ALTER TABLE ONLY public.reserva DROP CONSTRAINT turista_id_fk;
       public          postgres    false    209    3176    212            �   ,  x�e�?O�0�����?Nbol�	����iU����`�OO
��Y�߳���l����B��$�]πk��(9�6�u�D=յ��x����Y��P��VW���9j4�29�� r@52G	�����^e���xu�����W~����_M1Q�锫؞b�	0ԇ�PI��mP�r��z^�u>�ټ���WN���[l+h�L��3D�P��.���QRO��z��ek�������NW&7��ķ񑖮��3؅�#�e�Ⱄ\MM�c��66YK۶�������غ��P���_���v          g  x����e1Em�\����K�@��0��ہ{9¶'���pݹ��p�}����4?K��	8��8���\���"בH�Y%���:�L<ǳ'���~����`/���4��.���TYE��؃��	�`$Ι}RӃ�WP�εR'غ	FaFԗ�l��牉�Z �]*�dP�F
�kx�lj����k��@�=pO�8��f��Dr��m�+��q.�˩T���g��{��U&2p��TWp.�hǗ���8�%���7he���ް�1e������)�C�Ya�D{�^��.<�&��mƢ�)������ym�e��?ڜTz��XS9���ƮB]	*���V��!���K3m���Ͽ��y��|�i      �   %  x����n�!F����_ {��5�1`��F3U�U�>Nw�u����v!�=��r�9V��u�p��;x�0j䈁�"YkF���j-?�Hy����c?��ڑ�3�"6rJ�h:"��t�:kC?r	��:�>ٮ=�Ρ��P��gK����G�������l���t�0M�6�xt�-Ť
M%��^A,ht�J:+.�UPӞ�������%��#fFs���D�o��*;G��W�E�q
�[����n�Y�2��U���+�1��AL��*�ib�=�����/�s{�>�^���%y)      �     x�]�Kk1��������ǭ�Rhh/��^d�N7l��ɥ��N��ғ��x$��� �h-A�-�q6��Q���̣��������r�b$B�+�i�q��|�u�J�r�%@�������-���|R�sU���) !y�g�؈%�l{E��q}hRM��93��|��m<�⡋�{$���U����E�����Hb&O:IK1��j{��I��e�Y�U�;'�������.�%�)���D�Z!W�`(>���rQ�,�ˏ�>�,7��������0�'�M     