/*
Read a string and return the first and last symbol concatenated,
 and in uppercase
*/

call1(Str,S):-string_to_list(Str,L), call2(L,X),reverse(L,L1),call2(L1,Y),call3(X,X1),call3(Y,Y1),append([] ,[X1,Y1],L2),string_to_list(S,L2).

call2([H|_],H).

call3(X,S):-X>96,S is X - 32.
call3(X,S):-X<97,S is X.