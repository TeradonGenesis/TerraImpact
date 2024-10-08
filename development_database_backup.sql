PGDMP     &    (                w            TerraImpact_development    12.0    12.0 -    C           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            D           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            E           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            F           1262    16393    TerraImpact_development    DATABASE     �   CREATE DATABASE "TerraImpact_development" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_Malaysia.1252' LC_CTYPE = 'English_Malaysia.1252';
 )   DROP DATABASE "TerraImpact_development";
                postgres    false            �            1259    16453    active_storage_attachments    TABLE       CREATE TABLE public.active_storage_attachments (
    id bigint NOT NULL,
    name character varying NOT NULL,
    record_type character varying NOT NULL,
    record_id bigint NOT NULL,
    blob_id bigint NOT NULL,
    created_at timestamp without time zone NOT NULL
);
 .   DROP TABLE public.active_storage_attachments;
       public         heap    postgres    false            �            1259    16451 !   active_storage_attachments_id_seq    SEQUENCE     �   CREATE SEQUENCE public.active_storage_attachments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.active_storage_attachments_id_seq;
       public          postgres    false    211            G           0    0 !   active_storage_attachments_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.active_storage_attachments_id_seq OWNED BY public.active_storage_attachments.id;
          public          postgres    false    210            �            1259    16441    active_storage_blobs    TABLE     F  CREATE TABLE public.active_storage_blobs (
    id bigint NOT NULL,
    key character varying NOT NULL,
    filename character varying NOT NULL,
    content_type character varying,
    metadata text,
    byte_size bigint NOT NULL,
    checksum character varying NOT NULL,
    created_at timestamp without time zone NOT NULL
);
 (   DROP TABLE public.active_storage_blobs;
       public         heap    postgres    false            �            1259    16439    active_storage_blobs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.active_storage_blobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.active_storage_blobs_id_seq;
       public          postgres    false    209            H           0    0    active_storage_blobs_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.active_storage_blobs_id_seq OWNED BY public.active_storage_blobs.id;
          public          postgres    false    208            �            1259    16403    ar_internal_metadata    TABLE     �   CREATE TABLE public.ar_internal_metadata (
    key character varying NOT NULL,
    value character varying,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL
);
 (   DROP TABLE public.ar_internal_metadata;
       public         heap    postgres    false            �            1259    16413    impacts    TABLE     $  CREATE TABLE public.impacts (
    id bigint NOT NULL,
    impact text,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    category character varying,
    "user_ID" integer,
    user_id integer,
    hash_id character varying
);
    DROP TABLE public.impacts;
       public         heap    postgres    false            �            1259    16411    impacts_id_seq    SEQUENCE     w   CREATE SEQUENCE public.impacts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.impacts_id_seq;
       public          postgres    false    205            I           0    0    impacts_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.impacts_id_seq OWNED BY public.impacts.id;
          public          postgres    false    204            �            1259    16395    schema_migrations    TABLE     R   CREATE TABLE public.schema_migrations (
    version character varying NOT NULL
);
 %   DROP TABLE public.schema_migrations;
       public         heap    postgres    false            �            1259    16424    users    TABLE     f  CREATE TABLE public.users (
    id bigint NOT NULL,
    email character varying DEFAULT ''::character varying NOT NULL,
    encrypted_password character varying DEFAULT ''::character varying NOT NULL,
    reset_password_token character varying,
    reset_password_sent_at timestamp without time zone,
    remember_created_at timestamp without time zone,
    created_at timestamp(6) without time zone NOT NULL,
    updated_at timestamp(6) without time zone NOT NULL,
    username character varying,
    name character varying,
    admin boolean DEFAULT false,
    hash_id character varying,
    description text
);
    DROP TABLE public.users;
       public         heap    postgres    false            �            1259    16422    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          postgres    false    207            J           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          postgres    false    206            �
           2604    16456    active_storage_attachments id    DEFAULT     �   ALTER TABLE ONLY public.active_storage_attachments ALTER COLUMN id SET DEFAULT nextval('public.active_storage_attachments_id_seq'::regclass);
 L   ALTER TABLE public.active_storage_attachments ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            �
           2604    16444    active_storage_blobs id    DEFAULT     �   ALTER TABLE ONLY public.active_storage_blobs ALTER COLUMN id SET DEFAULT nextval('public.active_storage_blobs_id_seq'::regclass);
 F   ALTER TABLE public.active_storage_blobs ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            �
           2604    16416 
   impacts id    DEFAULT     h   ALTER TABLE ONLY public.impacts ALTER COLUMN id SET DEFAULT nextval('public.impacts_id_seq'::regclass);
 9   ALTER TABLE public.impacts ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    205    204    205            �
           2604    16427    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            @          0    16453    active_storage_attachments 
   TABLE DATA           k   COPY public.active_storage_attachments (id, name, record_type, record_id, blob_id, created_at) FROM stdin;
    public          postgres    false    211   58       >          0    16441    active_storage_blobs 
   TABLE DATA           z   COPY public.active_storage_blobs (id, key, filename, content_type, metadata, byte_size, checksum, created_at) FROM stdin;
    public          postgres    false    209   �8       8          0    16403    ar_internal_metadata 
   TABLE DATA           R   COPY public.ar_internal_metadata (key, value, created_at, updated_at) FROM stdin;
    public          postgres    false    203   �9       :          0    16413    impacts 
   TABLE DATA           l   COPY public.impacts (id, impact, created_at, updated_at, category, "user_ID", user_id, hash_id) FROM stdin;
    public          postgres    false    205   +:       7          0    16395    schema_migrations 
   TABLE DATA           4   COPY public.schema_migrations (version) FROM stdin;
    public          postgres    false    202   �;       <          0    16424    users 
   TABLE DATA           �   COPY public.users (id, email, encrypted_password, reset_password_token, reset_password_sent_at, remember_created_at, created_at, updated_at, username, name, admin, hash_id, description) FROM stdin;
    public          postgres    false    207   =<       K           0    0 !   active_storage_attachments_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.active_storage_attachments_id_seq', 4, true);
          public          postgres    false    210            L           0    0    active_storage_blobs_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.active_storage_blobs_id_seq', 4, true);
          public          postgres    false    208            M           0    0    impacts_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.impacts_id_seq', 28, true);
          public          postgres    false    204            N           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 20, true);
          public          postgres    false    206            �
           2606    16461 :   active_storage_attachments active_storage_attachments_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT active_storage_attachments_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.active_storage_attachments DROP CONSTRAINT active_storage_attachments_pkey;
       public            postgres    false    211            �
           2606    16449 .   active_storage_blobs active_storage_blobs_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.active_storage_blobs
    ADD CONSTRAINT active_storage_blobs_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.active_storage_blobs DROP CONSTRAINT active_storage_blobs_pkey;
       public            postgres    false    209            �
           2606    16410 .   ar_internal_metadata ar_internal_metadata_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.ar_internal_metadata
    ADD CONSTRAINT ar_internal_metadata_pkey PRIMARY KEY (key);
 X   ALTER TABLE ONLY public.ar_internal_metadata DROP CONSTRAINT ar_internal_metadata_pkey;
       public            postgres    false    203            �
           2606    16421    impacts impacts_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.impacts
    ADD CONSTRAINT impacts_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.impacts DROP CONSTRAINT impacts_pkey;
       public            postgres    false    205            �
           2606    16402 (   schema_migrations schema_migrations_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY public.schema_migrations
    ADD CONSTRAINT schema_migrations_pkey PRIMARY KEY (version);
 R   ALTER TABLE ONLY public.schema_migrations DROP CONSTRAINT schema_migrations_pkey;
       public            postgres    false    202            �
           2606    16434    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    207            �
           1259    16467 +   index_active_storage_attachments_on_blob_id    INDEX     u   CREATE INDEX index_active_storage_attachments_on_blob_id ON public.active_storage_attachments USING btree (blob_id);
 ?   DROP INDEX public.index_active_storage_attachments_on_blob_id;
       public            postgres    false    211            �
           1259    16468 +   index_active_storage_attachments_uniqueness    INDEX     �   CREATE UNIQUE INDEX index_active_storage_attachments_uniqueness ON public.active_storage_attachments USING btree (record_type, record_id, name, blob_id);
 ?   DROP INDEX public.index_active_storage_attachments_uniqueness;
       public            postgres    false    211    211    211    211            �
           1259    16450 !   index_active_storage_blobs_on_key    INDEX     h   CREATE UNIQUE INDEX index_active_storage_blobs_on_key ON public.active_storage_blobs USING btree (key);
 5   DROP INDEX public.index_active_storage_blobs_on_key;
       public            postgres    false    209            �
           1259    16435    index_users_on_email    INDEX     N   CREATE UNIQUE INDEX index_users_on_email ON public.users USING btree (email);
 (   DROP INDEX public.index_users_on_email;
       public            postgres    false    207            �
           1259    16436 #   index_users_on_reset_password_token    INDEX     l   CREATE UNIQUE INDEX index_users_on_reset_password_token ON public.users USING btree (reset_password_token);
 7   DROP INDEX public.index_users_on_reset_password_token;
       public            postgres    false    207            �
           1259    16437    index_users_on_username    INDEX     T   CREATE UNIQUE INDEX index_users_on_username ON public.users USING btree (username);
 +   DROP INDEX public.index_users_on_username;
       public            postgres    false    207            �
           2606    16462 .   active_storage_attachments fk_rails_c3b3935057    FK CONSTRAINT     �   ALTER TABLE ONLY public.active_storage_attachments
    ADD CONSTRAINT fk_rails_c3b3935057 FOREIGN KEY (blob_id) REFERENCES public.active_storage_blobs(id);
 X   ALTER TABLE ONLY public.active_storage_attachments DROP CONSTRAINT fk_rails_c3b3935057;
       public          postgres    false    211    209    2738            @   a   x�Uʱ�0�Z����K�ei�ti\� p̟t��+h^�;}�m'8�T+t,��"k--z����J��h��b�}ht��,T��4�t��5�f�+�;      >   '  x����N�@E�ӧ ���7��7m���1*.L�ԖҖ)���P㻋l5�7�gwr��ޮׁ2[�ې��"��V�A�r�U�����E�D�8:�Y��$�r���(��j���������aL"'sz��/��Sx�ܯ�i}w���1a��������£�rHACO��h�	��,�J���]��{�+�*����\�H������7��~	�p�ũ�y>ulD�"�8�U�M6q�����B�I[���4������ ��`��(s�UP������0 �a�f��ݶ,�6C�      8   >   x�K�+�,���M�+�LI-K��/ ��-uuMͬ���L�L-��q�p��qqq Γ�      :   �  x�}�Mn�0���)� ��Q�8N�"��:NE6�4�K�C�1��A���$�ڴM�" �{���#+��SVƌŬ �U��X�PI�"{�xL��b��4a,x����ݒpR���ͼ9�"UO'&�zt����dZI�d����
)� �;c{�'8��^������6��}�~�q�G[g8k���
��СOeY��RC�'�$Y�O*'�:��>-�����G;�A��u��5x9P1�KiB��y�um{=���Z7��zP����ǈ���he@�N��ݕ�!l���:�=ǰ�	��G4���m&�	�ZP~����K�O�ڴ�8齝�T�M��*h��^�4�积��?`?�g�O��u���"�X�dY���-k5v�^�vf~y3��e�_DwIE�7��      7   U   x�E��	�@��#I��y����ғB�AH.��R�B͕��PBsRN��Ig��Y	�� i����Fnr��Ho7��s��qq�Z�      <   >  x�}�Kr�0���Zd98�d��j�`N`H�T6Ɩm�!;~���\c�7''a15IMUW����S׏AUf��}.X���q��\
�\a�
�+��o\���rG�=�=8�XB�b���mC��(����ڞ�Þ7�=��%���!BC�A4220��F4�]$<�G����.!E�1�,9/R��e��.y]��e߉�N�E�"��p�m�/�R�~�B�v<`��3Vðd����W��W�M䢭˰Z^�F���9k�^�D>�u�|{�y�}�2�X�@Q�	q_ dOkX�f��%��d��i�L�w]���iu��ק2����t�����bz;��>ǋ���H�}`M��ɣ/%��H!,��C�������skc�
D�e�32�v%p��l���W�ާ]xʗ�����:�֋n���8.��ԝܵ�/���AtC!��c���%D��T�(!����#���I��V��<�oz��a��L����Pz�W�۽׵իn��az����:{���V��O�Bm��'�O��0�荖bI�H�����(Ġ�ݤ8�X]l�3<J����G��     