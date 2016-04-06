<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BirthdaysPFL.ascx.cs" Inherits="IntranetPerifel.WebParts.BirthdaysPFL.BirthdaysPFL" %>

<script src="../../Style%20Library/RecursosIntranetPFL/JS/angular.min.js"></script>
<script src="../../Style%20Library/RecursosIntranetPFL/JS/swiper.min.js"></script>
<script src="../../Style%20Library/RecursosIntranetPFL/JS/BirthdaysPFL.js"></script>
<link href="../../Style%20Library/RecursosIntranetPFL/CSS/birthdaysPFL.css" rel="stylesheet" />

<div id="Birthdays" class="swiper-container swiper-birthdays">
    <!-- Additional required wrapper -->
    <div ng-controller="getBirthdays" class="swiper-wrapper">
        <!-- Slides -->
        <div ng-repeat="person in personsArray" class="swiper-slide">
            <div>
                <div class="row">
                    <div class="col-md-4 col-md-offset-2">
                        <img alt="..." ng-src="{{person.picture}}">&nbsp;
                    </div>
                    &nbsp;
                </div>
                <div class="col-md-12">{{person.name}}</div>
                <div class="col-md-12">{{person.textDate}}</div>
                <div class="col-md-12">
                    <p class="weight2" lingdex="23" style="font-size: 15px;">{{person.celebration}}</p>
                </div>
            </div>
        </div>
    </div>
    <!-- If we need navigation buttons -->
    <div class="swiper-button-prev_bd"></div>
    <div class="swiper-button-next_bd"></div>
</div>
