using System;
using System.ComponentModel;
using System.Text;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;

namespace PenaColorada.WebParts.NewsPC
{
    [ToolboxItemAttribute(false)]
    public partial class NewsPC : WebPart
    {
        [WebBrowsable(true),
         Personalizable(true),
         WebDisplayName("Numero de noticias"),
         WebDescription("Cantidad de noticias a mostrar"),
         Microsoft.SharePoint.WebPartPages.SPWebCategoryName("Configuración")]
        public int _NewsNumber { get; set; }
        // Uncomment the following SecurityPermission attribute only when doing Performance Profiling on a farm solution
        // using the Instrumentation method, and then remove the SecurityPermission attribute when the code is ready
        // for production. Because the SecurityPermission attribute bypasses the security check for callers of
        // your constructor, it's not recommended for production purposes.
        // [System.Security.Permissions.SecurityPermission(System.Security.Permissions.SecurityAction.Assert, UnmanagedCode = true)]
        public NewsPC()
        {
        }

        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);
            InitializeControl();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Literal lit = new Literal();
            StringBuilder sb = new StringBuilder();
            sb.Append(@"<script type='text/javascript'>
                        _PFLNewsNumber='" + _NewsNumber + @"';
                     </script>");
            lit.Text = sb.ToString();
            this.Controls.Add(lit);
        }
    }
}
