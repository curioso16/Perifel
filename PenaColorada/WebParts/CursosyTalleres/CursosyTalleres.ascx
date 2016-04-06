<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %> 
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CursosyTalleres.ascx.cs" Inherits="PenaColorada.WebParts.CursosyTalleres.CursosyTalleres" %>

<script type="text/javascript" src="../../Style%20Library/RecusosPColorada/JS/angular.min.js"></script>
<script type="text/javascript" src="../../Style%20Library/RecusosPColorada/JS/cursosytalleresPC.js"></script>
<link href="../../Style%20Library/RecusosPColorada/CSS/bootstrap.css" rel="stylesheet" />
<link href="../../Style%20Library/RecusosPColorada/CSS/cursosytalleresPC.css" rel="stylesheet" />


<div id="cursosPC" ng-controller="getCourses" class="col-sm-11 col-md-11  col-md-11">
      <div class="row">
         <div class="col-xs-2 col-sm-2 col-md-2 eventos">
            <img src="/_catalogs/masterpage/Perifel/images/talleres.png" alt=""> &nbsp;</div>
         <div class="col-xs-8 col-sm-6 col-md-8">
            <p class="titulosmodulo">Cursos y talleres</p>
         </div>
         <div class="col-xs-2 col-md-2 col-sm-2">
            <a ng-href="{{urlTodos}}"><u class="rosa"> Ver Todo </u> </a></div>
      </div>
      <div ng-repeat="course in courses" class="row">
         <div class="col-xs-12 col-sm-12 fondoEv">
            <h4>{{course.title}}</h4>
            <div class="row">
               <div class="col-sm-1"> 
                  <img src="/_catalogs/masterpage/Perifel/images/hora.png" alt="">&nbsp;</div>
               <div class="col-xs-10 col-sm-10">
                  <p>{{course.date}}</p>
               </div> 
            </div>
            <div class="row">
               <div class="col-sm-1">
                  <img src="/_catalogs/masterpage/Perifel/images/lugar1.png" alt=""> &nbsp;</div>
               <div class="col-xs-10 col-sm-10">
                  <p>{{course.location}}</p>
               </div> 
            </div>
         </div>
      </div>
   </div>