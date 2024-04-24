USE Pokemon;

INSERT INTO Player (id_Player, Nombre, Nivel, Contrasena, XP) VALUES
(1, 'Ash Ketchum', 35, 'pikachu123', 153000),
(2, 'Misty Waterflower', 33, 'waterGym92', 137500),
(3, 'Brock Slate', 34, 'rockSolid', 145200),
(4, 'Tracey Sketchit', 28, 'sketcher01', 120300),
(5, 'May Maple', 29, 'hoennRulz', 110000),
(6, 'Max Maple', 20, 'youngerMax', 95000),
(7, 'Dawn Berlitz', 27, 'contestStar', 123000),
(8, 'Iris Dragon', 25, 'dragonHeart', 105000),
(9, 'Cilan Dento', 31, 'flavorFighter', 135000),
(10, 'Serena Yvonne', 22, 'kalosQueen', 98000);


INSERT INTO Carta (id_Carta, Nombre, Vida, Dano, Energia, Tipo) VALUES
(1, 'Pikachu', 35, 55, 10, 'Electrico'),
(2, 'Charizard', 120, 84, 40, 'Fuego'),
(3, 'Bulbasaur', 45, 49, 15, 'Planta'),
(4, 'Squirtle', 44, 48, 15, 'Agua'),
(5, 'Mewtwo', 106, 110, 90, 'Psiquico'),
(6, 'Jigglypuff', 115, 45, 20, 'Normal'),
(7, 'Gengar', 60, 65, 35, 'Fantasma'),
(8, 'Machamp', 90, 130, 55, 'Lucha'),
(9, 'Eevee', 55, 55, 25, 'Normal'),
(10, 'Snorlax', 160, 110, 65, 'Normal');

INSERT INTO Mazo (id_Mazo, id_Player, nombre, descripcion) VALUES
(1, 1, 'Thunder Deck', 'A powerful deck with a focus on electric type Pokémon.'),
(2, 2, 'Aqua Force', 'Utilizes water type Pokémon to overpower the opponent.'),
(3, 3, 'Rock Solid', 'A sturdy deck featuring rock type Pokémon.'),
(4, 4, 'Sketch Pad', 'A diverse deck with Pokémon known for their unusual abilities.'),
(5, 5, 'Hoenn Power', 'A deck filled with Pokémon from the Hoenn region.'),
(6, 6, 'Max Potential', 'A balanced deck with potential for any battle.'),
(7, 7, 'Shining Star', 'A deck designed for Pokémon Contests but also effective in battles.'),
(8, 8, 'Dragon’s Breath', 'A fierce deck with dragon type Pokémon.'),
(9, 9, 'Gourmet Treats', 'A fun deck using Pokémon related to food.'),
(10, 10, 'Elegance', 'A beautifully crafted deck showcasing the charm of each Pokémon.');

INSERT INTO Inventario (id_Player, id_Mazo, id_Carta) VALUES
(1, 1, 1),
(2, 2, 4),
(3, 3, 7),
(4, 4, 5),
(5, 5, 3),
(6, 6, 9),
(7, 7, 6),
(8, 8, 8),
(9, 9, 10),
(10, 10, 2);

INSERT INTO CartaMano (id_Mano, id_Mazo, id_Player) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10);

INSERT INTO Partida (id_Partida, id_Player1, id_Player2, Date, Duracion, Winner) VALUES
(1, 1, 2, '2024-04-23', 30, 1),
(2, 3, 4, '2024-04-23', 25, 4),
(3, 5, 6, '2024-04-24', 20, 5),
(4, 7, 8, '2024-04-24', 22, 7),
(5, 9, 10, '2024-04-25', 15, 10),
(6, 1, 3, '2024-04-25', 35, 3),
(7, 2, 4, '2024-04-26', 45, 2),
(8, 5, 7, '2024-04-26', 55, 5),
(9, 6, 8, '2024-04-27', 40, 6),
(10, 9, 10, '2024-04-27', 60, 9);

INSERT INTO Turno (id_Turno, id_Partida, id_Player, num_Turno, Pokemon_usado, damage, used_Energy) VALUES
(1, 1, 1, 1, 'Pikachu', 55, 10),
(2, 1, 2, 1, 'Squirtle', 48, 15),
(3, 2, 3, 1, 'Gengar', 65, 35),
(4, 2, 4, 1, 'Mewtwo', 110, 90),
(5, 3, 5, 1, 'Bulbasaur', 49, 15),
(6, 3, 6, 1, 'Eevee', 55, 25),
(7, 4, 7, 1, 'Jigglypuff', 45, 20),
(8, 4, 8, 1, 'Machamp', 130, 55),
(9, 5, 9, 1, 'Snorlax', 110, 65),
(10, 5, 10, 1, 'Charizard', 84, 40);

INSERT INTO CartaJugada (id_Played, id_Partida, id_Carta, id_Turno, Actions) VALUES
(1, 1, 1, 1, 'Attack with Thunderbolt'),
(2, 1, 4, 2, 'Defend with Hydro Pump'),
(3, 2, 7, 3, 'Attack with Shadow Ball'),
(4, 2, 5, 4, 'Use Psychic'),
(5, 3, 3, 5, 'Attack with Vine Whip'),
(6, 3, 9, 6, 'Defend with Tackle'),
(7, 4, 6, 7, 'Sing to cause sleep'),
(8, 4, 8, 8, 'Use Karate Chop'),
(9, 5, 10, 9, 'Rest to regain health'),
(10, 5, 2, 10, 'Use Fire Spin');

INSERT INTO Efecto (id_Efecto, Tipo, Duracion, Descripcion) VALUES
(1, 'Quemar', 3, 'El Pokémon afectado pierde vida gradualmente.'),
(2, 'Congelar', 2, 'El Pokémon afectado no puede actuar.'),
(3, 'Paralizar', 2, 'Reduce la velocidad del Pokémon afectado.'),
(4, 'Envenenar', 4, 'El Pokémon afectado pierde vida cada turno.'),
(5, 'Dormir', 2, 'El Pokémon afectado no puede realizar acciones.'),
(6, 'Confundir', 3, 'El Pokémon afectado puede atacarse a sí mismo.'),
(7, 'Cansar', 2, 'El Pokémon afectado tiene menos energía.'),
(8, 'Encantar', 3, 'El Pokémon afectado pierde precisión.'),
(9, 'Acelerar', 2, 'Aumenta la velocidad del Pokémon afectado.'),
(10, 'Fortalecer', 3, 'Aumenta la defensa del Pokémon afectado.');

INSERT INTO Triger (id_Trigger, id_Efecto, id_Carta, condicion) VALUES
(1, 1, 2, TRUE),
(2, 2, 4, TRUE),
(3, 3, 1, TRUE),
(4, 4, 7, TRUE),
(5, 5, 6, TRUE),
(6, 6, 9, TRUE),
(7, 7, 8, TRUE),
(8, 8, 5, TRUE),
(9, 9, 10, TRUE),
(10, 10, 3, TRUE);
