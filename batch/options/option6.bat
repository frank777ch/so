:: Ocultar todos los comandos
:: @ -> para ocultar el primer echo off
@echo off

:: Cambiar a UTF-8
chcp 65001 >nul

:: VISTA PREVIA - Sección vista de la ruta del directorio actual

::                  ╔═══════════════════════════════════════════════════════════════════════════════════════════╗
::                  ║ Tu DIRECTORIO ACTUAL es                                                                   ║
::                  ╠═══════════════════════════════════════════════════════════════════════════════════════════╣
::                  ║ c:\Users\kevin\Documents\GitHub\so\batch                                                  ║
::                  ╚═══════════════════════════════════════════════════════════════════════════════════════════╝


:: VISTA PREVIA - Sección vista de los archivos dentro del directorio actual

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

:: VISTA PREVIA - Sección vista de confirmación de agrupación de archivos

::                  ╔═════════════╦═══════════════╦═══════════════╦═══════════════╗    
::                  ║    Opción   ║       0       ║       1       ║       2       ║
::                  ╠═════════════╬═══════════════╬═══════════════╬═══════════════╣   
::                  ║             ║               ║               ║               ║
::                  ║ Descripción ║  Cambiar de   ║  Realizar     ║ Salir al menú ║
::                  ║             ║  directorio   ║  agrupación   ║ principal     ║
::                  ║             ║               ║               ║               ║
::                  ╚═════════════╩═══════════════╩═══════════════╩═══════════════╝

::                  INGRESE SU OPCIÓN: 0

::

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

echo                ╔═════════════╦═══════════════╦═══════════════╦═══════════════╗    
echo                ║    Opción   ║       0       ║       1       ║       2       ║
echo                ╠═════════════╬═══════════════╬═══════════════╬═══════════════╣   
echo                ║             ║               ║               ║               ║
echo                ║ Descripción ║  Cambiar de   ║  Realizar     ║ Salir al menú ║
echo                ║             ║  directorio   ║  agrupación   ║ principal     ║
echo                ║             ║               ║               ║               ║
echo                ╚═════════════╩═══════════════╩═══════════════╩═══════════════╝
echo.

:: FinOpt6 -> Variable para la opcion del menú principal
:: set/p -> Asignar valor a la variable

set /p "FinOpt6=‎               INGRESE SU OPCIÓN: "

:: Limpiar pantalla
cls

:: Condición cambiar de directorio
if %FinOpt6%==0 goto ChangeDirect

:: Condición realizar agrupación
if %FinOpt6%==1 goto Group

:: Condición salir al menú principal
if %FinOpt6%==2 call menu.bat

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
call option6.bat

:Group

echo hola

pause

call menu.bat

:ChangeDirect

echo.
echo.
echo.
set /p "ruta=‎               INGRESE LA RUTA AL CUAL DESEA DIRIGIRSE: "

cd /d "%ruta%"

call option6.bat
:: Fin