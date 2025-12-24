node(model(reference),rule(r6)). node(model(reference),rule(r1)).
node(model(reference),rule(r4)).
node(model(reference),atom(d)). node(model(reference),atom(a)).
node(model(reference),atom(w)).
edge(model(reference),positive,(atom(w),rule(r4))).
edge(model(reference),positive,(rule(r6),atom(d))).
edge(model(reference),positive,(rule(r4),atom(a))).
edge(model(reference),positive,(rule(r1),atom(w))).
