<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MostrarDatos.aspx.cs" Inherits="Tp_Parcial_DesarrolloWeb.Comentarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Mostrar Datos</title>
</head>
<body>
    <form id="MostrarDatosForm" runat="server">
        <div>
            <h1>Mostrar Datos</h1>
            
            
          
        </div>

        <div>
            
            <asp:GridView ID="GridView_alumnos" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="id_alumno" OnRowEditing="GridView_alumnos_RowEditing" OnRowUpdating="GridView_alumnos_RowUpdating">


                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="id_alumno" HeaderText="ID" ReadOnly="True" />
                    <asp:BoundField DataField="nombre" HeaderText="Nombre" />
                    <asp:BoundField DataField="apellido" HeaderText="Apellido" />
                    <asp:BoundField DataField="dni" HeaderText="DNI" />
                    <asp:BoundField DataField="email" HeaderText="Email" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            
        </div>

        <br />
        <div >
            <asp:Label Text="Id Alumno" runat="server" /><br />
            <asp:TextBox ID="txtId" type="number" Width="30px" runat="server" />  <br />
            <asp:TextBox ID="Txt_Comentario" TextMode="MultiLine" Columns="65" Rows="3"  runat="server" />
            <asp:Button ID="btn_enviar_Coment" runat="server" Text="Comentar" OnClientClick=" retur validarId()" OnClick="btn_enviar_Coment_Click" />
        </div>
    </form>
</body>
</html>
