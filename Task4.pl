color(синий).
color(черный).
brand(бьюик).
brand(крайслер).
brand(форд_мустанг).

xor(A, B) :- A, \+ B.
xor(A, B) :- \+ A, B.

solve_car(Color, Brand) :-
    color(Color),
    brand(Brand),
    
    %синий или бьюик
    xor(Color = синий, Brand = бьюик),
    
    %черный или крайслер
    xor(Color = черный, Brand = крайслер),
    
    %форд_мустанг или НЕ синий
    xor(Brand = форд_мустанг, Color \= синий).

run_task4 :-
    solve_car(C, B),
    write('Результат расследования: '), write(C), write(' '), write(B), nl.
