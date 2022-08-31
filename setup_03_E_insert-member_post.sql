-- creating tables
-- please make sure you are connected with wefarmtestdb
-- and with the wefarmtest user or with a user with the correct privileges
-- to run the statements

-- On wefarmtestdb

----------------------------------
-- public.member_post
----------------------------------

insert into public.member_post(id, member_phone_number, body, status, created_at, created_by) values (1, 'b2bf60d73e9d9fa8c268df38dd5a7af3139d9494e8a1c961f2db3095a1ca2d5a', '7izmtdgspzdi9artlurbkemdsehsb7gsbrrchms9omgczpm8cess8safgcjc12aaux81mtiw0rminyetqbdn2sm9ngqhf9ocxcjr', 'ok', '2021-08-12 14:22:39.460812000', 'wefarmtest') on conflict do nothing;
insert into public.member_post(id, member_phone_number, body, status, created_at, created_by) values (2, '8037d236ac2b8806e3d05353e57cc0fc7eb8c4c679f535f6d954eb5e803db6de', 'lledheb9eo6wnu6akbyzawjgcktsjpq3o21ne87ac2nffzd6fb9mf7mdd8wh4pdjxskdiq1tfs4dzyulnyrgzxheore3yrvabeqw', 'ok', '2021-08-11 17:10:34.250853000', 'wefarmtest') on conflict do nothing;
insert into public.member_post(id, member_phone_number, body, status, created_at, created_by) values (3, '6e356f2918d6cd830b36c71db297d26ad9c13d9b33d39c535bb020edf6c4016e', 'pvhozc2nfakrnhzrrfsm9pjblgulaoitnhdjvibipguaumh7stm0rn5kbza34wjbrp6tu4rpz8y1i6qpdxoedaye1tivbrelzcfj', 'ok', '2021-08-16 07:44:05.373578000', 'wefarmtest') on conflict do nothing;
insert into public.member_post(id, member_phone_number, body, status, created_at, created_by) values (4, 'b2bf60d73e9d9fa8c268df38dd5a7af3139d9494e8a1c961f2db3095a1ca2d5a', 'hddwdo29ml8yuqeov3m8omeira3ctgab6cyatif9wdtw3hazomfyzqqumohq7tzlidla7pfczt2x8igb9v37afmkpkxbwrdzmvrl', 'ok', '2021-08-27 09:36:25.279780000', 'wefarmtest') on conflict do nothing;
insert into public.member_post(id, member_phone_number, body, status, created_at, created_by) values (5, '7cc20d19da5838a601e49fb8d8323e2f47cc11ecf9f44c6ebc3576da7753c109', 'hsuxiwr1p6a9xzq37verfnxrq3htkw1i0joqtccnc7ysaqmgga36nxyg20qxdfze0shaimo9zh5xxv2izlyljs54wwyrynakg46r', 'ok', '2021-08-11 17:54:24.792394000', 'wefarmtest') on conflict do nothing;
