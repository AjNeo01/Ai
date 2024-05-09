%Define heuristiic values for nodes
heuristic(a, 5).
heuristic(b, 3).
heuristic(c, 8).
heuristic(d, 2).
heuristic(e, 6).

%Define edges between nodes
edge(a, b, 2).
edge(a, c, 4).
edge(b, d, 3).
edge(c, e, 5).
edge(d, e, 1).

%IDDFS algorithm
iddfs(Start, Goal, Solution):-
	max_depth(MaxDepth),
	between(1, MaxDepth, Depth),
	iddfs_search(Start, Goal, [Start], Depth, Solution).

iddfs_search(Goal, Goal, _, _, []).

iddfs_search(Current, Goal, Visited, Depth, [Current|Path]):-
	Depth > 0,
	Depth1 is Depth-1,
	move(Current, Next),
	\+ member(Next, Visited),
	iddfs_search(Next, Goal, [Next|Visited], Depth1, Path).

max_depth(10).
