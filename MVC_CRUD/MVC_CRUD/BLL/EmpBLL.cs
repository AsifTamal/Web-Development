using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using MVC_CRUD.Models;
using MVC_CRUD.DAL;

namespace MVC_CRUD.BLL
{
    public class EmpBLL
    {
        deptDAL deptDal = new deptDAL();
        EmpDAL empDal = new EmpDAL();
        internal List<Department> GetDepartmentInfo()
        {
            return deptDal.GetDepartmentInfo();
        }

        internal List<Designation> GetDesignationByDeptId(int deptId)
        {
            return empDal.GetDesignationByDeptId(deptId);
        }

        internal int SaveEmployee(Employee objEmp)
        {
            return empDal.SaveEmployee(objEmp);
        }

        internal List<Employee> GetEmployeeInfo()
        {
            return empDal.GetEmployeeInfo();
        }

        internal Employee GetEmployeeInfoById(Employee objEmp)
        {
            return empDal.GetEmployeeInfoById(objEmp);
        }

        internal int UpdateEmployee(Employee objEmp)
        {
            return empDal.UpdateEmployee(objEmp);
        }

        internal int DeleteEmployee(Employee objEmp)
        {
            return empDal.DeleteEmployee(objEmp);
        }
    }
}