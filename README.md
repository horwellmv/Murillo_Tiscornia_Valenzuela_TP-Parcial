# Murillo_Tiscornia_Valenzuela_TP-Parcial

   TP-Parcial. Desarrollo de aplicaciones WEB 2023.
   
    Se necesita crear una aplicación web que permita el ingreso de alumnos a la carrera de Sistemas. Para ello se
    desea crear una página Web con el ingreso de datos (IngresoAlumno.aspx) como muestra la siguiente figura:
    
    ![image](https://github.com/horwellmv/Murillo_Tiscornia_Valenzuela_TP-Parcial/assets/70414375/535b73f1-f6b9-44fc-b28f-cdbf97a8d867)
    
    CSS
    Las etiquetas (<asp:Label>) poseen distintos estilos. Se pide crear una hoja de estilos (Estilos.css) y una
    carpeta CSS que la contendrá, que cumpla con las siguientes reglas:
    Todas las etiquetas (<asp:Label>) tendrán como color de fondo azul (#0000FF), como color de fuente verde
    (#00FF00), un tamaño de 12 puntos y su fuente será Helvetica (o Arial como segunda opción).
    Para aquellas etiquetas que resaltan los datos obligatorios se deberá crear una clase (sólo para etiquetas
    <asp:Label>) llamada ‘obligatorio’ que cambiará el estilo colocando como color de fondo rojo (#FF0000), color
    de fuente blanco (#FFFFFF), el tamaño de la fuente en 14 puntos y el texto en negrita (bold).
    Para las etiquetas de las preferencias, se creará otra clase (sólo para etiquetas <asp:Label>) que se nombrará
    ‘preferencias’, que cambiará el color de fondo a verde (#00FF00), color de letra negra (#000000) y un tamaño de 8
    puntos.
    Por último, se pide crear las clases ‘enfocada’ (la misma tendrá como color de fondo #66CCFF, color de fuente
    #3333CC y tipo de fuente ‘Papyrus o Calibri como segunda opción) y ‘desenfocada’ (color de fondo blanco, color
    de fuente negra y tipo de fuente ‘Arial’).
    Asociar la clase ‘Desenfocada’ a todas las cajas de texto <asp:Texbox> y a la lista
    desplegable <asp:DropDownList>, que poseerá tres ítems: Seleccione Turno, Mañana,
    Tarde y Noche.
    Javascript - DOM
    Crear una carpeta JS y archivo/s JS que deberá validar mediante funciones, antes de hacer el postback, que:
    * Ningún campo esté vacío y se haya seleccionado un turno.
    * Los campos nombre y apellido no permitan el ingreso de números ni caracteres que no sean letras ej:
    Paréntesis, corchetes, guiones, etc.
    * El campo E-mail deberá validar que lo ingresado tenga un arroba y uno o más puntos para el dominio de
    la dirección.
    Estas validaciones se mostrarán en una ventana Alert en el momento de presionar el botón
    'enviar', no dejando continuar en el caso que algo sea incorrecto. Javascript se tendrá que desarrollar de
    manera semántica.
    (A) - Al clickear sobre el boton 'enviar' se deberá:
    1- Guardar el Apellido, Nombre, DNI, E-mail, Turno e identificador en una tabla llamada 'alumnos'.
    2- Redireccionar a una página que se llame MostrarDatos.aspx que tendrá un título H1, una tabla HTML,
    un <asp:TextBox> multilinea y un <asp:Button> en la parte de abajo de la página estos dos últimos.
    3- En la tabla HTML se deberán mostrar los datos ingresados mediante una conexión a la base de datos con
    LINQ to SQL. La tabla tendrá varios <asp:Label> o <span> diciendo qué es cada campo.
    4- En <asp:TextBox> multilinea se podrá escribir un comentario adicional. Clickeando en
    <asp:Button> se guardará en una tabla llamada 'comentarios': DNI, apellido y el comentario ingresado,
    luego redireccionarlo al formulario original. El campo multilinea deberá ser validado que no este vacío
    mediante javascript.
    -Archivo comprimido con nombre: APELLIDOS_TP-Parcial.rar/zip. Adjuntarlo al classroom.
    -Incluir sólo los archivos: .aspx, .cs, .js, .css, dbml, .layout y un script SQL para crear las
    tablas correspondientes, todos en el archivo comprimido.
    -FECHA DE ENTREGA: 20/6 21 hs.
    ASP.NET - LINQ - ADO.NET
    (B) - WebForm ListadoComentarios.aspx:
    Crear esta página que deberá tener un título informativo y un control <asp:GridView> que muestré DNI, apellido
    y comentario de la tabla 'comentarios'. La tabla comentarios debera estar relacionada con la tabla alumnos
    mediante claves y cada comentario corresponderá solamente a un alumno. Está relación deberá ser persistida a la
    base de datos.
    Se tendra usar las clases LINQ to SQL.
    Agregar una columna que permita Editar y Eliminar la fila correspondiente. El usuario podrá ingresar comentarios
    pero solo el administrador del sitio podrá ver los comentarios pudiendo usar la columna de editar y eliminar.
