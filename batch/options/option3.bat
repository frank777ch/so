@echo off
:inicio
cls
echo Moviendo estos archivos ...
echo.
echo Origen: [%CD%]
echo.
dir /b
echo ===============================================================
set /p %path%=Destino: 
echo ===============================================================
:verificarpath
if exist "%path%\" (
	echo "%path%"
	copy * "%path%" /y
	echo archivos copiados
	goto fin
) else if exist "%path%" (
	echo "es un archivo"
	choice /c SN /m "¿Reingresar ruta? (S/N)"
	goto comprobarReingresarRuta
) else (
	echo "no existe la ruta"
	choice /c SN /m "¿Reingresar ruta? (S/N)"
	goto comprobarReingresarRuta
)
:comprobarReingresarRuta
if %errorlevel%==1 (
	goto inicio
) else if %errorlevel%==2 (
	goto fin
) else (
	goto verificarpath
)
:fin
