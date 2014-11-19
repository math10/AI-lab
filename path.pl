edge('a','b',20).
edge('a','c',35).
edge('b','d',10).
edge('b','e',15).
edge('d','g',25).
edge('c','e',40).
edge('c','f',30).
edge('f','g',25).
edge('f','e',15).
edge('e','g',30).
edge('d','e',7).


path(X,Y,N) :- (X=Y),N is 0.
path(X,Y,N) :- not(X=Y),edge(X,Z,K),path(Z,Y,N1),N is K+N1.








