%hechos y relaciones
% libro(titulo,autor).
libro(don_quijote,miguel_de_cervantes).
libro(1984,george_orwell).
libro(moby_dick,herman_melville).
libro(la_odisea,homero).
libro(guerra_y_paz,lev_tolstoi).
libro(rebelion_en_la_granja,george_orwell).
libro(la_entretenida,miguel_de_cervantes).

% genero
% genero(titulo,genero).
genero(don_quijote,novela).
genero(1984,distopia).
genero(moby_dick,aventura).
genero(la_odisea,epica).
genero(guerra_y_paz,novela).
genero(rebelion_en_la_granja,satira).
genero(la_entretenida,comedia).

% precio(titulo,precio).
precio(don_quijote,350).
precio(1984,280).
precio(moby_dick,320).
precio(la_odisea,250).
precio(guerra_y_paz,450).
precio(rebelion_en_la_granja,220).
precio(la_entretenida,180).

% editorial(titulo,editorial).
editorial(don_quijote,planeta).
editorial(1984,debolsillo).
editorial(moby_dick,alianza).
editorial(la_odisea,gredos).
editorial(guerra_y_paz,alba).
editorial(rebelion_en_la_granja,debolsillo).
editorial(la_entretenida,castalia).


% paginas(titulo,cantidad).
paginas(don_quijote,863).
paginas(1984,326).
paginas(moby_dick,720).
paginas(la_odisea,448).
paginas(guerra_y_paz,1225).
paginas(rebelion_en_la_granja,144).
paginas(la_entretenida,160).

% formato(titulo,tipo).
formato(don_quijote,impreso).
formato(1984,impreso).
formato(moby_dick,impreso).
formato(la_odisea,digital).
formato(guerra_y_paz,impreso).
formato(rebelion_en_la_granja,digital).
formato(la_entretenida,impreso).

%------------------
% reglas compuestas
libro_economico(Titulo) :-
    libro(Titulo,_),
    precio(Titulo,Precio),
    Precio < 300.

libros_rango_precio(Titulo,Precio,Min,Max) :-
    libro(Titulo,_),
    precio(Titulo,Precio),
    Precio >= Min,
    Precio =< Max.

libro_mas_caro(Titulo1,Titulo2) :-
    precio(Titulo1,Precio1),
    precio(Titulo2,Precio2),
    Precio1 > Precio2.

libro_largo(Titulo) :-
    paginas(Titulo,Paginas),
    Paginas > 500.

libro_impreso_barato(Titulo) :-
    formato(Titulo,impreso),
    precio(Titulo,Precio),
    Precio < 300.
