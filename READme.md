# Proyecto: Menú de Opciones para Manejo de Archivos

## Descripción del Proyecto

Este proyecto es un script interactivo desarrollado en **Batch Scripting** para sistemas operativos Windows, que ofrece un menú de opciones para gestionar archivos y directorios. Fue creado como parte del curso de **Sistemas Operativos**, a cargo del profesor Jaime Pariona.

### Funcionalidades
El programa ofrece las siguientes funcionalidades:
1. **Mostrar listado de archivos**: Visualiza todos los archivos dentro del directorio actual.
2. **Cambiar de directorio**: Permite cambiar la ubicación del directorio actual.
3. **Copiar archivos**: Copia un archivo del directorio actual a otra ubicación.
4. **Renombrar archivos**: Cambia el nombre de un archivo dentro del directorio actual.
5. **Comprimir archivos**: Comprime los archivos del directorio actual en un archivo `.rar`.
6. **Agrupar archivos por tipo**: Organiza los archivos en carpetas separadas según su tipo.
7. **Salir del programa**: Finaliza la ejecución del script.

---

## Requisitos Previos

Antes de ejecutar el programa, asegúrate de cumplir con los siguientes requisitos:

### 1. **Desactivar el control de acceso a la carpeta**
El control de acceso a la carpeta debe estar desactivado para que el programa pueda realizar operaciones como mover, renombrar o comprimir archivos. Sigue estos pasos para desactivarlo:
1. Ve a **Configuración de Windows**.
2. Navega a **Actualización y seguridad** > **Seguridad de Windows** > **Protección contra virus y amenazas**.
3. Haz clic en **Administrar la protección contra ransomware**.
4. Desactiva la opción **Controlar el acceso a la carpeta**.

![Protección contra ransomware](.\img\control.png) <!-- Cambia "ruta-a-la-imagen.png" por la ubicación real si subes esta imagen -->

### 2. **Agregar WinRAR al PATH de las Variables de Entorno**
El programa requiere que WinRAR esté configurado en las variables de entorno para utilizar sus funciones de compresión. Sigue estos pasos para configurarlo:
1. **Localiza la ruta de instalación de WinRAR**:
   - Por defecto, se encuentra en:
     ```
     C:\Program Files\WinRAR
     ```
2. **Accede a las Variables de Entorno**:
   - Haz clic derecho en **Este equipo** (o **Mi PC**) y selecciona **Propiedades**.
   - Haz clic en **Configuración avanzada del sistema** > **Variables de entorno**.
3. **Edita la variable `PATH`**:
   - Busca la variable `Path` en **Variables del sistema** y haz clic en **Editar**.
   - Haz clic en **Nuevo** y agrega la ruta de instalación de WinRAR (por ejemplo, `C:\Program Files\WinRAR`).
4. **Guarda los cambios**:
   - Haz clic en **Aceptar** en todas las ventanas.

### 3. **Permisos de administrador**
Algunas funcionalidades pueden requerir permisos de administrador para ejecutarse correctamente. Asegúrate de ejecutar el script como administrador.

---

## Cómo Ejecutar el Programa

1. Descarga o clona este repositorio en tu máquina local.
2. Asegúrate de haber cumplido con los requisitos previos.
3. Abre una ventana de **Símbolo del sistema (CMD)**.
4. Navega hasta el directorio donde está ubicado el archivo del script.
5. Ejecuta el archivo escribiendo:
   ```cmd
   menu.bat
