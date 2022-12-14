PGDMP     2                	    z           postgres    14.5    14.5 =    X           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            Y           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            Z           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            [           1262    14020    postgres    DATABASE     S   CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE postgres;
                postgres    false            \           0    0    DATABASE postgres    COMMENT     N   COMMENT ON DATABASE postgres IS 'default administrative connection database';
                   postgres    false    3675                        2615    32768    Neil_Stratton_DB_QAP1    SCHEMA     '   CREATE SCHEMA "Neil_Stratton_DB_QAP1";
 %   DROP SCHEMA "Neil_Stratton_DB_QAP1";
                postgres    false            	            2615    24576    test_20220908    SCHEMA        CREATE SCHEMA test_20220908;
    DROP SCHEMA test_20220908;
                postgres    false                        2615    16394 
   test_sept8    SCHEMA        CREATE SCHEMA test_sept8;
    DROP SCHEMA test_sept8;
                postgres    false                        3079    16384 	   adminpack 	   EXTENSION     A   CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;
    DROP EXTENSION adminpack;
                   false            ]           0    0    EXTENSION adminpack    COMMENT     M   COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';
                        false    2            ?            1259    32791    aircraft    TABLE     ?   CREATE TABLE "Neil_Stratton_DB_QAP1".aircraft (
    id bigint NOT NULL,
    type character(255),
    airline_name character(255),
    number_of_passengers character(255),
    airplane_size bigint
);
 -   DROP TABLE "Neil_Stratton_DB_QAP1".aircraft;
       Neil_Stratton_DB_QAP1         heap    postgres    false    7            ?            1259    32786    airports    TABLE     ?   CREATE TABLE "Neil_Stratton_DB_QAP1".airports (
    id bigint NOT NULL,
    name character(255),
    code character(255),
    city_id bigint,
    plane_small bigint,
    plane_medium bigint,
    plane_large bigint
);
 -   DROP TABLE "Neil_Stratton_DB_QAP1".airports;
       Neil_Stratton_DB_QAP1         heap    postgres    false    7            ?            1259    32882    airports_allowed_from_to    TABLE     ?   CREATE TABLE "Neil_Stratton_DB_QAP1".airports_allowed_from_to (
    airports_allowed_id bigint NOT NULL,
    airport_name bigint NOT NULL,
    plane_type bigint NOT NULL,
    travel_from bigint NOT NULL,
    travel_to bigint NOT NULL
);
 =   DROP TABLE "Neil_Stratton_DB_QAP1".airports_allowed_from_to;
       Neil_Stratton_DB_QAP1         heap    postgres    false    7            ?            1259    32769    cities    TABLE     ?   CREATE TABLE "Neil_Stratton_DB_QAP1".cities (
    id bigint NOT NULL,
    city_name character(255) NOT NULL,
    province character(255) NOT NULL,
    population bigint NOT NULL
);
 +   DROP TABLE "Neil_Stratton_DB_QAP1".cities;
       Neil_Stratton_DB_QAP1         heap    postgres    false    7            ?            1259    32862    passenger_travel_info    TABLE     ?   CREATE TABLE "Neil_Stratton_DB_QAP1".passenger_travel_info (
    passenger_travel_id bigint NOT NULL,
    passenger_info bigint,
    passenger_aircraft_travelled bigint,
    passenger_airport_used bigint
);
 :   DROP TABLE "Neil_Stratton_DB_QAP1".passenger_travel_info;
       Neil_Stratton_DB_QAP1         heap    postgres    false    7            ?            1259    32781 
   passengers    TABLE     ?   CREATE TABLE "Neil_Stratton_DB_QAP1".passengers (
    id bigint NOT NULL,
    first_name character(255) NOT NULL,
    last_name character(255) NOT NULL,
    phone_number bigint NOT NULL
);
 /   DROP TABLE "Neil_Stratton_DB_QAP1".passengers;
       Neil_Stratton_DB_QAP1         heap    postgres    false    7            ?            1259    16395 
   testtable1    TABLE     T   CREATE TABLE public.testtable1 (
    id bigint NOT NULL,
    name character(255)
);
    DROP TABLE public.testtable1;
       public         heap    postgres    false            ?            1259    24577    course_review    TABLE     ?   CREATE TABLE test_20220908.course_review (
    id bigint NOT NULL,
    description text NOT NULL,
    user_id bigint NOT NULL,
    course_id bigint NOT NULL
);
 (   DROP TABLE test_20220908.course_review;
       test_20220908         heap    postgres    false    9            ?            1259    24582    courses    TABLE     g   CREATE TABLE test_20220908.courses (
    id bigint NOT NULL,
    name text,
    scheduled_time date
);
 "   DROP TABLE test_20220908.courses;
       test_20220908         heap    postgres    false    9            ?            1259    24587    user_courses    TABLE     h   CREATE TABLE test_20220908.user_courses (
    user_id bigint NOT NULL,
    course_id bigint NOT NULL
);
 '   DROP TABLE test_20220908.user_courses;
       test_20220908         heap    postgres    false    9            ?            1259    24590    users    TABLE     l   CREATE TABLE test_20220908.users (
    id bigint NOT NULL,
    name character(255),
    course_id bigint
);
     DROP TABLE test_20220908.users;
       test_20220908         heap    postgres    false    9            ?            1259    16405    courses    TABLE     %   CREATE TABLE test_sept8.courses (
);
    DROP TABLE test_sept8.courses;
    
   test_sept8         heap    postgres    false    6            ?            1259    16400 
   testtable1    TABLE     V   CREATE TABLE test_sept8.testtable1 (
    id bigint NOT NULL,
    name character(1)
);
 "   DROP TABLE test_sept8.testtable1;
    
   test_sept8         heap    postgres    false    6            S          0    32791    aircraft 
   TABLE DATA           p   COPY "Neil_Stratton_DB_QAP1".aircraft (id, type, airline_name, number_of_passengers, airplane_size) FROM stdin;
    Neil_Stratton_DB_QAP1          postgres    false    223   VM       R          0    32786    airports 
   TABLE DATA           t   COPY "Neil_Stratton_DB_QAP1".airports (id, name, code, city_id, plane_small, plane_medium, plane_large) FROM stdin;
    Neil_Stratton_DB_QAP1          postgres    false    222   tN       U          0    32882    airports_allowed_from_to 
   TABLE DATA           ?   COPY "Neil_Stratton_DB_QAP1".airports_allowed_from_to (airports_allowed_id, airport_name, plane_type, travel_from, travel_to) FROM stdin;
    Neil_Stratton_DB_QAP1          postgres    false    225   ?O       P          0    32769    cities 
   TABLE DATA           V   COPY "Neil_Stratton_DB_QAP1".cities (id, city_name, province, population) FROM stdin;
    Neil_Stratton_DB_QAP1          postgres    false    220   ?O       T          0    32862    passenger_travel_info 
   TABLE DATA           ?   COPY "Neil_Stratton_DB_QAP1".passenger_travel_info (passenger_travel_id, passenger_info, passenger_aircraft_travelled, passenger_airport_used) FROM stdin;
    Neil_Stratton_DB_QAP1          postgres    false    224   ?P       Q          0    32781 
   passengers 
   TABLE DATA           ^   COPY "Neil_Stratton_DB_QAP1".passengers (id, first_name, last_name, phone_number) FROM stdin;
    Neil_Stratton_DB_QAP1          postgres    false    221   (Q       I          0    16395 
   testtable1 
   TABLE DATA           .   COPY public.testtable1 (id, name) FROM stdin;
    public          postgres    false    213   ?Q       L          0    24577    course_review 
   TABLE DATA           S   COPY test_20220908.course_review (id, description, user_id, course_id) FROM stdin;
    test_20220908          postgres    false    216   R       M          0    24582    courses 
   TABLE DATA           B   COPY test_20220908.courses (id, name, scheduled_time) FROM stdin;
    test_20220908          postgres    false    217   [R       N          0    24587    user_courses 
   TABLE DATA           A   COPY test_20220908.user_courses (user_id, course_id) FROM stdin;
    test_20220908          postgres    false    218   ?R       O          0    24590    users 
   TABLE DATA           ;   COPY test_20220908.users (id, name, course_id) FROM stdin;
    test_20220908          postgres    false    219   ?R       K          0    16405    courses 
   TABLE DATA           %   COPY test_sept8.courses  FROM stdin;
 
   test_sept8          postgres    false    215   @S       J          0    16400 
   testtable1 
   TABLE DATA           2   COPY test_sept8.testtable1 (id, name) FROM stdin;
 
   test_sept8          postgres    false    214   ]S       ?           2606    32795    aircraft aircraft_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY "Neil_Stratton_DB_QAP1".aircraft
    ADD CONSTRAINT aircraft_pkey PRIMARY KEY (id);
 Q   ALTER TABLE ONLY "Neil_Stratton_DB_QAP1".aircraft DROP CONSTRAINT aircraft_pkey;
       Neil_Stratton_DB_QAP1            postgres    false    223            ?           2606    32886 6   airports_allowed_from_to airports_allowed_from_to_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY "Neil_Stratton_DB_QAP1".airports_allowed_from_to
    ADD CONSTRAINT airports_allowed_from_to_pkey PRIMARY KEY (airports_allowed_id, airport_name, plane_type, travel_from, travel_to);
 q   ALTER TABLE ONLY "Neil_Stratton_DB_QAP1".airports_allowed_from_to DROP CONSTRAINT airports_allowed_from_to_pkey;
       Neil_Stratton_DB_QAP1            postgres    false    225    225    225    225    225            ?           2606    32790    airports airports_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY "Neil_Stratton_DB_QAP1".airports
    ADD CONSTRAINT airports_pkey PRIMARY KEY (id);
 Q   ALTER TABLE ONLY "Neil_Stratton_DB_QAP1".airports DROP CONSTRAINT airports_pkey;
       Neil_Stratton_DB_QAP1            postgres    false    222            ?           2606    32773    cities cities_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY "Neil_Stratton_DB_QAP1".cities
    ADD CONSTRAINT cities_pkey PRIMARY KEY (id);
 M   ALTER TABLE ONLY "Neil_Stratton_DB_QAP1".cities DROP CONSTRAINT cities_pkey;
       Neil_Stratton_DB_QAP1            postgres    false    220            ?           2606    32866 0   passenger_travel_info passenger_travel_info_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY "Neil_Stratton_DB_QAP1".passenger_travel_info
    ADD CONSTRAINT passenger_travel_info_pkey PRIMARY KEY (passenger_travel_id);
 k   ALTER TABLE ONLY "Neil_Stratton_DB_QAP1".passenger_travel_info DROP CONSTRAINT passenger_travel_info_pkey;
       Neil_Stratton_DB_QAP1            postgres    false    224            ?           2606    32785    passengers passengers_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY "Neil_Stratton_DB_QAP1".passengers
    ADD CONSTRAINT passengers_pkey PRIMARY KEY (id);
 U   ALTER TABLE ONLY "Neil_Stratton_DB_QAP1".passengers DROP CONSTRAINT passengers_pkey;
       Neil_Stratton_DB_QAP1            postgres    false    221            ?           2606    16399    testtable1 testtable1_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.testtable1
    ADD CONSTRAINT testtable1_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.testtable1 DROP CONSTRAINT testtable1_pkey;
       public            postgres    false    213            ?           2606    24594     course_review course_review_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY test_20220908.course_review
    ADD CONSTRAINT course_review_pkey PRIMARY KEY (id);
 Q   ALTER TABLE ONLY test_20220908.course_review DROP CONSTRAINT course_review_pkey;
       test_20220908            postgres    false    216            ?           2606    24596    courses courses_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY test_20220908.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (id);
 E   ALTER TABLE ONLY test_20220908.courses DROP CONSTRAINT courses_pkey;
       test_20220908            postgres    false    217            ?           2606    24598    users initial_table_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY test_20220908.users
    ADD CONSTRAINT initial_table_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY test_20220908.users DROP CONSTRAINT initial_table_pkey;
       test_20220908            postgres    false    219            ?           2606    24600    user_courses user_courses_pkey 
   CONSTRAINT     ?   ALTER TABLE ONLY test_20220908.user_courses
    ADD CONSTRAINT user_courses_pkey PRIMARY KEY (user_id, course_id) INCLUDE (user_id, course_id);
 O   ALTER TABLE ONLY test_20220908.user_courses DROP CONSTRAINT user_courses_pkey;
       test_20220908            postgres    false    218    218            ?           2606    16404    testtable1 testtable1_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY test_sept8.testtable1
    ADD CONSTRAINT testtable1_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY test_sept8.testtable1 DROP CONSTRAINT testtable1_pkey;
    
   test_sept8            postgres    false    214            ?           2606    32887 (   airports_allowed_from_to airport_name_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY "Neil_Stratton_DB_QAP1".airports_allowed_from_to
    ADD CONSTRAINT airport_name_fk FOREIGN KEY (airport_name) REFERENCES "Neil_Stratton_DB_QAP1".airports(id) NOT VALID;
 c   ALTER TABLE ONLY "Neil_Stratton_DB_QAP1".airports_allowed_from_to DROP CONSTRAINT airport_name_fk;
       Neil_Stratton_DB_QAP1          postgres    false    3498    222    225            ?           2606    32847    airports city_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY "Neil_Stratton_DB_QAP1".airports
    ADD CONSTRAINT city_fk FOREIGN KEY (city_id) REFERENCES "Neil_Stratton_DB_QAP1".cities(id) NOT VALID;
 K   ALTER TABLE ONLY "Neil_Stratton_DB_QAP1".airports DROP CONSTRAINT city_fk;
       Neil_Stratton_DB_QAP1          postgres    false    222    3494    220            ?           2606    32872 +   passenger_travel_info passenger_aircraft_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY "Neil_Stratton_DB_QAP1".passenger_travel_info
    ADD CONSTRAINT passenger_aircraft_fk FOREIGN KEY (passenger_aircraft_travelled) REFERENCES "Neil_Stratton_DB_QAP1".aircraft(id) NOT VALID;
 f   ALTER TABLE ONLY "Neil_Stratton_DB_QAP1".passenger_travel_info DROP CONSTRAINT passenger_aircraft_fk;
       Neil_Stratton_DB_QAP1          postgres    false    224    3500    223            ?           2606    32877 *   passenger_travel_info passenger_airport_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY "Neil_Stratton_DB_QAP1".passenger_travel_info
    ADD CONSTRAINT passenger_airport_fk FOREIGN KEY (passenger_airport_used) REFERENCES "Neil_Stratton_DB_QAP1".airports(id) NOT VALID;
 e   ALTER TABLE ONLY "Neil_Stratton_DB_QAP1".passenger_travel_info DROP CONSTRAINT passenger_airport_fk;
       Neil_Stratton_DB_QAP1          postgres    false    3498    222    224            ?           2606    32867 '   passenger_travel_info passenger_name_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY "Neil_Stratton_DB_QAP1".passenger_travel_info
    ADD CONSTRAINT passenger_name_fk FOREIGN KEY (passenger_info) REFERENCES "Neil_Stratton_DB_QAP1".passengers(id) NOT VALID;
 b   ALTER TABLE ONLY "Neil_Stratton_DB_QAP1".passenger_travel_info DROP CONSTRAINT passenger_name_fk;
       Neil_Stratton_DB_QAP1          postgres    false    3496    224    221            ?           2606    32892 &   airports_allowed_from_to plane_type_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY "Neil_Stratton_DB_QAP1".airports_allowed_from_to
    ADD CONSTRAINT plane_type_fk FOREIGN KEY (plane_type) REFERENCES "Neil_Stratton_DB_QAP1".aircraft(id) NOT VALID;
 a   ALTER TABLE ONLY "Neil_Stratton_DB_QAP1".airports_allowed_from_to DROP CONSTRAINT plane_type_fk;
       Neil_Stratton_DB_QAP1          postgres    false    3500    225    223            ?           2606    32897 '   airports_allowed_from_to travel_from_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY "Neil_Stratton_DB_QAP1".airports_allowed_from_to
    ADD CONSTRAINT travel_from_fk FOREIGN KEY (travel_from) REFERENCES "Neil_Stratton_DB_QAP1".airports(id) NOT VALID;
 b   ALTER TABLE ONLY "Neil_Stratton_DB_QAP1".airports_allowed_from_to DROP CONSTRAINT travel_from_fk;
       Neil_Stratton_DB_QAP1          postgres    false    222    3498    225            ?           2606    32902 %   airports_allowed_from_to travel_to_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY "Neil_Stratton_DB_QAP1".airports_allowed_from_to
    ADD CONSTRAINT travel_to_fk FOREIGN KEY (travel_to) REFERENCES "Neil_Stratton_DB_QAP1".airports(id) NOT VALID;
 `   ALTER TABLE ONLY "Neil_Stratton_DB_QAP1".airports_allowed_from_to DROP CONSTRAINT travel_to_fk;
       Neil_Stratton_DB_QAP1          postgres    false    3498    222    225            ?           2606    24601    course_review course    FK CONSTRAINT     ?   ALTER TABLE ONLY test_20220908.course_review
    ADD CONSTRAINT course FOREIGN KEY (course_id) REFERENCES test_20220908.courses(id);
 E   ALTER TABLE ONLY test_20220908.course_review DROP CONSTRAINT course;
       test_20220908          postgres    false    217    3488    216            ?           2606    24606    user_courses courses    FK CONSTRAINT     ?   ALTER TABLE ONLY test_20220908.user_courses
    ADD CONSTRAINT courses FOREIGN KEY (course_id) REFERENCES test_20220908.courses(id);
 E   ALTER TABLE ONLY test_20220908.user_courses DROP CONSTRAINT courses;
       test_20220908          postgres    false    217    218    3488            ?           2606    24611    users courses_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY test_20220908.users
    ADD CONSTRAINT courses_fk FOREIGN KEY (course_id) REFERENCES test_20220908.courses(id) NOT VALID;
 A   ALTER TABLE ONLY test_20220908.users DROP CONSTRAINT courses_fk;
       test_20220908          postgres    false    217    219    3488            ?           2606    24616    course_review user    FK CONSTRAINT     ?   ALTER TABLE ONLY test_20220908.course_review
    ADD CONSTRAINT "user" FOREIGN KEY (user_id) REFERENCES test_20220908.users(id);
 E   ALTER TABLE ONLY test_20220908.course_review DROP CONSTRAINT "user";
       test_20220908          postgres    false    3492    219    216            ?           2606    24621    user_courses users    FK CONSTRAINT        ALTER TABLE ONLY test_20220908.user_courses
    ADD CONSTRAINT users FOREIGN KEY (user_id) REFERENCES test_20220908.users(id);
 C   ALTER TABLE ONLY test_20220908.user_courses DROP CONSTRAINT users;
       test_20220908          postgres    false    219    218    3492            S     x???A??0E??)r4n?IXvXB?B??lD	?R????APn?????ַ?M????G?jg4m??*p8i)"@M:,.?{߱ii-R?<?I!??
?JZ?,@X?{????`?q?"X??5H2?[??n̦?͇?	??B?T?????ϧ??Z????e7???t?-???B??ȇ???,-?ż316???R???wܙ????b ?y???yU$?G????ڟ`a???}̙?!??Iv???#?˨?PK+?????;?3      R     x???MN?0??ϧ?????l+?T*ؐ6?q?d\9??܈sp1ܴKT???N????f?Sm?\???#??%?ʍqG??L?????	?1G!?x1D??k?S????u?w?j?l??rUo)eK>j??`?l4a?'K????o??;'X]LX????i?+ ?iw???nϝ???_*C?f;??h?c\?L?N 4wNb)??2?????m??l)??y?уS)̱U?9?OYzE??jZJ?N????I??lB?q)?S-?>??A?߹3p?b<2?:B???T      U   ?   x?=??	?@C?_??????s$?<?X?B???f????3ME=?S?i???0~??C??
/      P   ?   x???An? ????)|?x?.#?R?m6c?$$"???_???;????0?ꐮq???[?i?c?8r?0 )U?-j(\hzrq??л)w???????c?w?.bG?>???K ?t-?{?I1O?w?Z\??6 ;nu?5\)?3?qq?.?R?=???|@K#?@????{.rq??b?9-q^?p???`??p??9?R????ZY[??"? O?      T   @   x????0ѳTL?/???_GƧ??P(?N??U8qi{?nߚ?:>ԃ???R[????????
{      Q   ?   x?????0F??????I?.?$??'?IU?}C%f??o????'?{?ׇ^??jͻt!?w?1d?C?jw?d[?<??7d?sh ?af?Hr???"B?K??_?ȟ1IG????5??dpCG??BI5in?xQ??K?n"t?y?N?Hr@??b??o????Y????S?qd,???????h      I      x?????? ? ?      L   ;   x?3?,??,VH?/*-NU ?ҋRK99??p?q??3?3A???/A67F??? ??#?      M   :   x?3?LI,ILJ,N-?4202?5??54?2??J,K,N.?,(A??r??"f\1z\\\ ?d?      N   %   x?3?4?2?4bc.c ??6?????????? S?b      O   V   x????? D??LV`??x??ƀ?A????x??ݿ???W??B??湪C?ƃ?bOvu?n{M"4????8W??~?/      K      x?????? ? ?      J      x?????? ? ?     