:: Ocultar todos los comandos
:: @ -> para ocultar el primer echo off
@echo off

:: Cambiar a UTF-8
chcp 65001 >nul

:: Mensaje de bievenida y presentación del menu de opciones
:: echo . -> para hacer un espacio

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
echo                ║      6     ║                                                                 ║
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

if %MainOpt%==1 call "options\option1.bat"

:: Condición ir a option2.bat

if %MainOpt%==2 call "options\option2.bat"

:: Condición ir a option3.bat

if %MainOpt%==3 call "options\option3.bat"

:: Condición ir a option4.bat

if %MainOpt%==4 call "options\option4.bat"

:: Condición ir a option5.bat

if %MainOpt%==5 call "options\option5.bat"

:: Condición ir a option6.bat

if %MainOpt%==6 call "options\option6.bat"

:: Condición ir a option0.bat

if %MainOpt%==0 call "options\option0.bat"

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

call menu.bat