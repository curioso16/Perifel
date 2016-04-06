<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NewsPFL.ascx.cs" Inherits="IntranetPerifel.WebParts.NewsPFL.NewsPFL" %>

<script src="../../Style%20Library/RecursosIntranetPFL/JS/angular.min.js"></script>
<script src="../../Style%20Library/RecursosIntranetPFL/JS/newsPFL.js"></script>
<link href="../../Style%20Library/RecursosIntranetPFL/CSS/lightboxPFL.css" rel="stylesheet" />

<div id="News">
    <div ng-controller="getNews" class="row">
        <div ng-repeat="news in d" class="col-sm-6 col-md-3">
            <div class="thumbnail">
                <img alt="..." src='{{news.url}}'>
                <div class="caption">
                    <h4>{{news.title}}</h4>
                    <p>{{news.description}}</p>
                    <p>
                        <a class="btn btn-default" role="button" ng-click="showLightbox('object-' + news.id)" href="javascript:void(0)">Más 
                                información</a>
                    </p>
                </div>
                <div ng-attr-id="{{'object-' + news.id}}" class="white_content">
                    <div id="newsDetails">
                        <img alt="..." src='{{news.url}}'>
                        <h4>{{news.title}}</h4>
                        <p>{{news.description}}</p>
                        <p>{{news.details}}</p>
                        <a ng-click="hideLightbox('object-' + news.id)" href="javascript:void(0)">Close</a>
                    </div>
                </div>
            </div>
            <div id="fade" ng-click="hideLightbox('object-' + news.id)" class="black_overlay"></div>
        </div>
    </div>
</div>


