<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container-bg">
        <div class="container">
            <div class="row wrap-contact">
            <div class="col-md-6">
                <div class="address-contact">
                    <h4 class="text-uppercase">CÔNG TY TNHH SX-TM HIẾU HƯƠNG</h4>
                    <p><span class="fa fa-map-marker"></span>Số 19 Đường Chiến Lược, P. Bình Trị Đông, Quận Bình Tân</p>                    <p><span class="fa fa-phone"></span>08 6253 8517</p>                    <p><span class="fa fa-fax"></span>08 6260 3842</p>
                    <p><span class="fa fa-globe"></span>Website: <a href="http://www.hieuhuongplastics.com">hieuhuongplastics.com</a></p>
                </div>
            </div>
            <div class="col-md-6">
                <div class="wrap-send">
                    <p>Hãy liên hệ chúng tôi theo địa chỉ có trên bản đồ hoặc gửi tin nhắn cho chúng tôi theo mẫu form sau đây, chúng tôi sẽ trả lời sớm nhất ngay khi nhận được email của quý khách.</p>
                    
                        <div class="col-xs-6">
                            <div class="contact-w">
                                <div class="contact-input">
                                    <asp:TextBox ID="txtFullName" CssClass="contact-textbox" runat="server" placeholder="Họ tên"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    
                        <div class="col-xs-6">
                            <div class="contact-w">
                                <div class="contact-input">
                                    <asp:TextBox ID="TextBox5" CssClass="contact-textbox" runat="server" placeholder="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    
                        <div class="col-xs-12">
                            <div class="contact-w">
                                <div class="contact-input">
                                    <asp:TextBox ID="TextBox7" CssClass="contact-textbox" runat="server" placeholder="Điện thoại"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    <div class="col-xs-12">
                        <div class="contact-w">
                            <div class="contact-input">
                                <asp:TextBox ID="TextBox2" CssClass="contact-area" runat="server" TextMode="MultiLine" placeholder="Nội dung tin nhắn"></asp:TextBox>
                            </div>
                        </div>
                        <div class="contact-w">
                            <div class="contact-btn">
                                <asp:button ID="Button1" CssClass="button-btn" runat="server" text="Gửi" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
        <div class="map-contact">
             <div id="mapshow"></div>
       </div>
    </div>
</asp:Content>

