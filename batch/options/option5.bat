@echo off

chcp 65001 > nul

:: VISTA PREVIA - Sección vista de la ruta del directorio actual

::                ╔═══════════════════════════════════════════════════════════════════════════════════════════╗
::                ║ Tu DIRECTORIO ACTUAL es                                                                   ║
::                ╠═══════════════════════════════════════════════════════════════════════════════════════════╣
::                ║ c:\Users\kevin\Documents\GitHub\so\batch                                                  ║
::                ╚═══════════════════════════════════════════════════════════════════════════════════════════╝


echo.
echo.
echo.
echo                ╔═══════════════════════════════════════════════════════════════════════════════════════════╗
echo                ║ Directorio actual                                                                         ║        
echo                ╠═══════════════════════════════════════════════════════════════════════════════════════════╣

setlocal enabledelayedexpansion

:: Obtener el directorio actual
set "directorio=%cd%"

:: Calcular el espacio restante para completar la línea
set "spaces=                                                                                      "
set /a totalWidth=90
for /l %%I in (0,1,1000) do (
    if "!directorio:~%%I,1!"=="" (
        set /a textWidth=%%I
        goto DoneCalculating
    )
)

:DoneCalculating
set /a remainingWidth=totalWidth - textWidth

:: Si el directorio es demasiado largo, recórtalo
if %remainingWidth% lss 0 (
    set "paddedDirectorio=!directorio:~0,%totalWidth%!"
    set "remainingWidth=0"
) else (
    set "paddedDirectorio=%directorio%"
)

:: Rellenar con espacios para completar la línea si es necesario
set "dynamicSpaces=!spaces:~0,%remainingWidth%!"

:: Mostrar el directorio ajustado con el borde derecho
echo                ║ !paddedDirectorio!!dynamicSpaces!║

endlocal

echo                ╚═══════════════════════════════════════════════════════════════════════════════════════════╝
echo.

echo                ╔═══════════════════════════════════════════════════════════════════════════════════════════╗
echo                ║                             CONTENIDO DEL DIRECTORIO                                      ║
echo                ╠═════════════════════╦═══════════════════╦═════════════════════════════════════════════════╣
echo                ║      FECHA          ║       TAMAÑO      ║              NOMBRE                             ║
echo                ╠═════════════════════╬═══════════════════╬═════════════════════════════════════════════════╣

:: Mostrar detalles de archivos y carpetas con formato fijo
setlocal enabledelayedexpansion
for /f "tokens=1,2,3*" %%A in ('dir /a:-d /o:d ^| findstr /r "^[0-9]"') do (
    set "fecha=%%A %%B"
    set "tamano=%%C"
    set "nombre=%%D"

    :: Formatear columnas con longitud fija manualmente
    set "paddedFecha=!fecha!                    "
    set "paddedTamano=!tamano!                  "
    set "paddedNombre=!nombre!                                          "

    set "paddedFecha=!paddedFecha:~0,20!"
    set "paddedTamano=!paddedTamano:~0,18!"
    set "paddedNombre=!paddedNombre:~0,48!"

    echo                ║ !paddedFecha!║ !paddedTamano!║ !paddedNombre!║
)
endlocal

echo                ╚═════════════════════╩═══════════════════╩═════════════════════════════════════════════════╝
echo.

:: Poner en pausa la ejecución de comandos del archivo hasta pulsar cualquier tecla
:: ">nul" -> ocultar texto que sale por defecto

echo                Comprimir archivos del directorio en .RAR
echo.
set /p "NombreRAR=‎              INGRESE EL NOMBRE QUE TENDRÁ EL ARCHIVO: "


winrar a "%NombreRAR%.rar" *

cls


echo                ╔═══════════════════════════════════════════════════════════════════════════════════════════╗
echo                ║                             CONTENIDO DEL DIRECTORIO                                      ║
echo                ╠═════════════════════╦═══════════════════╦═════════════════════════════════════════════════╣
echo                ║      FECHA          ║       TAMAÑO      ║              NOMBRE                             ║
echo                ╠═════════════════════╬═══════════════════╬═════════════════════════════════════════════════╣

:: Mostrar detalles de archivos y carpetas con formato fijo
setlocal enabledelayedexpansion
for /f "tokens=1,2,3*" %%A in ('dir /a:-d /o:d ^| findstr /r "^[0-9]"') do (
    set "fecha=%%A %%B"
    set "tamano=%%C"
    set "nombre=%%D"

    :: Formatear columnas con longitud fija manualmente
    set "paddedFecha=!fecha!                    "
    set "paddedTamano=!tamano!                  "
    set "paddedNombre=!nombre!                                          "

    set "paddedFecha=!paddedFecha:~0,20!"
    set "paddedTamano=!paddedTamano:~0,18!"
    set "paddedNombre=!paddedNombre:~0,48!"

    echo                ║ !paddedFecha!║ !paddedTamano!║ !paddedNombre!║
)
endlocal

echo                ╚═════════════════════╩═══════════════════╩═════════════════════════════════════════════════╝
echo.
echo                ------------------- PRESIONE CUALQUIER TECLA PARA IR AL MENÚ PRINCIPAL ----------------------

pause>nul

:: Limpiar pantalla
cls