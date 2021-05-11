# Ejercicio 4

## Requisitos

-   Tener instalado Perl
-   Tener instalado Bio::SeqIO, Bio::DB::GenPept y Bio::SearchIO, para eso

```bash
    cpanm Bio::SeqIO
```

```bash
    cpanm Bio::DB::GenPept
```

```bash
    cpanm Bio::DB::SearchIO
```

## Proceso

-   Tomamos el archivo blast generado en el **Ejercicio 2** llamado `myblast.report`
-   Ejecutamos el script con el siguiente comando:

```
   perl Ex4.pm ARG0 ARG1
```

-   Siendo el **ARG0** el reporte mencionado anteriormente y **ARG1** el patrón a buscar en la descripción del archivo.

-   Quedando el archivo a ejecutar 

```
   perl Ex4.pm myblast.report sapiens
```

-   Como resultado se obtendrán las distintas secuencias pertenecientes a los hits (las mismas se guardarán en la misma carpeta desde donde se ejecutó el archivo)