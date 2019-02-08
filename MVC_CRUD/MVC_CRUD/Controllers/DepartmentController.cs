using MVC_CRUD.BLL;
using MVC_CRUD.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace MVC_CRUD.Controllers
{
    public class DepartmentController : Controller
    {
        deptBLL deptBll;
        // GET: Department
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult SaveDepartment(Department objDept)
        {
            bool status = false;
            string message = "failed";
            deptBll = new deptBLL();
            var result = deptBll.SaveDepartment(objDept);
            if (result > 0)
            {
                status = true;
                message = "successfully saved";
            }
            return new JsonResult { Data = new { status = status, message = message } };
        }
        [HttpGet]
        public JsonResult GetMaxDepartmentId()
        {
            deptBll = new deptBLL();
            var deptId = deptBll.GetMaxDepartmentId();
            return Json(new { deptId }, JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetDepartmentInfo()
        {
            deptBll = new deptBLL();
            List<Department> listDept = deptBll.GetDepartmentInfo();
            return Json(new { data = listDept }, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public ActionResult UpdateDepartment(Department objDept)
        {
            bool status = false;
            string message = "failed";
            deptBll = new deptBLL();
            var result = deptBll.UpdateDepartment(objDept);
            if (result > 0)
            {
                status = true;
                message = "successfully updated";
            }
            return new JsonResult { Data = new { status = status, message = message } };
        }

        [HttpPost]
        public ActionResult DeleteDepartment(Department objDept)
        {
            bool status = false;
            string message = "failed";
            deptBll = new deptBLL();
            var result = deptBll.DeleteDepartment(objDept);
            if (result > 0)
            {
                status = true;
                message = "successfully deleted";
            }
            return new JsonResult { Data = new { status = status, message = message } };
        }

    }
}