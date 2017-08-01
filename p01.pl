lastEl(X, [X]).
lastEl(X, [_|B]):-
    lastEl(X, B).
