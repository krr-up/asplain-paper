{removed(rule(H,B))} :- abducible(remove, rule(H,B)). %%#(\label{foil:remove}#)
{added(rule(H,B))} :- abducible(add, rule(H,B)). %%#(\label{foil:add}#)

node(foil, R) :- node(reference, R), not removed(R). %%#(\label{foil:node}#)
node(foil, R) :- added(R).
edge(foil, S, (X,Y)) :- edge(reference, S, (X,Y)),
                        not removed(X), not removed(Y).
edge(foil, S, (R,A)) :- added(R), abducible(add, edge(S,(R,A))).
edge(foil, S, (A,R)) :- added(R), abducible(add, edge(S,(A,R))). %%#(\label{foil:edge}#)

:- query(Atom,exclude),  hold(atom(Atom)). %%#(\label{foil:exclude}#)
:- query(Atom,include), not hold(atom(Atom)). %%#(\label{foil:include}#)
