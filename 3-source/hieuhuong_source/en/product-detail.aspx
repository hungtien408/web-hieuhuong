<%@ Page Title="" Language="C#" MasterPageFile="~/en/site-sub.master" AutoEventWireup="true"
    CodeFile="product-detail.aspx.cs" Inherits="product_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphSite" runat="Server">
    <a href="product.aspx">Products</a>/ <span>
        <asp:Label ID="lblTitle" runat="server" Text=""></asp:Label></span>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- san pham chi tiet -->
    <div class="clr">
    </div>
    <div class="left-detail-sp">
        <asp:ListView ID="lstProductImage" runat="server" DataSourceID="odsProductImage"
            EnableModelValidation="True">
            <ItemTemplate>
                <div class="item">
                    <a href='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "../res/product/album/" + Eval("ImageName") : "~/assets/images/launha-1.png" %>'
                        class='cloud-zoom-gallery' title='Thumbnail 1' rel="useZoom: 'zoom1', smallImage: '<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "../res/product/album/" + Eval("ImageName") : "../assets/images/launha-1.png" %>' ">
                        <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/album/" + Eval("ImageName") : "~/assets/images/launha-1.png" %>'
                            runat="server" />
                    </a>
                </div>
            </ItemTemplate>
            <LayoutTemplate>
                <div class="parent-main-img-left">
                    <div class="main-detail-image">
                        <a id="zoom1" href='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/album/" + Eval("ImageName") : "~/assets/images/details-big-1.jpg" %>'
                            class="cloud-zoom" rel="showTitle: false, zoomWidth: '350', adjustY:0, adjustX:5">
                            <img id="Img2" class="img-responsive" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/album/" + Eval("ImageName") : "~/assets/images/details-img-2.jpg" %>'
                                runat="server" />
                        </a>
                    </div>
                    <div class="clr">
                    </div>
                    <div class="thumb-detail-images owl-carousel">
                        <span runat="server" id="itemPlaceholder" />
                    </div>
                </div>
            </LayoutTemplate>
        </asp:ListView>
        <asp:ObjectDataSource ID="odsProductImage" runat="server" SelectMethod="ProductImageSelectAll"
            TypeName="TLLib.ProductImage">
            <SelectParameters>
                <asp:QueryStringParameter Name="ProductID" QueryStringField="pi" Type="String" />
                <asp:Parameter DefaultValue="True" Name="IsAvailable" Type="String" />
                <asp:Parameter Name="Priority" Type="String" />
                <asp:Parameter DefaultValue="True" Name="SortByPriority" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
    <asp:ListView ID="ProductDetails" runat="server" DataSourceID="odsProductDetails"
        EnableModelValidation="True">
        <ItemTemplate>
            <div class="right-detail-sp">
                <h3 class="sp-id">
                    <%# Eval("ProductNameEn") %></h3>
                <p>
                    <%# Eval("DescriptionEn")%></p>
                <div class="price">
                    <p>
                        <%# string.IsNullOrEmpty(Eval("OtherPrice").ToString()) ?(string.Format("{0:##,###.##}", Eval("Price")).Replace('.', '*').Replace(',', '.').Replace('*', ',')) :  Eval("OtherPrice") %><%# string.IsNullOrEmpty(Eval("Price").ToString()) ? "" : " <span>VNĐ</span>"%></p>
                </div>
            </div>
            <div class="clr">
            </div>
            <div class="mota">
                <h1>
                    Description</h1>
                <asp:Label ID="Label1" runat="server" Text='<%# Eval("ContentEn") %>'></asp:Label>
            </div>
        </ItemTemplate>
        <LayoutTemplate>
            <span runat="server" id="itemPlaceholder" />
        </LayoutTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="odsProductDetails" runat="server" SelectMethod="ProductSelectOne"
        TypeName="TLLib.Product">
        <SelectParameters>
            <asp:QueryStringParameter Name="ProductID" QueryStringField="pi" Type="String" />
        </SelectParameters>
    </asp:ObjectDataSource>
    <div class="more-product">
        <h1>
            Product Same</h1>
        <div class="more-item owl-carousel">
            <asp:ListView ID="lstProductSame" runat="server" DataSourceID="odsProductSame" EnableModelValidation="True">
                <ItemTemplate>
                    <div class="item">
                        <div class="pro-img">
                            <a href='<%# progressTitle(Eval("ProductNameEn")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>
                                <img id="Img1" alt='<%# Eval("ImageName") %>' src='<%# !string.IsNullOrEmpty(Eval("ImageName").ToString()) ? "~/res/product/" + Eval("ImageName") : "~/assets/images/launha-1.png" %>'
                                    runat="server" />
                            </a>
                        </div>
                        <div class="pro-title">
                            <a href='<%# progressTitle(Eval("ProductNameEn")) + "-pci-" + Eval("CategoryID") + "-pi-" + Eval("ProductID") + ".aspx" %>'>
                                <%# Eval("ProductNameEn") %></a>
                        </div>
                    </div>
                </ItemTemplate>
                <LayoutTemplate>
                    <span runat="server" id="itemPlaceholder" />
                </LayoutTemplate>
            </asp:ListView>
            <asp:ObjectDataSource ID="odsProductSame" runat="server" SelectMethod="ProductSameSelectAll"
                TypeName="TLLib.Product">
                <SelectParameters>
                    <asp:Parameter DefaultValue="10" Name="RerultCount" Type="String" />
                    <asp:QueryStringParameter DefaultValue="" Name="ProductID" QueryStringField="pi"
                        Type="String" />
                </SelectParameters>
            </asp:ObjectDataSource>
        </div>
    </div>
</asp:Content>
