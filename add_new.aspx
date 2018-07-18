<%@ Page Title="" Language="C#" MasterPageFile="~/master1.master" AutoEventWireup="true" CodeFile="add_new.aspx.cs" Inherits="add_new" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>
                NAME</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
               ACCOUNT NO.</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr><tr>
            <td>
                CONTACT NO.
                </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                SIGNATURE</td>
            <td>
                <asp:Button ID="Button1" runat="server" Text="ADD SIGN" OnClick="Button1_Click" PostBackUrl="~/new_sign.aspx" />
            </td>
        </tr>
        <tr>
            <td>
                THUMB PRINT</td>
            <td>
                <asp:Button ID="Button2" runat="server" Text="ADD" PostBackUrl="~/new_finger.aspx" Width="91px" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Registermsg" runat="server" Text=""></asp:Label>
            </td>
            <td>
                <asp:Button ID="Button3" runat="server" Text="REGISTER" Width="151px" 
                    onclick="Button3_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>

