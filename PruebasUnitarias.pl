:- include('TpLogico').

:- begin_tests(pruebaPlantas).

     % Punto 1

    % Prueba de tipo_Planta
    test(tipo_Planta_rose) :- es_arbusto(rose).
    test(tipo_Planta_lily, fail) :- es_arbusto(lily).

    % Prueba de florecen
    test(florecen_rose) :- florecen(rose).
    test(florecen_lily, fail) :- florecen(lily).

    % Prueba de color
    test(color_rose) :- color(rose, rojo).
    test(color_lily) :- color(lily, blanco).
    
    % Punto 2 

    % Prueba de riego_especial
    test(riego_especial_rose, fail) :- riego_especial(rose).
    test(riego_especial_lily, fail) :- riego_especial(lily).

    % Prueba de atraen_insectos
    test(atraen_insectos_rose, nondet) :- atraen_insectos(rose).
    test(atraen_insectos_lily, fail) :- atraen_insectos(lily).

    test(considerada_alta_sunflower, fail) :- considerada_alta(sunflower).
    test(considerada_alta_ivy) :- considerada_alta(ivy).
    test(considerada_alta_cactus) :- considerada_alta(cactus).
    test(considerada_alta_tulip, fail) :- considerada_alta(tulip).

    % Punto 3 

    % Prueba de planta_corta_flor
    test(planta_corta_flor_lily) :- planta_corta_flor(lily).
    test(planta_corta_flor_orchid) :- planta_corta_flor(orchid).
    test(planta_corta_flor_tulip) :- planta_corta_flor(tulip).
    test(planta_corta_flor_sunflower, fail) :- planta_corta_flor(sunflower).
    
    % Punto 4
    
    % Prueba de coincide_con_observador
    test(coincide_con_observador_positiva,nondet) :-
        coincide_con_observador(rose, arbol_rojo).
    
    test(coincide_con_observador_negativa, fail) :-
        coincide_con_observador(lily, arbol_rojo).

    test(coincide_con_observador_positiva_2,nondet) :-
        coincide_con_observador(orchid, flor_morada).

    test(coincide_con_observador_negativa_2, fail) :-
        coincide_con_observador(fern, flor_morada).

    % Punto 5

    test(atrae_mas_visitas_positiva,nondet) :-
        atrae_mas_visitas(rose).

    test(atrae_mas_visitas_negativa,nondet) :-
        atrae_mas_visitas(sunflower).

    test(atrae_mas_visitas_negativa_2,nondet) :-
        atrae_mas_visitas(fern).

    test(atrae_mas_visitas_positiva_2,nondet) :-
        atrae_mas_visitas(orchid).
        
:- end_tests(pruebaPlantas).
