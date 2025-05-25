/* --- INTEGRANTES DEL GRUPO ---
    Franco Garbarino Petrone - Legajo: 16349
    Ivan Guillermo Righini - Legajo: 57743
    Fiorella Angelina Minasola - Legajo: 58708
    Lautaro Elian Rodriguez - Legajo: 59446
*/

:- include('TpLogicoAyP2').

:- begin_tests(pruebaPlantas).

     % Punto 1

    % Punto 1.a - es_arbusto/1
    test(es_arbusto_rose, nondet) :- es_arbusto(rose).
    test(es_arbusto_acacia, nondet) :- es_arbusto(acacia).
    test(es_arbusto_lily, fail) :- es_arbusto(lily).

    % Punto 1.b - florecen/1
    test(florecen_rose, nondet) :- florecen(rose).
    test(florecen_tulip, nondet) :- florecen(tulip).
    test(florecen_sunflower, fail) :-florecen(sunflower).

    % Punto 1.c - color/2
    test(color_lily_blanco) :- color(lily, blanco).
    test(color_tulip_amarillo, nondet) :- color(tulip, amarillo).
    test(color_cactus_rojo, fail) :- color(cactus, rojo).

    % Punto 2 --- 
    
    % Punto 2.a - planta con riego especial
     test(riego_especial_hibiscus, nondet) :- planta(hibiscus, riego(especial)).
     test(riego_especial_salvia, nondet) :- planta(salvia, riego(especial)).
     test(riego_especial_lily, fail) :- planta(lily, riego(especial)).
     
     % Punto 2.b - planta que atrae insectos
     test(atraeIns_lily, nondet) :- planta(lily, atraeIns(bene)).
     test(atraeIns_marigold) :- planta(marigold, atraeIns(bene)).
     test(atraeIns_fern, fail) :- planta(fern, atraeIns(bene)).
     
     % Punto 2.c - plantas consideradas altas
     test(considerada_alta_cactus) :- planta(cactus, considerada(alta)).
     test(considerada_alta_palmera) :- planta(palmera, considerada(alta)).
     test(considerada_alta_tulip, fail) :- planta(tulip, considerada(alta)).

    % Punto 3 

    % Prueba de planta_corta_flor
    test(planta_corta_flor_lily) :- planta_corta_flor(lily).
    test(planta_corta_flor_orchid) :- planta_corta_flor(orchid).
    test(planta_corta_flor_tulip) :- planta_corta_flor(tulip).
    test(planta_corta_flor_sunflower, fail) :- planta_corta_flor(sunflower).
   % Punto 4 - cumple_todas_las_pistas/2
   
    test(cumple_pistas_lily_flor_blanca) :- cumple_todas_las_pistas(lily, flor_blanca).
    test(cumple_pistas_cactus_planta_verde) :- cumple_todas_las_pistas(cactus, planta_verde).
    test(cumple_pistas_ivy_enredadera) :- cumple_todas_las_pistas(ivy, enredadera_verde).
    test(cumple_pistas_fern_flor_blanca, fail) :- cumple_todas_las_pistas(fern, flor_blanca).
    
    % Punto 5 - atrae_mas_visitas/1
    
    test(atrae_mas_visitas_rose, nondet) :- atrae_mas_visitas(rose).
    test(atrae_mas_visitas_lily, fail) :- \+ atrae_mas_visitas(lily).

:- end_tests(pruebaPlantas).
