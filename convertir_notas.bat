REM Convierte todos los archivos del directorio
REM %%~ni devuleve el nombre de %%i, no su extension
for %%i in (*.md) do pandoc --reference-doc plantilla.docx -o %%~ni.docx %%~ni.md

