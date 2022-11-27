### Liana Meneghini - Inteligencia Artificial 2022

# Exercicio Avaliativo 1 - Zebra Puzzle em Prolog



## Regras:

### **1)** casas 
Lista todas as casas e seus atributos em uma tabela.
 

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
    Morador: ucraniano
    %%%%%%%%%%%%%%%%%%%%%%%

    quem_mora_aqui(CorCasa,espanhol).

    %% Retorno Esperado: %%
    CorCasa: marfim
    %%%%%%%%%%%%%%%%%%%%%%%


### **2)** pai_de_qual_pet 
Retorna o morador, a cor de sua casa e seu animal.
#### **Uso:** 
    pai_de_qual_pet(CorCasa,Pet,Morador).

##### Exemplos de uso

    pai_de_qual_pet(azul,Pet,Morador).

    %% Retorno Esperado: %%
    Morador: ucraniano,
    Pet: cavalo 
    %%%%%%%%%%%%%%%%%%%%%%%
  
    pai_de_qual_pet(CorCasa,raposa,Morador).

    %% Retorno Esperado: %%
    CorCasa: amarelo,
    Morador: noruegues
    %%%%%%%%%%%%%%%%%%%%%%%

    pai_de_qual_pet(CorCasa,Pet,japones).

    %% Retorno Esperado: %%
    CorCasa: verde,
    Pet: zebra
    %%%%%%%%%%%%%%%%%%%%%%%

