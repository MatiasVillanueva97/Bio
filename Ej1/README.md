# Ejercicio 1

## Requisitos

-   Tener instalado Perl
-   Tener instalado Bio::SeqIO y Bio::PrimarySeq, para eso

```bash
    cpanm Bio::SeqIO
```

```bash
    cpanm Bio::PrimarySeq
```

## Proceso

-   Se descargó el gen a partir del cual se realizara el procesamiento para poder obtener la secuencia de aminoacidos ([Descarga](https://www.ncbi.nlm.nih.gov/nuccore/NM_001388492.1)).
-   Renombrar el archivo descargado como `secuencia.gb`
-   Una vez modificado el mismo , ejecutar el script con

```bash
    perl ex1.pl
```

-   Tras su ejecución se generará el archivo `protein.fas` en el cual se encontrarán las secuencias de proteinas.

## Conclusión

-   En base a la herramienta ORFfinder y revisando lo que se encuentra en la base de datos de NCBI, se llego a la conclusión, que para este gen en particular, el marco de lectura correcto es NM_001388492-1F.