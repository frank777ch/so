@echo off

:: Cambiar a UTF-8
chcp 65001 > nul

:: VISTA PREVIA - Sección vista de la ruta del directorio actual

::                ╔═══════════════════════════════════════════════════════════════════════════════════════════╗
::                ║ Tu DIRECTORIO ACTUAL es                                                                   ║
::                ╠═══════════════════════════════════════════════════════════════════════════════════════════╣
::                ║ c:\Users\kevin\Documents\GitHub\so\batch                                                  ║
::                ╚═══════════════════════════════════════════════════════════════════════════════════════════╝

:: VISTA PREVIA - Sección vista de confirmación de cambio de directorio actual

::                ╔═════════════════════════════════╗    
::                ║ ¿QUIERE CAMBIAR DE DIRECTORIO?  ║    
::                ╠═══════════╦════╦═══════════╦════╣    
::                ║     0     ║ Sí ║     1     ║ No ║
::                ╚═══════════╩════╩═══════════╩════╝

::                INGRESE SU OPCIÓN: 0

:: VISTA PREVIA - Sección vista de entrada de nuevo directorio

::                INGRESE LA RUTA AL CUAL DESEA DIRIGIRSE: c:\User\kevin

:: VISTA PREVIA - Sección vista de salida del cambio realizado

::                ----------------------------- CAMBIO REALIZADO CON ÉXITO ------------------------------------
::
::                ╔═══════════════════════════════════════════════════════════════════════════════════════════╗
::                ║ Tu DIRECTORIO ACTUAL ahora es                                                             ║
::                ╠═══════════════════════════════════════════════════════════════════════════════════════════╣
::                ║ c:\Users\kevin\Documents\GitHub\so\batch                                                  ║
::                ╚═══════════════════════════════════════════════════════════════════════════════════════════╝

::                ------------------ PRESIONE CUALQUIER TECLA PARA IR AL MENÚ PRINCIPAL -----------------------

:: Inicio

echo.
echo.
echo.
echo                ╔═══════════════════════════════════════════════════════════════════════════════════════════╗
echo                ║ Tu DIRECTORIO ACTUAL es                                                                   ║        
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

echo                ╔═════════════════════════════════╗    
echo                ║ ¿QUIERE CAMBIAR DE DIRECTORIO?  ║    
echo                ╠═══════════╦════╦═══════════╦════╣    
echo                ║     0     ║ Sí ║     1     ║ No ║    
echo                ╚═══════════╩════╩═══════════╩════╝
echo.

:: FinOpt2 -> Variable para la opcion del menú principal
:: set/p -> Asignar valor a la variable
set /p "FinOpt2=‎               INGRESE SU OPCIÓN: "

:: Limpiar pantalla
cls

:: Condición afirmación de cambio
if %FinOpt2%==0 goto ChangeDirect

:: Condición regresar al menú principal
if %FinOpt2%==1 call "..\menu.bat"

:: Mensaje en caso de opción inválida
echo.
echo.
echo.
echo                ╔══════════╦═══════════════════════════════════════════╗
echo                ║  __  __  ║                OPCIÓN INVÁLIDA            ║ 
echo                ║  \ \/ /  ╠═══════════════════════════════════════════╣
echo                ║   \  /   ║ Ha escogido un opción inválida. Por favor ║
echo                ║   /  \   ║ vuelva a escribir otra opción que esté en ║
echo                ║  /_/\_\  ║ el menú.                                  ║
echo                ║          ║ Pulse cualquier tecla para continuar.     ║
echo                ╚══════════╩═══════════════════════════════════════════╝
echo.

:: Poner en pausa la ejecución de comandos del archivo hasta pulsar cualquier tecla
:: ">nul" -> ocultar texto que sale por defecto
pause>nul

:: Limpiar pantalla
cls

:: Primero debe presionar cualquier tecla para continuar
:: Luego se le redirige al menú principal
call option2.bat

:ChangeDirect

echo.
echo.
echo.
set /p "ruta=‎               INGRESE LA RUTA AL CUAL DESEA DIRIGIRSE: "

cd /d "%ruta%"

:: Limpiar pantalla
cls

echo.
echo.
echo.
echo                ----------------------------- CAMBIO REALIZADO CON ÉXITO ------------------------------------
echo.

echo                ╔═══════════════════════════════════════════════════════════════════════════════════════════╗
echo                ║ Tu DIRECTORIO ACTUAL ahora es                                                             ║        
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

echo                ------------------ PRESIONE CUALQUIER TECLA PARA IR AL MENÚ PRINCIPAL -----------------------

:: Poner en pausa la ejecución de comandos del archivo hasta pulsar cualquier tecla
:: ">nul" -> ocultar texto que sale por defecto
pause>nul

:: Limpiar pantalla
cls

:: Primero debe presionar cualquier tecla para continuar
:: Luego se le redirige al menú principal
call "..\menu.bat"

:: Fin