CREATE TABLE lists (
  id serial PRIMARY KEY,
  memo text NOT NULL UNIQUE
);

CREATE TABLE todos (
  id serial PRIMARY KEY,
  memo text NOT NULL,
  completed boolean NOT NULL DEFAULT false,
  list_id integer NOT NULL REFERENCES lists (id)
);

