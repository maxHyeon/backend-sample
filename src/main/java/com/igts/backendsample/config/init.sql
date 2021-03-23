-- CREATE USER igts PASSWORD 'ibmK0rea1!' SUPERUSER;
-- CREATE DATABASE igts OWNER igts;
-- \c igts igts
CREATE TABLE account (
    id integer NOT NULL,
    firstname character varying(100),
    lastname character varying(100),
    email character varying(50),
    country character varying(50),
    state character varying(50),
    phone character varying(50),
    budget double precision,
    jobTitle character varying(50),
    picture character varying(255),
    CONSTRAINT account_pk PRIMARY KEY (id)
);

CREATE TABLE customer (
    id integer NOT NULL,
    firstName character varying(100),
    lastName character varying(100),
    email character varying(50),
    country character varying(50),
    state character varying(50),
    phone character varying(50),
    registration_date date,
    account_id integer,
    picture character varying(255),
    CONSTRAINT customer_pk PRIMARY KEY (id)
);

CREATE TABLE product (
    id integer NOT NULL,
    name character varying(100),
    downloads integer,
    update_date date,
    description character varying(255),
    CONSTRAINT product_pk PRIMARY KEY (id)
);

CREATE TABLE order_info (
    order_ref integer NOT NULL,
    customer_id integer NOT NULL,
    date date,
    status character varying(32),
    product_id integer,
    CONSTRAINT order_pk PRIMARY KEY (order_ref)
);

INSERT INTO
    account
VALUES
(
    55,
    'MinHyeon',
    'Park',
    'parkmh90@kr.ibm.com',
    'Korea',
    'Seoul',
    '010-9910-9566',
    655644,
    NULL
);
INSERT INTO
    customer
VALUES
(
    1,
    'Ekaterina',
    'Tankova',
    'ekaterina.tankova@devias.io',
    'USA',
    'West Virginia',
    '304-428-3097',
    '2021-03-20',
    556544,
    NULL
);
INSERT INTO
    customer
VALUES
(
    2,
    'Jieun',
    'Lee',
    'dlwlrma@naver.com',
    'Korea',
    'Seoul',
    '123-456-2222',
    '2021-03-18',
    556544,
    NULL
);
INSERT INTO
    customer
VALUES
(
    3,
    'Minatozaki',
    'Sana',
    'sana@twice.com',
    'JAPAN',
    'Osaka',
    '222-333-4444',
    '2021-03-19',
    556544,
    NULL
);

-- INSERT INTO
--     product
-- VALUES
-- (
--     id integer NOT NULL,
--     name character varying(100),
--     downloads integer,
--     update_date date,
--     description character varying(255),
-- );
-- INSERT INTO
--     product
-- VALUES
-- (
--     id integer NOT NULL,
--     name character varying(100),
--     downloads integer,
--     update_date date,
--     description character varying(255),
-- );
-- INSERT INTO
--     product
-- VALUES
-- (
--     id integer NOT NULL,
--     name character varying(100),
--     downloads integer,
--     update_date date,
--     description character varying(255),
-- );
-- INSERT INTO
--     product
-- VALUES
-- (
--     id integer NOT NULL,
--     name character varying(100),
--     downloads integer,
--     update_date date,
--     description character varying(255),
-- );
-- INSERT INTO
--     order
-- VALUES
-- (
--     order_ref integer NOT NULL,
--     customer_id integer NOT NULL,
--     date character varying(32),
--     status character varying(32),
--     product_id integer,
-- );

