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

## Conclusiones