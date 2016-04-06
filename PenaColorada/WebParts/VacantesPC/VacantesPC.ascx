<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="VacantesPC.ascx.cs" Inherits="IntranetPerifel.WebParts.VacantesPFL.VacantesPFL" %>

<script src="../../Style%20Library/RecusosPColorada/JS/angular.min.js"></script>
<script src="../../Style%20Library/RecusosPColorada/JS/vacantesPC.js"></script>
<link href="../../Style%20Library/RecusosPColorada/CSS/bootstrap.css" rel="stylesheet" />
<link href="../../Style%20Library/RecusosPColorada/CSS/vacantesPC.css" rel="stylesheet" />

<div id="vacantesPFL" ng-controller="getOpenings" class="col-sm-11 col-md-11 col-sm-11">
      <div class="row">
         <div class="col-xs-2 col-sm-2 eventos">
            <img src="/_catalogs/masterpage/Perifel/images/vacantes.png" alt=""> &nbsp;</div>
         <div class="col-xs-8 col-sm-7 col-md-8">
            <span class="titulosmodulo"> Vacantes disponibles</span> </div>
         <div class="col-xs-2 col-md-2 col-sm-2">
            <a ng-href="{{urlTodos}}"><u class="rosa"> Ver Todo </u> </a></div>
      </div>
      <div ng-repeat="opening in _openings" class="row">
         <div class="col-xs-12 col-sm-12 fondoEv">
            <h4>{{opening.Title}} </h4>
            <div class="col-sm-1">
               <img src="/_catalogs/masterpage/Perifel/images/people.png" alt=""> &nbsp;</div>
            <div class="ng-binding col-xs-11 col-sm-9">
               <p>{{opening.Descripcion}}</p>
            </div>
         </div>
      </div>
   </div>