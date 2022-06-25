using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace ExamPrep1.Student
{
    public partial class StudentRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadStudent();
                lblMsg.Text = "";
            }
        }

        private string conStr = "Data Source=DESKTOP-H1OGKJ6;Initial Catalog=ExamPrep1;Integrated Security=True";

        private int save()
        {
            int save = 0;       

            SqlConnection cnn = new SqlConnection(conStr);

            string query = @"INSERT INTO [dbo].[UserRegistration]
           ([FirstName],[LastName],[Email],[ContactNo],[Address],[Gender],[DateOfBirth]
           ,[EntryDate],[EntryBy])
            VALUES
           (@FirstName, @LastName, @Email, @ContactNo, @Address, @Gender, getdate(),getdate(), @EntryBy)";

            using (SqlCommand cmd = new SqlCommand(query, cnn))
            {
                cmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
                cmd.Parameters.AddWithValue("@LastName", txtLastName.Text);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@ContactNo", txtContactNo.Text);
                cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
                cmd.Parameters.AddWithValue("@Gender", ddlGender.SelectedValue);
                cmd.Parameters.AddWithValue("@EntryBy", Session["UserId"]);               

                cnn.Open();
                save = cmd.ExecuteNonQuery();
            }

            return save;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int result = save();

            if (result > 0)
            {
                LoadStudent();
                lblMsg.Text = "Information Saved Successfully!!!";
                lblMsg.Text = "";
            }  
            else
            {
                lblMsg.Text = "Information Saved Failed";
            }
            ClearFieldValue();
        }

        private void LoadStudent()
        {
            DataTable dt = new DataTable();
            SqlConnection cnn = new SqlConnection(conStr);

            string query = @"SELECT [FirstName],[LastName],[Email],[ContactNo],[Address],[Gender],[DateOfBirth],
           EntryDate,[EntryBy] from [dbo].[UserRegistration]";

            using (SqlCommand cmd = new SqlCommand(query, cnn))
            {
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                cnn.Open();               
                DataSet ds = new DataSet();
                sda.SelectCommand = cmd;
                sda.Fill(ds);
                dt = ds.Tables[0];             
            }
            if (dt.Rows.Count > 0)
            {
                gvStudent.DataSource = dt;
                gvStudent.DataBind();
            }
            else
            {
                gvStudent.DataSource = null;
                gvStudent.DataBind();
            }
        }

        private void ClearFieldValue()
        {
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtEmail.Text = "";
            txtAddress.Text = "";
            txtContactNo.Text = "";
            txtDate.Text = "";
            txtDof.Text = "";
            ddlGender.SelectedValue = "0";
        }
    }
}