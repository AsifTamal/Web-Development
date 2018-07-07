using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;


namespace jQueryAjaxCrudMvc.Controllers
{
    public class EmployeeController : Controller
    {
        //
        // GET: /Employee/
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult ViewAll()
        {
            return View(GetAllEmployee());
        }
        IEnumerable<jQueryAjaxCrudMvc.Models.Employee> GetAllEmployee()
        { 
        using(jQueryAjaxCrudMvc.Models.DBModel db= new jQueryAjaxCrudMvc.Models.DBModel())
        {
        return db.Employees.ToList<jQueryAjaxCrudMvc.Models.Employee>();
        
        }
        
        }
        public ActionResult AddorEdit(int id=0)
        {
            jQueryAjaxCrudMvc.Models.Employee emp = new jQueryAjaxCrudMvc.Models.Employee();
            if (id != 0) {
                using (jQueryAjaxCrudMvc.Models.DBModel db = new jQueryAjaxCrudMvc.Models.DBModel())
                {
                    //  return db.Employees.ToList<jQueryAjaxCrudMvc.Models.Employee>();
                    emp = db.Employees.Where(x => x.EmployeeID == id).FirstOrDefault<jQueryAjaxCrudMvc.Models.Employee>();
                }
            }
            
            return View(emp);
        }
        [HttpPost]
        public ActionResult AddorEdit( jQueryAjaxCrudMvc.Models.Employee emp)
        {
            try
            {
                if (emp.ImageUplode != null)
                { 
                string fileName = Path.GetFileNameWithoutExtension(emp.ImageUplode.FileName);
                string extension = Path.GetExtension(emp.ImageUplode.FileName);
                fileName = fileName + DateTime.Now.ToString("yymmssfff") + extension;
                emp.ImagePath = "~/AppFiles/Images/" + fileName;
                emp.ImageUplode.SaveAs(Path.Combine(Server.MapPath("~/AppFiles/Images/"), fileName));
                }
                    using (jQueryAjaxCrudMvc.Models.DBModel db = new jQueryAjaxCrudMvc.Models.DBModel())
                {
                    db.Employees.Add(emp);
                    db.SaveChanges();

                }
                //return RedirectToAction("ViewAll");
                return Json(new { success = true, html = GlobalClass.RenderRazorViewToString(this, "ViewAll", GetAllEmployee()), message = "Submitted Successsfully" }, JsonRequestBehavior.AllowGet);

            }
            catch (Exception ex)
            {
                
                 return Json(new { success = false, message = ex.Message }, JsonRequestBehavior.AllowGet);

            }
        }
        public ActionResult delete(int id) {

            try
            {
                using (jQueryAjaxCrudMvc.Models.DBModel db = new jQueryAjaxCrudMvc.Models.DBModel())
                {
                    jQueryAjaxCrudMvc.Models.Employee emp = db.Employees.Where(x => x.EmployeeID == id).FirstOrDefault < jQueryAjaxCrudMvc.Models.Employee>();
                    db.Employees.Remove(emp);
                    db.SaveChanges();

                }
             return Json(new { success = true, html = GlobalClass.RenderRazorViewToString(this, "ViewAll", GetAllEmployee()), message = "Deleted Successsfully" }, JsonRequestBehavior.AllowGet);

            }
            catch(Exception ex)
                {
             return Json(new { success = false, message = ex.Message }, JsonRequestBehavior.AllowGet);
            }
        }
    }
}