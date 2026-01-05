cost(diff(R), 1, 2):-
        node(reference, R), not node(foil, R).
cost(diff(R), 1, 2):-
        not node(reference, R), node(foil, R).
