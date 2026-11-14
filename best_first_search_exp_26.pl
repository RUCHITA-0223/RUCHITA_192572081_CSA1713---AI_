
% Best First Search Algorithm

% Graph connections
edge(s, a).
edge(s, b).
edge(a, c).
edge(a, d).
edge(b, e).
edge(b, f).
edge(c, g).
edge(d, g).
edge(e, g).
edge(f, g).

% Heuristic values
h(s, 7).
h(a, 6).
h(b, 4).
h(c, 5).
h(d, 3).
h(e, 2).
h(f, 3).
h(g, 0).

% Calculate heuristic value of a path
path_h([Node|_], H) :-
    h(Node, H).

% Select the path with the lowest heuristic value
best_path([P], P).

best_path([P1, P2|Rest], Best) :-
    path_h(P1, H1),
    path_h(P2, H2),
    ( H1 =< H2 ->
        best_path([P1|Rest], Best)
    ;
        best_path([P2|Rest], Best)
    ).

% Select the best path from the open list
select_best_path(Open, Best, Rest) :-
    best_path(Open, Best),
    select(Best, Open, Rest).

% Best First Search
search(Open, Goal, Path) :-
    select_best_path(Open, Best, Rest),
    Best = [Current|_],
    ( Current = Goal ->
        Path = Best
    ;
        findall([Next|Best],
                (edge(Current, Next),
                 \+ member(Next, Best)),
                NewPaths),
        append(NewPaths, Rest, NewOpen),
        search(NewOpen, Goal, Path)
    ).

% Start Best First Search
best_first(Start, Goal, Path) :-
    search([[Start]], Goal, ReversePath),
    reverse(ReversePath, Path).
