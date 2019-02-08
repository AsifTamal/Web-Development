using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVC_CRUD.BLL;
using MVC_CRUD.Models;
using MVC_CRUD.DAL;


namespace MVC_CRUD.Controllers
{
    public class EmployeeController : Controller
    {
        EmpBLL empBll = new EmpBLL();
        
        // GET: Employee
        public ActionResult Index()
        {
            ViewBag.DepartmentInfo = empBll.GetDepartmentInfo();
            return View();
        }
        public JsonResult GetDesignationByDeptId(int deptId)
        {
            //deptBLL = new DepartmentBLL();
            var listDesig = empBll.GetDesignationByDeptId(deptId);
            return Json(listDesig, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult SaveEmployee(Employee objEmp)
        {
            bool status = false;
            string message = "failed";
            var result = empBll.SaveEmployee(objEmp);
            if (result > 0)
            {
                status = true;
                message = "successfully saved";
            }
            return new JsonResult { Data = new { status = status, message = message } };
        }
        public JsonResult GetEmployeeInfo()
        {
            List<Employee> listEmp = empBll.GetEmployeeInfo();
            return Json(new { data = listEmp }, JsonRequestBehavior.AllowGet);
        }

        public JsonResult GetEmployeeInfoById(Employee objEmp)
        {
            Employee listEmp = empBll.GetEmployeeInfoById(objEmp);
            return Json(listEmp, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public ActionResult UpdateEmployee(Employee objEmp)
        {
            bool status = false;
            string message = "failed";
            var result = empBll.UpdateEmployee(objEmp);
            if (result > 0)
            {
                status = true;
                message = "successfully updated";
            }
            return new JsonResult { Data = new { status = status, message = message } };
        }

        [HttpPost]
        public ActionResult DeleteEmployee(Employee objEmp)
        {
            bool status = false;
            string message = "failed";
            var result = empBll.DeleteEmployee(objEmp);
            if (result > 0)
            {
                status = true;
                message = "successfully deleted";
            }
            return new JsonResult { Data = new { status = status, message = message } };
        }

    }
}