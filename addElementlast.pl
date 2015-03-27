/*
Write a procedure to add an element at the end of a list.
*/
addelLast(L1,L2):- write('Element '),read(X),write('\n'),
		append(L1,[X],L2).