DROP TABLE IF EXISTS messages CASCADE;
DROP TABLE IF EXISTS offers CASCADE;
DROP TABLE IF EXISTS users CASCADE;

CREATE TABLE users (

    id SERIAL PRIMARY KEY,

    username VARCHAR(100),

    email VARCHAR(200),

    password_hash TEXT,

    bio TEXT DEFAULT '',

    skills TEXT DEFAULT ''

);

CREATE TABLE offers (

    id SERIAL PRIMARY KEY,

    title VARCHAR(200),

    description TEXT,

    category VARCHAR(100),

    owner_id INTEGER REFERENCES users(id)

);

CREATE TABLE messages (

    id SERIAL PRIMARY KEY,

    sender VARCHAR(100),

    receiver VARCHAR(100),

    content TEXT,

    offer_id INTEGER

);

INSERT INTO users (
    username,
    email,
    password_hash
)

VALUES

(
    'admin',
    'admin@mail.com',
    'admin'
),

(
    'test',
    'test@mail.com',
    'test'
);