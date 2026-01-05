node(foil,rule(r6)). node(foil,rule(r1)).
node(foil,rule(r4)). node(foil,rule(r5)).
node(foil,rule(r3)). node(foil,rule(r2)).
node(foil,atom(h)). node(foil,atom(d)).
node(foil,atom(a)). node(foil,atom(w)).
node(foil,atom(p)).
edge(foil,positive,(atom(w),rule(r4))).
edge(foil,positive,(atom(d),rule(r5))).
edge(foil,positive,(atom(w),rule(r3))).
edge(foil,positive,(atom(h),rule(r3))).
edge(foil,negative,(atom(a),rule(r5))).
edge(foil,negative,(atom(w),rule(r2))).
edge(foil,negative,(atom(h),rule(r2))).
edge(foil,positive,(rule(r6),atom(d))).
edge(foil,positive,(rule(r4),atom(a))).
edge(foil,positive,(rule(r5),atom(p))).
edge(foil,positive,(rule(r1),atom(h))).
edge(foil,positive,(rule(r1),atom(w))).

node(model(foil),rule(r6)).
node(model(foil),rule(r1)).
node(model(foil),atom(d)).
node(model(foil),rule(r4)).
node(model(foil),atom(a)).
node(model(foil),atom(w)).
edge(model(foil),positive,(atom(w),rule(r4))).
edge(model(foil),positive,(rule(r6),atom(d))).
edge(model(foil),positive,(rule(r4),atom(a))).
edge(model(foil),positive,(rule(r1),atom(w))).
