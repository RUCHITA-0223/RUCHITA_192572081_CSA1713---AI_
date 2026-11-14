
% Backward Chaining Algorithm

% Initial Facts
has_hair(tom).
gives_milk(tom).
has_feathers(tweety).
lays_eggs(tweety).

% Rules
% Rule 1: An animal is a mammal if it has hair
mammal(X) :-
    has_hair(X).

% Rule 2: An animal is a mammal if it gives milk
mammal(X) :-
    gives_milk(X).

% Rule 3: A mammal is warm-blooded
warm_blooded(X) :-
    mammal(X).

% Rule 4: A warm-blooded animal is an animal
animal(X) :-
    warm_blooded(X).

% Rule 5: An animal is a bird if it has feathers
% and lays eggs
bird(X) :-
    has_feathers(X),
    lays_eggs(X).

% Rule 6: A bird is an animal
animal(X) :-
    bird(X).

% Check whether Tom is a mammal
check_mammal(X) :-
    mammal(X).

% Check whether an animal is warm-blooded
check_warm_blooded(X) :-
    warm_blooded(X).

% Check whether an animal is a bird
check_bird(X) :-
    bird(X).

% Check whether an animal is an animal
check_animal(X) :-
    animal(X).
