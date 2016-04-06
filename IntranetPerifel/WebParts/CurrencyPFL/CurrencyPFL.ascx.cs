using System;
using System.Xml;
using System.ComponentModel;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.WebControls;
using System.Text;

namespace IntranetPerifel.WebParts.CurrencyPFL
{
    [ToolboxItemAttribute(false)]
    public partial class CurrencyPFL : WebPart
        
    {
        string _tipoCambio = "";
        // Uncomment the following SecurityPermission attribute only when doing Performance Profiling on a farm solution
        // using the Instrumentation method, and then remove the SecurityPermission attribute when the code is ready
        // for production. Because the SecurityPermission attribute bypasses the security check for callers of
        // your constructor, it's not recommended for production purposes.
        // [System.Security.Permissions.SecurityPermission(System.Security.Permissions.SecurityAction.Assert, UnmanagedCode = true)]
        public CurrencyPFL()
        {
        }

        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);
            InitializeControl();
            ReferenciaWebDolar.DgieWSPortClient tipoCambio = new ReferenciaWebDolar.DgieWSPortClient();
            string _tipoCambio = tipoCambio.tiposDeCambioBanxico();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            Literal lit = new Literal();
            StringBuilder sb = new StringBuilder();
            sb.Append(@"<script type='text/javascript'>
                        _xmlTipoCambio=" + _tipoCambio + @";
                     </script>");
            lit.Text = sb.ToString();
            this.Controls.Add(lit);
        }
    }
}
