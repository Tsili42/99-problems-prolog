legoFl([], X, X).
legoFl([A|B], Acc, F):-
    (   is_list(A),
        my_flatten(A, FA),
        append(Acc, FA, New_Acc),
        legoFl(B, New_Acc, F)
    ;  \+ is_list(A),
       append(Acc, [A], New_Acc),
       legoFl(B, New_Acc, F)
    ).

my_flatten(L, F):-
    legoFl(L, [], F).
