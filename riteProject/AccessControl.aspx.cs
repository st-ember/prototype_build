using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

namespace riteProject
{
    public partial class AccessControl : System.Web.UI.Page
    {
        MySql.Data.MySqlClient.MySqlConnection conn;
        MySql.Data.MySqlClient.MySqlCommand cmd;
        String queryStr;

        private List<ControlRow> controlRows;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack) 
            {
                Session["controlRows"] = new List<ControlRow>();
                GetControlRowData();
                BindControlRow();
            }

        }

        private void BindControlRow()
        {
            List<ControlRow> controlRows = (List<ControlRow>)Session["controlRows"];
            rpt_control_row.DataSource = controlRows;
            rpt_control_row.DataBind();
        }

        private void GetControlRowData()
        {
            String connString = System.Configuration.ConfigurationManager.ConnectionStrings["ZeaburConnString"].ToString();

            conn = new MySql.Data.MySqlClient.MySqlConnection(connString);
            queryStr = "";

            try
            {
                conn.Open();
                queryStr = "SELECT * FROM access_control";
                cmd = new MySql.Data.MySqlClient.MySqlCommand(queryStr, conn);

                List<ControlRow> controlRows = new List<ControlRow>();
                using (var reader = cmd.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            string unitValue = reader["unit"].ToString();
                            int workOrderValue = Convert.ToInt32(reader["work_order"]);
                            string coworkerNameValue = reader["coworker_name"].ToString();
                            string roleValue = reader["role"].ToString();

                            ControlRow newControlRow = new ControlRow(unitValue, workOrderValue, coworkerNameValue, roleValue);
                            controlRows.Add(newControlRow);
                        }
                        Session["controlRows"] = controlRows;
                    }
                    else
                    {
                    }

                }
            }
            catch (Exception ex)
            {
            }
            finally
            {
                conn.Close();
            }
        }
    }

        public class ControlRow
        {
            public string Unit
            {
                get;
                private set;
            }
            public int WorkOrder
            {
                get;
                private set;
            }
            public string CoworkerName
            {
                get;
                private set;
            }
            public string Role
            {
                get;
                private set;
            }
            public ControlRow(string unit, int workOrder, string coworkerName, string role)
            {
                Unit = unit;
                WorkOrder = workOrder;
                CoworkerName = coworkerName;
                Role = role;
            }
        }
}
