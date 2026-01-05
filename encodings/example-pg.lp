node(reference,rule(r1)). node(reference,rule(r2)).
node(reference,rule(r3)). node(reference,rule(r4)).
node(reference,rule(r5)). node(reference,rule(r6)).
node(reference,atom(d)).  node(reference,atom(a)).
node(reference,atom(h)).  node(reference,atom(w)).
node(reference,atom(p)).
edge(reference,positive,(atom(w),rule(r4))).
edge(reference,positive,(atom(d),rule(r5))).
edge(reference,positive,(atom(w),rule(r3))).
edge(reference,positive,(atom(h),rule(r3))).
edge(reference,negative,(atom(a),rule(r5))).
edge(reference,negative,(atom(w),rule(r2))).
edge(reference,negative,(atom(h),rule(r2))).
edge(reference,positive,(rule(r6),atom(d))).
edge(reference,positive,(rule(r4),atom(a))).
edge(reference,positive,(rule(r5),atom(p))).
edge(reference,positive,(rule(r1),atom(h))).
edge(reference,positive,(rule(r1),atom(w))).
