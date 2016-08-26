<%@ Page Title="" Language="C#" MasterPageFile="~/site-sub.master" AutoEventWireup="true" CodeFile="product-detail.aspx.cs" Inherits="product_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphSite" Runat="Server">
    <a href="san-pham.aspx">sản phẩm</a>/ <span>Lau nhà 1</span>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- san pham chi tiet -->
    <div class="clr"></div>
    <div class="left-detail-sp">
        <div class="parent-main-img-left">
            <div class="main-detail-image">
                <a href='assets/images/launha-1.png' id='zoom1'>
                    <img src="assets/images/launha-1.png" alt='' />
                </a>
            </div>
            <div class="clr"></div>
            <div class="thumb-detail-images owl-carousel">
                <div class="item">
                    <a href='assets/images/launha-1.png' class='cloud-zoom-gallery' title='Thumbnail 1' rel="useZoom: 'zoom1', smallImage: 'assets/images/launha-1.png' ">
                        <img src="assets/images/launha-1.png" alt="Thumbnail 1" />
                    </a>
                </div>
                <div class="item">
                    <a href='assets/images/launha-2.png' class='cloud-zoom-gallery' title='Thumbnail 1' rel="useZoom: 'zoom1', smallImage: 'assets/images/launha-2.png' ">
                        <img src="assets/images/launha-2.png" alt="Thumbnail 1" />
                    </a>
                </div>
                <div class="item">
                    <a href='assets/images/launha-3.png' class='cloud-zoom-gallery' title='Thumbnail 2' rel="useZoom: 'zoom1', smallImage: ' assets/images/launha-3.png'">
                        <img src="assets/images/launha-3.png" alt="Thumbnail 2" />
                    </a>
                </div>
                <div class="item">
                    <a href='assets/images/launha-1.png' class='cloud-zoom-gallery' title='Thumbnail 3' rel="useZoom: 'zoom1', smallImage: 'assets/images/launha-1.png' ">
                        <img src="assets/images/launha-1.png" alt="Thumbnail 3" />
                    </a>
                </div>
                <div class="item">
                    <a href='assets/images/launha-2.png' class='cloud-zoom-gallery' title='Thumbnail 1' rel="useZoom: 'zoom1', smallImage: 'assets/images/launha-2.png' ">
                        <img src="assets/images/launha-2.png" alt="Thumbnail 1" />
                    </a>
                </div>
                <div class="item">
                    <a href='assets/images/launha-3.png' class='cloud-zoom-gallery' title='Thumbnail 2' rel="useZoom: 'zoom1', smallImage: ' assets/images/launha-3.png'">
                        <img src="assets/images/launha-3.png" alt="Thumbnail 2" />
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="right-detail-sp">
        <h3 class="sp-id">Lau nhà 1</h3>
        <p>Chất liệu inox không gỉ. Chắc, chống gãy. Tay cầm bằng nhựa dễ bám dính....</p>
        <div class="price">
            <p>330.000 <span>VNĐ</span></p>
        </div>
    </div>
    <div class="clr"></div>
    <div class="mota">
        <h1>Mô tả</h1>
        <p>Có nhiều kích thước mà màu sắc khác nhau liên hệ ngay để biết thêm thông tin và được tư vấn cụ thể </p>
    </div>
    <div class="more-product">
        <h1>Các sản phẩm liên quan</h1>
        <div class="more-item owl-carousel">
            <div class="item">
                <div class="pro-img">
                    <a href="#">
                        <img src="assets/images/launha-1.png" alt="" />
                    </a>
                </div>
                <div class="pro-title">
                    <a href="#">Cây lau nhà 1</a>
                </div>
            </div>
            <div class="item">
                <div class="pro-img">
                    <a href="#">
                        <img src="assets/images/launha-2.png" alt="" />
                    </a>
                </div>
                <div class="pro-title">
                    <a href="#">Cây lau nhà 2</a>
                </div>
            </div>
            <div class="item">
                <div class="pro-img">
                    <a href="#">
                        <img src="assets/images/launha-3.png" alt="" />
                    </a>
                </div>
                <div class="pro-title">
                    <a href="#">Cây lau nhà 3</a>
                </div>
            </div>
            <div class="item">
                <div class="pro-img">
                    <a href="#">
                        <img src="assets/images/vong-1.png" alt="" />
                    </a>
                </div>
                <div class="pro-title">
                    <a href="#">Võng 1</a>
                </div>
            </div>
            <div class="item">
                <div class="pro-img">
                    <a href="#">
                        <img src="assets/images/vong-2.png" alt="" />
                    </a>
                </div>
                <div class="pro-title">
                    <a href="#">Võng 2</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

