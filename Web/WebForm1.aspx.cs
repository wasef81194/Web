using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string connetionString;
            SqlConnection cnn;

            connetionString = @"Server=WASEF-PC\SQLEXPRESS;Trusted_Connection=True;Database=demodb ;User ID=Mylogin;Password=123";

            cnn = new SqlConnection(connetionString);

            cnn.Open();

            //Response.Write("Connection Made </br>");

            cnn.Close();

            /*
                        SqlCommand command;
                        SqlDataAdapter adapter = new SqlDataAdapter();
                        String sql = "";
                        sql = "Insert into demo_tb(TutorialID,TutorialName) value(3, \"VB.Net\")";
                        command = new SqlCommand(sql, cnn);
                        adapter.InsertCommand = new SqlCommand(sql, cnn);
                        adapter.InsertCommand.ExecuteNonQuery();
                        command.Dispose(); 
                        cnn.Close();*/
            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["Nom"] = txtName.Text;

           // Response.Write(Session["Nom"]);

            lbName.Visible = false;
            txtName.Visible = false;
            Location.Visible = false;
            CheckC.Visible = false;
            CheckAsp.Visible = false;
            Female.Visible = false;
            Male.Visible = false;
            Button1.Visible = false;
        }

        
        protected void SeeBdd_Click(object sender, EventArgs e)
        {
            string connetionString;
            SqlConnection cnn;

            connetionString = @"Server=WASEF-PC\SQLEXPRESS;Trusted_Connection=True;Database=demodb ;User ID=Mylogin;Password=123";

            cnn = new SqlConnection(connetionString);
            cnn.Open();

            SqlCommand command;
            SqlDataReader dataReader;
            String sql, Output = " ";
            sql = "Select TutorialID,TutorialName from demotb";

            command = new SqlCommand(sql, cnn);

            dataReader = command.ExecuteReader();
            while (dataReader.Read())
            {
                Output = Output + dataReader.GetValue(0) + "-" + dataReader.GetValue(1) + "</br>";
            }

            Response.Write(Output);
            dataReader.Close();
            command.Dispose();

            cnn.Close();
            lbName.Visible = false;
            txtName.Visible = false;
            Location.Visible = false;
            CheckC.Visible = false;
            CheckAsp.Visible = false;
            Female.Visible = false;
            Male.Visible = false;
            Button1.Visible = false;
        }

        protected void AddInBdd_Click(object sender, EventArgs e)
        {
            string connetionString;
            SqlConnection cnn;

            connetionString = @"Server=WASEF-PC\SQLEXPRESS;Trusted_Connection=True;Database=demodb ;User ID=Mylogin;Password=123";

            cnn = new SqlConnection(connetionString);
            cnn.Open();
            SqlCommand command;
            SqlDataAdapter adapter = new SqlDataAdapter();
            String sql = "Insert into demotb(TutorialID,TutorialName) values (3, 'VB.Net ')";

            command = new SqlCommand(sql, cnn);

            adapter.InsertCommand = command;
            adapter.InsertCommand.ExecuteNonQuery();

            command.Dispose();

            cnn.Close();
            lbName.Visible = false;
            txtName.Visible = false;
            Location.Visible = false;
            CheckC.Visible = false;
            CheckAsp.Visible = false;
            Female.Visible = false;
            Male.Visible = false;
            Button1.Visible = false;
        }

        protected void MajBdd_Click(object sender, EventArgs e)
        {
            string connetionString;
            SqlConnection cnn;

            connetionString = @"Server=WASEF-PC\SQLEXPRESS;Trusted_Connection=True;Database=demodb ;User ID=Mylogin;Password=123";

            cnn = new SqlConnection(connetionString);
            cnn.Open();

            SqlCommand command;
            SqlDataAdapter adapter = new SqlDataAdapter();
            String sql = "Update demotb set TutorialName = '" + "VB.Net Complete" + "' where TutorialID = 3";

            command = new SqlCommand(sql, cnn);

            adapter.InsertCommand = command;
            adapter.InsertCommand.ExecuteNonQuery();

            command.Dispose();

            cnn.Close();

            lbName.Visible = false;
            txtName.Visible = false;
            Location.Visible = false;
            CheckC.Visible = false;
            CheckAsp.Visible = false;
            Female.Visible = false;
            Male.Visible = false;
            Button1.Visible = false;
        }

        protected void DeleteInBdd_Click(object sender, EventArgs e)
        {
            string connetionString;
            SqlConnection cnn;

            connetionString = @"Server=WASEF-PC\SQLEXPRESS;Trusted_Connection=True;Database=demodb ;User ID=Mylogin;Password=123";

            cnn = new SqlConnection(connetionString);
            cnn.Open();

            SqlCommand command;
            SqlDataAdapter adapter = new SqlDataAdapter();
            String sql = "Delete demotb where TutorialID=3";

            command = new SqlCommand(sql, cnn);

            adapter.InsertCommand = command;
            adapter.InsertCommand.ExecuteNonQuery();

            command.Dispose();

            cnn.Close();
            lbName.Visible = false;
            txtName.Visible = false;
            Location.Visible = false;
            CheckC.Visible = false;
            CheckAsp.Visible = false;
            Female.Visible = false;
            Male.Visible = false;
            Button1.Visible = false;

        }
    }
}