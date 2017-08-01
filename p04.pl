nOfList(0, []).
nOfList(X, [_|A]):-
    nOfList(N, A),
    X is N + 1.
