
% Medical Diagnosis System

% Rules for diagnosing diseases

% Diagnosis of Flu
diagnosis(flu, Symptoms) :-
    member(fever, Symptoms),
    member(cough, Symptoms),
    member(body_pain, Symptoms),
    member(fatigue, Symptoms).

% Diagnosis of Common Cold
diagnosis(common_cold, Symptoms) :-
    member(sneezing, Symptoms),
    member(runny_nose, Symptoms),
    member(sore_throat, Symptoms).

% Diagnosis of Malaria
diagnosis(malaria, Symptoms) :-
    member(fever, Symptoms),
    member(chills, Symptoms),
    member(sweating, Symptoms),
    member(headache, Symptoms).

% Diagnosis of Allergy
diagnosis(allergy, Symptoms) :-
    member(sneezing, Symptoms),
    member(itchy_eyes, Symptoms),
    member(runny_nose, Symptoms).

% Diagnosis of Typhoid
diagnosis(typhoid, Symptoms) :-
    member(fever, Symptoms),
    member(headache, Symptoms),
    member(abdominal_pain, Symptoms),
    member(fatigue, Symptoms).

% Main predicate
diagnose(Symptoms) :-
    diagnosis(Disease, Symptoms),
    write('Possible Disease: '),
    write(Disease), nl,
    fail.

diagnose(_) :-
    write('Diagnosis checking completed.'), nl.
