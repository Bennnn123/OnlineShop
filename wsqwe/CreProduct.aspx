<%@ Page Title="" Language="C#" MasterPageFile="~/ProdMaster.master" AutoEventWireup="true" CodeFile="CreProduct.aspx.cs" Inherits="CreProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <br />
    <br />
    <div class="col-md-6" id="logindiv">
        
        <div class="login-form ">
            <h3 class="billing-title text-center">Create Product Information</h3>
            <%--            <p class="text-center mt-80 mb-40">Welcome back! Sign in to your account </p>--%>
            <br /><br />
            <form runat="server">
                <asp:FileUpload ID="FU1" runat="server" />
                <asp:Image ID="Image1" runat="server" />
                <br /><br />
                <asp:TextBox runat="server" ID="txtProdName" CssClass="common-input" placeholder="Product Name..." />
                <asp:TextBox runat="server" ID="txtProdPrice" CssClass="common-input" placeholder="Product Price..." />
                <asp:TextBox runat="server" ID="txtProdAmount" CssClass="common-input" placeholder="Product Amount..." />
                <br /><br /><br />
                <asp:Button runat="server" ID="btnProdSend" Text="Send" CssClass="view-btn  btn-succ color-5 mt-20 w-100 " OnClick="btnProdSend_Click" />
            </form>
        </div>
    </div>
    <br />

</asp:Content>

