node(reference, rule(H,B)):-rule(H,B). %%#(\label{reify:rule}#)
node(reference, atom(A)):-symbol_literal(A,L). %%#(\label{reify:atom}#)

edge(reference, positive, (atom(A), rule(H,normal(B)))):- %%#(\label{reify:edge:start}#)
    rule(H,normal(B)), literal_tuple(B,E),
    E>0, symbol_literal(A,E),
    node(reference,atom(A)), node(reference,rule(H,normal(B))). %%#(\label{reify:edge:end}#)

edge(reference, positive, (rule(disjunction(H),B),atom(A))):-
    rule(disjunction(H),B),
    atom_tuple(H,E), symbol_literal(A,E). %%#(\label{reify:edge:disjunction}#)

edge(reference, positive, (rule(choice(H),B),atom(A))):-
    rule(choice(H),B),
    atom_tuple(H,E), symbol_literal(A,E). %%#(\label{reify:edge:choice}#)
