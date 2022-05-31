%Daniel Machado Barbosa Delgado - 201835013

string2code(String, ListOfCode) :-
    string(String);atom(String),
    string_chars(String,ListOfChars),
    maplist(code(), ListOfChars, ListOfCode);
    maplist(code(), ListOfChars, ListOfCode),
    string_chars(String,ListOfChars).

