<%@ Page Title="" Language="C#" MasterPageFile="~/en/site.master" AutoEventWireup="true"
    CodeFile="recruitment.aspx.cs" Inherits="recruitment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
        <div class="title">
            <h1>
                Career</h1>
        </div>
        <div class="recruitment">
            <div class="rec-title">
                <p>
                    Hiện tại Hiếu Hương đang tuyển các vị trí sau. Các ứng viên nộp hồ sơ qua Email:
                    tuyendung@hieuhuong.vn</p>
                <p>
                    <span>Ứng viên vui lòng không gọi điện thoại đến công ty</span></p>
            </div>
            <div class="panel-group" id="accordion">
                <asp:ListView ID="lstCareer" runat="server" DataSourceID="odsCareer" EnableModelValidation="True">
                    <ItemTemplate>
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id='<%# "heading" + Eval("CareerID") %>'>
                                <h4 class="panel-title">
                                    <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion"
                                        href='<%# "#collapse" + Eval("CareerID") %>' aria-expanded="false" aria-controls='<%# "collapse" + Eval("CareerID") %>'>
                                        <%# Eval("CareerTitleEn")%>
                                        <span class="icon-plus"></span></a>
                                </h4>
                            </div>
                            <div id='<%# "collapse" + Eval("CareerID") %>' class="panel-collapse collapse" role="tabpanel"
                                aria-labelledby='<%# "heading" + Eval("CareerID") %>'>
                                <div class="panel-body">
                                    <div class="rec-content">
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("ContentEn") %>'></asp:Label>
                                    </div>
                                    <div class='<%# !string.IsNullOrEmpty("FilePath") ? "down-pfd" : "invisible" %>'>
                                        <a download href='<%# !string.IsNullOrEmpty("FilePath") ? "~/res/career/download/" + Eval("FilePath") : "" %>'
                                            runat="server">
                                            <img src="../assets/images/pdf.png" /></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <span runat="server" id="itemPlaceholder" />
                    </LayoutTemplate>
                </asp:ListView>
                <asp:ObjectDataSource ID="odsCareer" runat="server" SelectMethod="CareerSelectAll"
                    TypeName="TLLib.Career">
                    <SelectParameters>
                        <asp:Parameter Name="StartRowIndex" Type="String" />
                        <asp:Parameter Name="EndRowIndex" Type="String" />
                        <asp:Parameter Name="Keyword" Type="String" />
                        <asp:Parameter Name="CareerTitle" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="CareerCategoryID" Type="String" />
                        <asp:Parameter Name="Tag" Type="String" />
                        <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                        <asp:Parameter Name="FromDate" Type="String" />
                        <asp:Parameter Name="ToDate" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                        <asp:Parameter Name="Priority" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </div>
        </div>
    </div>
    <div class="clr">
    </div>
</asp:Content>
