using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

namespace Hr_Mngmt
{
    public partial class Emp_Address_Details : System.Web.UI.Page
    {
        string lsconnstr = "";
        string lsquery = "";
        MySqlCommand cmd;
        MySqlConnection conn;

        protected void Page_Load(object sender, EventArgs e)
        {

            lsconnstr = @"server=127.0.0.1;uid=root;" + "pwd=Admin@123;database=Napa_Proj";

            MySqlDataAdapter adpt;
            DataSet ds;


            //conn = new MySqlConnection(lsconnstr);
            //conn.Open();

            //lsquery = "select * from Emp_Master";

            //cmd = new MySqlCommand(lsquery, conn);
            adpt = new MySqlDataAdapter(cmd);

            ds = new DataSet();

           // adpt.Fill(ds);
            //cmd.ExecuteNonQuery();
           
            //if(!Page.IsPostBack)
            //{
            //    conn = new MySqlConnection(lsconnstr);
            //    lsquery = "select * from Emp_Master";
            //    cmd = new MySqlCommand(lsquery, conn);
            //    adpt = new MySqlDataAdapter(cmd);
            //    DataTable dt = new DataTable();
            //    adpt.Fill(dt);
            //    DropDownList1.DataSource = dt;
            //    DropDownList1.DataBind();

            //}



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn = new MySqlConnection(lsconnstr);
            conn.Open();
            lsquery = "insert into T_Emp_Address_Details(Pre_Address1,Pre_Address2,Pre_City,Pre_District,Pre_State,Pre_Pincode,Per_Address1,Per_Address2,Per_City,Per_District,Per_State,Per_Pincode,Created_On,Created_By,Updated_On,Updated_By,status)values('" + txtAdd1.Text + "','" + txtAdd2.Text + "','" + txtCVT.Text + "','" + txtDist.Text + "','" + txtState.Text + "','" + txtPincd.Text + "','" + txtPermAdd1.Text + "','" + txtPermAdd2.Text + "','" + txtPermCVT.Text + "','" + TxtPermDict.Text + "','" + txtPermState.Text + "','" + txtPermPnCd.Text + "','"+txtCrtOn.Text+"','"+txtCrtBy.Text+"','"+txtUpdtOn.Text+"','"+txtUpdtBy.Text+"','"+txtStatus.Text+"')";
            cmd = new MySqlCommand(lsquery, conn);
            cmd.ExecuteNonQuery();
            Response.Write("Inserted");

        }



        protected void CheckBox1_CheckedChanged1(object sender, EventArgs e)
        {
            if (CheckBox1.Checked == true)

            txtPermAdd1.Text = txtAdd1.Text;
            txtPermAdd2.Text = txtAdd2.Text;
            txtPermCVT.Text = txtCVT.Text;
            TxtPermDict.Text = txtDist.Text;
            txtPermState.Text = txtState.Text;
            txtPermPnCd.Text = txtPincd.Text;





        }

        //protected void Button1_Click1(object sender, EventArgs e)
        //{
        //    conn = new MySqlConnection(lsconnstr);
        //    lsquery = "select * from Emp_Master where emp_id=+DrdnEmpID.SelectedItem.Value";
        //    cmd = new MySqlCommand(lsquery, conn);
        //    MySqlDataAdapter adpt = new MySqlDataAdapter(cmd);
        //    DataTable dt = new DataTable();
        //    adpt.Fill(dt);
        //   //lbl_Name.DataSource = dt;
        //  lbl_Name.DataBind();



        //}

       
    }






}




