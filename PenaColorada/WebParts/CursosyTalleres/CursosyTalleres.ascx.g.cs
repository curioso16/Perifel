﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PenaColorada.WebParts.CursosyTalleres {
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
    
    
    public partial class CursosyTalleres {
        
        public static implicit operator global::System.Web.UI.TemplateControl(CursosyTalleres target) 
        {
            return target == null ? null : target.TemplateControl;
        }
        
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Never)]
        private void @__BuildControlTree(global::PenaColorada.WebParts.CursosyTalleres.CursosyTalleres @__ctrl) {
            System.Web.UI.IParserAccessor @__parser = ((System.Web.UI.IParserAccessor)(@__ctrl));
            @__parser.AddParsedSubObject(new System.Web.UI.LiteralControl("\r\n\r\n<script type=\"text/javascript\" src=\"../../Style%20Library/RecusosPColorada/JS" +
                        "/angular.min.js\"></script>\r\n<script type=\"text/javascript\" src=\"../../Style%20Li" +
                        "brary/RecusosPColorada/JS/cursosytalleresPC.js\"></script>\r\n<link href=\"../../Sty" +
                        "le%20Library/RecusosPColorada/CSS/bootstrap.css\" rel=\"stylesheet\" />\r\n<link href" +
                        "=\"../../Style%20Library/RecusosPColorada/CSS/cursosytalleresPC.css\" rel=\"stylesh" +
                        "eet\" />\r\n\r\n\r\n<div id=\"cursosPC\" ng-controller=\"getCourses\" class=\"col-sm-11 col-" +
                        "md-11  col-md-11\">\r\n      <div class=\"row\">\r\n         <div class=\"col-xs-2 col-s" +
                        "m-2 col-md-2 eventos\">\r\n            <img src=\"/_catalogs/masterpage/Perifel/imag" +
                        "es/talleres.png\" alt=\"\"> &nbsp;</div>\r\n         <div class=\"col-xs-8 col-sm-6 co" +
                        "l-md-8\">\r\n            <p class=\"titulosmodulo\">Cursos y talleres</p>\r\n         <" +
                        "/div>\r\n         <div class=\"col-xs-2 col-md-2 col-sm-2\">\r\n            <a ng-href" +
                        "=\"{{urlTodos}}\"><u class=\"rosa\"> Ver Todo </u> </a></div>\r\n      </div>\r\n      <" +
                        "div ng-repeat=\"course in courses\" class=\"row\">\r\n         <div class=\"col-xs-12 c" +
                        "ol-sm-12 fondoEv\">\r\n            <h4>{{course.title}}</h4>\r\n            <div clas" +
                        "s=\"row\">\r\n               <div class=\"col-sm-1\"> \r\n                  <img src=\"/_" +
                        "catalogs/masterpage/Perifel/images/hora.png\" alt=\"\">&nbsp;</div>\r\n              " +
                        " <div class=\"col-xs-10 col-sm-10\">\r\n                  <p>{{course.date}}</p>\r\n  " +
                        "             </div> \r\n            </div>\r\n            <div class=\"row\">\r\n       " +
                        "        <div class=\"col-sm-1\">\r\n                  <img src=\"/_catalogs/masterpag" +
                        "e/Perifel/images/lugar1.png\" alt=\"\"> &nbsp;</div>\r\n               <div class=\"co" +
                        "l-xs-10 col-sm-10\">\r\n                  <p>{{course.location}}</p>\r\n             " +
                        "  </div> \r\n            </div>\r\n         </div>\r\n      </div>\r\n   </div>"));
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
