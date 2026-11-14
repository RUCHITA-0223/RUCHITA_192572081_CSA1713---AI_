
% Planet database
planet(mercury, rocky).
planet(venus, rocky).
planet(earth, rocky).
planet(mars, rocky).
planet(jupiter, gas_giant).
planet(saturn, gas_giant).
planet(uranus, ice_giant).
planet(neptune, ice_giant).

% Rules to identify planet types
rocky_planet(X) :- planet(X, rocky).
gas_planet(X) :- planet(X, gas_giant).
ice_planet(X) :- planet(X, ice_giant).

% Display all planets
show_all :-
    planet(Name, Type),
    write('Planet: '), write(Name),
    write(', Type: '), write(Type), nl,
    fail.
show_all.

% Display all rocky planets
show_rocky :-
    rocky_planet(X),
    write(X), nl,
    fail.
show_rocky.

% Display all gas giant planets
show_gas :-
    gas_planet(X),
    write(X), nl,
    fail.
show_gas.

% Display all ice giant planets
show_ice :-
    ice_planet(X),
    write(X), nl,
    fail.
show_ice.
