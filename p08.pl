compress([],[]).
compress([A,A|B], L):-
    append([A], B, RL),
    compress(RL, L),!.
compress([A|B], L):-
    compress(B, L1),
    append([A], L1, L).

