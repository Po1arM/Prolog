%Compendio #1 Grupo 6

progenitor(antonio,carlos).
progenitor(antonio,eva).
progenitor(carlos,fernando).
progenitor(carlos,silvia).
progenitor(eva,emilio).

hermano(X,Y) :- progenitor(Z,X), progenitor(Z,Y), X\=Y.

% Ejercicio 1.1

tio(Tio,Sobrino):- progenitor(Padre,Sobrino),hermano(Tio,Padre).

% Ejercicio 1.2
primo(X,Y):-progenitor(PadreX,X),progenitor(PadreY,Y),hermano(PadreX,PadreY).


legusta(maria,pasta).
legusta(juan,carne).
legusta(juan,vino).
legusta(jose,pasta).
legusta(jose,carne).
legusta(jose,cerveza).

% Ejercicio 2.1
legusta(juan,X):- legusta(maria,X).

% Ejercicio 2.2
legusta(juan,X):- legusta(X,pasta).

% Ejercicio 2.3
% Para realizar este ejercicio se necesita crear una regla en la cual se
% especifica cuales alimentos son bebidas alcoholicas
legusta(juan,X):- tipoComida(Comida,alcohol),legusta(X,Comida).


tipoComida(cerveza,alcohol).
tipoComida(vino,alcohol).
