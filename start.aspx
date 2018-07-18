<%@ Page Title="" Language="C#" MasterPageFile="~/master1.master" AutoEventWireup="true" CodeFile="start.aspx.cs" Inherits="start" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" BackColor="Black" BorderColor="Black" 
                    ForeColor="#3333FF" Text="OVERVIEW" Width="397px" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button2" runat="server" BackColor="Black" BorderColor="Black" 
                    ForeColor="#3333FF" Text="ABOUT US" Width="396px" />
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        This website provide is based on Authorization and Authentication mechanism. The 
        Authentication is provided by our secure Biometric Fingerprint&nbsp; and on the 
        other hand the Authentication is done using signature verification method.</p>
    <table class="auto-style1">
        <tr>
            <td class="style5" style="width: 39px">&nbsp;</td>
            <td>
                <asp:Button ID="Button3" runat="server" PostBackUrl="~/home.aspx" Text="PROCEED" Width="168px" OnClick="Button3_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

