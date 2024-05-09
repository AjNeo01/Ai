conc([], L, L).
conc([X1|L1], L2, [X1|L3]) :-
    append(L1,L2,L3).

