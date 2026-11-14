
% Monkey Banana Problem

% Monkey moves to the box position
move(state(P, B, onfloor, H),
     state(B, B, onfloor, H)) :-
    P \= B,
    write('Monkey moves from '), write(P),
    write(' to '), write(B), nl.

% Monkey pushes the box to the middle
move(state(P, P, onfloor, H),
     state(middle, middle, onfloor, H)) :-
    P \= middle,
    write('Monkey pushes the box to middle.'), nl.

% Monkey climbs onto the box
move(state(middle, middle, onfloor, H),
     state(middle, middle, onbox, H)) :-
    write('Monkey climbs onto the box.'), nl.

% Monkey grasps the bananas
move(state(middle, middle, onbox, no),
     state(middle, middle, onbox, yes)) :-
    write('Monkey grasps the bananas.'), nl.

% Goal condition
goal(state(_, _, _, yes)).

% Recursive solution
solve(State) :-
    goal(State), !.

solve(State) :-
    move(State, NewState),
    solve(NewState).

% Start the problem
start :-
    write('Initial State: Monkey at door, Box at window.'), nl,
    solve(state(door, window, onfloor, no)),
    write('Goal Achieved: Monkey got the bananas!'), nl.
