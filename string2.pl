/*
Impose that the 1st character of an input sentence must be in uppercase.
*/

call1(Str,S):-string_to_list(Str,L),call2(L,L1),string_to_list(S,L1).

call2([H|T],L):-call3(H,Y),L = [Y|T].

call3(X,S):-X>96,S is X - 32.
call3(X,S):-X<97,S is X.
