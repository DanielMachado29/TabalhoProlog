%Daniel Machado Barbosa Delgado - 201835013


%cifraVigenere(Texto, Chave, TextoCifrado) :-
%pegar o Texto e a Chave e converter pra ListaDeCodigo.
%somaKPosicoesEmCadaElementoDeUmaListaDeCodigos

%   [f,l,a,m,e,n,g,o,' ',c,a,m,p,e,a,o]    - [6,12,1,13,5,14,7,15,0,3,1,13,16,5,1,15]
%   [l,u,a,l,u,a,l,u,a,l,u,a,l,u,a,l,u]    - [12,21,1,12,21,1,12,21,1,12,21,1,12,21,1,12]
%   "rGbyzosJaovnBzbA"
     rGbyzosJaovnBzbA



%somaChaveEmListaDeCodigoNoTextoEmListaDeCodigo(ChaveEmListaDeCodigo,TextoEmListaDeCodigo,ListaDeCodigoSomada) .
somaChaveEmListaDeCodigoNoTextoEmListaDeCodigo([],_,[],[]).
somaChaveEmListaDeCodigoNoTextoEmListaDeCodigo([_|_],_,[],[]).
somaChaveEmListaDeCodigoNoTextoEmListaDeCodigo([],ChaveCompleta,[Htexto|Ttexto],[Hresultado|Tresultado]) :-
    somaChaveEmListaDeCodigoNoTextoEmListaDeCodigo(ChaveCompleta,ChaveCompleta,[Htexto|Ttexto],[Hresultado|Tresultado]).
somaChaveEmListaDeCodigoNoTextoEmListaDeCodigo([Hchave|Tchave],ChaveCompleta,[Htexto|Ttexto],[Hresultado|Tresultado]) :-
    Hresultado is mod(Hchave+Htexto,76),
    somaChaveEmListaDeCodigoNoTextoEmListaDeCodigo(Tchave,ChaveCompleta,Ttexto,Tresultado).


cifraVigenere(Texto, Chave, TextoCifrado) :-
    string2code(Texto,TextoEmListaDeCodigo), string2code(Chave, ChaveEmListaDeCodigo),
    somaChaveEmListaDeCodigoNoTextoEmListaDeCodigo(ChaveEmListaDeCodigo,ChaveEmListaDeCodigo,TextoEmListaDeCodigo,Resultado),
    string2code(TextoCifrado,Resultado).

