lastButOne(X, [X|[_|[]]]).
lastButOne(X, [_|B]):-
    lastButOne(X, B).
