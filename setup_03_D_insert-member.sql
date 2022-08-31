-- creating tables
-- please make sure you are connected with wefarmtestdb
-- and with the wefarmtest user or with a user with the correct privileges
-- to run the statements

-- On wefarmtestdb

----------------------------------
-- public.member
----------------------------------

insert into public.member(id, member_phone_number, member_name, status, created_at, created_by) values (1, 'b5b78858b76d5ae4307c706ecb58c5de96ca305ac660eb4161ad12520d5dddd7', 'victor kandie', 'live', '2021-08-11 18:21:08.701999000', 'werfarmtest') on conflict do nothing;
insert into public.member(id, member_phone_number, member_name, status, created_at, created_by) values (2, '0262006907755f8fd798899e847f49a52b93ee1936005e8f429aedf78b8f840b', 'josphat nyakagwa', 'live', '2021-08-12 12:42:13.201004000', 'werfarmtest') on conflict do nothing;
insert into public.member(id, member_phone_number, member_name, status, created_at, created_by) values (3, 'a6ca28b5d53b7e80be1af9cc5cf09fb7a90aade8fb030ae95f619c5afd130086', 'robinson rotich', 'live', '2021-08-12 05:21:26.334433000', 'werfarmtest') on conflict do nothing;
insert into public.member(id, member_phone_number, member_name, status, created_at, created_by) values (4, 'ed3948854fcb0bfda1f712f64ae4526bebeba17d2509aba1f4c334682a9d5de7', 'paul mwangi gachanja', 'zombie', '2021-08-11 17:02:34.292262000', 'werfarmtest') on conflict do nothing;
insert into public.member(id, member_phone_number, member_name, status, created_at, created_by) values (5, '7cc20d19da5838a601e49fb8d8323e2f47cc11ecf9f44c6ebc3576da7753c109', 'fredrick koech', 'live', '2021-08-11 17:49:09.238082000', 'werfarmtest') on conflict do nothing;
insert into public.member(id, member_phone_number, member_name, status, created_at, created_by) values (6, 'ff0e7546b09b71fbf7badb958601697bef318df66f9cb33f727e8362e1087f05', 'gladys wambui  njuki', 'live', '2021-08-11 19:15:55.046830000', 'werfarmtest') on conflict do nothing;
insert into public.member(id, member_phone_number, member_name, status, created_at, created_by) values (7, '30163e2aff6f06f5d15ac6d57cfc9481889b915b54c51ad76a4ef2023dcaf70f', 'georgina muthiani', 'live', '2021-08-12 05:50:04.225107000', 'werfarmtest') on conflict do nothing;
insert into public.member(id, member_phone_number, member_name, status, created_at, created_by) values (8, 'de8a99e9922703c281cbf34f800bbceb818acfa8dfc349f808e11f5642d1f5a0', 'daniel kavulano', 'zombie', '2021-08-11 17:07:52.878491000', 'werfarmtest') on conflict do nothing;
insert into public.member(id, member_phone_number, member_name, status, created_at, created_by) values (9, '8037d236ac2b8806e3d05353e57cc0fc7eb8c4c679f535f6d954eb5e803db6de', 'mike kabiru', 'zombie', '2021-08-11 17:07:52.881648000', 'werfarmtest') on conflict do nothing;
insert into public.member(id, member_phone_number, member_name, status, created_at, created_by) values (10, 'd948ff7c0aca009b99fed3d780a3f7ebbdcebb1b744d6927b7391f33e2263748', 'gurunet dungure', 'live', '2021-08-12 09:15:54.851668000', 'werfarmtest') on conflict do nothing;
insert into public.member(id, member_phone_number, member_name, status, created_at, created_by) values (11, '5b492f88669d9d795393a845384670f90b33e876d110488163e1dca9e52e5bec', 'george mito', 'live', '2021-08-11 18:09:07.158683000', 'werfarmtest') on conflict do nothing;
insert into public.member(id, member_phone_number, member_name, status, created_at, created_by) values (12, '770167f55e03171619a88166dbe5250326875e89aa2b4c43f8c2f0a823188c62', 'peter mithiru', 'live', '2021-08-11 17:06:31.276141000', 'werfarmtest') on conflict do nothing;
insert into public.member(id, member_phone_number, member_name, status, created_at, created_by) values (13, '41878a17b1cbb94063aab070db3232863e13fa8730652ba4c7a649a9421ef9df', 'ann njeru', 'live', '2021-08-11 17:33:40.821739000', 'werfarmtest') on conflict do nothing;
insert into public.member(id, member_phone_number, member_name, status, created_at, created_by) values (14, '4356225cf7efecd3327ea60b040606f542461fc343cff05231540cd35b675ceb', 'laban ouma', 'live', '2021-08-11 18:52:01.271649000', 'werfarmtest') on conflict do nothing;
insert into public.member(id, member_phone_number, member_name, status, created_at, created_by) values (15, '01bcdc0880b3a52b0726c6a00a4765f3ad4725e5b6538336c3ec4230c002fe4a', 'hillary kettienya', 'live', '2021-08-11 17:05:51.938625000', 'werfarmtest') on conflict do nothing;
insert into public.member(id, member_phone_number, member_name, status, created_at, created_by) values (16, 'd772de639491eab2c39cb5e8ae84424249bab43cc0332b5359d4d4a180975223', 'joshua  kanali', 'live', '2021-08-11 17:29:35.302620000', 'werfarmtest') on conflict do nothing;
insert into public.member(id, member_phone_number, member_name, status, created_at, created_by) values (17, '41ddf3d4fe535b6116c1c3cec6ddc2770d6471d38d19921b79eeb987b4f17551', 'nicholas wafila', 'live', '2021-08-11 17:17:48.116198000', 'werfarmtest') on conflict do nothing;
insert into public.member(id, member_phone_number, member_name, status, created_at, created_by) values (18, '73ed2ae28f1856fcc01542a52bf4f1a82fd3554f34df74b3e4483a72909c793d', 'samwel tangus', 'live', '2021-08-17 05:59:00.801044000', 'werfarmtest') on conflict do nothing;
insert into public.member(id, member_phone_number, member_name, status, created_at, created_by) values (19, '6e356f2918d6cd830b36c71db297d26ad9c13d9b33d39c535bb020edf6c4016e', 'weldon  langat ', 'live', '2021-08-16 07:40:11.093178000', 'werfarmtest') on conflict do nothing;
insert into public.member(id, member_phone_number, member_name, status, created_at, created_by) values (20, 'f45350df552328e50a2175da59a7accfd1e5bb23f479c93a60f36cbfbd6ff848', 'stanley langat', 'live', '2021-08-11 17:29:18.576337000', 'werfarmtest') on conflict do nothing;
insert into public.member(id, member_phone_number, member_name, status, created_at, created_by) values (21, 'b2bf60d73e9d9fa8c268df38dd5a7af3139d9494e8a1c961f2db3095a1ca2d5a', 'gregory oramis', 'live', '2021-08-12 14:18:57.724076000', 'werfarmtest') on conflict do nothing;
insert into public.member(id, member_phone_number, member_name, status, created_at, created_by) values (22, '01f38a71f8cb55b833ced1a3482987000d17f497c314e11bc5e9b8eb15d9607e', 'jackie maria', 'live', '2021-08-11 17:05:44.647183000', 'werfarmtest') on conflict do nothing;
