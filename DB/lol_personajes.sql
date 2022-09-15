create table lol.personajes
(
    id          int auto_increment
        primary key,
    name        varchar(45) not null,
    icon        text        not null,
    description text        null,
    createdAt   datetime    null,
    updatedAt   datetime    null
);

INSERT INTO lol.personajes (id, name, icon, description, createdAt, updatedAt) VALUES (1, 'attroxx', 'http://ddragon.leagueoflegends.com/cdn/8.11.1/img/champion/Aatrox.png', null, null, '2020-09-09 15:04:19');
INSERT INTO lol.personajes (id, name, icon, description, createdAt, updatedAt) VALUES (3, 'ahri', 'http://ddragon.leagueoflegends.com/cdn/8.11.1/img/champion/Ahri.png', null, '2020-08-19 19:34:45', '2020-08-19 19:34:45');
INSERT INTO lol.personajes (id, name, icon, description, createdAt, updatedAt) VALUES (4, 'annie', 'https://opgg-static.akamaized.net/images/lol/champion/Annie.png?image=q_auto,w_140&v=1599633192', 'Alto oso tiene la nena', '2020-09-16 15:20:38', '2020-09-16 15:20:38');