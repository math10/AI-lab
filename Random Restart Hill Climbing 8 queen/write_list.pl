:-module(write_list,[write_list/1]).

write_list([]):-!.
write_list([H|T]):- write(H), write_list(T).











