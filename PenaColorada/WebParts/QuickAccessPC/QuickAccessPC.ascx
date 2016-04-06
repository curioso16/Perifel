<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %> 
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="QuickAccessPC.ascx.cs" Inherits="PenaColorada.WebParts.QuickAccessPC.QuickAccessPC" %>

<script src="../../Style%20Library/RecusosPColorada/JS/angular.min.js"></script>
<script src="../../Style%20Library/RecusosPColorada/JS/quickAccessPC.js"></script>
<link href="../../Style%20Library/RecusosPColorada/CSS/quickaccessPC.css" rel="stylesheet" />
<link href="../../Style%20Library/RecusosPColorada/CSS/lightboxPC.css" rel="stylesheet" />

<div id="quickback" ng-controller="getSections" class="row">
    <div class="quicktext">
        <div>
            Quiero Acceder a:<br>
            <small>Seleccione el sistema</small>
        </div>
    </div>
    <div ng-repeat="AccessData in AccessesData" class="col-md-3 col-sm-3 col-xs-1  quickicono">
        <a id="popup-link" ng-href="{{AccessData.Url}}" ng-click="evaluateClick(AccessData)"><img ng-src="{{AccessData.Imagen.Url}}" alt=""><p class="quicksub">{{AccessData.Title}}</p></a>
    </div>
    <div id="appsLightbox" class="white_content">
        <ul class="apps">
            <li ng-repeat="app in apps"><a target="_blank" ng-href="{{app.Url.Url}}">{{app.Title}}</a></li>
        </ul>
    </div>
    <div id="fadeQA" ng-click="hideLightbox()" class="black_overlay"></div>
</div>
