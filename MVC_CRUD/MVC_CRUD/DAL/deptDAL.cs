using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MVC_CRUD.Models;
using System.Data.SqlClient;
using MVC_CRUD.DAL.DBcon;

namespace MVC_CRUD.DAL
{
    public class deptDAL
    {
        SqlCommand cmd;
        sqlConn conn = new sqlConn();
        SqlConnection a = new SqlConnection();
        List<Department> listDept=null;
        Department dept=null;
        internal int SaveDepartment(Department objDept)
        {
            int result = 0;
            try
            {
                 a = conn.getConnection();
                cmd = new SqlCommand("test_SaveDepartmentInfo", a);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@deptId", objDept.deptId);
                cmd.Parameters.AddWithValue("@deptName", objDept.deptName);
                a.Open();
                result = cmd.ExecuteNonQuery();
            }
            catch
            {
                //throw new Exception(ex.Message);
                return result;
            }

            finally
            {
                a.Close();
            }
            return result;
        }

        internal int DeleteDepartment(Department objDept)
        {
            int result = 0;
            try
            {
                a = conn.getConnection();
                cmd = new SqlCommand("test_DeleteDepartmentInfo", a);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@DepartmentId", objDept.deptId);
                a.Open();
                result = cmd.ExecuteNonQuery();
            }
            catch
            {
                return result;
            }

            finally
            {
                a.Close();
            }
            return result;
        }

        internal int UpdateDepartment(Department objDept)
        {
            int result = 0;
            try
            {
                a = conn.getConnection();
                cmd = new SqlCommand("test_UpdateDepartmentInfo", a);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@DepartmentId", objDept.deptId);
                cmd.Parameters.AddWithValue("@DepartmentName", objDept.deptName);
                a.Open();
                result = cmd.ExecuteNonQuery();
            }
            catch
            {
                return result;
            }

            finally
            {
                a.Close();
            }
            return result;
        }

        internal List<Department> GetDepartmentInfo()
        {
            try
            {
                a = conn.getConnection();
                listDept = new List<Department>();
                cmd = new SqlCommand("test_GetDepartmentInfo", a);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                a.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    dept = new Department();
                    dept.deptId = Convert.ToInt32(reader["deptId"].ToString());
                    dept.deptName = Convert.ToString(reader["deptName"]);
                    listDept.Add(dept);
                }
            }
            catch
            {
                //throw new Exception("Error : " + ex.Message);
                return listDept;
            }
            finally
            {
                a.Close();
            }
            return listDept;
        }

        internal int GetMaxDepartmentId()
        {
            int maxId = 0;
            try
            {
                a = conn.getConnection();
                cmd = new SqlCommand("test_GetMaxId", a);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@TableName", "Department");
                cmd.Parameters.AddWithValue("@ColumnName", "deptId");
                a.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    maxId = Convert.ToInt32(reader["Id"].ToString());
                }
            }
            catch
            {
                return maxId;
            }

            finally
            {
                a.Close();
            }
            return maxId;
        }
    }
}