using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Text;

namespace DataBaseConvertCsvFile
{
    public partial class DBToCSVFile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnExport_Click(object sender, EventArgs e)
        {
            string strDelimiter = ddlExportFormat.SelectedValue == "COMMA DELIMITED" ? "," : "|";
            string connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            StringBuilder stringBuilder = new StringBuilder();
            using(SqlConnection sqlConnection = new SqlConnection(connectionString))
            {
                
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter("Select * From Registration", sqlConnection);
                DataSet dataSet = new DataSet();
                sqlDataAdapter.Fill(dataSet);

                dataSet.Tables[0].TableName = "Registration";
                

                foreach(DataRow dataRow in dataSet.Tables["Registration"].Rows)
                {
                    int registrationId = Convert.ToInt32(dataRow["Id"]);
                    stringBuilder.Append(registrationId.ToString() + strDelimiter);
                    stringBuilder.Append(dataRow["FirstName"].ToString() + strDelimiter);
                    stringBuilder.Append(dataRow["LastName"].ToString() + strDelimiter);
                    stringBuilder.Append(dataRow["Email"].ToString() + strDelimiter);
                    stringBuilder.Append(dataRow["Password"].ToString() + strDelimiter);
                    stringBuilder.Append(dataRow["Gender"].ToString() + strDelimiter);
                    stringBuilder.Append(dataRow["DateOfBirth"].ToString() + strDelimiter);
                    stringBuilder.Append(dataRow["ContactNo"].ToString());
                    stringBuilder.Append("\r\n");
                }
            }

            //string strFileName = strDelimiter == "," ? "Data.csv" : "Data.txt";

            StreamWriter streamWriter = new StreamWriter(@"E:\Niralee_Rampariya\C#\Files\Data.csv");
            streamWriter.WriteLine(stringBuilder.ToString());
            streamWriter.Close();
        }
    }
}