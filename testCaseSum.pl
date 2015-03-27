/* Exercise: Write a program to repeat for a given number of times the process
of finding the sum of first N elements of an equal interval series given the first
term, N and the interval. */

go_loop1:- write('\nHow many computations?'),
		read(N), doloop1(N).

    doloop1(0).
	doloop1(N):- N>0, call, N1 is N-1, doloop1(N1).

    call:- write('\nFirst term ') , getnum(X), write('\nElement no '),getnum(Y),write('\nInterval ') , getnum(Z),
		write('\nAns is '),eqEn(Y,X,Z,N),
		write(N), write('.').

    getnum(X):-  read(X),!.
	
	eqEn(0,_,_,0).
	eqEn(X,A,D,N) :- X>0,Y is X-1,eqEn(Y,A,D,N1),N is A + (X-1)*D + N1.