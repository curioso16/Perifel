<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %> 
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Slider.ascx.cs" Inherits="IntranetPerifelv2.WP.Slider.Slider" %>
<link rel="stylesheet" type="text/css" href="../Style Library/RecursosIntranet/CSS/swiper.css" />
<html>
<body>
<div id="Sliderapp"  ng-controller="SliderController" style="width:900px">
<div class="swiper-container main hidden-xs swiper1">
  <div class="arrows">
    <div class="container">
      <div class="col-md-6"> <a class="arrow-left bundles" href="#"><span class="bpd-icon bpd-icon-bpd-font_99"></span></a> </div>
      <div class="col-md-6"> <a class="arrow-right bundles" href="#"><span class="bpd-icon bpd-icon-bpd-font_98"></span></a> </div>
    </div>
  </div>
  <div class="swiper-wrapper">
    <div class="swiper-slide" ng-repeat=" n in SLD">
      <div class="fullbleed-wrapper hidden-xs main" style="background-image: url({{n.__metadata.media_src}}); background-position-x: 40%;">
        <div class="left-tint"></div>
        <div class="fullbleed-wrapper-inner">
          <div class="container">
            <div class="row">
              <div class="col-lg-6 col-md-9 col-sm-9 col-xs-12">
                <div class="block-copy">
                  <p class="weight10" style="text-shadow:1px 1px 1px #000; font-size:40px;"> 
					{{n.Title}}<br>
                  </p>
                  <p  class="weight8" style="text-shadow:1px 1px 1px #000;font-size:32px"> 
					{{n.Description}}</p>
                  <p class="small weight8" style="text-shadow:1px 1px 1px #000;font-size:16px">
                  {{n.ContentType}}
                  <!--<div class="col-md-7 col-md-offset-2" > <a class=" btn" style="background-color:#b5191e !important" href="#" onclick="_gaq.push(['#']);"> 
  									Conoce más</a></div>--></div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  </div>
  <!-- Add Pagination -->
  <div class="swiper-pagination"></div>
  <!-- Add Arrows -->
  <div class="swiper-button-next"></div>
  <div class="swiper-button-prev"></div>
</div>
<script src="../Style Library/RecursosIntranet/Angular/angular.min.js"></script>
<script src="../Style Library/RecursosIntranet/JS/swiper.min.js"></script>
<script src="../Style Library/RecursosIntranet/Slider/js/slider.js"></script>

</body>
</html>