

/* A* search algorithm */
astar (Start, Final,, Tp) :-
estimation (Start, Final, E),
astar1 ([(E, E, 0, [Start])], Final,, Tp).
astar1 ((_,, Tp, [Final | R]) | _], Final, [Final | R], Tp) :- reverse ([Final | R], L3),
write ('Path = '), write (L3).
astar1 ((_,_, P, [X | R1]) | R2], Final, C, Tp) :- findall ((NewSum, E1, NP, [Z, X | R1]),
(street (X, Z, V),
not (member (Z, R1)),
NP is P + V,
estimation (2, Final, E1),
NewSum is El + NP), L),
append (R2, L, R3),
sort (R3, R4),
astar1 (R4, Final, C, Tp).
estimation (C1, C2, Est) :-
area (C1, X1, Y1),
area (C2, X2, X2),
DX is X1
DY is Y1
-
-
X2,
Y2,
Est is sqrt (DX DX + DY * DY).