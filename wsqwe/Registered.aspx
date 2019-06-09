<%@ Page Title="" Language="C#" MasterPageFile="~/ProdMaster.master" AutoEventWireup="true" CodeFile="Registered.aspx.cs" Inherits="Registered" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="col-md-6" id="logindiv">
        <div class="register-form">
            <h3 class="billing-title text-center">Register</h3>
            <p class="text-center mt-80 mb-40">Create your very own account  </p>

            <form runat="server">
                <asp:TextBox runat="server" ID="txtUserName" CssClass="common-input" placeholder="Please enter your UserName" />
                <asp:TextBox runat="server" ID="txtPassWord" CssClass="common-input" TextMode="Password" placeholder="Please enter your PassWord" />
                <asp:TextBox runat="server" ID="txtEmail" CssClass="common-input" placeholder="Please enter your E-mail" />
                <asp:TextBox runat="server" ID="txtPhone" CssClass="common-input" placeholder="Please enter your cellPhone" />
                <asp:TextBox runat="server" ID="txtGender" CssClass="common-input" placeholder="Please enter your Gerder(Men/Woman)" />
                <br />
                <asp:Button runat="server" ID="btnlogin" Text="Register" CssClass="view-btn  btn-pink color-2 mt-20 w-100 " OnClick="btnlogin_Click" />

            </form>
        </div>
    </div>
    <br />
</asp:Content>

