#const graph=reference. %%#(\label{model:const}#)
hold(R) :- node(graph, R), R=rule(H,B), %%#(\label{model:rule:start}#)
    hold(atom(A)) : edge(graph, positive, (atom(A),R));
    not hold(atom(A)) : edge(graph, negative, (atom(A),R)). %%#(\label{model:rule:end}#)

hold(atom(A)) : edge(graph, positive,(rule(disjunction(H),B),atom(A))) :- %%#(\label{model:disjunction:start}#)
    hold(rule(disjunction(H),B)). %%#(\label{model:disjunction:end}#)
{ hold(atom(A)) : edge(graph, positive,(rule(choice(H),B),atom(A)))} :- %%#(\label{model:choice:start}#)
    hold(rule(choice(H),B)). %%#(\label{model:choice:end}#)

node(model(graph), X):- hold(X). %%#(\label{model:node}#)
edge(model(graph), positive, (X,Y)):- hold(X), hold(Y),
    edge(graph, positive, (X,Y)). %%#(\label{model:edge}#)
