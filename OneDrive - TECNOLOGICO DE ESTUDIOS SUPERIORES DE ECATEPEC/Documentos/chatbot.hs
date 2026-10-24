% Base de conocimientos: Palabras clave asociadas a intenciones
palabra_clave(facturacion, 'factura').
palabra_clave(facturacion, 'cobro').
palabra_clave(soporte, 'error').
palabra_clave(soporte, 'falla').

% Regla logica: Determinar la intencion basada en una palabra detectada
determinar_intencion(Palabra, Intencion) :-
    palabra_clave(Intencion, Palabra).

% Funcion principal para ejecutar la consulta e imprimir el resultado
main :-
    determinar_intencion('error', Intencion),
    write('Intencion: '), write(Intencion), nl.

% Directiva para que el compilador ejecute automaticamente 'main'
:- initialization(main).