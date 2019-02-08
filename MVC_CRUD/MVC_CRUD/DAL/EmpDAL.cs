using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MVC_CRUD.BLL;
using MVC_CRUD.Models;
using System.Data.SqlClient;
using MVC_CRUD.DAL.DBcon;

namespace MVC_CRUD.DAL
{
    public class EmpDAL
    {
        List<Designation> listDesig = null;
        Designation desg = null;
        SqlCommand cmd;
        sqlConn conn = new sqlConn();
        SqlConnection a = new SqlConnection();
        List<Employee> listEmp = null;
        Employee emp = null;
        internal List<Designation> GetDesignationByDeptId(int deptId)
        {
            try
            {
                a = conn.getConnection();
                listDesig = new List<Designation>();
                cmd = new SqlCommand("test_GetDesignationByDeptId", a);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@DepartmentId", deptId);
                a.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    desg = new Designation();
                    desg.DesignationId = Convert.ToInt32(reader["DesignationId"].ToString());
                    desg.DesignationName = Convert.ToString(reader["DesignationName"]);
                    listDesig.Add(desg);
                }
            }
            catch
            {
                //throw new Exception("Error : " + ex.Message);
                return listDesig;
            }
            finally
            {
                a.Close();
            }
            return listDesig;
        }

        internal int DeleteEmployee(Employee objEmp)
        {
            int result = 0;
            try
            {
                a = conn.getConnection();
                cmd = new SqlCommand("test_DeleteEmployeeInfo", a);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@EmployeeId", objEmp.EmployeeId);
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

        internal int UpdateEmployee(Employee objEmp)
        {
            int result = 0;
            try
            {
                a = conn.getConnection();
                cmd = new SqlCommand("test_UpdateEmployeeInfo", a);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@EmployeeId", objEmp.EmployeeId);
                cmd.Parameters.AddWithValue("@DepartmentId", objEmp.DepartmentId);
                cmd.Parameters.AddWithValue("@DesignationId", objEmp.DesignationId);
                cmd.Parameters.AddWithValue("@EmployeeName", objEmp.EmployeeName);
                cmd.Parameters.AddWithValue("@Gender", objEmp.Gender);
                cmd.Parameters.AddWithValue("@IsActive", objEmp.IsActive);
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

        internal Employee GetEmployeeInfoById(Employee objEmp)
        {
            try
            {
                a = conn.getConnection();
                //listEmp = new List<Employee>();
                cmd = new SqlCommand("test_GetEmployeeInfoById", a);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@EmployeeId", objEmp.EmployeeId);
                a.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    emp = new Employee();
                    emp.EmployeeId = Convert.ToInt32(reader["EmployeeId"].ToString());
                    emp.EmployeeName = Convert.ToString(reader["EmployeeName"]);
                    emp.DepartmentId = Convert.ToInt32(reader["deptId"].ToString());
                    emp.DepartmentName = Convert.ToString(reader["deptName"]);
                    emp.DesignationId = Convert.ToInt32(reader["DesignationId"].ToString());
                    emp.DesignationName = Convert.ToString(reader["DesignationName"]);
                    emp.Gender = Convert.ToString(reader["Gender"]);
                    emp.IsActive = Convert.ToBoolean(reader["IsActive"]);
                    emp.Statuss = Convert.ToString(reader["Status"]);
                    //listEmp.Add(emp);
                }
            }
            catch
            {
                //throw new Exception("Error : " + ex.Message);
                return emp;
            }
            finally
            {
                a.Close();
            }
            return emp;
        }

        internal List<Employee> GetEmployeeInfo()
        {
            try
            {
                a = conn.getConnection();
                listEmp = new List<Employee>();
                cmd = new SqlCommand("test_GetEmployeeInfo", a);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                a.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    emp = new Employee();
                    emp.EmployeeId = Convert.ToInt32(reader["EmployeeId"].ToString());
                    emp.EmployeeName = Convert.ToString(reader["EmployeeName"]);
                    emp.DepartmentId = Convert.ToInt32(reader["DepartmentId"].ToString());
                    emp.DepartmentName = Convert.ToString(reader["deptName"]);
                    emp.DesignationId = Convert.ToInt32(reader["DesignationId"].ToString());
                    emp.DesignationName = Convert.ToString(reader["DesignationName"]);
                    emp.Gender = Convert.ToString(reader["Gender"]);
                    emp.IsActive = Convert.ToBoolean(reader["IsActive"]);
                    emp.Statuss = Convert.ToString(reader["Status"]);
                    listEmp.Add(emp);
                }
            }
            catch
            {
                //throw new Exception("Error : " + ex.Message);
                return listEmp;
            }
            finally
            {
                a.Close();
            }
            return listEmp;
        }

        internal int SaveEmployee(Employee objEmp)
        {
            int result = 0;
            try
            {
                a = conn.getConnection();
                cmd = new SqlCommand("test_SaveEmployeeInfo", a);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@DepartmentId", objEmp.DepartmentId);
                cmd.Parameters.AddWithValue("@DesignationId", objEmp.DesignationId);
                cmd.Parameters.AddWithValue("@EmployeeName", objEmp.EmployeeName);
                cmd.Parameters.AddWithValue("@Gender", objEmp.Gender);
                cmd.Parameters.AddWithValue("@IsActive", objEmp.IsActive);
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
    }
}