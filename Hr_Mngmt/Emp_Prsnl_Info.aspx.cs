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
    public partial class Emp_Prsnl_Info : System.Web.UI.Page
    {
        string lsconnstr = "";
        string lsquery = "";
        MySqlCommand cmd;
        MySqlConnection conn;

        protected void Page_Load(object sender, EventArgs e)
        {
            lsconnstr = @"server=127.0.0.1;uid=root;" + "pwd=Admin@123;database=Napa_Proj";
        }

        protected void BtnInsrt_Click(object sender, EventArgs e)
        {
            conn = new MySqlConnection(lsconnstr);
            conn.Open();
            lsquery = "insert into Emp_Master(Emp_Id,Emp_Name,Emp_Father_Name,Emp_Gender,Emp_Dob,Emp_Marital_Status,Emp_Email,Emp_Aadhar_No,Emp_Date_of_Appointment,Emp_Status,Emp_Resisdent,Emp_Mobile_No,Emp_Nationality,Emp_Pan_No)values('" + txtEmpID.Text + "','" + txtEmpName.Text + "','" + txtFatherName.Text + "','" + rdGender.SelectedItem.Text + "','" + txtDob.Text + "','" +drpdnMaritalStatus.Text+"','" + txtEmail.Text + "','" + txtAadharNo.Text + "','" + txtDateofAppointment.Text + "','" + drpdnEmpStatus.Text + "','" + txtResidenceNo.Text + "','" + txtMobileNo.Text + "','" + txtNationality.Text + "','" + txtPanNo.Text + "')";
            cmd = new MySqlCommand(lsquery, conn);
            cmd.ExecuteNonQuery();
            Response.Write("Inserted");
            // conn.Close();
        }

        protected void BtnVw_Click(object sender, EventArgs e)
        {

            MySqlDataAdapter adpt;         
            DataSet ds;
         

            conn = new MySqlConnection(lsconnstr);
            conn.Open();

            lsquery = "select * from Emp_Master";

            cmd = new MySqlCommand(lsquery, conn);
            adpt = new MySqlDataAdapter(cmd);
            ds = new DataSet();
            adpt.Fill(ds);
            cmd.ExecuteNonQuery();
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds.Tables[0];

                GridView1.DataBind();
            }
        }

        protected void BtnDlt_Click(object sender, EventArgs e)
        {
            MySqlDataAdapter adpt;
            DataSet ds;

            conn = new MySqlConnection(lsconnstr);
            conn.Open();

            lsquery = "Delete from Emp_Master where Emp_Id='" + txtEmpID.Text + "'";

            cmd = new MySqlCommand(lsquery, conn);
            adpt = new MySqlDataAdapter(cmd);
            ds = new DataSet();
            adpt.Fill(ds);

            Response.Write("Deleted");

            //DataTable dt = new DataTable();
            //dt = null;
            //GridView1.DataSource = ds;
            //GridView1.DataBind();
            //for(int i=0;GridView1.Rows.Count>1;)
            //{
            //    GridView1.Rows.RemoveAt(i);

            //}
            // GridView1.DataSource = null;
            GridView1.SelectedIndex = -1;

        }

       
        protected void BtnUpdt_Click(object sender, EventArgs e)
        {

            MySqlDataAdapter adpt;
            DataSet ds;

            conn = new MySqlConnection(lsconnstr);
            conn.Open();


            lsquery = "Update Emp_Master set";
            
            lsquery = lsquery + " Emp_Name='" + txtEmpName.Text + "',";
            lsquery = lsquery + " Emp_Father_Name='" + txtFatherName.Text + "',";
            lsquery = lsquery + " Emp_Gender='" + rdGender.SelectedItem.Text + "',";
            lsquery = lsquery + " Emp_Dob='" + txtDob.Text + "',";
            lsquery = lsquery + " Emp_Marital_status='" + drpdnMaritalStatus.SelectedItem.Text + "',";
            lsquery = lsquery + " Emp_Email='" + txtEmail.Text + "',";
            lsquery = lsquery + " Emp_Aadhar_No='" + txtAadharNo.Text + "',";
            lsquery = lsquery + " Emp_Date_of_Appointment='" + txtDateofAppointment.Text + "',";
            lsquery = lsquery + " Emp_Status='" + drpdnEmpStatus.Text + "',";
            lsquery = lsquery + " Emp_Resisdent='" + txtResidenceNo.Text + "',";
            lsquery = lsquery + " Emp_Mobile_No='" + txtMobileNo.Text + "',";
            lsquery = lsquery + " Emp_Nationality='" + txtNationality.Text + "',";
            lsquery = lsquery + " Emp_Pan_No='" + txtPanNo.Text + "'";
            lsquery = lsquery + "  where Emp_id = '" + txtEmpID.Text + "'";

            cmd = new MySqlCommand(lsquery, conn);
            adpt = new MySqlDataAdapter(cmd);
            ds = new DataSet();
            adpt.Fill(ds);
            cmd.ExecuteNonQuery();

            Response.Write("Updated");
            

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            GridView gv = (GridView)sender;
            int RowIndex = Convert.ToInt32(e.CommandArgument);
            txtEmpID.Text = gv.Rows[RowIndex].Cells[1].Text.ToString();
            txtEmpName.Text = gv.Rows[RowIndex].Cells[2].Text.ToString();
            txtFatherName.Text = gv.Rows[RowIndex].Cells[3].Text.ToString();
            if (gv.Rows[RowIndex].Cells[4].Text.ToString().Equals("Male"))
                rdGender.SelectedIndex = 0;
            else
                rdGender.SelectedIndex = 1;
           
            txtDob.Text = gv.Rows[RowIndex].Cells[5].Text.ToString();
            
            drpdnMaritalStatus.SelectedItem.Text = gv.Rows[RowIndex].Cells[6].Text.ToString();
            txtEmail.Text = gv.Rows[RowIndex].Cells[7].Text.ToString();
            txtAadharNo.Text = gv.Rows[RowIndex].Cells[8].Text.ToString();
            txtDateofAppointment.Text = gv.Rows[RowIndex].Cells[9].Text.ToString();
            drpdnEmpStatus.SelectedItem.Text = gv.Rows[RowIndex].Cells[10].Text.ToString();
            txtResidenceNo.Text = gv.Rows[RowIndex].Cells[11].Text.ToString();
            txtMobileNo.Text = gv.Rows[RowIndex].Cells[12].Text.ToString();
            txtNationality.SelectedItem.Text = gv.Rows[RowIndex].Cells[13].Text.ToString();
            txtPanNo.Text = gv.Rows[RowIndex].Cells[14].Text.ToString();




          
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //GridViewRow gv = GridView1.SelectedRow;
        }

        protected void select(object sender, GridViewEditEventArgs e)
        {

        }
    }
}