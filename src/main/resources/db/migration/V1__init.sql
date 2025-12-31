create table users
(
    id               bigserial primary key,
    provider         varchar(32)  not null, -- KAKAO, GOOGLE
    provider_user_id varchar(128) not null, -- OAuth provider user id
    email            varchar(255),
    name             varchar(128),
    created_at       timestamptz  not null default now(),
    updated_at       timestamptz  not null default now(),
    constraint uk_users_provider unique (provider, provider_user_id)
);