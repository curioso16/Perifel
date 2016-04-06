<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %> 
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="QuickAccessPFL.ascx.cs" Inherits="IntranetPerifel.WebParts.QuickAccessPFL.QuickAccessPFL" %>

<link href="../../Style%20Library/RecursosIntranetPFL/CSS/quickaccessPFL.css" rel="stylesheet" />
<script src="../../Style%20Library/RecursosIntranetPFL/JS/angular.min.js"></script>
<script src="../../Style%20Library/RecursosIntranetPFL/JS/quickAccessPFL.js"></script>
<link href="../../Style%20Library/RecursosIntranetPFL/CSS/QuickAccessPFL.css" rel="stylesheet" />

    
<div id="QuickAccess" class="container1 col-md-12 color-4">
    <section class="color-4">
        <nav1 ng-controller="getSections" class="cl-effect-19">
            <a ng-repeat="n in d" ng-href="{{n.URL.Url}}"><span class="blancop" data-hover="{{n.Title}}">{{n.Title}}</span></a>
        </nav1>
        </section>
</div>