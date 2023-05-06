# Reto 1 - Linux

## Ejercicio 1 - Manejo de archivos

Crea mediante comandos de bash la siguiente jerarquía de ficheros y directorios.
```
foo/
├─ dummy/ 
│  ├─ file1.txt 
│  ├─ file2.txt
├─ empty/
```
Donde file1.txt debe contener el siguiente texto: Me encanta bash!! Y file2.txt debe permanecer vacío.
```
$ mkdir foo
$ cd foo
$ mkdir dummy
$ mkdir empty
$ cd dummy
$ touch file1.txt
$ touch file2.txt
$ echo “Me encanta bash!!” > file1.txt
```
## Ejercicio 2 - Manejo de contenido de archivos

Mediante comandos de bash, vuelca el contenido de file1.txt a file2.txt y mueve file2.txt a la carpeta empty. 
El resultado de los comandos ejecutados sobre la jerarquía anterior deben dar el siguiente resultado.

```
foo/
├─ dummy/
│       ├─ file1.txt
├─ empty/
        ├─ file2.txt
```
Donde file1.txt y file2.txt deben contener el siguiente texto: Me encanta bash!!
```
$ cat file1.txt > file2.txt
$ mv file2.txt ../empty
```
## Ejercicio 3 - Argumentos del script

Crear un script de bash que agrupe los pasos de los ejercicios anteriores y además permita establecer el texto de file1.txt alimentándose como parámetro al invocarlo.
Si se le pasa un texto vacío al invocar el script, el texto de los ficheros, el texto por defecto será: Que me gusta bash!!!!
```
#!/bin/bash
TEXTO=${1:-“Que me gusta bash!!!!”}
mkdir foo
cd foo
mkdir dummy
mkdir empty
cd dummy
touch file1.txt
touch file2.txt
echo $TEXTO > file1.txt
cat file1.txt > file2.txt
mv file2.txt ../empty
```
## Ejercicio 4 - Opcional

Crea un script de bash que descargue el contenido de una página web a un fichero. por ejemplo "https://es.wikipedia.org/wiki/DevOps" 
Una vez descargado el fichero, que busque en el mismo una palabra dada (esta se pasará por parámetro) y muestre por pantalla el número de línea donde aparece.
```
#!/bin/bash
Curl -o /wiki.txt https://es.wikipedia.org/wiki/DevOps
grep -n $1 ./wiki.txt | cut -d: -f1    (-d = “:” delimitador y –f campo)
```
