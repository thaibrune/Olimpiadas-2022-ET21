create table lol.poderes
(
    id           int auto_increment
        primary key,
    name         varchar(30) null,
    damage       double      null,
    id_personaje int         null,
    createdAt    datetime    null,
    updatedAt    datetime    null,
    icon         text        null
);


INSERT INTO lol.poderes (id, name, damage, id_personaje, createdAt, updatedAt, icon) VALUES (1, 'la espada loca', 300, 1, null, '2020-09-09 15:40:49', 'https://opgg-static.akamaized.net/images/lol/spell/AatroxQ.png');
INSERT INTO lol.poderes (id, name, damage, id_personaje, createdAt, updatedAt, icon) VALUES (2, 'cadenas del mundo', 500, 1, null, '2020-09-09 15:40:49', 'https://opgg-static.akamaized.net/images/lol/spell/AatroxW.png');
INSERT INTO lol.poderes (id, name, damage, id_personaje, createdAt, updatedAt, icon) VALUES (3, 'deslizamiento sombrio', 50, 1, null, '2020-09-09 15:40:49', 'https://opgg-static.akamaized.net/images/lol/spell/AatroxE.png');
INSERT INTO lol.poderes (id, name, damage, id_personaje, createdAt, updatedAt, icon) VALUES (4, 'aniquilador de mundos', 0, 1, null, '2020-09-09 15:40:49', 'https://opgg-static.akamaized.net/images/lol/spell/AatroxR.png');
INSERT INTO lol.poderes (id, name, damage, id_personaje, createdAt, updatedAt, icon) VALUES (9, 'la espada loca', 300, 3, null, null, null);
INSERT INTO lol.poderes (id, name, damage, id_personaje, createdAt, updatedAt, icon) VALUES (10, 'cadenas del mundo', 500, 3, null, null, null);
INSERT INTO lol.poderes (id, name, damage, id_personaje, createdAt, updatedAt, icon) VALUES (11, 'deslizamiento sombrio', 50, 3, null, null, null);
INSERT INTO lol.poderes (id, name, damage, id_personaje, createdAt, updatedAt, icon) VALUES (12, 'aniquilador de mundos', 0, 3, null, null, null);
INSERT INTO lol.poderes (id, name, damage, id_personaje, createdAt, updatedAt, icon) VALUES (13, 'desintegracion', 250, 4, '2020-09-16 15:20:39', '2020-09-16 15:20:39', 'https://opgg-static.akamaized.net/images/lol/spell/AnnieQ.png?image=q_auto,w_48&v=1599633192');
INSERT INTO lol.poderes (id, name, damage, id_personaje, createdAt, updatedAt, icon) VALUES (14, 'incineracion', 300, 4, '2020-09-16 15:20:39', '2020-09-16 15:20:39', 'https://opgg-static.akamaized.net/images/lol/spell/AnnieW.png?image=q_auto,w_48&v=1599633192');
INSERT INTO lol.poderes (id, name, damage, id_personaje, createdAt, updatedAt, icon) VALUES (15, 'escudo fundido', 0, 4, '2020-09-16 15:20:39', '2020-09-16 15:20:39', 'https://opgg-static.akamaized.net/images/lol/spell/AnnieE.png?image=q_auto,w_48&v=1599633192');
INSERT INTO lol.poderes (id, name, damage, id_personaje, createdAt, updatedAt, icon) VALUES (16, 'Tibbers', 150, 4, '2020-09-16 15:20:39', '2020-09-16 15:20:39', 'https://opgg-static.akamaized.net/images/lol/spell/AnnieR.png?image=q_auto,w_48&v=1599633192');