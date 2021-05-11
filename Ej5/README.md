# Ejercicio 5

## Requisitos

-   Tener instalado Bio::SeqIO, Bio::Factory::EMBOSS ,Bio::Tools::Run::WrapperBase, para eso

```bash
    cpanm Bio::SeqIO
```

```bash
    cpanm Bio::Factory::EMBOSS
```

```bash
    cpanm Bio::Tools::Run::WrapperBase
```

-   Tener descargado la secuencia de nucleotidos en formato FASTA del **Ejercicio 1** `secuencia.gb`
-   Tener descargado la base de datos [Prosite.dat](https://ftp.expasy.org/databases/prosite/prosite.dat) y [Prosite.doc](https://ftp.expasy.org/databases/prosite/prosite.doc)

## Instrucciones
-   Ejecutar

```
    sudo prosextract
```
-   Con el objetivo de extraer la base de datos en el EMBOSS data.
-   Ejecutar
```
    perl ex5.pl
```
-   Tras su ejecución se generará el archivo `Ex5-ResultadoORF` y `Ex5-Resultado.patmatmotifs`.

-   El archivo patmatmotifs contendrá los distintos hits obtenidos con la longitud de los mismos.
