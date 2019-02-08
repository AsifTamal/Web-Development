using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MVC_CRUD.BLL;
using MVC_CRUD.Models;

namespace MVC_CRUD.Controllers
{
    public class DesignationController : Controller
    {
        desigBLL desigbll=new desigBLL();
        // GET: Designation
        public ActionResult Index()
        {
            return View();
        }
        public JsonResult GetDepartmentInfoForDropDown()
        {
            var deptList = desigbll.GetDepartmentInfoForDropDown();
            return Json(deptList, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public JsonResult SaveDesignation(Designation objDesignation)
        {
            bool status = false;
            string message = "failed";
            var result = desigbll.SaveDesignation(objDesignation);
            if (result > 0)
            {
                message = "successfully saved";
                status = true;
            }
            return Json(new { status = status, message = message });
        }
        public JsonResult GetDesignationInfo()
        {
            List<Designation> designationList = desigbll.GetDesignationInfo();
            return Json(new { data = designationList }, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public JsonResult DeleteDesignation(Designation objDesignation)
        {
            bool status = false;
            string message = "failed";
            var result = desigbll.DeleteDesignation(objDesignation);
            if (result > 0)
            {
                message = "successfully deleted";
                status = true;
            }
            return Json(new { status = status, message = message });
        }
    }
}