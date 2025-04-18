:- include('TpLogico').

:- begin_tests(pruebaPlantas).





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
