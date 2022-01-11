using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.IO;

namespace Hr_Mngmt
{
    public partial class Emp_Edu_Qualification_Details : System.Web.UI.Page
    {
      //  private int i;

        protected void Page_Load(object sender, EventArgs e)
        {
            

                if (!IsPostBack)
                {
                 
                string[] filePaths = Directory.GetFiles(Server.MapPath("~/Uploads/"));
                    List<ListItem> files = new List<ListItem>();
                    foreach (string filePath in filePaths)
                    {
                        files.Add(new ListItem(Path.GetFileName(filePath), filePath));
                    }
                    GridView1.DataSource = files;
                    GridView1.DataBind();
                }

            if (!IsPostBack)
            {
                Bindgridwithsinglerow();
            }

           
        }
        private void Bindgridwithsinglerow()
        {
            DataTable dt = new DataTable();
            DataRow dr = null;

            dt.Columns.Add(new DataColumn("sno", typeof(string)));
            dt.Columns.Add(new DataColumn("Qualification", typeof(string)));
            dt.Columns.Add(new DataColumn("Passing Year", typeof(string)));
            dt.Columns.Add(new DataColumn("Percentage", typeof(string)));
            dt.Columns.Add(new DataColumn("Institution", typeof(string)));
            dt.Columns.Add(new DataColumn("Institute Address", typeof(string)));
            dr = dt.NewRow();
            dr["sno"] = 1;
            dr["Qualification"] = string.Empty;
            dr["Passing Year"] = string.Empty;
            dr["Percentage"] = string.Empty;
            dr["Institution"] = string.Empty;
            dr["Institute Address"] = string.Empty;

            dt.Rows.Add(dr);
            ViewState["datatable"] = dt;
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
      
        protected void GridView1_SelectedIndexChanged2(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand2(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "AddNewRow")
            {
                if (ViewState["datatable"] != null)
                {
                    DataTable dttable = (DataTable)ViewState["datatable"];
                    DataRow dr = null;
                    if (dttable.Rows.Count > 0)
                    {
                        dr = dttable.NewRow();
                        dr["sno"] = dttable.Rows.Count + 1;
                        dttable.Rows.Add(dr);
                        ViewState["datatable"] = dttable;
                        for (int i = 0; i < dttable.Rows.Count - 1; i++)
                        {
                            TextBox t1 = (TextBox)GridView1.Rows[i].Cells[1].FindControl("QualificationTxt");
                            TextBox t2 = (TextBox)GridView1.Rows[i].Cells[2].FindControl("PassingTxt");
                            TextBox t3 = (TextBox)GridView1.Rows[i].Cells[3].FindControl("InstitutionTxt");
                            TextBox t4 = (TextBox)GridView1.Rows[i].Cells[4].FindControl("AddTxt");
                            dttable.Rows[i]["Qualification"] = t1.Text;
                            dttable.Rows[i]["Passing Year"] = t2.Text;
                            dttable.Rows[i]["Institution"] = t3.Text;
                            dttable.Rows[i]["Institute Address"] = t4.Text;

                        }

                        GridView1.DataSource = dttable;
                        GridView1.DataBind();

                    }
                }


                else
                {
                    Response.Write("viewstate is null");
                }
                setdata();

            }
            if (e.CommandName == "removerow")
            {
                if (ViewState["datatable"] != null)

                {

                    DataTable dttable = (DataTable)ViewState["datatable"];
                    // DataRow dr = null;

                    if (dttable.Rows.Count > 1)

                    {



                        int sno = 0;
                        dttable.Rows.Remove(dttable.Rows[sno]);
                        ViewState["datatable"] = dttable;
                        //for (int i = 0; i < dttable.Rows.Count - 1; i++)
                        //{
                        //    TextBox t1 = (TextBox)GridView1.Rows[i].Cells[1].FindControl("nametxt");
                        //    TextBox t2 = (TextBox)GridView1.Rows[i].Cells[2].FindControl("phonetxt");
                        //    dttable.Rows[i]["Name"] = t1.Text;
                        //    dttable.Rows[i]["Phoneno"] = t2.Text;

                        //}
                        GridView1.DataSource = dttable;
                        GridView1.DataBind();

                    }
                }
                //Set Previous Data on Postbacks

                SetPreviousData();

            }
        }

        private void SetPreviousData()
        {
            // throw new NotImplementedException();
            //int index = 0;
            if (ViewState["datatable"] != null)
            {
                DataTable dttb = (DataTable)ViewState["datatable"];
                //if (dttb.Rows.Count > 1)
                //{
                //    //for (int i = 0; i < dttb.Rows.Count; i++)
                //    //{
                //    //    TextBox t11 = (TextBox)GridView1.Rows[i].Cells[1].FindControl("nametxt");
                //    //    TextBox t12 = (TextBox)GridView1.Rows[i].Cells[2].FindControl("phonetxt");
                //    //    if (i < dttb.Rows.Count - 1)
                //    //    {
                //    //        t11.Text = dttb.Rows[i]["Name"].ToString();
                //    //        t12.Text = dttb.Rows[i]["phoneno"].ToString();

                //    //    }

                //    //}
                //    index++;


            }
        }

        private void setdata()
        {
            //throw new NotImplementedException();
            int index = 0;
            if (ViewState["datatable"] != null)
            {
                DataTable dttb = (DataTable)ViewState["datatable"];
                if (dttb.Rows.Count > 0)
                {
                    for (int i = 0; i < dttb.Rows.Count; i++)
                    {
                        TextBox t11 = (TextBox)GridView1.Rows[i].Cells[1].FindControl("QualificationTxt");
                        TextBox t12 = (TextBox)GridView1.Rows[i].Cells[2].FindControl("PassingTxt");
                        TextBox t13 = (TextBox)GridView1.Rows[i].Cells[2].FindControl("InstitutionTxt");
                        TextBox t14 = (TextBox)GridView1.Rows[i].Cells[2].FindControl("AddTxt");

                        if (i < dttb.Rows.Count - 1)
                        {
                            t11.Text = dttb.Rows[i]["Qualification"].ToString();
                            t12.Text = dttb.Rows[i]["Passing Year"].ToString();
                            t12.Text = dttb.Rows[i]["Institution"].ToString();
                            t12.Text = dttb.Rows[i]["Institute Address"].ToString();

                        }

                    }
                    index++;

                }
            }
        }

        protected void GridView1_RowCreated1(object sender, GridViewRowEventArgs e)
        {

        }

        //protected void Button3_Click(object sender, EventArgs e)
        //{
        //    if (FileUpload1.HasFile)
        //        FileUpload1.SaveAs(@"c:\temp\" + FileUpload1.FileName);
        //}

        protected void UploadFile(object sender, EventArgs e)
        {
            //string fileName = Path.GetFileName(FileUpload1.PostedFile.FileName);
            //FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Uploads/") + fileName);
            //Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void BtnUpload_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }

        protected void GridView2_RowCommand1(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void GridView2_RowCreated(object sender, GridViewRowEventArgs e)
        {

        }

        protected void GridView2_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}
    
