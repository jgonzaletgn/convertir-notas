# convertir-notas
Aplicación en consola para convertir todas las notas de un directorio, desde Markdown (.md) a Word (.docx) utilizando una plantilla de Word definida por el usuario, apoyándose en Pandoc

https://github.com/jgm/pandoc

* Es necesario tener instalado pandoc en el equipo.

La instrucción de pandoc que realiza ``convertir_notas.bat`` es la siguiente:

```
for %%i in (*.md) do pandoc --reference-doc plantilla.docx -o %%~ni.docx %%~ni.md
```

Realiza un bucle for en la carpeta donde se encuentre el archivo ``convertir_notas.bat`` convirtiendo cada archivo ``.md`` que encuentre a ``.docx``, utilizando el archivo ``pantilla.docx`` definido por el usuario, el cual debe encontrarse en la misma carpeta que ``convertir_notas.bat``.

El archivo ``pantilla.docx`` puede personalizarse añadiendo encabezados o pies de página propios, como logotipos, imágenes, numeración de páginas. 

Al convertir de ``.md`` a ``.docx``, se toma el estilo de títulos, subtitulos, tablas, etc utilizado en el archivo de plantilla.
