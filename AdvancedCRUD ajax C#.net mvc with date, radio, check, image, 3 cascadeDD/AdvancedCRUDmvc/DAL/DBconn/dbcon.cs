using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace AdvancedCRUDmvc.DAL.DBconn
{
    public class dbcon
    {
        public SqlConnection con = null;
        public dbcon()
        {
            con = getConnection();
        }

        public SqlConnection getConnection()
        {

            string connection = "";
            connection = ConfigurationManager.ConnectionStrings["AdvanceCruDmvc"].ConnectionString;
            SqlConnection con = new SqlConnection(connection);
            return con;
        }
    }
}