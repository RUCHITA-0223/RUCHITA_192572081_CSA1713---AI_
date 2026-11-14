
% Disease database
disease(diabetes).
disease(hypertension).
disease(anemia).
disease(obesity).

% Diet suggestions for diseases

% Diabetes
diet(diabetes, 'Eat balanced meals with high fibre foods').
diet(diabetes, 'Limit sugary drinks and sweets').
diet(diabetes, 'Include vegetables and whole grains').

% Hypertension
diet(hypertension, 'Reduce excess salt intake').
diet(hypertension, 'Eat fruits and vegetables').
diet(hypertension, 'Avoid highly processed salty foods').

% Anemia
diet(anemia, 'Include iron-rich foods like beans and leafy vegetables').
diet(anemia, 'Include vitamin C rich fruits').
diet(anemia, 'Eat a balanced nutritious diet').

% Obesity
diet(obesity, 'Choose balanced meals with vegetables').
diet(obesity, 'Limit sugary drinks and high-calorie snacks').
diet(obesity, 'Maintain regular physical activity').

% Rule to suggest diet
suggest_diet(Disease) :-
    disease(Disease),
    !,
    show_diet(Disease).

suggest_diet(Disease) :-
    write('Disease not found in database.').

% Display all diet suggestions
show_diet(Disease) :-
    diet(Disease, Suggestion),
    write('- '),
    write(Suggestion),
    nl,
    fail.

show_diet(_).
