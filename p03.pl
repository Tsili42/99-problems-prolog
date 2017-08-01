findEl(X, [X|_], K, K).
findEl(X, [_|B], K, I):-
    New_I is I+1,
    findEl(X, B, K, New_I).
elementAt(X, L, K):-
    findEl(X, L, K, 1).


element_at(X,[X|_],1).
element_at(X,[_|L],K) :- K > 1, K1 is K - 1, element_at(X,L,K1).
