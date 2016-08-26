<%@ Page Title="" Language="C#" MasterPageFile="~/en/site.master" AutoEventWireup="true"
    CodeFile="introduce.aspx.cs" Inherits="introduce" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <script type="text/javascript">
        $(document).ready(function () {
            var valueAbout = $('.a-link-about').attr('href');
            if (valueAbout == "") {
                $('.nav-tabs').find('li').first().addClass('active');
                $('.tab-content').find('.tab-pane').first().addClass('active');
            } else {
                $('.nav-tabs > li > a[href$="' + valueAbout + '"]').trigger("click");
            }
        });
    </script>
    <div id="site" class="corner">
        <div class="container">
            <div class="row">
                <a id="A5" href="~/en/" runat="server"><i class="fa fa-home"></i></a>/
                About
            </div>
        </div>
    </div>
    <div class="introduce container">
        <asp:HiddenField ID="hdnAboutDetails" runat="server" />
        <a class="a-link-about" href="<%= hdnAboutDetails.Value %>"></a>
        <div class="row">
            <div role="tabpanel">
                <!-- Nav tabs -->
                <asp:ListView ID="lstAbout" runat="server" DataSourceID="odsAbout" EnableModelValidation="True">
                    <ItemTemplate>
                        <li role="presentation"><a href='<%# "#" + progressTitle(Eval("ArticleTitleEn")) + "-" + Eval("ArticleID") %>' role="tab" data-toggle="tab">
                            <%# Eval("ArticleTitleEn")%></a> </li>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <ul class="nav nav-tabs col-md-3" role="tablist">
                            <i runat="server" id="itemPlaceholder"></i>
                        </ul>
                    </LayoutTemplate>
                </asp:ListView>
                <!-- Tab panes -->
                <div class="tab-content col-md-8">
                    <asp:ListView ID="lstAboutDetails" runat="server" DataSourceID="odsAbout" EnableModelValidation="True">
                        <ItemTemplate>
                            <div role="tabpanel" class="tab-pane" id='<%# progressTitle(Eval("ArticleTitleEn")) + "-" + Eval("ArticleID") %>'>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("ContentEn") %>'></asp:Label>
                            </div>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <span runat="server" id="itemPlaceholder" />
                        </LayoutTemplate>
                    </asp:ListView>
                </div>
                <asp:ObjectDataSource ID="odsAbout" runat="server" SelectMethod="ArticleSelectAll"
                    TypeName="TLLib.Article">
                    <SelectParameters>
                        <asp:Parameter Name="StartRowIndex" Type="String" />
                        <asp:Parameter Name="EndRowIndex" Type="String" />
                        <asp:Parameter Name="Keyword" Type="String" />
                        <asp:Parameter Name="ArticleTitle" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter DefaultValue="1" Name="ArticleCategoryID" Type="String" />
                        <asp:Parameter Name="Tag" Type="String" />
                        <asp:Parameter Name="IsShowOnHomePage" Type="String" />
                        <asp:Parameter Name="IsHot" Type="String" />
                        <asp:Parameter Name="IsNew" Type="String" />
                        <asp:Parameter Name="FromDate" Type="String" />
                        <asp:Parameter DefaultValue="" Name="ToDate" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                        <asp:Parameter Name="Priority" Type="String" />
                        <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
                    </SelectParameters>
                </asp:ObjectDataSource>
            </div>
        </div>
    </div>
</asp:Content>
