% @label("Bond is poisoned if he is drugged without an antidote") %%#(\label{tags:label}#)
p :- d, not a. %%#(\label{tags:rule}#)
% @removable %%#(\label{tags:removable}#)
d.
% @label("Bond is on holiday") :: h %%#(\label{tags:atom}#)
