using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(""))
                {
                    LinkButton1.Visible = true; // User Login Link Button
                    LinkButton2.Visible = true; // User signup Link Button

                    LinkButton3.Visible = false; // User Logout Link Button
                    LinkButton5.Visible = false; // Hello User Link Button

                    LinkButton6.Visible = true; // Admin Login Link Button

                    LinkButton7.Visible = false; // Author Management Link Button
                    LinkButton8.Visible = false; // Publisher Management Link Button
                    LinkButton9.Visible = false; // Book Inventory Link Button
                    LinkButton10.Visible = false; // Book Issuing Link Button
                    LinkButton11.Visible = false; // Member Management Link Button
                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton1.Visible = false; // User Login Link Button
                    LinkButton2.Visible = false; // User signup Link Button

                    LinkButton3.Visible = true; // User Logout Link Button
                    LinkButton5.Visible = true; // Hello User Link Button

                    LinkButton5.Text = "Hello " + Session["username"].ToString();

                    LinkButton6.Visible = true; // Admin Login Link Button

                    LinkButton7.Visible = false; // Author Management Link Button
                    LinkButton8.Visible = false; // Publisher Management Link Button
                    LinkButton9.Visible = false; // Book Inventory Link Button
                    LinkButton10.Visible = false; // Book Issuing Link Button
                    LinkButton11.Visible = false; // Member Management Link Button
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; // User Login Link Button
                    LinkButton2.Visible = false; // User signup Link Button

                    LinkButton3.Visible = true; // User Logout Link Button
                    LinkButton5.Visible = true; // Hello User Link Button

                    LinkButton5.Text = "Hello Admin";

                    LinkButton6.Visible = false; // Admin Login Link Button

                    LinkButton7.Visible = true; // Author Management Link Button
                    LinkButton8.Visible = true; // Publisher Management Link Button
                    LinkButton9.Visible = true; // Book Inventory Link Button
                    LinkButton10.Visible = true; // Book Issuing Link Button
                    LinkButton11.Visible = true; // Member Management Link Button
                }

            }
            catch (Exception ex)
            {

            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminlogin.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminauthormanagement.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminpublishermanagement.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookinventory.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminbookissuing.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("adminmembermanagement.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("viewbooks.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["username"] = "";
            Session["fullname"] = "";
            Session["role"] = "";
            Session["status"] = "";

            LinkButton1.Visible = true; // User Login Link Button
            LinkButton2.Visible = true; // User signup Link Button

            LinkButton3.Visible = false; // User Logout Link Button
            LinkButton5.Visible = false; // Hello User Link Button

            LinkButton6.Visible = true; // Admin Login Link Button

            LinkButton7.Visible = false; // Author Management Link Button
            LinkButton8.Visible = false; // Publisher Management Link Button
            LinkButton9.Visible = false; // Book Inventory Link Button
            LinkButton10.Visible = false; // Book Issuing Link Button
            LinkButton11.Visible = false; // Member Management Link Button

            Response.Redirect("homepage.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("userprofile.aspx");
        }
    }
}