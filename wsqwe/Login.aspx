<%@ Page Title="" Language="C#" MasterPageFile="~/ProdMaster.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="col-md-6" id="logindiv">
        <div class="login-form ">
            <h3 class="billing-title text-center">Login</h3>
            <div class="imgcontainer">
                <img src="userimg.png" id="meimg" alt="Avatar" class="avatar">
                <p class="text-center mt-80 mb-40">Welcome back! Sign in to your account </p>
            </div>
            
            <form runat="server">
                <asp:TextBox runat="server" ID="txtUserName" CssClass="common-input" placeholder="Please enter your UserName" />
                <asp:TextBox runat="server" ID="txtPassWord" CssClass="common-input" placeholder="Please enter your PassWord" />
                <%--<button runat="server" id="btnlogin" class="view-btn color-2 mt-20 w-100"><span>Login</span></button>--%>
                <asp:Button runat="server" ID="btnlogin" Text="Login"  CssClass="view-btn  btn-pink color-2 mt-20 w-100 " OnClick="btnlogin_Click" />
                <div class="mt-20 d-flex align-items-center justify-content-between">
                    <div class="d-flex align-items-center">
                        <input type="checkbox" class="pixel-checkbox" id="login-1"><label for="login-1">Remember me</label>
                    </div>
                    <a href="#">Lost your password?</a>
                </div>
            </form>
        </div>
    </div>
    <br />
</asp:Content>

