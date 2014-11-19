eqEn(0,_,_,0).
eqEn(X,A,D,N) :- X>0,Y is X-1,eqEn(Y,A,D,N1),N is A + (X-1)*D + N1.
