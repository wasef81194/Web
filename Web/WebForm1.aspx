<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Web.WebForm1" Trace="true"%>

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
        <p>
            <asp:Label ID="TutorialID" runat="server" Text="Tutorial ID"></asp:Label>
            <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" DataTextField="TutorialID" DataValueField="TutorialID"></asp:ListBox>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:demodbConnection %>" SelectCommand="SELECT * FROM [demotb]" DeleteCommand="DELETE FROM [demotb] WHERE [TutorialID] = @TutorialID" InsertCommand="INSERT INTO [demotb] ([TutorialID], [TutorialName]) VALUES (@TutorialID, @TutorialName)" UpdateCommand="UPDATE [demotb] SET [TutorialName] = @TutorialName WHERE [TutorialID] = @TutorialID">
                <DeleteParameters>
                    <asp:Parameter Name="TutorialID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TutorialID" Type="Int32" />
                    <asp:Parameter Name="TutorialName" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TutorialName" Type="String" />
                    <asp:Parameter Name="TutorialID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
        <p>
            <asp:Label ID="TutorialName" runat="server" Text="Tutorial Name"></asp:Label>
            <asp:ListBox ID="ListBox2" runat="server" DataSourceID="SqlDataSource1" DataTextField="TutorialName" DataValueField="TutorialName"></asp:ListBox>
        </p>
        <p>   
        <asp:Button ID="SeeBdd" runat="server" OnClick="SeeBdd_Click" Text="Afficher les élément dans la base de données" />
        </p>
        <p>
            <asp:Button ID="AddInBdd" runat="server" OnClick="AddInBdd_Click" Text="Ajouter un élément à la base de donner" Width="296px" />
        </p>
        <p>
        <asp:Button ID="MajBdd" runat="server" OnClick="MajBdd_Click" Text="Mise à jour de la base de données" />
        </p>
        <p>
            <asp:Button ID="DeleteInBdd" runat="server" OnClick="DeleteInBdd_Click" Text="Supprimer l'enregistrement de la base de données" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="TutorialID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="TutorialID" HeaderText="TutorialID" ReadOnly="True" SortExpression="TutorialID" />
                    <asp:BoundField DataField="TutorialName" HeaderText="TutorialName" SortExpression="TutorialName" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
