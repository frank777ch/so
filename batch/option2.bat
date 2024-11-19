@echo off

:: Cambiar a UTF-8
chcp 65001 > nul

:Opt2Menu

:: Mostrar encabezado
echo                ╔══════════════════════════════╗
echo                ║ Cambiar de Directorio actual ║
echo                ╚══════════════════════════════╝
echo.
echo                 %cd%
echo.
echo.
echo                 Ejemplo: C:\Users\Usuario
echo.
echo.
echo.


set /p "ruta=‎               INGRESE LA RUTA AL CUAL DESEA DIRIGIRSE: "

:: Limpiar pantalla
cls

cd /d "%ruta%"

echo                ╔══════════════════════════════╗
echo                ║ Directorio actual            ║
echo                ╚══════════════════════════════╝
echo.
echo                %cd%
echo.

:Opt1Menu

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
:: Luego se le redirige a la opción 2
goto Opt2Menu