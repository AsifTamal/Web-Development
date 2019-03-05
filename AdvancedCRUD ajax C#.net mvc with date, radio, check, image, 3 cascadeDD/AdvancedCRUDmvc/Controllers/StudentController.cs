using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using AdvancedCRUDmvc.BLL;
using AdvancedCRUDmvc.Models;
using System.IO;

namespace AdvancedCRUDmvc.Controllers
{
    public class StudentController : Controller
    {
        studentBLL stdntbll = new studentBLL();
       

        // GET: Student
        public ActionResult Index()
        {
            ViewBag.CountryInfo = stdntbll.CountryInfo();
            return View();
        }
        [HttpGet]
        public JsonResult getMaxStudentId()
        {
           // deptBLL = new DepartmentBLL();
            var stdntId = stdntbll.GetMaxStudentId();
            return Json(new { stdntId }, JsonRequestBehavior.AllowGet);
        }

        public JsonResult GetStateByCountryId(int countryId)
        {
            //  deptBLL = new DepartmentBLL();
            var listState = stdntbll.GetStateByCountryId(countryId);
            return Json(listState, JsonRequestBehavior.AllowGet);
        }
        public JsonResult GetDistrictByStateId(int statId)
        {
            //  deptBLL = new DepartmentBLL();
            var listDis = stdntbll.GetDistrictByStateId(statId);
            return Json(listDis, JsonRequestBehavior.AllowGet);
        }
        [HttpPost]
        public ActionResult SaveStudent(Student objStu)
        {
            bool status = false;
            string message = "failed";
            var result=0;
           


            if (objStu.StudentName != null && objStu.UploadImage != null)

            {
                string fileName = Path.GetFileNameWithoutExtension(objStu.UploadImage.FileName);
                string extension = Path.GetExtension(objStu.UploadImage.FileName);
                fileName = fileName + DateTime.Now.ToString("yymmssff") + extension;
                objStu.StudentPicPath = fileName;
                objStu.UploadImage.SaveAs(Path.Combine(Server.MapPath("~/AppFile/Images"), fileName));



            }
            else {
                objStu.StudentPicPath = string.Empty;
            }
           
            result = stdntbll.SaveStudent(objStu);

            if (result > 0)
            {
                status = true;
                message = "successfully saved";
            }


            return new JsonResult { Data = new { status = status, message = message } };
        }

        public JsonResult GetStudentInfo()
        {
            List<Student> listStd = stdntbll.GetStudentInfo();
            return Json(new { data = listStd }, JsonRequestBehavior.AllowGet);
        }

        public JsonResult GetStudentInfoById(Student objStu)
        {
            Student listStu  = stdntbll.GetStudentInfoById(objStu);
            return Json(listStu, JsonRequestBehavior.AllowGet);
        }

        [HttpPost]
        public ActionResult UpdateStudent(Student objStd)
        {
            bool status = false;
            string message = "failed";

            if (objStd.StudentName != null && objStd.UploadImage != null)

            {
                string fileName = Path.GetFileNameWithoutExtension(objStd.UploadImage.FileName);
                string extension = Path.GetExtension(objStd.UploadImage.FileName);
                fileName = fileName + DateTime.Now.ToString("yymmssff") + extension;
                objStd.StudentPicPath = fileName;
                objStd.UploadImage.SaveAs(Path.Combine(Server.MapPath("~/AppFile/Images"), fileName));

                var result = stdntbll.UpdateStudent(objStd);
                if (result > 0)
                {
                    status = true;
                    message = "successfully updated";
                }

            }
            else
            {
                var result = stdntbll.UpdateStudent(objStd);
                if (result > 0)
                {
                    status = true;
                    message = "successfully updated";
                }
            }

            
            return new JsonResult { Data = new { status = status, message = message } };
        }
        [HttpPost]
        public ActionResult DeleteStudent(Student objStd)
        {
            bool status = false;
            string message = "failed";
            var result = stdntbll.DeleteStudent(objStd);
            if (result > 0)
            {
                status = true;
                message = "successfully deleted";
            }
            return new JsonResult { Data = new { status = status, message = message } };
        }
    }
}