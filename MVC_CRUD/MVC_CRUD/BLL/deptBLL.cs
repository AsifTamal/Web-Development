using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MVC_CRUD.Models;
using MVC_CRUD.DAL;

namespace MVC_CRUD.BLL
{
    public class deptBLL
    {
        deptDAL deptDal=new deptDAL();
        internal int SaveDepartment(Department objDept)
        {
            return deptDal.SaveDepartment(objDept);
        }

        internal int GetMaxDepartmentId()
        {
            return deptDal.GetMaxDepartmentId();
        }

        internal List<Department> GetDepartmentInfo()
        {
            return deptDal.GetDepartmentInfo();
        }

        internal int UpdateDepartment(Department objDept)
        {
            return deptDal.UpdateDepartment(objDept);
        }

        internal int  DeleteDepartment(Department objDept)
        {
            return deptDal.DeleteDepartment(objDept);
        }
    }
}