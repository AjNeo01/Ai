initial_ state ( (0, 0)).
goal_state ( (4, _)). * Define the actions possible in the problem
action ( (Jugl, Jug2), fill jugl, (5, Jug2)) :-
Jugl < 5.
action ( (Jugl, Jug2), fill_jug2, (Jugl, 3)) :-
Jug2 < 3
action ((Jugl, Jug2), empty_jugl, (0, Jug2)) :-
Juga > 0.
action ((Jugl, Jug2), empty_jug2, (Jugl, 0)) :-
Jug? >
action ((Jugl, Jug2), pour_Jug_to_jug2, (NowJugl, NewJug2)) :-
Juga > 0,
Total is
Jug1 + Jug2,
NewJug2 is min (Total, 3),
NewJuga as Jug_ - (NowJugz - Jugz).
action ( (Jugl, Jug2), pour_jug2_to_jugl, (NewJugl, NewJug2)) :- Total is Jugl + Jug2,
NewJugl is min (Total,
5),
NowJug? is Jug? - (NowJug1 - Juai). Define the predicate to
solve (State,
solve the problem using depth-first search
....- goal_ state (State).
solve (State, Visited, (Action (Rest])
action (State, Action, NextState), I+ member (NextState, Visited),
solve (NextState, [NextStato|Visited], Rest).