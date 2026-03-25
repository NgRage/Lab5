reverse_number(0, Acc, Acc) :- !.
reverse_number(N, Acc, Res) :-
    N > 0,
    Digit is N mod 10,
    NewN is N // 10,
    NewAcc is Acc * 10 + Digit,
    reverse_number(NewN, NewAcc, Res).

run_task1 :-
    write('¬ведите натуральное число (с точкой на конце): '),
    read(N),
    reverse_number(N, 0, Reversed),
    write('„исло в обратном пор€дке: '), write(Reversed), nl.
