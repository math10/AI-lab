parent('Hasib' , 'Rakib').
parent('Rakib' , 'Sohel').
parent('Rakib' , 'Rebeka').
parent('Hasib','Rahim').
male('Hasib').
male('Rakib').
male('Sohel').
male('Rahim').

brother(X,Y) :- parent(Z,X),parent(Z,Y),not(X=Y),male(Y).
sister(X,Y) :- parent(Z,X),parent(Z,Y),not(X=Y),not(male(Y)).











































































