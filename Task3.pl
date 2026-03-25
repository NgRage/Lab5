set_complement([], _, []).

set_complement([H|T], Subset, Res) :-
    member(H, Subset), !,
    set_complement(T, Subset, Res).

set_complement([H|T], Subset, [H|Res]) :-
    set_complement(T, Subset, Res).

run_task3 :-
    write('Введите универсальное множество (список, например [1,2,3,4,5]). : '),
    read(Universal),
    write('Введите подмножество: '),
    read(Subset),
    set_complement(Universal, Subset, Complement),
    write('Дополнение множества: '), write(Complement), nl.
