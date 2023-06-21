<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IngresoAlumno.aspx.cs" Inherits="Tp_Parcial_DesarrolloWeb.DatosPersonales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ingreso de alumnos</title>
    <script type ="text/javascript" src ="../JavaScript/IngresoAlumno.aspx.js"></script>
    <link href="../CSS/Estilos.css" rel="stylesheet" type ="text/css" />

</head>
<body>
    <h1 style="margin-left: 350px">Ingreso de datos Alumno</h1>

    <form id="IngresoAlumnoForm" runat="server">
        <div>
            <table>
                <tr>
                    <th colspan="5">Datos Personales</th>
                </tr>
                <tr>
                    <th rowspan="2" > <asp:Label CssClass="obligatorio" ID="Label_Obligatorio" runat="server" Text="Datos Obligatorios"></asp:Label> </th>
                    <td> <asp:Label CssClass ="obligatorio " ID="apellidoLabel" runat="server" Text="Apellido"></asp:Label> </td>
                    <td> <asp:TextBox  CssClass ="desenfocada" Type="text" ID="apellidoTextbox" runat="server"></asp:TextBox> </td>
                    <td> <asp:Label  CssClass ="obligatorio " ID="nombrelabel" runat="server" Text="Nombre"></asp:Label> </td>
                    <td > <asp:TextBox  CssClass ="desenfocada" Type="text" ID="nombreTextbox" runat="server"></asp:TextBox> </td>
                </tr>

                <tr>
                    <td> <asp:Label CssClass="obligatorio " ID="dniLabel" runat="server" Text="DNI"></asp:Label> </td>
                    <td> <asp:TextBox  CssClass ="desenfocada" Type="text" ID="dniTextbox" runat="server"></asp:TextBox> </td>
                    <td> <asp:Label  CssClass ="obligatorio " ID="emailLabel" runat="server" Text="E-Mail"></asp:Label> </td>
                    <td> <asp:TextBox  CssClass ="desenfocada" Type="email" ID="emailTextbox" runat="server"></asp:TextBox> </td>
                </tr>
                                         
                <tr>                     
                    <th> <asp:Label ID="Label_Preferencias" runat="server" Text="Preferencias"></asp:Label> </th>
                    <td> <asp:Label CssClass="preferencias " ID="turnoLabel" runat="server" Text="Turno"></asp:Label> </td>
                    <td > <asp:DropDownList CssClass ="desenfocada" ID="turnoDropList" runat="server">
                            <asp:ListItem   >Elije turno</asp:ListItem>
                            <asp:ListItem Value="1"  >Mañana</asp:ListItem>
                            <asp:ListItem Value="2"  >Tarde</asp:ListItem>
                            <asp:ListItem Value="3"  >Noche</asp:ListItem>
                          </asp:DropDownList> 
                    </td>
                </tr>

                <tr>
                    <td colspan="5">
                        <asp:Button ID="btn_enviar" runat="server" Text="Enviar" OnClientClick="return validarCampos()" OnClick="btn_enviar_Click" /> 
                        <input  type="reset" value="Limpiar" />
                    </td>
                </tr>

            </table>
        </div> 
    </form>

</body>
</html>
