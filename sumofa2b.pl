/*
Write a procedure to find the sum of the elememts from two given
positions of a list.
*/

sumofa2b(L,A,B,N):-call1(L,1,A,B,N).

call1([H|_],N,_,N,H).
call1([H|T],N,A,B,S):-N<B,N>=A,N1 is N+1,call1(T,N1,A,B,S1),S is S1+H.
call1([_|T],N,A,B,S):-N<A,N1 is N+1,call1(T,N1,A,B,S1),S is S1.
