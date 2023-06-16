<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="IngresoAlumno.aspx.cs" Inherits="Tp_Parcial_DesarrolloWeb.DatosPersonales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ingreso de alumnos</title>
    <script type ="text/javascript" src ="../JavaScript/IngresoAlumno.aspx.js"></script>
    <link href ="../CSS/Estilos.css" rel="stylesheet" type ="text/css" />

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
                    <th rowspan="2">Datos Obligatorios</th>
                    <td>Apellido</td>
                    <td> <asp:TextBox Type="text" ID="apellido" runat="server"></asp:TextBox> </td>
                    <td>Nombre</td>
                    <td > <asp:TextBox Type="text" ID="nombre" runat="server"></asp:TextBox> </td>
                </tr>

                <tr>
                    <td>DNI</td>
                    <td> <asp:TextBox Type="number" ID="dni" runat="server"></asp:TextBox> </td>
                    <td>E-Mail</td>
                    <td> <asp:TextBox Type="email" ID="email" runat="server"></asp:TextBox> </td>
                </tr>

                <tr>
                    <th>Preferencias</th>
                    <td>turno</td>
                    <td > <asp:DropDownList ID="lista_turno" runat="server">
                            <asp:ListItem   Selected Disable>Elije turno</asp:ListItem>
                            <asp:ListItem Value="1"  >Mañana</asp:ListItem>
                            <asp:ListItem Value="2"  >Tarde</asp:ListItem>
                            <asp:ListItem Value="3"  >Noche</asp:ListItem>
                          </asp:DropDownList> 
                    </td>
                </tr>

                <tr>
                    <td colspan="5">
                        <asp:Button ID="btn_enviar" runat="server" Text="Enviar" /> 
                        <asp:Button ID="btn_limpiar" runat="server" Text="Limpiar" />
                    </td>
                </tr>

            </table>
        </div> 
    </form>

</body>
</html>
