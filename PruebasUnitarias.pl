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
        
:- end_tests(pruebaPlantas).
