<%@ Page Title="" Language="C#" MasterPageFile="~/master1.master" AutoEventWireup="true" CodeFile="Add_details.aspx.cs" Inherits="admin_AddSign" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Name</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" ForeColor="#3333FF" Width="271px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Account Number</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" ForeColor="#3333FF" Width="270px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Contact no.</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" ForeColor="#3333FF" Width="269px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2"></td>
            <td class="auto-style2">
                <asp:Button ID="Button1" runat="server" ForeColor="Blue" OnClick="Button1_Click" PostBackUrl="~/Admin/AddSign.aspx" Text="Add" Width="118px" />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>

