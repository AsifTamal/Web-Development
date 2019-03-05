using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AdvancedCRUDmvc.Models;
using System.Data.SqlClient;
using AdvancedCRUDmvc.DAL.DBconn;

namespace AdvancedCRUDmvc.DAL
{
    public class studentDAL
    {
        List<Student> listContry = null;
        List<Student> listState = null;
        List<Student> listDis = null;
        List<Student> listStd = null;
        Student stdnt = null;
        SqlCommand cmd;
        dbcon conn = new dbcon();
        SqlConnection a = new SqlConnection();
        internal List<Student> CountryInfo()
        {
            try
            {
                a = conn.getConnection();
                listContry = new List<Student>();
                cmd = new SqlCommand("test_GetCountryInfo", a);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                a.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    stdnt = new Student();
                    stdnt.CountryID = Convert.ToInt32(reader["countryID"].ToString());
                    stdnt.countryName = Convert.ToString(reader["countryName"]);
                    listContry.Add(stdnt);
                }
            }
            catch
            {
                //throw new Exception("Error : " + ex.Message);
                return listContry;
            }
            finally
            {
                a.Close();
            }
            return listContry;
        }

        internal int DeleteStudent(Student objStd)
        {
            int result = 0;
            try
            {
                a = conn.getConnection();
                cmd = new SqlCommand("test_DeleteStudentInfo", a);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@StudentId", objStd.StudentID);
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

        internal int UpdateStudent(Student objStd)
        {
            int result = 0;
            try
            {
                a = conn.getConnection();
                cmd = new SqlCommand("test_UpdateStudentInfo", a);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@StudentID", objStd.StudentID);
                cmd.Parameters.AddWithValue("@StudentName", objStd.StudentName);
                cmd.Parameters.AddWithValue("@CountryID", objStd.CountryID);
                cmd.Parameters.AddWithValue("@Birthday", objStd.Birthday);
                cmd.Parameters.AddWithValue("@StateID", objStd.StateID);
                cmd.Parameters.AddWithValue("@DistrictID", objStd.DistrictID);
                cmd.Parameters.AddWithValue("@Gender", objStd.Gender);
                cmd.Parameters.AddWithValue("@IsActive", objStd.Status);
                cmd.Parameters.AddWithValue("@StudentPic", objStd.StudentPicPath);

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

        internal Student GetStudentInfoById(Student objStu)
        {
            try
            {
                a = conn.getConnection();
                //listEmp = new List<Employee>();
                cmd = new SqlCommand("test_GetStudentInfoById", a);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@StudentId", objStu.StudentID);
                a.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    stdnt = new Student();
                    stdnt.StudentID = Convert.ToInt32(reader["StudentID"].ToString());
                    stdnt.StudentName = Convert.ToString(reader["StudentName"]);
                    stdnt.Birthday = Convert.ToDateTime(reader["Birthday"].ToString());
                    stdnt.CountryID = Convert.ToInt32(reader["CountryID"].ToString());
                    stdnt.countryName = Convert.ToString(reader["countryName"]);
                    stdnt.StateID = Convert.ToInt32(reader["StateID"].ToString());
                    stdnt.stateName = Convert.ToString(reader["stateName"]);
                    stdnt.DistrictID = Convert.ToInt32(reader["DistrictID"].ToString());
                    stdnt.districtName = Convert.ToString(reader["districtName"]);
                    stdnt.Gender = Convert.ToString(reader["Gender"]);
                    stdnt.Status = Convert.ToBoolean(reader["Status"]);
                    stdnt.StatusIsActive = Convert.ToString(reader["Condition"]);
                    stdnt.StudentPicPath = Convert.ToString(reader["StudentPic"]);
                }
            }
            catch
            {
                //throw new Exception("Error : " + ex.Message);
                return stdnt;
            }
            finally
            {
                a.Close();
            }
            return stdnt;
        }

        internal List<Student> GetStudentInfo()
        {
            try
            {
                a = conn.getConnection();
                listStd = new List<Student>();
                cmd = new SqlCommand("test_GetStudentInfo", a);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                a.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    stdnt = new Student();
                    stdnt.StudentID = Convert.ToInt32(reader["StudentID"].ToString());
                    stdnt.StudentName = Convert.ToString(reader["StudentName"]);
                    stdnt.Birthday = Convert.ToDateTime(reader["Birthday"].ToString());
                    stdnt.CountryID = Convert.ToInt32(reader["CountryID"].ToString());
                    stdnt.countryName = Convert.ToString(reader["countryName"]);
                    stdnt.StateID = Convert.ToInt32(reader["StateID"].ToString());
                    stdnt.stateName = Convert.ToString(reader["stateName"]);
                    stdnt.DistrictID = Convert.ToInt32(reader["DistrictID"].ToString());
                    stdnt.districtName = Convert.ToString(reader["districtName"]);
                    stdnt.Gender = Convert.ToString(reader["Gender"]);
                    stdnt.Status = Convert.ToBoolean(reader["Status"]);
                    stdnt.StatusIsActive = Convert.ToString(reader["Condition"]);
                    stdnt.StudentPicPath = Convert.ToString(reader["StudentPic"]);
                    listStd.Add(stdnt);
                }
            }
            catch
            {
                //throw new Exception("Error : " + ex.Message);
                return listStd;
            }
            finally
            {
                a.Close();
            }
            return listStd;
        }

        internal int SaveStudent(Student objStu)
        {
            int result = 0;
            try
            {
                a = conn.getConnection();
                cmd = new SqlCommand("test_SaveStudentInfo", a);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@StudentID", objStu.StudentID);
                cmd.Parameters.AddWithValue("@StudentName", objStu.StudentName);
                cmd.Parameters.AddWithValue("@CountryID", objStu.CountryID);
                cmd.Parameters.AddWithValue("@Birthday", objStu.Birthday);
                cmd.Parameters.AddWithValue("@StateID", objStu.StateID);
                cmd.Parameters.AddWithValue("@DistrictID", objStu.DistrictID);
                cmd.Parameters.AddWithValue("@Gender", objStu.Gender);
                cmd.Parameters.AddWithValue("@IsActive", objStu.Status);
                cmd.Parameters.AddWithValue("@StudentPic", objStu.StudentPicPath);

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

        internal List<Student> GetDistrictByStateId(int statId)
        {
            try
            {
                a = conn.getConnection();
                listDis = new List<Student>();
                cmd = new SqlCommand("test_GetDistrictByStateId", a);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@statId", statId);
                a.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    stdnt = new Student();
                    stdnt.DistrictID = Convert.ToInt32(reader["districtID"].ToString());
                    stdnt.districtName = Convert.ToString(reader["districtName"]);
                    listDis.Add(stdnt);
                }
            }
            catch
            {
                //throw new Exception("Error : " + ex.Message);
                return listDis;
            }
            finally
            {
                a.Close();
            }
            return listDis;
        }

        internal List<Student> GetStateByCountryId(int countryId)
        {
            try
            {
                a = conn.getConnection();
                listState = new List<Student>();
                cmd = new SqlCommand("test_GetStateByCountryId", a);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@countryId", countryId);
                a.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    stdnt = new Student();
                    stdnt.StateID = Convert.ToInt32(reader["stateID"].ToString());
                    stdnt.stateName = Convert.ToString(reader["stateName"]);
                    listState.Add(stdnt);
                }
            }
            catch
            {
                //throw new Exception("Error : " + ex.Message);
                return listState;
            }
            finally
            {
                a.Close();
            }
            return listState;
        }

      

        internal int GetMaxStudentId()
        {
            int maxId = 0;
            try
            {
                a = conn.getConnection();
                cmd = new SqlCommand("test_GetMaxId", a);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@TableName", "Student");
                cmd.Parameters.AddWithValue("@ColumnName", "StudentID");
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