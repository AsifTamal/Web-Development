using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MVC_CRUD.Models
{
    public class Employee
    {
        public int EmployeeId { get; set; }
        public string EmployeeName { get; set; }

        public int DesignationId { get; set; }
        public string DesignationName { get; set; }

        public int DepartmentId { get; set; }
        public string DepartmentName { get; set; }
        public string Statuss { get; set; }
        public bool IsActive { get; set; }

        public string Gender { get; set; }
    }
}