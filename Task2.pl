max_consec([], _, Max, Max).

max_consec([H|T], CurrLen, CurrMax, Res) :-
    H > 0, !,
    NextLen is CurrLen + 1,
    NextMax is max(NextLen, CurrMax),
    max_consec(T, NextLen, NextMax, Res).

max_consec([_|T], _, CurrMax, Res) :-
    max_consec(T, 0, CurrMax, Res).

run_task2 :-
    write('¬ведите список чисел, например [1, -2, 3, 4, -5]. : '),
    read(List),
    max_consec(List, 0, 0, MaxPositives),
    write('ћаксимальное количество подр€д идущих положительных чисел: '), write(MaxPositives), nl.
