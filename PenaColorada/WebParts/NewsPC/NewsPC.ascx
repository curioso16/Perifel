<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %> 
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NewsPC.ascx.cs" Inherits="PenaColorada.WebParts.NewsPC.NewsPC" %>

<script type="text/javascript" src="../../Style%20Library/RecusosPColorada/JS/angular.min.js"></script>
<script type="text/javascript" src="../../Style%20Library/RecusosPColorada/JS/newsPC.js"></script>
<link href="../../Style%20Library/RecusosPColorada/CSS/lightboxPC.css" rel="stylesheet" />

<div id="News">
    <div ng-controller="getNews" class="row">
        <div ng-repeat="new in newsArray" class="col-sm-6 col-md-3">
            <div class="thumbnail">
                <img alt="..." ng-src='{{new.url}}'>
                <div class="caption">
                    <h4>{{new.title}}</h4>
                    <p>{{new.description}}</p>
                    <p>
                        <a class="btn btn-default" role="button" ng-click="showLightbox(new)" href="javascript:void(0)">Más 
                                información</a>
                    </p>
                </div>
            </div>
        </div>
        <div id="newsLightbox" class="white_content">
                    <div id="newsDetails">
                        <img alt="..." ng-src='{{newsPopUp.url}}'>
                        <h4>{{newsPopUp.title}}</h4>
                        <p>{{newsPopUp.description}}</p>
                        <p id="news-details"></p>
                    </div>
                </div>
        <div id="fadeNews" ng-click="hideLightbox()" class="black_overlay"></div>
    </div>
</div>