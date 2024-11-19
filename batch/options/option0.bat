:: Ocultar todos los comandos
:: @ -> para ocultar el primer echo off
@echo off

:: Cambiar a UTF-8
chcp 65001 >nul

:: VISTA PREVIA - Sección vista de la ruta del directorio actual

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

:: Observación: Las etiquetas no deben ir entre las sentencias if.
:: INCORRECTO           ║       CORRECTO
:: if ***** goto x      ║       if ***** goto x
:: :x                   ║       if ***** goto y
:: echo ****            ║       :x
:: if ***** goto y      ║       echo ****
:: :y                   ║       :y
:: echo ****            ║       echo ****

:: Condición afirmación de salida
if %FinOpt%==0 exit

:: Condición regresar al menú principal
if %FinOpt%==1 call "..\menu.bat"

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
call option0.bat

:: Fin