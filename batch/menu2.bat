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
echo                ║      5     ║ Comprimir archivos del directorio actual                        ║
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
    set "paddedNombre=!nombre!                                                "

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

cls

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

@echo off
:inicio
cls
echo Moviendo estos archivos ...
echo.
echo Origen: [%CD%]
echo.
dir /b
echo ===============================================================
set /p path=Destino: 
echo ===============================================================

:verificarpath
if exist "%path%\" (
    echo "Es una carpeta válida"
    copy * "%path%" /y
    echo "Archivos copiados correctamente."
    goto fin
) else if exist "%path%" (
    echo "Es un archivo, no un directorio"
    choice /c SN /m "¿Reingresar ruta? (S/N)"
    goto comprobarReingresarRuta
) else (
    echo "No existe la ruta"
    choice /c SN /m "¿Reingresar ruta? (S/N)"
    goto comprobarReingresarRuta
)

:comprobarReingresarRuta
if %errorlevel%==1 (
    goto inicio
) else (
    echo "Finalizando el programa..."
    goto fin
)

:fin
echo.
echo ===============================================================
echo "Proceso terminado. ¡Gracias por usar el programa!"
pause>nul

goto MainMenu

:Opt4

:: Mensaje inicial para la opción 4
echo.
echo                ╔══════════════════════════════════════════════════════════════════════════╗
echo                ║                          OPCIÓN 4: RENOMBRAR ARCHIVO                     ║
echo                ╚══════════════════════════════════════════════════════════════════════════╝
echo.

:: Solicitar el nombre del archivo a renombrar
set /p "OldFileName=‎‎                Ingrese el nombre del archivo a renombrar (con extensión): "

:: Verificar si el archivo existe en el directorio actual
if not exist "%OldFileName%" (
    echo.
    echo                ╔══════════════════════════════════════════════════════════════════════╗
    echo                ║             ERROR: El archivo no existe en el directorio actual.     ║
    echo                ╚══════════════════════════════════════════════════════════════════════╝
    echo.
    pause>nul
    cls
    goto Opt4
)

:: Solicitar el nuevo nombre para el archivo
set /p "NewFileName=‎‎                Ingrese el nuevo nombre para el archivo (con extensión): "

:: Renombrar el archivo
ren "%OldFileName%" "%NewFileName%"
if errorlevel 1 (
    echo.
    echo                ╔══════════════════════════════════════════════════════════════════════╗
    echo                ║             ERROR: No se pudo renombrar el archivo.                 ║
    echo                ╚══════════════════════════════════════════════════════════════════════╝
    echo.
    pause>nul
    cls
    exit /b
)

:: Confirmar que el archivo fue renombrado exitosamente
echo.
echo                ╔════════════════════════════════════════════════════════════════════════╗
echo                ║        ÉXITO: El archivo ha sido renombrado correctamente.             ║
echo                ╚════════════════════════════════════════════════════════════════════════╝
echo.

:: Pausa para que el usuario vea el mensaje
pause>nul

:: Regresar al menú principal
goto MainMenu

:Opt5

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
echo                ------------------- PRESIONE CUALQUIER TECLA PARA IR AL MENÚ ANTERIOR -----------------------

pause>nul

:: Limpiar pantalla
cls

goto MainMenu

:: Fin

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

:: Obtener el nombre del directorio actual
for %%A in (.) do set "nombreActual=%%~nxA"

:: Obtener el nombre del directorio padre
for %%A in (..) do set "nombrePadre=%%~nxA"

echo                ╔═══════════════════════════════════════════════════════════════════════════════════════════╗
echo                ║                             CONTENIDO DEL DIRECTORIO                                      ║
echo                ╠═════════════════════╦═══════════════════╦═════════════════════════════════════════════════╣
echo                ║      FECHA          ║       TAMAÑO      ║              NOMBRE                             ║
echo                ╠═════════════════════╬═══════════════════╬═════════════════════════════════════════════════╣

:: Mostrar detalles de archivos y carpetas con formato fijo
setlocal enabledelayedexpansion
for /f "tokens=1,2,3*" %%A in ('dir /a /o:d ^| findstr /r "^[0-9]"') do (
    set "fecha=%%A %%B"
    set "tamano=%%C"
    set "nombre=%%D"

    if "%%C" == "<DIR>" (
        set "tamano=<DIR>"
    )

    if "%%D" == "." (
        set "nombre=!nombreActual! (Directorio actual)"
    )

    if "%%D" == ".." (
        set "nombre=!nombrePadre! (Directorio Padre)"
    )

    :: Formatear columnas con longitud fija manualmente
    set "paddedFecha=!fecha!                    "
    set "paddedTamano=!tamano!                  "
    set "paddedNombre=!nombre!                                               "

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

setlocal enabledelayedexpansion

echo                Acciones realizadas:

:: Recorrer todos los archivos del directorio actual
for %%A in (*) do (
    :: Obtener la extensión del archivo
    set "archivo=%%~nxA"
    set "extension=%%~xA"
    set "extension=!extension:~1!"

    if /i not "!archivo!"=="%~nx0" (

        if not exist "!extension!" (
            mkdir "!extension!"
            echo                Creada carpeta "!extension!"
        )

        move "%%A" "!extension!\"
        echo                Movido "!archivo!" a "!extension!\"
    )
)

echo                ----------------------------- AGRUPACIÓN REALIAZADA CON ÉXITO -------------------------------
echo                ----------------- PRESIONE CUALQUIER TECLA PARA VOLVER AL MENÚ ANTERIOR ---------------------

pause>nul

cls

goto Opt6

:ChangeDirect6

echo.
echo.
echo.
set /p "ruta=‎               INGRESE LA RUTA AL CUAL DESEA DIRIGIRSE: "

cls

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
goto ChangeDirect6

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
echo                ----------------- PRESIONE CUALQUIER TECLA PARA VOLVER AL MENÚ ANTERIOR ---------------------

pause>nul

:: Limpiar pantalla
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