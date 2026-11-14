
% Fruit and its Colour using Backtracking

% Facts
fruit_color(apple, red).
fruit_color(banana, yellow).
fruit_color(grapes, green).
fruit_color(orange, orange).
fruit_color(mango, yellow).
fruit_color(strawberry, red).
fruit_color(blueberry, blue).
fruit_color(guava, green).

% Display all fruits and their colours
show_all :-
    fruit_color(Fruit, Color),
    write('Fruit: '), write(Fruit),
    write('  Colour: '), write(Color), nl,
    fail.

show_all.
