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
            <asp:GridView ID="GridView_alumnos" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="#" ShowHeader="false" Text="Eliminar" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
        </div>
        <br />
        <div >
            <asp:TextBox TextMode="MultiLine" Columns="65" Rows="3" ID="comentario_textbox"  runat="server"></asp:TextBox>
            <asp:Button ID="btn_enviar_Coment" runat="server" Text="Comentar" OnClick="btn_enviar_Coment_Click" />
        </div>
    </form>
</body>
</html>
