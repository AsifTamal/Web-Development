using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MVC_CRUD.Models;
using MVC_CRUD.DAL;

namespace MVC_CRUD.BLL
{
    public class desigBLL
    {
        desigDAL desigDal=new desigDAL();
        internal List<Department> GetDepartmentInfoForDropDown()
        {
            return desigDal.GetDepartmentInfoForDropDown();
        }

        internal int SaveDesignation(Designation objDesignation)
        {
            return desigDal.SaveDesignation(objDesignation);
        }

        internal List<Designation> GetDesignationInfo()
        {
            return desigDal.GetDesignationInfo();
        }

        internal int DeleteDesignation(Designation objDesignation)
        {
            return desigDal.DeleteDesignation(objDesignation);
        }
    }
}