/* 
O PROBLEMA


O problema a ser resolvido  é conhecido como Zebra Puzzle, e apresenta inúmeras versões na internet. 
A sua primeira versão surgiu na Life International em 1962 da seguinte forma:

1. Existem cinco casas.
2. O Inglês vive na casa vermelha.
3. O Espanhol tem um cachorro.
4. Café é a bebida da casa verde.
5. O Ucraniano bebe chá.
6. A casa verde está à direita da casa marfim.
7. O fumante de Old Gold tem caramujos de estimação.
8. Cigarros Kools são consumidos na casa amarela.
9. Leite é a bebida da casa do meio.
10. O norueguês vive na primeira casa.
11. O homem que fuma Chesterfields vive na casa vizinha do homem que tem uma raposa.
12. Kools  é o cigarro da casa vizinha à casa onde existe um cavalo.
13. O fumante de Lucky Strike bebe suco de laranja.
14. O Japonês fuma Parliaments.
15. O Norueguês é vizinho da casa azul.

*/


:- use_rendering(table,
		 [header(atributosCasa('Casa', 'Nacionalidade', 'Cigarro', 'Bedida', 'Animal'))]).


dono_da_zebra(Dono) :-
	casas(ListaDeCasas),
	member(atributosCasa(_,Dono,_,_,zebra), ListaDeCasas).

quem_bebe_agua(Aguado) :-
	casas(ListaDeCasas),
	member(atributosCasa(_,Aguado,_,agua,_), ListaDeCasas).

quem_mora_aqui(CorCasa, Morador) :-
	casas(ListaDeCasas),
	member(atributosCasa(CorCasa,Morador,_,_,_), ListaDeCasas).

pai_de_qual_pet(CorCasa,Pet,Morador) :-
	casas(ListaDeCasas),
	member(atributosCasa(CorCasa,Morador,_,_,Pet), ListaDeCasas).
	


casas(ListaDeCasas) :-
    % cada casa na ListaDeCasas é representada como:
    %      c(Casa, Nacionalidade, Cigarro, Bedida, Animal)
    
    % 1. Existem cinco casas.
	length(ListaDeCasas, 5),
    
    % 2. O Inglês vive na casa vermelha.
    member(atributosCasa(vermelha,ingles,_,_,_), ListaDeCasas),
    
    % 3. O Espanhol tem um cachorro.
    member(atributosCasa(_,espanhol,_,_,cachorro), ListaDeCasas),
    
    % 4. Café é a bebida da casa verde.
    member(atributosCasa(verde,_,_,cafe,_), ListaDeCasas),
    
    % 5. O Ucraniano bebe chá.
    member(atributosCasa(_,ucraniano,_,cha,_), ListaDeCasas),
    
    % 6. A casa verde está à direita da casa marfim.
    aoLado(atributosCasa(verde,_,_,_,_), atributosCasa(marfim,_,_,_,_), ListaDeCasas),
    
    % 7. O fumante de Old Gold tem caramujos de estimação.
    member(atributosCasa(_,_,oldGold,_,caramujos), ListaDeCasas),
    
    % 8. Cigarros Kools são consumidos na casa amarela.
    member(atributosCasa(amarela,_,kool,_,_), ListaDeCasas),
    
    % 9. Leite é a bebida da casa do meio.
    ListaDeCasas = [_,_,atributosCasa(_,_,_,leite,_),_,_],
    
    % 10. O norueguês vive na primeira casa.
    ListaDeCasas = [atributosCasa(_,noruegues,_,_,_)|_],
    
    % 11. O homem que fuma Chesterfields vive na casa vizinha do homem que tem uma raposa.
    aoLado(atributosCasa(_,_,_,_,raposa), atributosCasa(_,_,chesterfield,_,_), ListaDeCasas),
    
    % 12. Kools  é o cigarro da casa vizinha à casa onde existe um cavalo.    
    aoLado(atributosCasa(_,_,kool,_,_), atributosCasa(_,_,_,_,cavalo), ListaDeCasas),
    
    % 13. O fumante de Lucky Strike bebe suco de laranja.
    member(atributosCasa(_,_,luckyStrike,sucoDeLaranja,_), ListaDeCasas),
    
    % 14. O Japonês fuma Parliaments.
    member(atributosCasa(_,japones,parliament,_,_), ListaDeCasas),
    
    % 15. O Norueguês é vizinho da casa azul.
    aoLado(atributosCasa(_,noruegues,_,_,_), atributosCasa(azul,_,_,_,_), ListaDeCasas),
    
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    %
    % Alguem tem agua como bebida e alguem tem uma zebra como animal
    %
    % "Quem bebe água?" ou seja, um deles bebe agua
    member(atributosCasa(_,_,_,agua,_), ListaDeCasas),    
    % "Quem é o dono da zebra?" ou seja, um deles tem uma zebra como animal
    member(atributosCasa(_,_,_,_,zebra), ListaDeCasas).
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



aoLado(A, B, ListaAux) :- append(_, [A,B|_], ListaAux).
aoLado(A, B, ListaAux) :- append(_, [B,A|_], ListaAux).

/** <examples>
?- casas(Casas).

?- quem_bebe_agua(Aguado).

?- dono_da_zebra(Dono).

?- quem_mora_aqui(CorCasa,Morador).

?- pai_de_qual_pet(CorCasa,Pet,Morador).

*/
