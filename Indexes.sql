# USE codeup_test_db;
#
# DESCRIBE albums;
#
# #ALTER TABLE albums
# #ADD UNIQUE(artist, name);
#
# select * from albums;
#
# INSERT into albums (artist, name, release_date, sales, genre)
#     values ('Test2 Artist', 'Test2 Album', 2000, 12, 'Test2 Genre');


CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);


CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);


INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');


INSERT INTO users (name, email, role_id) VALUES
  ('bob', 'bob@example.com', 1),
  ('joe', 'joe@example.com', 2),
  ('sally', 'sally@example.com', 3),
  ('adam', 'adam@example.com', 3),
  ('jane', 'jane@example.com', null),
  ('mike', 'mike@example.com', null);

select * from users;

select * from roles;



INSERT INTO roles (name) VALUES ('null');


INSERT INTO users (name, email, role_id) VALUES
  ('john', 'john@example.com', 2),
  ('veronica', 'veronica@example.com', 2),
  ('tristan', 'tristan@example.com', 2),
  ('luke', 'luke@example.com', null);

SELECT users.name as user_name, roles.name as role_name
FROM roles
  LEFT JOIN users ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
  RIGHT JOIN roles ON users.role_id = roles.id;

SELECT users.name AS user_name, roles.name AS role_name
FROM users
  LEFT JOIN roles ON users.role_id = roles.id;


select roles.name, count(*)
from roles
left join users u on roles.id = u.role_id
group by roles.name;
