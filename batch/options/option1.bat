:: Ocultar todos los comandos
:: @ -> para ocultar el primer echo off
@echo off

:: Cambiar a UTF-8
chcp 65001 >nul

:: VISTA PREVIA - Sección vista de la ruta del directorio actual

:: Ejemplo

::                  ╔═══════════════════════════════════════════════════════════════════════════════════════════╗
::                  ║ Directorio actual                                                                         ║
::                  ╠═══════════════════════════════════════════════════════════════════════════════════════════╣
::                  ║ c:\Users\kevin\Documents\GitHub\so\batch                                                  ║
::                  ╚═══════════════════════════════════════════════════════════════════════════════════════════╝

:: Otro ejemplo (reajuste automatico)

::                  ╔═══════════════════════════════════════════════════════════════════════════════════════════╗
::                  ║ Directorio actual                                                                         ║
::                  ╠═══════════════════════════════════════════════════════════════════════════════════════════╣
::                  ║ c:\Users\kevin\Documents\GitHub\so\batch\holaaaaaaaaaaaaaaaa                              ║
::                  ╚═══════════════════════════════════════════════════════════════════════════════════════════╝

:: VISTA PREVIA - Sección vista de los archivos dentro del directorio actual
::
::                  ╔═══════════════════════════════════════════════════════════════════════════════════════════╗
::                  ║                             CONTENIDO DEL DIRECTORIO                                      ║
::                  ╠═════════════════════╦═══════════════════╦═════════════════════════════════════════════════╣
::                  ║      FECHA          ║       TAMAÑO      ║              NOMBRE                             ║
::                  ╠═════════════════════╬═══════════════════╬═════════════════════════════════════════════════╣
::                  ║ 18/11/2024 17:39    ║ 0                 ║ prueba1.txt                                     ║
::                  ║ 18/11/2024 17:39    ║ 0                 ║ prueba2.txt                                     ║
::                  ║ 18/11/2024 21:54    ║ 0                 ║ hola.txt                                        ║
::                  ║ 18/11/2024 22:00    ║ 2,540             ║ prueba.bat                                      ║
::                  ║ 19/11/2024 06:27    ║ 3,423             ║ option2.bat                                     ║
::                  ║ 19/11/2024 09:33    ║ 26,280            ║ menu.bat                                        ║
::                  ╚═════════════════════╩═══════════════════╩═════════════════════════════════════════════════╝

:: Inicio

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
echo                ------------------- PRESIONE CUALQUIER TECLA PARA IR AL MENÚ PRINCIPAL ----------------------

:: Poner en pausa la ejecución de comandos del archivo hasta pulsar cualquier tecla
:: ">nul" -> ocultar texto que sale por defecto
pause>nul

:: Limpiar pantalla
cls

:: Primero debe presionar cualquier tecla para continuar
:: Luego se le redirige al menú principal
call "..\menu.bat"

:: Fin
