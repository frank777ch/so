:: Ocultar todos los comandos
:: @ -> para ocultar el primer echo off
@echo off

:: Cambiar a UTF-8
chcp 65001 >nul

:: Desmodularización de menu.bat

:: Mensaje de bievenida y presentación del menu de opciones
:: echo . -> para hacer un espacio

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
echo                ║ creación de un menú de opciones para manejar archivos.                       ║
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
echo                ║      6     ║ Agrupar archivos del directorio según su tipo                   ║
echo                ╠════════════╬═════════════════════════════════════════════════════════════════╣
echo                ║      0     ║ Salir del programa                                              ║
echo                ╠════════════╩═════════════════════════════════════════════════════════════════╣
echo                ║                                                                              ║
echo                ║                  SELCCIONE UNA OPCIÓN PARA CONTINUAR...                      ║
echo                ║                                                                              ║
echo                ╚══════════════════════════════════════════════════════════════════════════════╝
echo.

:: MainOpt -> Variable para la opcion del menu principal
:: set/p -> Asignar valor a la variable

set /p "MainOpt=‎               INGRESE SU OPCIÓN AQUÍ: "

:: Limpiar pantalla

cls

:: Condición ir a option1.bat

if %MainOpt%==1 goto Opt1

:: Condición ir a option2.bat

if %MainOpt%==2 goto Opt2

:: Condición ir a option3.bat

if %MainOpt%==3 goto Opt3

:: Condición ir a option4.bat

if %MainOpt%==4 goto Opt4

:: Condición ir a option5.bat

if %MainOpt%==5 goto Opt5

:: Condición ir a option6.bat

if %MainOpt%==6 goto Opt6

:: Condición ir a option0.bat

if %MainOpt%==0 goto Opt0

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

:Opt1

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
goto MainMenu

:: Fin

:Opt2

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
if %FinOpt2%==1 goto MainMenu

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
goto Opt2

:ChangeDirect

echo.
echo.
echo.
set /p "ruta=‎               INGRESE LA RUTA AL CUAL DESEA DIRIGIRSE: "

if exist "%ruta%" (

    cd /d "%ruta%"
    goto SuccessDir

) else (
    goto FailDir
)

:: Limpiar pantalla
cls

:FailDir

:: Mensaje en caso de ruta inválida
echo.
echo.
echo.
echo                ╔══════════╦═══════════════════════════════════════════╗
echo                ║  __  __  ║             RUTA NO ENCONTRADA            ║ 
echo                ║  \ \/ /  ╠═══════════════════════════════════════════╣
echo                ║   \  /   ║ Ha colocado una ruta inválida. Por favor  ║
echo                ║   /  \   ║ vuelva a escribir otra ruta que sí exista ║
echo                ║  /_/\_\  ║ Pulse cualquier tecla para continuar.     ║
echo                ╚══════════╩═══════════════════════════════════════════╝
echo.

:: Poner en pausa la ejecución de comandos del archivo hasta pulsar cualquier tecla
:: ">nul" -> ocultar texto que sale por defecto
pause>nul

:: Limpiar pantalla
cls

:: Primero debe presionar cualquier tecla para continuar
:: Luego se le redirige al menú principal
goto ChangeDirect

:SuccessDir

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
goto MainMenu

:: Fin

:Opt3

:Opt4

:Opt5

:Opt6

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
if %FinOpt6%==0 goto ChangeDirect6

:: Condición realizar agrupación
if %FinOpt6%==1 goto Group

:: Condición salir al menú principal
if %FinOpt6%==2 goto MainMenu

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
goto Opt6

:Group

echo hola

pause

goto MainMenu

:ChangeDirect6

echo.
echo.
echo.
set /p "ruta=‎               INGRESE LA RUTA AL CUAL DESEA DIRIGIRSE: "

cd /d "%ruta%"

cls

goto Opt6

:: Fin

:Opt0

:: Inicio

echo.
echo.
echo.
echo                ╔═════════════════════════════════╗    
echo                ║ ¿ESTÁ SEGURO QUE QUIERE SALIR?  ║    
echo                ╠═══════════╦════╦═══════════╦════╣    
echo                ║     0     ║ Sí ║     1     ║ No ║    
echo                ╚═══════════╩════╩═══════════╩════╝    
echo.

:: FinOpt -> Variable para la opcion del menú principal
:: set/p -> Asignar valor a la variable

set /p "FinOpt=‎               INGRESE SU OPCIÓN: "

:: Limpiar pantalla
cls

:: Condición afirmación de salida
if %FinOpt%==0 exit

:: Condición regresar al menú principal
if %FinOpt%==1 goto MainMenu

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

goto Opt0

:: Fin