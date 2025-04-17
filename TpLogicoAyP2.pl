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

% planta que cumpla condicion riego especial.

planta(acacia, color(verde_claro)).
planta(acacia, altura(alta)).
planta(acacia, epoca(floracion, verano)).
planta(acacia, tipo(arbusto)).

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

% 1.a. Son de tipo arbusto.
es_arbusto(Planta):-planta(Planta,tipo(arbusto)).

% 1.b. Florecen en primavera.
florecen(Planta):-planta(Planta,epoca(_,primavera)).

% 1.c. Tienen un color específico.
color(Planta,Color) :- planta(Planta, color(Color)).




