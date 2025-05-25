/* --- INTEGRANTES DEL GRUPO ---
    Franco Garbarino Petrone - Legajo: 16349
    Ivan Guillermo Righini - Legajo: 57743
    Fiorella Angelina Minasola - Legajo: 58708
    Lautaro Elian Rodriguez - Legajo: 59446
*/

planta(rose, color(rojo)).
planta(rose, altura(media)).
planta(rose, epoca(floracion, primavera)).
planta(rose, tipo(arbusto)).
planta(lily, color(blanco)).
planta(lily, altura(corta)).
planta(lily, epoca(floracion, verano)).
planta(lily, tipo(flor)).
planta(tulip, color(amarillo)).
planta(tulip, altura(corta)).
planta(tulip, epoca(floracion, primavera)).
planta(tulip, tipo(flor)).
planta(sunflower, color(amarillo)).
planta(sunflower, altura(alta)).
planta(sunflower, epoca(floracion, verano)).
planta(sunflower, tipo(flor)).
planta(cactus, color(verdes)).
planta(cactus, altura(baja)).
planta(cactus, epoca(floracion, verano)).
planta(cactus, tipo(suculenta)).
planta(fern, color(verdes)).
planta(fern, altura(media)).
planta(fern, epoca(floracion, todo_el_ano)).
planta(fern, tipo(helecho)).
planta(orchid, color(purple)).
planta(orchid, altura(corta)).
planta(orchid, epoca(floracion, primavera)).
planta(orchid, tipo(flor)).
planta(bamboo, color(verdes)).
planta(bamboo, altura(alta)).
planta(bamboo, epoca(floracion, todo_el_ano)).
planta(bamboo, tipo(pasto)).
planta(ivy, color(verdes)).
planta(ivy, altura(media)).
planta(ivy, epoca(floracion, todo_el_ano)).
planta(ivy, tipo(plantas_enredaderas)).

% plantas agregadas para verificar correcto funcionamiento del punto 2
planta(lily, color(rojo)).
planta(lily, atraeIns(bene)).
planta(acacia, color(verde_claro)).
planta(acacia, altura(alta)).
planta(acacia, epoca(floracion, verano)).
planta(acacia, tipo(arbusto)).

% --- PLANTAS AGREGADAS PARA PUNTO 2 ---

% Cumple 2a (arbusto + floración en verano)
planta(hibiscus, tipo(arbusto)).
planta(hibiscus, epoca(floracion, verano)).
planta(hibiscus, color(rosado)).
planta(hibiscus, altura(media)).

% Cumple 2a y 2b (arbusto, floración en verano, color rojo)
planta(salvia, tipo(arbusto)).
planta(salvia, epoca(floracion, verano)).
planta(salvia, color(rojo)).
planta(salvia, altura(baja)).

% Cumple 2b (color amarillo)
planta(marigold, color(amarillo)).
planta(marigold, tipo(flor)).
planta(marigold, altura(corta)).
planta(marigold, epoca(floracion, verano)).

% Cumple 2c (no tipo flor → considerada alta)
planta(aloe_vera, tipo(suculenta)).
planta(aloe_vera, color(verdes)).
planta(aloe_vera, altura(alta)).
planta(aloe_vera, epoca(floracion, verano)).

% Cumple 2c (no tipo flor → considerada alta)
planta(palmera, tipo(arbol)).
planta(palmera, color(verde_oscuro)).
planta(palmera, altura(alta)).
planta(palmera, epoca(floracion, primavera)).

% Cumple 2b y 2c (color rojo, no es flor)
planta(coleus, tipo(ornamental)).
planta(coleus, color(rojo)).
planta(coleus, altura(media)).
planta(coleus, epoca(floracion, verano)).

% Relaciones entre plantas compañeras.
plantas_companeras(rose, lily).
plantas_companeras(lily, rose).
plantas_companeras(tulip, sunflower).
plantas_companeras(sunflower, tulip).
plantas_companeras(cactus, fern).
plantas_companeras(fern, cactus).
plantas_companeras(orchid, ivy).
plantas_companeras(ivy, orchid).
plantas_companeras(bamboo, rose).
plantas_companeras(rose, bamboo).

% Pistas de observadores.
pista(arbol_rojo, tipo(arbusto)).
pista(flor_blanca, tipo(flor)).
pista(flor_amarilla, epoca(floracion, primavera)).
pista(flor_alta, epoca(floracion, verano)).
pista(planta_verde, tipo(suculenta)).
pista(hojas_verdes, epoca(floracion, todo_el_ano)).
pista(flor_morada, tipo(flor)).
pista(planta_alta, tipo(pasto)).
pista(enredadera_verde, epoca(floracion,todo_el_ano)).

% Predicados del punto 2.
riegoEspecial(Planta, requiere_riego_especial) :-
    planta(Planta, tipo(arbusto)),
    planta(Planta, epoca(floracion, verano)).

atraenInsectos(Planta, atrae_insectos_beneficos) :-
    planta(Planta, color(rojo));
    planta(Planta, color(amarillo)).

consideradaAlta(Planta) :- 
    planta(Planta, tipo(Tipo)), 
    Tipo \= flor.

% 1.a. Son de tipo arbusto.
es_arbusto(Planta):-planta(Planta,tipo(arbusto)).

% 1.b. Florecen en primavera.
florecen(Planta):-planta(Planta,epoca(_,primavera)).

% 1.c. Tienen un color específico.
color(Planta,Color) :- planta(Planta, color(Color)).

% 2.a. Las plantas que son arbustos y florecen en verano deben tener un sistema de riego especial.
planta(Planta, riego(especial)) :-
    planta(Planta, tipo(arbusto)),
    planta(Planta, epoca(floracion, verano)).

% 2.b. Las plantas que son amarillas o rojas antraen insectos beneficos.
planta(Planta, atraeIns(bene)):- planta(Planta, color(rojo)).
planta(Planta, atraeIns(bene)):- planta(Planta, color(amarillo)).

% 2.c. Las plantas que no son de tipo flor son consideradas altas.
planta(Planta, considerada(alta)) :-  planta(Planta, tipo(Tipo)), Tipo\=flor.

% Punto 3 - Conjunto de todas las plantas que son cortas y de tipo flor.
planta_corta_flor(Conjunto):-
    findall(Planta, (planta(Planta, altura(corta)), planta(Planta, tipo(flor))), Conjunto).
planta_corta_flor(Planta):-planta(Planta, altura(corta)), planta(Planta,tipo(flor)).


% Punto 4 - Relación planta-observador 

cumple_todas_las_pistas(Planta, Observador) :-
    forall(pista(Observador, Pista), planta(Planta,Pista)).
    
% Punto 5 - Planta con mas visitas 

cantidad_pistas_cumple(Planta, Observador, Cantidad) :-
    findall(Pistas, (pista(Observador, Pistas), planta(Planta, Pistas)), Lista),
    length(Lista, Cantidad).

atrae_mas_visitas(Planta) :-
    plantas_companeras(Planta, Companera),
    pista(Observador, _),
    cantidad_pistas_cumple(Planta, Observador, Cant1),
    cantidad_pistas_cumple(Companera, Observador, Cant2),
    Cant1>Cant2.
