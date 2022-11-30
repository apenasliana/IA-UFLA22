### Liana Meneghini - Inteligencia Artificial 2022

# Exercicio Avaliativo 1 - Zebra Puzzle em Prolog



## Regras:

### **1)** casas 
Lista todas as casas e seus atributos.
 

#### **Uso:** 
    casas(Casas).



### **2)** quem_bebe_agua
Retorna o morador que bebe água (Aguado)
#### **Uso:** 
    quem_bebe_agua(Aguado).


### **3)** dono_da_zebra
Retorno o morador que tem a zebra como pet (Dono)
#### **Uso:** 
    dono_da_zebra(Dono).


### **4)** quem_mora_aqui
Retorna o morador e a cor de sua casa. 
#### **Uso:** 
    quem_mora_aqui(CorCasa,Morador).

##### Exemplos de uso

    quem_mora_aqui(azul,Morador).

    %% Retorno Esperado: %%
    Morador = ucraniano
    %%%%%%%%%%%%%%%%%%%%%%%

    quem_mora_aqui(CorCasa,espanhol).

    %% Retorno Esperado: %%
    CorCasa = marfim
    %%%%%%%%%%%%%%%%%%%%%%%


### **2)** pai_de_qual_pet 
Retorna o morador, a cor de sua casa e seu animal.
#### **Uso:** 
    pai_de_qual_pet(CorCasa,Pet,Morador).

##### Exemplos de uso

    pai_de_qual_pet(azul,Pet,Morador).

    %% Retorno Esperado: %%
    Morador = ucraniano,
    Pet = cavalo 
    %%%%%%%%%%%%%%%%%%%%%%%
  
    pai_de_qual_pet(CorCasa,raposa,Morador).

    %% Retorno Esperado: %%
    CorCasa = amarelo,
    Morador = noruegues
    %%%%%%%%%%%%%%%%%%%%%%%

    pai_de_qual_pet(CorCasa,Pet,japones).

    %% Retorno Esperado: %%
    CorCasa = verde,
    Pet = zebra
    %%%%%%%%%%%%%%%%%%%%%%%

=======================================================

## Explicação do codigo
Para realizar o desenvolvimento e teste, utilizei o site SWISH prolog.
Ele foi utilizado na matéria de PLP e ele roda o codigo online e tem uma interface bem intuitiva.

https://swish.swi-prolog.org/

// cada casa na ListaDeCasas é representada como uma lista (atributosCasa).
// ou seja, é uma lista de listas.
// o nome atributoCasa, foi o que achei melhor para entender as operações 
// a seguir, pois cada casa tem "atributos" na seguinte ordem:
//  (Casa, Nacionalidade, Cigarro, Bedida, Animal)


Linha 27:
    dono_da_zebra é uma regra (ver \#Regras).
    Nela, é procurado a Nacionalidade da casa (member) que tenha o atributo ANIMAL como "zebra".
    ou seja, uma das 5 casas da ListadeCasas
    em que o atributosCasa(_,_,_,_,_) tenha zebra, então: atributosCasa(_,_,_,_,zebra).
    Como queremos retornar a Nacionalidade de quem tem a zebra em sua casa, retornamos a variavel Dono com o dado.
    logo: atributosCasa(_,Dono,_,_,zebra).

Linha 31:
    quem_bebe_agua é uma regra (ver Regras).
    Nela, é procurado a Nacionalidade da casa (member) que tenha o atributo BEBIDA como "agua".
    ou seja, uma das 5 casas da ListadeCasas
    em que o atributosCasa(_,_,_,_,_) tenha agua, então: atributosCasa(_,_,_,agua,_).
    Como queremos retornar a Nacionalidade de quem bebe a agua em uma das casas, retornamos a variavel Aguado com o dado.
    logo: atributosCasa(_,Aguado,_,agua,_).

Linha 35 até 41:
    essas duas regras foram feitas a mais e serão explicadas no final.

linha 45 até 103:
    casa() é uma regra (ver Regras).
    aqui fica as afirmativas do exercicio que é o que monta a matriz com os resultados.
    muitas das operações já foram descritas acima e são bem repetitivas, por isso vou descrever brevemente as que mais se diferem.

linha 64:
        nesta linha é passada duas casas, com atributos definidos e a ListadeCasas para a regra "aoLado"(ver linha 107 até 111)

linha 73:
        nesta linha é feita uma atribuição simples.
        a ListaDeCasa, adiciona na terceira casa o atributo leite em BEBIDA
        
linha 107 até 111:
        nestas linhas existem duas regras para facilitar na hora de afirmar que algo está ao LADO de alguma coisa.
        Na linha 106, a casa A está a direita de B.
        Na linha 110: a casa A está a esquerda de B.

linha 113:
    esses examplos são utilizados pelo SWISH para criar um dropdown com uma query já criada e facilitar o uso.
    



