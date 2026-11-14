
% Facts about birds
bird(parrot).
bird(sparrow).
bird(pigeon).
bird(ostrich).
bird(penguin).
bird(peacock).

% Birds that can fly
can_fly(parrot).
can_fly(sparrow).
can_fly(pigeon).
can_fly(peacock).

% Birds that cannot fly
cannot_fly(ostrich).
cannot_fly(penguin).

% Rule to check whether a bird can fly
check_bird(Bird) :-
    can_fly(Bird),
    write(Bird),
    write(' can fly.').

check_bird(Bird) :-
    cannot_fly(Bird),
    write(Bird),
    write(' cannot fly.').

% Rule for unknown birds
check_bird(Bird) :-
    \+ bird(Bird),
    write(Bird),
    write(' is not present in the database.').
