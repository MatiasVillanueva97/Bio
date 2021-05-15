# Ejercicio 2

## Requisitos

-   Tener instalado BLAST+, para el mismo (en caso de encontrarse en Ubuntu como SO):

```
    sudo apt-get install ncbi-blast+
```

-   Tener descargado la secuencia de nucleotidos en formato FASTA `protein.fas` del **Ejercicio 1**
-   Tener descargado la base de datos **Swissprot** ([Descarga](https://ftp.ncbi.nlm.nih.gov/blast/db/FASTA/swissprot.gz))

## Instrucciones

-   Ejecutar

```
    makeblastdb -in swissprot -dbtype prot
```
-   El proceso nos va a formatear la base de datos generando los archivos `swissprot.phr`,`swissprot.pin`,`swissprot.psq`.

-   Ejecutar

```
    blastall -p blastp -d swissprot -i protein.fas -o myblast.report
```

-   Tras su ejecución se generará el archivo “myblast.report” en el cual se encuentran el reporte de blast con las diferentes especies que contienen las secuencias de proteínas.

## Conclusión

-   Como resultado de la ejecución del Blast sobre la cadena de aminoacidos, se puede notar como la primer secuencia que aparece en el listado es la utilizada en el ejercicio 1 ([P42858.2](https://www.ncbi.nlm.nih.gov/protein/P42858.2)), por lo que se puede decir que el proceso se ejecuto de manera correcta.

|   Score   | Identities | Positives | Expect |  Gaps  |
| :-------: | :--------: | :-------: | :----: | :----: |
| 5864 bits |  3142/3142    |  3142/3142   |   0    | 0/3142 |

-   El **identities** representan la cantidad de aminoacidos que coinciden de manera perfecta entre ambas secuencias.
-   Los **positives** representan, similar a identities, la cantidad de aminoacidos que coinciden de manera exacta, pero también aquellos que tienen características quimicas similares.
-   Los **gaps** representan aquellos aminoacidos que no coinciden entre ambas secuencias.
-   El **expect** representa que tan alta es la posibilidad de que la coincidencia sea por casualidad. En este caso es 0, por lo que no es coincidencia de que las secuencias coincidan.
- Por otro lado, los valores estadísticos (E values) asociados a las secuencias encontradas son cercanos a 0, por lo que tenemos confianza de que las coincidencias no se deben al azar. 