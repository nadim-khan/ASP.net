<%@ Page Title="" Language="C#" MasterPageFile="~/master1.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server" >
    <p>
        AUTHORIZATION USING FINGERPRINT</p>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td style="width: 256px" ; color="blue">
                ADD FINGERPRINT</td>
            <td>
                <asp:Button ID="Button2" runat="server" BackColor="#3333FF" 
                    BorderColor="#3333FF" BorderStyle="Ridge" Text="ADD" Width="93px" />
            </td>
        </tr>
        <tr>
            <td style="width: 256px" color="blue">
                ADD SIGNATURE</td>
            <td>
                <asp:Button ID="Button3" runat="server" BackColor="#3333FF" 
                    BorderColor="#3333FF" BorderStyle="Ridge" Text="ADD" Width="92px" /><a href="Default.aspx">click ok</a>
            </td>
        </tr>
    </table>
</asp:Content>

