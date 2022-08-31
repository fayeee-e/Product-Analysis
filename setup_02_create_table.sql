-- Creating tables
-- Please make sure you are connected with xyz
-- and with the xyz user or with a user with the correct privileges
-- to run the statements

-- On xyz

-- Target groups for SMS campaigns
CREATE TABLE IF NOT EXISTS public.target_group
(
    id BIGINT NOT NULL,
    target_group_name VARCHAR(500) NOT NULL,
    content TEXT NOT NULL,
    keyword VARCHAR(100) NOT NULL,
    created_at timestamptz NOT NULL,
    created_by VARCHAR(100) NOT NULL,
    CONSTRAINT pk_target_group PRIMARY KEY (id),
    CONSTRAINT uk_target_group__target_group_name UNIQUE (target_group_name)
);

-- Target users for SMS campaigns by target groups
CREATE TABLE IF NOT EXISTS public.target_group_user
(
    id BIGINT NOT NULL,
    target_group_id BIGINT NOT NULL,
    user_phone_number VARCHAR(69) NOT NULL,
    created_at timestamptz NOT NULL,
    created_by VARCHAR(100) NOT NULL,
    CONSTRAINT pk_target_group_user PRIMARY KEY (id),
    CONSTRAINT uk_target_group_user__target_group_id_user_phone_number UNIQUE (target_group_id, user_phone_number)
);

-- Impression from SMS shortlinks
-- This is part of a more complex design. We have a database that holds details for
-- shortlinks for our we.fm service. The database has two main tables:
--  ** Routes, with URI and where to forward the client to
--  ** Impressions, that record any time one of these redirects happen
-- For simplicity of the test we have generated here only one table which records
-- every time a member clicks the shortlink which includes the keyword generated for the SMS test
CREATE TABLE IF NOT EXISTS public.impression
(
    id BIGINT NOT NULL,
    keyword VARCHAR(500) NOT NULL,
    headers TEXT NOT NULL,
    params TEXT NOT NULL,
    created_at timestamptz NOT NULL,
    created_by VARCHAR(100) NOT NULL,
    CONSTRAINT pk_impression PRIMARY KEY (id)
);

-- Members
CREATE TABLE IF NOT EXISTS public.member
(
    id BIGINT NOT NULL,
    member_phone_number VARCHAR(100) NOT NULL,
    member_name VARCHAR NOT NULL,
    status VARCHAR(100) NOT NULL,
    created_at timestamptz NOT NULL,
    created_by VARCHAR(100) NOT NULL,
    updated_at timestamptz,
    updated_by VARCHAR(100),
    CONSTRAINT pk_member PRIMARY KEY (id),
    CONSTRAINT uk_member__member_phone_number UNIQUE (member_phone_number)
);

-- Member message
CREATE TABLE IF NOT EXISTS public.member_post
(
    id BIGINT NOT NULL,
    member_phone_number VARCHAR(100) NOT NULL,
    body TEXT NOT NULL,
    parent_member_post_id BIGINT,
    status VARCHAR(100) NOT NULL,
    created_at timestamptz NOT NULL,
    created_by VARCHAR(100) NOT NULL,
    updated_at timestamptz,
    updated_by VARCHAR(100),
    CONSTRAINT pk_member_post PRIMARY KEY (id)
);
