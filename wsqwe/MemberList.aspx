<%@ Page Title="" Language="C#" MasterPageFile="~/ProdMaster.master" AutoEventWireup="true" CodeFile="MemberList.aspx.cs" Inherits="MemberList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form runat="server">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ObjectDataSource1">
            <HeaderTemplate>
                <div class="whole-wrap pb-100">
                    <div class="container">
                        <div class="section-top-border">
                            <div class="progress-table-wrap">
                                <div class="progress-table">
                                    <div class="table-row">
                                        <div class="serial">UserID</div>
                                        <div class="visit">UserName</div>
                                        <div class="visit">E-mail</div>
                                        <div class="visit">Phone</div>
                                        <div class="visit">Gender</div>
                                        <div class="visit">Edit</div>
                                    </div>
            </HeaderTemplate>

            <ItemTemplate>
                <div class="table-row">
                    <div class="serial"><%# Eval("ID") %></div>
                    <div class="visit"><%# Eval("UserName") %></div>
                    <div class="visit"><%# Eval("Email") %></div>
                    <div class="visit">0<%# Eval("Phone") %></div>
                    <div class="visit form"><%# Eval("Gender") %></div>
                    <div class="visit">
                        <a href='<%#Eval("ID","MemberEdit.aspx?id={0}")%>' class="genric-btn primary small">Edit</a>&nbsp;&nbsp;&nbsp;
                        <asp:Button runat="server" ID="btnDel" CssClass="genric-btn danger-border small" Text="Del" CommandName='<%# Eval("ID") %>' OnClientClick="return confirm('Check Delete?')" OnClick="btnDel_Click" />
                    </div>
                </div>
            </ItemTemplate>

            <FooterTemplate>
                </div>
            </div>
            </div>
            </div>
            </div>
            </FooterTemplate>
        </asp:Repeater>
        <asp:ObjectDataSource runat="server" ID="ObjectDataSource1" SelectMethod="GetCasePath" TypeName="MemberHandler"></asp:ObjectDataSource>
    </form>
</asp:Content>

