:: Ocultar todos los comandos
:: @ -> para ocultar el primer echo off
@echo off

:: Cambiar a UTF-8
chcp 65001 >nul

:: Mensaje de bievenida y presentación del menu de opciones
:: echo . -> para hacer un espacio

:: :MainMenu -> etiqueta menú principal

:MainMenu
echo.
echo.
echo.
echo                ╔══════════════════════════════════════════════════════════════════════════════╗
echo                ║ ██████╗ ██╗███████╗███╗   ██╗██╗   ██╗███████╗███╗   ██╗██╗██████╗  ██████╗  ║
echo                ║ ██╔══██╗██║██╔════╝████╗  ██║██║   ██║██╔════╝████╗  ██║██║██╔══██╗██╔═══██╗ ║
echo                ║ ██████╔╝██║█████╗  ██╔██╗ ██║██║   ██║█████╗  ██╔██╗ ██║██║██║  ██║██║   ██║ ║
echo                ║ ██╔══██╗██║██╔══╝  ██║╚██╗██║╚██╗ ██╔╝██╔══╝  ██║╚██╗██║██║██║  ██║██║   ██║ ║
echo                ║ ██████╔╝██║███████╗██║ ╚████║ ╚████╔╝ ███████╗██║ ╚████║██║██████╔╝╚██████╔╝ ║
echo                ║ ╚═════╝ ╚═╝╚══════╝╚═╝  ╚═══╝  ╚═══╝  ╚══════╝╚═╝  ╚═══╝╚═╝╚═════╝  ╚═════╝  ║
echo                ╠══════════════════════════════════════════════════════════════════════════════╣
echo                ║ Este programa fue desarrollado como parte de un trabajo grupal para el curso ║
echo                ║ de Sistemas Operativos a cargo del profesor Jaime Pariona que consiste en la ║
echo                ║ creación de un menú de opciones para manejar archivos                        ║
echo                ╠═══════════╦══════════════════════════════════════════════════════════════════╣
echo                ║   Grupo   ║ Integrantes                                                      ║
echo                ╠═══════════╬══════════════════════════════════════════════════════════════════╣
echo                ║           ║ Frank Kevin Condor Huarhuachi                                    ║
echo                ║     8     ║ Vilberto Alberto Patricio Julca                                  ║
echo                ║           ║ Pedro Josue Sota Rios                                            ║
echo                ║           ║ Luiz Ignacio Quineche Casana                                     ║
echo                ╠═══════════╩══════════════════════════════════════════════════════════════════╣
echo                ║██████████████████████████████████████████████████████████████████████████████║
echo                ║██████████████████████████─▀█▀─█─▄▄▄█─▀██─█─██─███████████████████████████████║
echo                ║██████████████████████████─█▄█─█─▄███─█▄▀─█─██─███████████████████████████████║
echo                ║██████████████████████████▄███▄█▄▄▄▄█▄███▄█▄▄▄▄███████████████████████████████║
echo                ║██████████████████████████████████████████████████████████████████████████████║
echo                ╠════════════╦═════════════════════════════════════════════════════════════════╣
echo                ║   Opción   ║ Descripción                                                     ║
echo                ╠════════════╬═════════════════════════════════════════════════════════════════╣
echo                ║      1     ║ Mostrar listado de archivos dentro del directorio               ║
echo                ╠════════════╬═════════════════════════════════════════════════════════════════╣
echo                ║      2     ║ Cambiar de directorio actual                                    ║
echo                ╠════════════╬═════════════════════════════════════════════════════════════════╣
echo                ║      3     ║ Copiar archivo del directorio actual a otro directorio          ║
echo                ╠════════════╬═════════════════════════════════════════════════════════════════╣
echo                ║      4     ║ Renombrar archivo del directorio actual                         ║
echo                ╠════════════╬═════════════════════════════════════════════════════════════════╣
echo                ║      5     ║                                                                 ║
echo                ╠════════════╬═════════════════════════════════════════════════════════════════╣
echo                ║      6     ║                                                                 ║
echo                ╠════════════╬═════════════════════════════════════════════════════════════════╣
echo                ║      0     ║ Salir del programa                                              ║
echo                ╠════════════╩═════════════════════════════════════════════════════════════════╣
echo                ║                                                                              ║
echo                ║                  SELCCIONE UNA OPCIÓN PARA CONTINUAR...                      ║
echo                ║                                                                              ║
echo                ╚══════════════════════════════════════════════════════════════════════════════╝
echo.

:: Poner en pausa la ejecución de comandos del archivo hasta pulsar cualquier tecla
:: ">nul" -> ocultar texto que sale por defecto
:: pause>nul
:: No es necesario lo de arriba

:: MainOpt -> Variable para la opcion del menu principal
:: set/p -> Asignar valor a la variable
set /p "MainOpt=‎               INGRESE SU OPCIÓN AQUÍ: "
:: Limpiar pantalla
cls

:: Condición ir a Opt1
if %MainOpt%==1 goto Opt1Menu

:: Condición ir a Opt2
if %MainOpt%==2 goto Opt2Menu

:: Condición ir a Opt3
if %MainOpt%==3 goto Opt3Menu

:: Condición ir a Opt4
if %MainOpt%==4 goto Opt4Menu

:: Condición ir a Opt5
if %MainOpt%==5 goto Opt5Menu

:: Condición ir a Opt6
if %MainOpt%==6 goto Opt6Menu

:: Condición ir a Opt0Menu
if %MainOpt%==0 goto Opt0Menu

:: Mensaje en caso de opción inválida
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
goto MainMenu

:: Submenús para las opciones

:Opt1Menu

:: Mostrar encabezado
echo                ╔═══════════════════╗
echo                ║ Directorio actual ║        
echo                ╚═══════════════════╝
echo.
echo                 %cd%
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

:: Poner en pausa la ejecución de comandos del archivo hasta pulsar cualquier tecla
:: ">nul" -> ocultar texto que sale por defecto
pause>nul

:: Limpiar pantalla
cls

:: Primero debe presionar cualquier tecla para continuar
:: Luego se le redirige al menú principal
goto MainMenu

:Opt2Menu

:: Mostrar encabezado
echo                ╔══════════════════════════════╗
echo                ║ Cambiar el Directorio actual ║
echo                ╚══════════════════════════════╝
echo.
echo                 %cd%
echo.



set /p "ruta=‎               INGRESE LA RUTA AL CUAL DESEA DIRIGIRSE: "
:: Limpiar pantalla
cls

cd /d "%ruta%"

goto Opt1Menu

:: Poner en pausa la ejecución de comandos del archivo hasta pulsar cualquier tecla
:: ">nul" -> ocultar texto que sale por defecto
pause>nul

:: Limpiar pantalla
cls

:: Primero debe presionar cualquier tecla para continuar
:: Luego se le redirige al menú principal
goto MainMenu

:Opt3Menu
echo.
echo Escogiste la opción 3

:: Poner en pausa la ejecución de comandos del archivo hasta pulsar cualquier tecla
:: ">nul" -> ocultar texto que sale por defecto
pause>nul

:: Limpiar pantalla
cls

:: Primero debe presionar cualquier tecla para continuar
:: Luego se le redirige al menú principal
goto MainMenu

:Opt4Menu
echo.
echo Escogiste la opción 4

:: Poner en pausa la ejecución de comandos del archivo hasta pulsar cualquier tecla
:: ">nul" -> ocultar texto que sale por defecto
pause>nul

:: Limpiar pantalla
cls

:: Primero debe presionar cualquier tecla para continuar
:: Luego se le redirige al menú principal
goto MainMenu

:Opt5Menu
echo.
echo Escogiste la opción 5

:: Poner en pausa la ejecución de comandos del archivo hasta pulsar cualquier tecla
:: ">nul" -> ocultar texto que sale por defecto
pause>nul

:: Limpiar pantalla
cls

:: Primero debe presionar cualquier tecla para continuar
:: Luego se le redirige al menú principal
goto MainMenu

:Opt6Menu
echo.
echo Escogiste la opción 6

:: Poner en pausa la ejecución de comandos del archivo hasta pulsar cualquier tecla
:: ">nul" -> ocultar texto que sale por defecto
pause>nul

:: Limpiar pantalla
cls

:: Primero debe presionar cualquier tecla para continuar
:: Luego se le redirige al menú principal
goto MainMenu

:: Submenú para salir del programa
:Opt0Menu
echo.
echo.
echo.
echo                ╔═════════════════════════════════╗    
echo                ║ ¿ESTÁ SEGURO QUE QUIERE SALIR?  ║    
echo                ╠═══════════╦════╦═══════════╦════╣    
echo                ║     0     ║ Sí ║     1     ║ No ║    
echo                ╚═══════════╩════╩═══════════╩════╝    
echo.
          
:: Poner en pausa la ejecución de comandos del archivo hasta pulsar cualquier tecla
:: ">nul" -> ocultar texto que sale por defecto
pause>nul

:: FinOpt -> Variable para la opcion del menú principal
:: set/p -> Asignar valor a la variable
set/p FinOpt=

:: Limpiar pantalla
cls

:: Observación: Las etiquetas no deben ir entre las sentencias if.
:: INCORRECTO           ║       CORRECTO
:: if ***** goto x      ║       if ***** goto x
:: :x                   ║       if ***** goto y
:: echo ****            ║       :x
:: if ***** goto y      ║       echo ****
:: :y                   ║       :y
:: echo ****            ║       echo ****

:: Condición afirmación de salida
if %FinOpt%==0 goto Salida
:: Alternativa sin etiqueta -> if %FinOpt%==0 exit

:: Condición regresar al menú principal
if %FinOpt%==1 goto MainMenu

:: Mensaje en caso de opción inválida
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
goto Opt0Menu

:: Salir del archivo
:Salida
exit