/*
Write a procedure to delete the last n elements from a list.
*/

delLastNel(L1,N,L):-length(L1,N1),N2 is N1-N,write(N2),call1(L1,N2,L).

call1([H|_],1,[H]).
call1([H|T],N,L):-N>1,N1 is N-1,call1(T,N1,L1),L = [H|L1].
