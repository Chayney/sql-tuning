drop table if exists users;

create table users (
   id         bigserial primary key,
   name       text not null,
   email      text not null,
   age        int not null,
   created_at timestamp not null
);