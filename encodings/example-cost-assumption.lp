cost(assume(R), 1, 3):-
        node(reference, R), not node(foil, R),
        not tag(reference, R, assume(_)).
