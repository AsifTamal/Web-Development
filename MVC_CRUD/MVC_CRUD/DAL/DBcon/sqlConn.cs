using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace MVC_CRUD.DAL.DBcon
{
    public class sqlConn
    {
        public SqlConnection con = null;
        public sqlConn()
        {
            con = getConnection();
        }

        public SqlConnection getConnection()
        {

            string connection = "";
            connection = ConfigurationManager.ConnectionStrings["mvc_crud"].ConnectionString;
            SqlConnection con = new SqlConnection(connection);
            return con;
        }
    }
}