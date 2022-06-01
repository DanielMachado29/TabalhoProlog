%Daniel Machado Barbosa Delgado - 201835013

:- dynamic palavra/1.


inserePalavraNaMemoria(Palavra) :-
    assertz(palavra(Palavra)).

insereNovaPalavraNoDocumento(Palavra):-
    palavra(Palavra),!.
insereNovaPalavraNoDocumento(Palavra):-
    open('palavra.pl',append,Out),
    string_concat('\npalavra(''', Palavra, Concatenada1),
    string_concat(Concatenada1, ''').', Concatenada2),
    write(Out, Concatenada2),
    close(Out).  

deletaPalavraNaMemoria(Palavra):-
    retract(palavra(Palavra)).
    

palavra(oi).
palavra(bom).
palavra(dia).
palavra(como).
palavra(voce).
palavra(esta).
palavra(as).
palavra(coisa).
palavra(andar).
palavra(falar).
palavra(ver).
palavra(enxergar).
palavra(acreditar).
palavra(sonhar).
palavra(tudo).
palavra(nada).
palavra(sim).
palavra(nao).
palavra(raposa).
palavra(animal).
palavra(cachorro).
palavra(livro).
palavra(pagina).
palavra(corrida).
palavra(papagaio).
palavra(bicicleta).
palavra(correr).
palavra(andar).
palavra(palavra).
palavra(estranho).
palavra(normal).
palavra(este).
palavra(esse).
palavra(trabalho).
palavra(preciso).
palavra(ir).
palavra(bem).
palavra(nele).
palavra(pelo).
palavra(amor).
palavra(de).
palavra(deus).
palavra(alguem).
palavra(me).
palavra(ajuda).
palavra(socorro).
palavra(que).
palavra(acontecendo).
palavra(passa).
palavra(argentino).
palavra(safado).
palavra(aleluia).
palavra(vou).
palavra(conseguir).
palavra(tirar).
palavra(uma).
palavra(nota).
palavra(muito).
palavra(boa).
palavra(hoje).
palavra(dessa).
palavra(maneira).
palavra(passarei).
palavra(na).
palavra(disciplina).
palavra(linguagem).
palavra(programacao).
palavra(farei).
palavra(historia).
palavra(mesmo).
palavra(minha).
palavra(dupla).
palavra(tendo).
palavra(trancado).
palavra(materia).
palavra(sem).
palavra(problemas).
palavra(quem).
palavra(eu).
palavra(quero).
palavra(enganar).
palavra(estou).
palavra(quase).
palavra(chorando).
palavra(inteligencia).
palavra(limitada).
palavra(preciso).
palavra(milagre).
palavra(jesus).
palavra(me).
palavra(ouve).
palavra(por).
palavra(favor).
palavra(senhor).
palavra(que).
palavra(queres).
palavra(de).
palavra(mim).
palavra(amem).
palavra(mago).
palavra(a).
palavra(e).
palavra(o).
palavra(ou).
palavra('tomedalhe').
palavra('testando123').
palavra('oadisjdoasijd').