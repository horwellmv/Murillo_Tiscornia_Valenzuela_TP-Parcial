<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MostrarDatos.aspx.cs" Inherits="Tp_Parcial_DesarrolloWeb.Comentarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mostrar Datos</title>
</head>
<body>
    <form id="MostrarDatosForm" runat="server">
        <div>
            <h1 style="margin-left: 220px">Listado de Datos</h1>
            <p style="margin-left: 200px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nombre:&nbsp;&nbsp;
                <asp:TextBox ID="nombre" runat="server" Width="190px"></asp:TextBox>
            </p>
            <p style="margin-left: 200px; width: 308px;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Comentario:<br />
                &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="comentario" runat="server" Height="156px" Style="margin-left: 0px" Width="275px"></asp:TextBox>
            </p>
            <p style="margin-left: 200px">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnEnviarComentario" runat="server" Text="Comentar" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnLimpiarComentario" runat="server" Text="Limpiar" />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
            </p>
        </div>
    </form>
</body>
</html>
