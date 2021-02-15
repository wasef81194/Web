<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Web.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Hello World</title>
</head>
<body>
    <form id="form1" runat="server">
        <div id="IbName">
            <asp:Label ID="lbName" runat="server" Text="Name"></asp:Label>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </div>
        <asp:ListBox ID="Location" runat="server">
            <asp:ListItem>Mumbai</asp:ListItem>
            <asp:ListItem>Bangalore</asp:ListItem>
            <asp:ListItem>Hydrebad</asp:ListItem>
        </asp:ListBox>
        <p>
            <asp:RadioButton ID="Male" runat="server" Text="Male" />
        </p>
        <asp:RadioButton ID="Female" runat="server" Text="Female" />
        <p>
            <asp:CheckBox ID="CheckC" runat="server" Text="C#" />
        </p>
        <asp:CheckBox ID="CheckAsp" runat="server" Text="Asp.Net" />
        <p>
            <asp:Button ID="Button1" runat="server" Text="Envoyer" OnClick="Button1_Click" />
        </p>
        <asp:Button ID="SeeBdd" runat="server" OnClick="SeeBdd_Click" Text="Afficher les élément dans la base de données" />
        <p>
            <asp:Button ID="AddInBdd" runat="server" OnClick="AddInBdd_Click" Text="Ajouter un élément à la base de donner" Width="296px" />
        </p>
        <asp:Button ID="MajBdd" runat="server" OnClick="MajBdd_Click" Text="Mise à jour de la base de données" />
        <p>
            <asp:Button ID="DeleteInBdd" runat="server" OnClick="DeleteInBdd_Click" Text="Supprimer l'enregistrement de la base de données" />
        </p>
    </form>
</body>
</html>
