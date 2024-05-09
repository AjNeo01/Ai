hill_climb(List, Max):-
	select_max(List, Max, Rest),
	hill_climb(Rest, Max, Max).

hill_climb([], Max, Max).

hill_climb(List, CurrentMax, Max):-
	select_max(List, NewMax, Rest),
	NewMax > CurrentMax,
	hill_climb(Rest, NewMax, Max).

hill_climb(List, CurrentMax, Max):-
	select_max(List, NewMax, Rest),
	NewMax =< CurrentMax,
	hill_climb(Rest, CurrentMax, Max).

%Select the maximum value in a list
select_max([X], X, []).
select_max([X|Xs], Max, [X|Rest]):-
	select_max(Xs, Max, Rest),
	Max > X.
select_max([X|Xs], X, Xs):-
	select_max(Xs, Max, _),
	Max =< X.

	