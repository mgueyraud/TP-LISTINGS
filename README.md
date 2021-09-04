# Trabajo Practico LP3

Trabajo Practico de la facultad para la materia de "Lenguajes de Programación 3".

El trabajo consiste en implementar en lenguaje C/C++ los ejemplos programáticos indicados en los listings de los capitulos del 1 al 5 del libro "Advanced Linux Programming".

## Generar archivos

Para generar la carpeta bin/, con sus respectivos archivos binarios, hay que correr el siguiente comando:

```
make all
```

IMPORTANTE: Si se quiere correr un listing en especifico o capitulo en especifico asegurese de correr create_directories antes:

```
make create_directories
```

En el caso de querer correr solamente un capitulo se corre el comando:

- cap_1
- cap_2
- cap_3
- cap_4
- cap_5

Ej:

```
make cap_1
```

Y por ultimo si se quiere correr un listing en especifico se corre el comando:

```
make listing-{numero_de_listing} //Ej: make listing-2.3
```
