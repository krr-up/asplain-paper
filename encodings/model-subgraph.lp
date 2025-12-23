hold(R) :- node(reference, R), R=rule(H,B), %%#(\label{model:rule}#)
    hold(atom(A)) : edge(reference, positive, (atom(A),R));
    not hold(atom(A)) : edge(reference, negative, (atom(A),R)). %%#(\label{model:rule}#)

hold(atom(A)) : edge(reference, positive, (rule(disjunction(H),B),atom(A))) :- %%#(\label{model:disjunction:start}#)
    hold(rule(disjunction(H),B)). %%#(\label{model:disjunction:end}#)

{ hold(atom(A)) : edge(reference, positive, (rule(choice(H),B),atom(A))) } :- %%#(\label{model:choice:start}#)
    hold(rule(choice(H),B)). %%#(\label{model:choice:end}#)

node(model(reference), X):- hold(X). %%#(\label{model:node}#)
edge(model(reference), positive, (X,Y)):- hold(X), hold(Y),
    edge(reference, positive, (X,Y)). %%#(\label{model:edge}#)
