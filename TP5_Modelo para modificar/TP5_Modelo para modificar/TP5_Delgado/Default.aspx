<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TP5_Delgado._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <table class="nav-justified">
            <tr>
                <td style="height: 20px; width: 189px"><br />
                </td>
                <td style="height: 20px; width: 225px">
                    <asp:Label ID="Label1" runat="server" Text="Detalle"></asp:Label>
                </td>
                <td style="height: 20px">
                    <asp:TextBox ID="TxtDetalle" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 20px; width: 189px"><br />
                </td>
                <td style="height: 20px; width: 225px">
                    <asp:Label ID="Label2" runat="server" Text="Precio"></asp:Label>
                </td>
                <td style="height: 20px">
                    <asp:TextBox ID="TxtPrecio" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 189px; height: 20px;">
                    <asp:DropDownList ID="ddlFarmacias" runat="server" Height="21px" Width="126px">
                    </asp:DropDownList>
                    <br />
                </td>
                <td style="width: 225px; height: 20px;">
                    <asp:Label ID="Label3" runat="server" Text="Precio por unidad"></asp:Label>
                </td>
                <td style="height: 20px">
                    <asp:TextBox ID="TxtPUnidad" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="height: 20px; width: 189px"><br />
                </td>
                <td style="height: 20px; width: 225px">
                    <asp:Label ID="Label4" runat="server" Text="Cantidad"></asp:Label>
                </td>
                <td style="height: 20px">
                    <asp:TextBox ID="TxtCantidad" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 189px" rowspan="4">
                    <asp:ListBox ID="LbCarrito" runat="server" AutoPostBack="True" Height="107px" OnSelectedIndexChanged="LbCarrito_SelectedIndexChanged" Width="177px"></asp:ListBox>
                </td>
                <td style="height: 20px; width: 225px">
                    &nbsp;</td>
                <td style="height: 20px"></td>
            </tr>
            <tr>
                <td style="width: 225px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 225px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 225px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <p class="lead">
            &nbsp;</p>
        <p class="lead">&nbsp;</p>
        <p class="lead">&nbsp;</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>

</asp:Content>
