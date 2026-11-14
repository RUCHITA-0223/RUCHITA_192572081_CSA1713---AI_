
% Facts: Parent relationships
parent(ravi, arun).
parent(ravi, priya).
parent(meena, arun).
parent(meena, priya).

parent(arun, rahul).
parent(arun, divya).
parent(kumar, rahul).
parent(kumar, divya).

% Rule: Child relationship
child(X, Y) :-
    parent(Y, X).

% Rule: Sibling relationship
sibling(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

% Rule: Grandparent relationship
grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

% Rule: Ancestor relationship
ancestor(X, Y) :-
    parent(X, Y).

ancestor(X, Y) :-
    parent(X, Z),
    ancestor(Z, Y).

% Display all parent relationships
show_family :-
    parent(X, Y),
    write(X),
    write(' is parent of '),
    write(Y),
    nl,
    fail.
show_family.
