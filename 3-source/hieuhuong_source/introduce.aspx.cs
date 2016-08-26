using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using TLLib;

public partial class introduce : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["gt"]))
            {
                var oArticle = new Article();
                var dv = oArticle.ArticleSelectOne(Request.QueryString["gt"]).DefaultView;

                if (dv != null && dv.Count <= 0) return;
                var row = dv[0];

                hdnAboutDetails.Value = "#" + progressTitle(row["ArticleTItle"].ToString()) + "-" + row["ArticleID"].ToString();
            }
            Page.Title = "Giới Thiệu";
            var meta = new HtmlMeta() { Name = "description", Content = "Giới Thiệu" };
            Header.Controls.Add(meta);
        }
    }

    protected string progressTitle(object input)
    {
        return Common.ConvertTitle(input.ToString());
    }
}