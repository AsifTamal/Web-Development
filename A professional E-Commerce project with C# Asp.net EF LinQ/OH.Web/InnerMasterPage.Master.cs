﻿using OH.BLL.Basic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OH.DAL;
using OH.Utilities;

namespace OH.Web
{
    public partial class InnerMasterPage : System.Web.UI.MasterPage
    {
        private const string sessEmailSubscribe = "seEmailSubscribe";
        private const string AntiXsrfTokenKey = "__AntiXsrfToken";
        private const string AntiXsrfUserNameKey = "__AntiXsrfUserName";

        private readonly CategoryRT _categoryRT;
        private readonly UserInformationRT _userInformationRT;

        public InnerMasterPage()
        {
            this._categoryRT = new CategoryRT();
            this._userInformationRT = new UserInformationRT();
        }
        protected string SearchKeyWord
        {
            get { return (string)ViewState["SearchKeyWord"] ?? String.Empty; }
            private set { ViewState["SearchKeyWord"] = value; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    LoadDefaultPageUrl();
                    LoadDefaultLoginLogout();
                    //LoadAllCategory();
                    DisableBrowserBackButton();
                }
            }
            catch (Exception ex)
            {

            }

        }

        public void DisableBrowserBackButton()
        {
            HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);
            HttpContext.Current.Response.Cache.SetNoServerCaching();
            HttpContext.Current.Response.Cache.SetNoStore();
        }

        //private void LoadAllCategory()
        //{
        //    var allCategoryList = _categoryRT.GetAllSearchedCategory(string.Empty).ToList();
        //    ddlAllCategory.DataSource = allCategoryList;
        //    ddlAllCategory.DataTextField = "Name";
        //    ddlAllCategory.DataValueField = "IID";
        //    ddlAllCategory.DataBind();
        //}

        private void LoadDefaultLoginLogout()
        {
            try
            {
                ulLoginOut.Visible = true;
                if (Session["UserName"] != null)
                {
                    ulLoginOutDirect.Visible = false;
                    var userText = Session["UserName"] != null ? Session["UserName"].ToString() : string.Empty;
                    lblUsername.Text = "Welcome " + userText + " !";
                    lbLogStatus.Text = Session["LoginStatus"] != null ? Session["LoginStatus"].ToString() : string.Empty;

                    //var _findUser = _userInformationRT.FindUserByUserName(Convert.ToString(Session["UserName"]));
                    //var objUserGroup = _userInformationRT.FindUserGroup(_findUser != null ? _findUser.UserGroupID : default(Int64));

                    //if (objUserGroup != null)
                    //{
                    //    if (Convert.ToInt32(objUserGroup.TypeID) == Convert.ToInt32(OH.Utilities.EnumCollection.UserGrpType.Add_Giver))
                    //    {
                    //        Response.Redirect("~/MaterialWF.aspx");
                    //    }
                    //    else
                    //    {
                    //        Response.Redirect("~/Default.aspx");
                    //    }
                    //}
                }
                else
                {
                    ulLoginOutDirect.Visible = true;
                    lblUsername.Text = string.Empty;
                    lbLogStatus.Text = string.Empty;
                    Response.Redirect("~/LoginPage.aspx");
                }
            }
            catch (Exception ex)
            {

            }
        }       

        private void LoadDefaultPageUrl()
        {
            #region Default url loading

            hrfRegister.HRef = "~/UserRegistrationPage";
            hrfLogin.HRef = "~/LoginPage";

            #endregion
        }

        protected void lbLogStatus_OnClick(object sender, EventArgs e)
        {
            Session["LoginStatus"] = "Login";
            lblUsername.Text = string.Empty;
            ulLoginOut.Visible = false;
            ulLoginOutDirect.Visible = true;
            lbLogStatus.Text = string.Empty;
            Session["UserName"] = null;
            Response.Redirect("~/LoginPage.aspx");  
        }

        protected void btnSubscribeUnsubcbe_Click(object sender, EventArgs e)
        {
            //if (ChkEmailUnsubcribe.Checked == false && txtEmailSubscription.Text != string.Empty)
            //{
                try
                {
                    lblEmailSubscribe.Text = string.Empty;
                    using (EmailSubscriptionRT receiverTransfer = new EmailSubscriptionRT())
                    {

                        List<OiiONewsLetter> EmailSubscriberList = new List<OiiONewsLetter>();
                        EmailSubscriberList = receiverTransfer.GetEmailSubscriber(txtEmailSubscription.Text);

                        if (EmailSubscriberList != null && EmailSubscriberList.Count > 0)
                        {
                            string msg = "" + txtEmailSubscription.Text + " Already Subscribed!";
                            lblEmailSubscribe.Text = msg;
                            lblEmailSubscribe.ForeColor = System.Drawing.Color.White;
                            lblEmailSubscribe.BackColor = System.Drawing.Color.Blue;
                            return;
                        }

                        OiiONewsLetter EmailSubscribe = CreateEmailSubscriber();
                        receiverTransfer.AddEmailSubscriber(EmailSubscribe);
                        if (EmailSubscribe.IID > 0)
                        {
                            lblEmailSubscribe.Text = "Data successfully saved...";
                            lblEmailSubscribe.ForeColor = System.Drawing.Color.White;
                            lblEmailSubscribe.BackColor = System.Drawing.Color.Blue;
                        }
                        else
                        {
                            lblEmailSubscribe.Text = "Data not saved...";
                            lblEmailSubscribe.ForeColor = System.Drawing.Color.Yellow;
                            lblEmailSubscribe.BackColor = System.Drawing.Color.Blue;
                        }
                    }

                    ClearEmailField();
                    //LoadUserGrp();
                }
                catch (Exception ex)
                {
                    lbLogStatus.Text = "Error : " + ex.Message;
                    lbLogStatus.ForeColor = System.Drawing.Color.Red;
                }
            //}
            //else if (ChkEmailUnsubcribe.Checked == true && txtEmailSubscription.Text != null)
            //{

            //    try
            //    {
            //        lblEmailSubscribe.Text = string.Empty;
            //        using (EmailSubscriptionRT receiverTransfer = new EmailSubscriptionRT())
            //        {
            //            List<OiiONewsLetter> EmailSubscriberList = new List<OiiONewsLetter>();
            //            EmailSubscriberList = receiverTransfer.GetEmailSubscriber(txtEmailSubscription.Text);

            //            if (EmailSubscriberList != null && EmailSubscriberList.Count > 0)
            //            {
            //                hdIsDelete.Value = "true";
            //                hdIsEdit.Value = "true";

            //                OiiONewsLetter EmailSubscribe = CreateEmailSubscriber();

            //                if (EmailSubscribe != null)
            //                {
            //                    receiverTransfer.UpdateEmailSubscribe(EmailSubscribe);
            //                    lblEmailSubscribe.Text = "Data successfully deleted...";
            //                    lblEmailSubscribe.ForeColor = System.Drawing.Color.White;
            //                    lblEmailSubscribe.BackColor = System.Drawing.Color.Blue;
            //                }
            //                else
            //                {
            //                    lblEmailSubscribe.Text = "Data not deleted...";
            //                    lblEmailSubscribe.ForeColor = System.Drawing.Color.White;
            //                }
            //            }
            //            else
            //            {
            //                lblEmailSubscribe.Text = "You Should Subscribe First";
            //                lblEmailSubscribe.ForeColor = System.Drawing.Color.YellowGreen;
            //            }

            //        }

            //        ClearEmailField();
            //    }
            //    catch (Exception ex)
            //    {
            //        lblEmailSubscribe.Text = "Error : " + ex.Message;
            //        lblEmailSubscribe.ForeColor = System.Drawing.Color.White;
            //    }

            //}
            //else
            //{
            //    lblEmailSubscribe.Text = "Can Not Subscribe Or Unsubscribe";
            //}
        }
        private void ClearEmailField()
        {
            txtEmailSubscription.Text = string.Empty;
            //ChkEmailUnsubcribe.Checked = false;
        }
        private OiiONewsLetter CreateEmailSubscriber()
        {
            Session["EmailID"] = "1";
            OiiONewsLetter EmailSubscriber = new OiiONewsLetter();
            try
            {
                if (hdIsEdit.Value == "true")
                {
                    EmailSubscriptionRT receiverTransfer = new EmailSubscriptionRT();
                    OiiONewsLetter emailSubscription = receiverTransfer.GetEmailSubscribrIDByEmail(txtEmailSubscription.Text);
                    Session[sessEmailSubscribe] = emailSubscription;
                    // OiiONewsLetter EmailSubscribe = (OiiONewsLetter)Session[sessEmailSubscribe];
                    EmailSubscriber.IID = emailSubscription.IID;
                }
                EmailSubscriber.UserEmail = txtEmailSubscription.Text.Trim();
                EmailSubscriber.SubscribeDate = DateTime.Now;
                if (EmailSubscriber.IID <= 0)
                {
                    EmailSubscriber.CreatedBy = Convert.ToInt64(Session["EmailID"]);
                    EmailSubscriber.CreatedDate = GlobalRT.GetServerDateTime();
                }
                else
                {
                    OiiONewsLetter EmailSubscribe = (OiiONewsLetter)Session[sessEmailSubscribe];
                    EmailSubscriber.CreatedBy = EmailSubscribe.CreatedBy; ;
                    EmailSubscriber.CreatedDate = EmailSubscribe.CreatedDate;
                    EmailSubscriber.ModifiedBy = Convert.ToInt64(Session["EmailID"]);
                    EmailSubscriber.ModifiedDate = GlobalRT.GetServerDateTime();
                }
                if (hdIsDelete.Value != "true")
                {
                    EmailSubscriber.IsSubscribe = true;
                }
                else
                {
                    EmailSubscriber.IsSubscribe = false;
                }
            }
            catch (Exception ex)
            {
                lblEmailSubscribe.Text = "Error : " + ex.Message;
                lblEmailSubscribe.ForeColor = System.Drawing.Color.White;
            }
            return EmailSubscriber;
        }

        protected void btnSearchWeb_Click(object sender, EventArgs e)
        {
            if (txtSearch.Text == string.Empty)
            {
                SearchKeyWord = null;
                Response.Redirect("~/Default");
            }
            else
            {
                SearchKeyWord = txtSearch.Text.Trim();
                Session["SearchWeb"] = SearchKeyWord;
                // AspxPageRead();
                Response.Redirect("~/SearchWeb");
            }
        }
    }
}