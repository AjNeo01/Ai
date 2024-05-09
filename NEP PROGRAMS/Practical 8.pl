male(naman).
male(sunil).
male(mulakhraj).
male(anil).
male(aalok).
female(kritika).
female(rekha).
female(sheila).
female(meenu).

parent(sunil,naman).
parent(sunil,kritika).
parent(rekha,naman).
parent(rekha,kritika).
parent(anil,aalok).
parent(meenu,aalok).
parent(mulakhraj,sunil).
parent(sheila,sunil).
parent(mulakhraj,anil).
parent(sheila,anil).

father(F,C):-
    male(F),
    parent(F,C).

mother(M,C):-
    female(M),
    parent(M,C).

sibling(S1,S2):-
    parent(P,S1),
    parent(P,S2),
    S1\=S2.

brother(B,P):-
    male(B),
    sibling(B,P).

sister(S,P):-
    female(S),
    sibling(S,P).

grandparent(Gp,Gc):-
    parent(Gp,P),
    parent(P,Gc).

wife(W,H):-
    female(W),
    parent(H,C),
    parent(W,C),
    H\=W.

husband(H,W):-
    male(H),
    parent(H,C),
    parent(W,C),
    H\=W.

cousin(P1,P2):-
    parent(Parent1,P1),
    parent(Parent2,P2),
    sibling(Parent1,Parent2),
    P1\=P2.



