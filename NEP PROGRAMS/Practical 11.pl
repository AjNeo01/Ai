reverse(L,R):-
    accReverse(L,[],R).

accReverse([H|T],A,R):-
    accReverse(T,[H|A],R).
accReverse([],A,A).
