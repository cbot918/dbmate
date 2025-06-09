-- migrate:up
create table test_user (
  id integer,
  name varchar(255),
  email varchar(255) not null
);

create table test_table2(
  name varchar(10)
)

-- migrate:down