<%@ Page Title="" Language="C#" MasterPageFile="~/master1.master" AutoEventWireup="true" CodeFile="AddFinger.aspx.cs" Inherits="admin_AddSign" %>

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
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Upload Fingerprint</td>
        <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Width="306px" 
                    BackColor="#3333FF" BorderColor="#3333FF" style="margin-left: 0px" />
            </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ADD" 
                    Width="125px" BackColor="#3333FF" BorderColor="#3333FF" BorderStyle="Ridge" />
            </td>
    </tr>
</table>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>

