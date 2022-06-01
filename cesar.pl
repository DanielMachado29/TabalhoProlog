%Daniel Machado Barbosa Delgado - 201835013

somaKPosicoesEmCadaElementoDeUmaListaDeCodigos(_,[],[]).
somaKPosicoesEmCadaElementoDeUmaListaDeCodigos(KPosicoes,[HlistaDeCodigo1|TlistaDeCodigo1],[HlistaDeCodigo2|TlistaDeCodigo2]) :-
    HlistaDeCodigo2 is mod(HlistaDeCodigo1+KPosicoes,76),
    somaKPosicoesEmCadaElementoDeUmaListaDeCodigos(KPosicoes,TlistaDeCodigo1,TlistaDeCodigo2).

subtraiKPosicoesEmCadaElementoDeUmaListaDeCodigos(_,[],[]).
subtraiKPosicoesEmCadaElementoDeUmaListaDeCodigos(KPosicoes,[HlistaDeCodigo1|TlistaDeCodigo1],[HlistaDeCodigo2|TlistaDeCodigo2]) :-
    HlistaDeCodigo2 is mod(HlistaDeCodigo1-KPosicoes,76),
    subtraiKPosicoesEmCadaElementoDeUmaListaDeCodigos(KPosicoes,TlistaDeCodigo1,TlistaDeCodigo2).


cifraCesar(Texto, Chave, TextoCifrado) :- 
    string2code(Texto, ListaDeCodigos), code(Chave,KPosicoes),
    somaKPosicoesEmCadaElementoDeUmaListaDeCodigos(KPosicoes,ListaDeCodigos,ListaDeCodigoSomados),
    string2code(TextoCifrado, ListaDeCodigoSomados).

decifraCesar(Texto, Chave, TextoCifrado) :- 
    string2code(TextoCifrado, ListaDeCodigos), code(Chave,KPosicoes),
    subtraiKPosicoesEmCadaElementoDeUmaListaDeCodigos(KPosicoes,ListaDeCodigos,ListaDeCodigoSomados),
    string2code(Texto, ListaDeCodigoSomados).