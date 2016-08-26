<%@ Page Title="" Language="C#" MasterPageFile="~/site.master" AutoEventWireup="true" CodeFile="introduce.aspx.cs" Inherits="introduce" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title>Giới thiệu</title>
    <meta name="description" content="Giới thiệu" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="site" class="corner">
        <div class="container">
            <div class="row">
            <a id="A5" href="~/" runat="server"><i class="fa fa-home"></i></a>/ Giới thiệu
            </div>
        </div>
    </div>
    <div class="introduce container">
        <div class="row">
            <div role="tabpanel">
		        <!-- Nav tabs -->
		        <ul class="nav nav-tabs col-md-3" role="tablist">
			        <li role="presentation">
				        <a href="#gt-1" role="tab" data-toggle="tab">Giới thiệu 1</a>
			        </li>
			        <li role="presentation">
				        <a href="#gt-2" role="tab" data-toggle="tab">Giới thiệu 2</a>
			        </li>
		        </ul>
	
		        <!-- Tab panes -->
		        <div class="tab-content col-md-8">
			        <div role="tabpanel" class="tab-pane" id="gt-1">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eu justo sit amet mauris rhoncus vulputate. Nam ut elit lacinia, fermentum tellus nec, gravida leo. Cras ultrices libero vitae risus ultricies, a semper augue mattis. Sed vel tincidunt nibh. Nunc sed pharetra odio. Nulla lobortis quam ac felis mollis volutpat. Nam pharetra, ipsum nec vestibulum euismod, enim tortor efficitur nisi, id pretium ex elit in felis. Aliquam ullamcorper a leo sit amet euismod. Sed id quam ut li </p>                        <p>Nam pharetra, ipsum nec vestibulum euismod, enim tortor efficitur nisi, id pretium ex elit in felis. Aliquam ullamcorper a leo sit amet euismod.  vestibulum euismod, enim tortor efficitur nisi, id pretium ex elit in felis.</p>
			        </div>
			        <div role="tabpanel" class="tab-pane" id="gt-2">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eu justo sit amet mauris rhoncus vulputate. Nam ut elit lacinia, fermentum tellus nec, gravida leo. Cras ultrices libero vitae risus ultricies, a semper augue mattis. Sed vel tincidunt nibh. Nunc sed pharetra odio. Nulla lobortis quam ac felis mollis volutpat. Nam pharetra, ipsum nec vestibulum euismod, enim tortor efficitur nisi, id pretium ex elit in felis. Aliquam ullamcorper a leo sit amet euismod. Sed id quam ut li </p>			        </div>
		        </div>
	        </div>
        </div>
    </div>
</asp:Content>

