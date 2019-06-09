<%@ Page Title="" Language="C#" MasterPageFile="~/ProdMaster.master" AutoEventWireup="true" CodeFile="MemberEdit.aspx.cs" Inherits="MemberEdit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-md-7 form">
        <div class="login-form ">
            <form id="formedit"  runat="server">
                <asp:FormView ID="FormView1" CssClass="form" Width="100%" runat="server" DataSourceID="ObjectDataSource1" DefaultMode="Edit">
                    <EditItemTemplate>
                        <h4 style="color:#ff006e;font-size:24px">
                            ID:  <asp:Label runat="server"  Text='<%# Bind("ID") %>' ID="LbId" />
                        </h4><br /><br />
                        UserName:
            <asp:TextBox Text='<%# Bind("UserName") %>' runat="server" ID="UserNameTextBox" CssClass="common-input" /><br /><br />
                        PassWord:
            <asp:TextBox Text='<%# Bind("PassWord") %>' runat="server" ID="PassWordTextBox" CssClass="common-input" /><br /><br />
                        Email:
            <asp:TextBox Text='<%# Bind("Email") %>' runat="server" ID="EmailTextBox" CssClass="common-input" /><br /><br />
                        Phone:
            <asp:TextBox Text='<%# Bind("Phone") %>' runat="server" ID="PhoneTextBox" CssClass="common-input" /><br /><br />
                        Gender:
            <asp:TextBox Text='<%# Bind("Gender") %>' runat="server" ID="GenderTextBox" CssClass="common-input" /><br /><br />
                        <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" CssClass="genric-btn success small" OnClick="UpdateButton_Click" />
                        &nbsp;
                        <asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" CssClass="genric-btn primary small" OnClick="UpdateCancelButton_Click" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        ID:
            <asp:TextBox Text='<%# Bind("ID") %>' runat="server" ID="IDTextBox" /><br />
                        UserName:
            <asp:TextBox Text='<%# Bind("UserName") %>' runat="server" ID="UserNameTextBox" /><br />
                        PassWord:
            <asp:TextBox Text='<%# Bind("PassWord") %>' runat="server" ID="PassWordTextBox" /><br />
                        Email:
            <asp:TextBox Text='<%# Bind("Email") %>' runat="server" ID="EmailTextBox" /><br />
                        Phone:
            <asp:TextBox Text='<%# Bind("Phone") %>' runat="server" ID="PhoneTextBox" /><br />
                        Gender:
            <asp:TextBox Text='<%# Bind("Gender") %>' runat="server" ID="GenderTextBox" /><br />
                        <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        ID:
            <asp:Label Text='<%# Bind("ID") %>' runat="server" ID="IDLabel" /><br />
                        UserName:
            <asp:Label Text='<%# Bind("UserName") %>' runat="server" ID="UserNameLabel" /><br />
                        PassWord:
            <asp:Label Text='<%# Bind("PassWord") %>' runat="server" ID="PassWordLabel" /><br />
                        Email:
            <asp:Label Text='<%# Bind("Email") %>' runat="server" ID="EmailLabel" /><br />
                        Phone:
            <asp:Label Text='<%# Bind("Phone") %>' runat="server" ID="PhoneLabel" /><br />
                        Gender:
            <asp:Label Text='<%# Bind("Gender") %>' runat="server" ID="GenderLabel" /><br />
                        <asp:LinkButton runat="server" Text="Edit" CommandName="Edit" ID="EditButton" CausesValidation="False" />
                    </ItemTemplate>
                </asp:FormView>
                <asp:ObjectDataSource runat="server" ID="ObjectDataSource1" DataObjectTypeName="Member" SelectMethod="GetAMembers" TypeName="MemberHandler" UpdateMethod="UpdateMember">
                    <SelectParameters>
                        <asp:QueryStringParameter QueryStringField="id" Name="id" Type="Int32"></asp:QueryStringParameter>
                    </SelectParameters>
                </asp:ObjectDataSource>
            </form>
        </div>
    </div>
</asp:Content>

