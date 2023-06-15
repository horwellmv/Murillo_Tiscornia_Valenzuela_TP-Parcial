<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoComentarios.aspx.cs" Inherits="Tp_Parcial_DesarrolloWeb.ListadoComentarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Listado Comentarios</title>
</head>
<body>
    <form id="listadoComentariosForm" runat="server">
        <div>
            <h1 style="margin-left: 300px">Lista de comentarios</h1>
            
        </div>
        <asp:GridView ID="listaComentarios" runat="server" Height="282px" Width="942px">
            <Columns>
                <asp:BoundField DataField="Id Alumno" />
                <asp:BoundField DataField="Nombre" />
                <asp:BoundField DataField="Comentarios" />
                <asp:CommandField ShowEditButton="True" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
