<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WeatherPFL.ascx.cs" Inherits="IntranetPerifel.WebParts.WeatherPFL.WeatherPFL" %>

<script src="../../Style%20Library/RecursosIntranetPFL/JS/angular.min.js"></script>
<script src="../../Style%20Library/RecursosIntranetPFL/JS/jquery-1.12.1.js"></script>
<script src="../../Style%20Library/RecursosIntranetPFL/JS/jquery.simpleWeather.min.js"></script>
<script src="../../Style%20Library/RecursosIntranetPFL/JS/swiper.min.js"></script>
<script src="../../Style%20Library/RecursosIntranetPFL/JS/weatherPFL.js"></script>
<!--<link href="../../Style%20Library/RecursosIntranetPFL/CSS/weatherPFL.css" rel="stylesheet" />-->

<div id="weatherPFL" class="swiper-container swiper-weather">
    <!-- Additional required wrapper -->
    <div ng-controller="getWeather" class="swiper-wrapper">
        <!-- Slides -->
        <div ng-repeat="weather in weatherCities" class="col-md-2">
            <div class="col-md-1"><img ng-src="{{weather.image}}" alt="" /></div>
            <div class="col-md-1 lineaespacio">
                <p class="weight4 text-right grisw">{{weather.temp}}&deg{{weather.units.temp}}</p>
                <p class="weights tiempociudad">{{weather.city}}</p>
            </div>
        </div>
    </div>
</div>