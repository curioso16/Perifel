﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PenaColorada.WebParts.NewsPC {
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
    
    
    public partial class NewsPC {
        
        public static implicit operator global::System.Web.UI.TemplateControl(NewsPC target) 
        {
            return target == null ? null : target.TemplateControl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private void @__BuildControlTree(global::PenaColorada.WebParts.NewsPC.NewsPC @__ctrl) {
            System.Web.UI.IParserAccessor @__parser = ((System.Web.UI.IParserAccessor)(@__ctrl));
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl(@"

<script type=""text/javascript"" src=""../../Style%20Library/RecusosPColorada/JS/angular.min.js""></script>
<script type=""text/javascript"" src=""../../Style%20Library/RecusosPColorada/JS/newsPC.js""></script>
<link href=""../../Style%20Library/RecusosPColorada/CSS/lightboxPC.css"" rel=""stylesheet"" />

<div id=""News"">
    <div ng-controller=""getNews"" class=""row"">
        <div ng-repeat=""new in newsArray"" class=""col-sm-6 col-md-3"">
            <div class=""thumbnail"">
                <img alt=""..."" ng-src='{{new.url}}'>
                <div class=""caption"">
                    <h4>{{new.title}}</h4>
                    <p>{{new.description}}</p>
                    <p>
                        <a class=""btn btn-default"" role=""button"" ng-click=""showLightbox(new)"" href=""javascript:void(0)"">Más 
                                información</a>
                    </p>
                </div>
            </div>
        </div>
        <div id=""newsLightbox"" class=""white_content"">
                    <div id=""newsDetails"">
                        <img alt=""..."" ng-src='{{newsPopUp.url}}'>
                        <h4>{{newsPopUp.title}}</h4>
                        <p>{{newsPopUp.description}}</p>
                        <p id=""news-details""></p>
                    </div>
                </div>
        <div id=""fadeNews"" ng-click=""hideLightbox()"" class=""black_overlay""></div>
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