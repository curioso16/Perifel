﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace IntranetPerifel.WebParts.WeatherPFL {
    using System.Web.UI.WebControls.Expressions;
    using System.Web.UI.HtmlControls;
    using System.Collections;
    using System.Text;
    using System.Web.UI;
    using System.Collections.Generic;
    using System.Linq;
    using System.Xml.Linq;
    using Microsoft.SharePoint.WebPartPages;
    using System.Web.SessionState;
    using System.Configuration;
    using Microsoft.SharePoint;
    using System.Web;
    using System.Web.DynamicData;
    using System.Web.Caching;
    using System.Web.Profile;
    using System.ComponentModel.DataAnnotations;
    using System.Web.UI.WebControls;
    using System.Web.Security;
    using System;
    using Microsoft.SharePoint.Utilities;
    using System.Text.RegularExpressions;
    using System.Collections.Specialized;
    using System.Web.UI.WebControls.WebParts;
    using Microsoft.SharePoint.WebControls;
    
    
    public partial class WeatherPFL {
        
        public static implicit operator global::System.Web.UI.TemplateControl(WeatherPFL target) 
        {
            return target == null ? null : target.TemplateControl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private void @__BuildControlTree(global::IntranetPerifel.WebParts.WeatherPFL.WeatherPFL @__ctrl) {
            System.Web.UI.IParserAccessor @__parser = ((System.Web.UI.IParserAccessor)(@__ctrl));
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl(@"

<script src=""../../Style%20Library/RecursosIntranetPFL/JS/angular.min.js""></script>
<script src=""../../Style%20Library/RecursosIntranetPFL/JS/jquery-1.12.1.js""></script>
<script src=""../../Style%20Library/RecursosIntranetPFL/JS/jquery.simpleWeather.min.js""></script>
<script src=""../../Style%20Library/RecursosIntranetPFL/JS/swiper.min.js""></script>
<script src=""../../Style%20Library/RecursosIntranetPFL/JS/weatherPFL.js""></script>
<!--<link href=""../../Style%20Library/RecursosIntranetPFL/CSS/weatherPFL.css"" rel=""stylesheet"" />-->

<div id=""weatherPFL"" class=""swiper-container swiper-weather"">
    <!-- Additional required wrapper -->
    <div ng-controller=""getWeather"" class=""swiper-wrapper"">
        <!-- Slides -->
        <div ng-repeat=""weather in weatherCities"" class=""col-md-2"">
            <div class=""col-md-1""><img ng-src=""{{weather.image}}"" alt="""" /></div>
            <div class=""col-md-1 lineaespacio"">
                <p class=""weight4 text-right grisw"">{{weather.temp}}&deg{{weather.units.temp}}</p>
                <p class=""weights tiempociudad"">{{weather.city}}</p>
            </div>
        </div>
    </div>
</div>"));
        }
        
        private void InitializeControl() {
            this.@__BuildControlTree(this);
            this.Load += new global::System.EventHandler(this.Page_Load);
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        protected virtual object Eval(string expression) {
            return global::System.Web.UI.DataBinder.Eval(this.Page.GetDataItem(), expression);
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        protected virtual string Eval(string expression, string format) {
            return global::System.Web.UI.DataBinder.Eval(this.Page.GetDataItem(), expression, format);
        }
    }
}
