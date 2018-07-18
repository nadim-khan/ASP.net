<%@ Page Title="" Language="C#" MasterPageFile="~/master1.master" AutoEventWireup="true" CodeFile="print.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <asp:LinkButton ID="LinkButton1" runat="server">UPLOAD IMAGE</asp:LinkButton>
    <br />
    <asp:LinkButton ID="LinkButton2" runat="server">CHECK IMAGE</asp:LinkButton>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1" style="height: 69px">
        <tr>
            <td class="auto-style2">UPLOAD IMAGE</td>
            <td class="auto-style2">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="306px" 
                    BackColor="#3333FF" BorderColor="#3333FF" style="margin-left: 0px" />
            </td>
        </tr>
        <asp:Image ID="Image1" runat="server" />
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="ADD" 
                    Width="125px" BackColor="#3333FF" BorderColor="#3333FF" BorderStyle="Ridge" />
            </td>
        </tr>
    </table>
</asp:Content>

