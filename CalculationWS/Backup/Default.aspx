<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="ConsumeWS._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        WELCOME TO WEB SERVICE CALCULATIONS</h2>
<h2>
        BY: OMAR HIDMI</h2>
<p>
        Please choose 2 numbers and a method to calculate ...</p>
<table>
    <tr>
        <td>
            Number 1</td>
        <td>
            <asp:TextBox ID="txtNumberOne" runat="server" 
                ontextchanged="txtNumberOne_TextChanged"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Number 2</td>
        <td>
            <asp:TextBox ID="txtNumberTwo" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            Method</td>
        <td>
            <asp:DropDownList ID="ddlMethod" runat="server" Height="16px" Width="128px">
                <asp:ListItem Selected="True">Choose ...</asp:ListItem>
                <asp:ListItem>+</asp:ListItem>
                <asp:ListItem>-</asp:ListItem>
                <asp:ListItem>*</asp:ListItem>
                <asp:ListItem>/</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:Button ID="btnCalculate" runat="server" onclick="btnCalculate_Click" 
                Text="Calculate" Width="128px" />
        </td>
    </tr>
    <tr>
        <td>
            Result</td>
        <td>
            <asp:Label ID="LabelResult" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>
