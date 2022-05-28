word(bola).
word(ouro).
word(carro).
word(azul).
word(camelo).
word(coisa).
word(casa).
word(tempo).
word(ano).
word(dia).
word(vez).
word(homem).
word(mulher).
word(senhor).
word(senhora).
word(rapaz).
word(bom).
word(grande).
word(melhor).
word(pior).
word(certo).
word(ultimo).
word(proprio).
word(ser).
word(ir).
word(estar).
word(ter).
word(haver).
word(fazer).
word(dar).
word(ficar).
word(poder).
word(ver).
word(nao).
word(mais).
word(muito).
word(ja).
word(quando).
word(mesmo).
word(depois).
word(ainda).
word(um).
word(dois).
word(primeiro).
word(cem).
word(mil).
word(a).
word(o).
word(um).
word(uma).
word(de).
word(em).
word(para).
word(por).
word(com).
word(ate).
word(e).
word(mas).
word(ou).
word(tambem).
word(se).
word(assim).
word(como).
word(porque).
word(que).
word(eu).
word(voce).
word(ele).
word(este).
word(esse).
word(isso).
word(sua).
word(dizer).
word(saber).
word(vir).
word(querer).
word(parecer).
word(falar).
word(ouvir).
word(achar).
word(deixar).
word(sair).
word(chegar).
word(passar).
word(pedir).
word(ler).
word(acabar).
word(olho).
word(mao).
word(palavra).
word(filho).
word(filha).
word(noite).
word(carta).
word(amigo).
word(amiga).
word(bem).
word(rua).
word(vida).
word(pai).
word(pessoa).
word(amor).
word(verdade).
word(ideia).
word(mae).
word(marido).
word(espirito).
word(alma).
word(fim).
word(nome).
word(porta).
word(razao).
word(parte).
word(modo).
word(velho).
word(longo).
word(novo).
word(unico).
word(antigo).
word(belo).
word(seguinte).
word(preciso).
word(meio).
word(natural).
word(maior).
word(triste).
word(bonito).
word(simples).
word(mau).
word(verdadeiro).
word(alegre).
word(politico).
word(alto).
word(publico).
word(grave).
word(vivo).
word(cheio).
word(feliz).
word(possivel).
word(raro).
word(claro).
word(necessario).
word(pequeno).
word(igual).
word(fino).
word(impossivel).
word(pobre).


code(' ',0).
code(a,1).
code(b,2).
code(c,3).
code(d,4).
code(e,5).
code(f,6).
code(g,7).
code(h,8).
code(i,9).
code(j,10).
code(k,11).
code(l,12).
code(m,13).
code(n,14).
code(o,15).
code(p,16).
code(q,17).
code(r,18).
code(s,19).
code(t,20).
code(u,21).
code(v,22).
code(w,23).
code(x,24).
code(y,25).
code(z,26).

string2code(String, ListOfCode) :-
    (   %(string(String); atom(String)) ->%executa se Passar só a String
        string(String);atom(String),
        string_chars(String,ListOfChars),
        maplist(code(), ListOfChars, ListOfCode)
    ;
        maplist(code(), ListOfChars, ListOfCode),%executa se Passar só lista de Code
        string_chars(String,ListOfChars)
    ). 

%CIFRA DE CESAR -  
% cifraCesar('abc', 1 , TextoCifrado).
%   TextoCifrado = bcd.

    % cifraCesar(Texto, KPosicoes, TextoCifrado) :-
        %pegar o texto, transformar em lista de codigo.
        %pegar a lista de codigo e somar 1 em cada elemento
        %pegar a lista de codigo somado e transformar em string com o string2code
        %devolver o textoCifrado

cifraCesar(Texto, KPosicoes, TextoCifrado) :- 
    string2code(Texto, ListaDeCodigos).

somaValorEmUmaListaDeCodigos([], Valor,[]). %caso base
somaValorEmUmaListaDeCodigos([Head | Tail], Valor, [HeadResult| TailResult]) :-
    HeadResult is Head + Valor,
    somaValorEmUmaListaDeCodigos(Tail,Valor, TailResult).


percorreLista([Head| Tail]) :-
    write(Head), nl,
    percorreLista(Tail).
    %pega um elemento da lista, faz a soma



somaDoisValores(Valor1,Valor2,ValorResultado) :-
    ValorResultado is Valor1+Valor2.





      
