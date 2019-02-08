using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MVC_CRUD.Models;
using MVC_CRUD.DAL.DBcon;
using System.Data.SqlClient;
using System.Data;

namespace MVC_CRUD.DAL
{
    public class desigDAL
    {
        public sqlConn conn = new sqlConn();
        SqlConnection connection = new SqlConnection();
        SqlCommand cmd;
        List<Designation> desigList = null;
        Designation objDesig = null;
        internal List<Department> GetDepartmentInfoForDropDown()
        {
            List<Department> listDept = null;
            Department dept = null;
            try
            {
                listDept = new List<Department>();
                connection = conn.getConnection();
                cmd = new SqlCommand("test_GetDepartmentInfo", connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                connection.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    dept = new Department();
                    dept.deptId = Convert.ToInt32(reader["deptId"].ToString());
                    dept.deptName = reader["deptName"].ToString();
                    listDept.Add(dept);
                }
            }
            catch
            {
                return listDept;
            }
            finally
            {
                connection.Close();
            }
            return listDept;
        }

        internal int DeleteDesignation(Designation objDesignation)
        {
            int result = 0;
            try
            {
                connection = conn.getConnection();
                cmd = new SqlCommand("test_DeleteDesignationInfo", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@DesignationId", objDesignation.DesignationId);
                connection.Open();
                result = cmd.ExecuteNonQuery();
            }
            catch
            {
                return result;
            }
            finally
            {
                connection.Close();
            }

            return result;
        }

        internal List<Designation> GetDesignationInfo()
        {
            //List<Designation> listDesignations = null;
            //Designation designation = null;
            try
            {
                desigList = new List<Designation>();
                connection = conn.getConnection();
                cmd = new SqlCommand("test_GetDesignationInfo", connection);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                connection.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    objDesig = new Designation();
                    objDesig.DesignationId = Convert.ToInt32(reader["DesignationId"].ToString());
                    objDesig.DesignationName = reader["DesignationName"].ToString();
                    objDesig.deptId = Convert.ToInt32(reader["DeptId"].ToString());
                    objDesig.deptName = reader["DeptName"].ToString();
                    desigList.Add(objDesig);
                }
            }
            catch
            {
                return desigList;
            }
            finally
            {
                connection.Close();
            }
            return desigList;
        }

        internal int SaveDesignation(Designation objDesignation)
        {
            int result = 0;
            try
            {
                connection = conn.getConnection();
                cmd = new SqlCommand("test_SaveDesignationInfo", connection);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@DesignationName", objDesignation.DesignationName);
                cmd.Parameters.AddWithValue("@DepartmentId", objDesignation.deptId);
                connection.Open();
                result = cmd.ExecuteNonQuery();
            }
            catch
            {
                return result;
            }
            finally
            {
                connection.Close();
            }

            return result;
        }
    }
}