### Paso necesario: Agregar WinRAR al PATH

Si estás usando Windows, es necesario agregar la ruta de instalación de WinRAR al `PATH` de las variables de entorno para que funcione correctamente con este proyecto. Sigue estos pasos:

1. **Localiza la ruta de WinRAR**:
   - Por defecto, suele estar en:
     ```
     C:\Program Files\WinRAR
     ```
   - Si no lo encuentras allí, verifica la carpeta donde lo instalaste.

2. **Accede a las variables de entorno**:
   - Abre el menú **Inicio** y busca "Editar las variables de entorno del sistema".
   - Haz clic en **Variables de entorno**.

3. **Edita la variable `PATH`**:
   - En **Variables del sistema**, selecciona `Path` y haz clic en **Editar**.
   - Haz clic en **Nuevo** y añade la ruta donde se encuentra WinRAR (por ejemplo, `C:\Program Files\WinRAR`).
   - Guarda los cambios.

4. **Verifica la configuración**:
   - Abre una ventana de **Símbolo del sistema** y escribe:
     ```
     winrar
     ```
   - Si el comando funciona, WinRAR está correctamente configurado.

⚠️ **Nota:** Si usas una instalación portátil de WinRAR, asegúrate de no mover su carpeta después de añadirla al `PATH`.
