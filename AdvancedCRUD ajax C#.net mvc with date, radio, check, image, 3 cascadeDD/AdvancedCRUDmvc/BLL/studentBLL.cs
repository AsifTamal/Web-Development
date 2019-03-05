using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using AdvancedCRUDmvc.DAL;
using AdvancedCRUDmvc.Models;

namespace AdvancedCRUDmvc.BLL
{
    public class studentBLL
    {
        studentDAL stdntdal = new studentDAL();
        internal List<Student> CountryInfo()
        {
            return stdntdal.CountryInfo();
        }

        internal int GetMaxStudentId()
        {
            return stdntdal.GetMaxStudentId();
        }

        internal List<Student> GetStateByCountryId(int countryId)
        {
            return stdntdal.GetStateByCountryId(countryId);
        }

        internal List<Student> GetDistrictByStateId(int statId)
        {
            return stdntdal.GetDistrictByStateId(statId);
        }

        internal int SaveStudent(Student objStu)
        {
            return stdntdal.SaveStudent(objStu);
        }

        internal List<Student> GetStudentInfo()
        {
            return stdntdal.GetStudentInfo();
        }

        internal Student GetStudentInfoById(Student objStu)
        {
            return stdntdal.GetStudentInfoById(objStu);
        }

        internal int UpdateStudent(Student objStd)
        {
            return stdntdal.UpdateStudent(objStd);
        }

        internal int DeleteStudent(Student objStd)
        {
            return stdntdal.DeleteStudent(objStd);
        }
    }
}