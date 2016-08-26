<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true"
    CodeFile="contact.aspx.cs" Inherits="contact" %>

<%@ Register TagPrefix="asp" Namespace="AjaxControlToolkit" Assembly="AjaxControlToolkit, Version=3.5.40412.0, Culture=neutral, PublicKeyToken=28f01b0e84b6d53e" %>
<%@ Register TagPrefix="asp" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI, Version=2012.3.1016.35, Culture=neutral, PublicKeyToken=121fae78165ba3d4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container-bg">
        <div class="container">
            <div class="row wrap-contact">
                <div class="col-md-6">
                    <div class="address-contact">
                        <h4 class="text-uppercase">
                            CÔNG TY TNHH SX-TM HIẾU HƯƠNG</h4>
                        <p>
                            <span class="fa fa-map-marker"></span>Số 19 Đường Chiến Lược, P. Bình Trị Đông,
                            Quận Bình Tân</p>
                        <p>
                            <span class="fa fa-phone"></span>08 6253 8517</p>
                        <p>
                            <span class="fa fa-fax"></span>08 6260 3842</p>
                        <p>
                            <span class="fa fa-globe"></span>Website: <a href="http://www.nhuahieuhuong.com/">
                                www.nhuahieuhuong.com</a></p>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="wrap-send">
                        <p>
                            Hãy liên hệ chúng tôi theo địa chỉ có trên bản đồ hoặc gửi tin nhắn cho chúng tôi
                            theo mẫu form sau đây, chúng tôi sẽ trả lời sớm nhất ngay khi nhận được email của
                            quý khách.</p>
                        <div class="col-xs-6">
                            <div class="contact-w">
                                <div class="contact-input">
                                    <asp:TextBox ID="txtFullName" CssClass="contact-textbox" runat="server"></asp:TextBox>
                                    <asp:TextBoxWatermarkExtender ID="txtFullName_WatermarkExtender" runat="server" Enabled="True"
                                        WatermarkText="Họ tên" TargetControlID="txtFullName">
                                    </asp:TextBoxWatermarkExtender>
                                    <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator1" runat="server"
                                        Display="Dynamic" ValidationGroup="SendEmail" ControlToValidate="txtFullName"
                                        ErrorMessage="Information required!" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="contact-w">
                                <div class="contact-input">
                                    <asp:TextBox ID="txtEmail" CssClass="contact-textbox" runat="server"></asp:TextBox>
                                    <asp:TextBoxWatermarkExtender ID="txtEmail_WatermarkExtender" runat="server" Enabled="True"
                                        WatermarkText="Email" TargetControlID="txtEmail">
                                    </asp:TextBoxWatermarkExtender>
                                    <asp:RegularExpressionValidator CssClass="lb-error" ID="RegularExpressionValidator1"
                                        runat="server" ValidationGroup="SendEmail" ControlToValidate="txtEmail" ErrorMessage="Email is error!"
                                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"
                                        ForeColor="Red"></asp:RegularExpressionValidator>
                                    <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator2" runat="server"
                                        ValidationGroup="SendEmail" ControlToValidate="txtEmail" ErrorMessage="Information required!"
                                        Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12">
                            <div class="contact-w">
                                <div class="contact-input">
                                    <asp:TextBox ID="txtPhone" CssClass="contact-textbox" runat="server"></asp:TextBox>
                                    <asp:TextBoxWatermarkExtender ID="txtPhone_WatermarkExtender" runat="server" Enabled="True"
                                        WatermarkText="Điện thoại" TargetControlID="txtPhone">
                                    </asp:TextBoxWatermarkExtender>
                                    <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator4" runat="server"
                                        Display="Dynamic" ValidationGroup="SendEmail" ControlToValidate="txtPhone" ErrorMessage="Information required!"
                                        ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12">
                            <div class="contact-w">
                                <div class="contact-input">
                                    <asp:TextBox ID="txtNoiDung" CssClass="contact-area" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    <asp:TextBoxWatermarkExtender ID="txtNoiDung_WatermarkExtender" runat="server" Enabled="True"
                                        WatermarkText="Nội dung tin nhắn" TargetControlID="txtNoiDung">
                                    </asp:TextBoxWatermarkExtender>
                                    <asp:RequiredFieldValidator CssClass="lb-error" ID="RequiredFieldValidator3" runat="server"
                                        ValidationGroup="SendEmail" Display="Dynamic" ControlToValidate="txtNoiDung"
                                        ErrorMessage="Information required!" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="contact-w">
                                <div class="contact-input">
                                    <div class="wcodes">
                                        <asp:TextBox ID="txtVerifyCode" CssClass="contact-textbox" runat="server"></asp:TextBox>
                                        <asp:TextBoxWatermarkExtender ID="txtVerifyCode_WatermarkExtender" runat="server"
                                            Enabled="True" WatermarkText="Code" TargetControlID="txtVerifyCode">
                                        </asp:TextBoxWatermarkExtender>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-6">
                            <div class="contact-w">
                                <div class="contact-input">
                                    <div class="wcodes">
                                        <asp:RadCaptcha ID="RadCaptcha1" ForeColor="Red" Font-Bold="true" ValidationGroup="SendEmail"
                                            runat="server" ErrorMessage="+ Mã an toàn: không chính xác." ValidatedTextBoxID="txtVerifyCode"
                                            Display="Dynamic">
                                            <CaptchaImage Height="35" Width="135" RenderImageOnly="True" />
                                        </asp:RadCaptcha>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xs-12">
                            <div class="contact-w">
                                <div class="contact-btn">
                                    <asp:Label runat="server" ID="lblMessage" ForeColor="red"></asp:Label>
                                    <asp:Button ID="btGui" CssClass="button-btn" runat="server" Text="Gửi" ValidationGroup="SendEmail"
                                        OnClick="btGui_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="map-contact">
            <div id="mapshow">
            </div>
        </div>
    </div>
</asp:Content>
