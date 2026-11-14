
% Forward Chaining Algorithm

% Declare dynamic knowledge base
:- dynamic(known/1).

% Initial Facts
fact(has_hair(tom)).
fact(gives_milk(tom)).
fact(has_feathers(tweety)).
fact(lays_eggs(tweety)).

% Rules
% Rule 1: If an animal has hair, it is a mammal
rule(mammal(X), [has_hair(X)]).

% Rule 2: If an animal gives milk, it is a mammal
rule(mammal(X), [gives_milk(X)]).

% Rule 3: If an animal is a mammal, it is warm-blooded
rule(warm_blooded(X), [mammal(X)]).

% Rule 4: If an animal is warm-blooded, it is an animal
rule(animal(X), [warm_blooded(X)]).

% Rule 5: If an animal has feathers and lays eggs,
% it is a bird
rule(bird(X), [has_feathers(X), lays_eggs(X)]).

% Rule 6: If an animal is a bird, it is an animal
rule(animal(X), [bird(X)]).

% Check whether all conditions are known
all_known([]).

all_known([H|T]) :-
    known(H),
    all_known(T).

% Derive one new fact using forward chaining
derive_one :-
    rule(Conclusion, Conditions),
    all_known(Conditions),
    \+ known(Conclusion),
    assertz(known(Conclusion)),
    write('Derived: '),
    write(Conclusion), nl,
    !.

% Continue until no new facts can be derived
forward_chain :-
    derive_one, !,
    forward_chain.

forward_chain :-
    write('Forward Chaining Completed.'), nl.

% Start the program
start :-
    retractall(known(_)),
    forall(fact(F), assertz(known(F))),
    write('Initial Facts Loaded.'), nl,
    forward_chain.

% Display all known facts
show_all :-
    known(F),
    write(F), nl,
    fail.

show_all.
