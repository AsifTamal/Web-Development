using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace AdvancedCRUDmvc.Models
{
    public class Student
    {
        public int StudentID { get; set; }
        public string StudentName { get; set; }

        //[DataType(DataType.Date)]
        //[DisplayFormat(DataFormatString = "{0:dd/MM/yyyy}", ApplyFormatInEditMode = true)]
        public DateTime Birthday { get; set; }
        public string Gender { get; set; }
        public int CountryID { get; set; }
        public int DistrictID { get; set; }
        public int StateID { get; set; }
        public bool Status { get; set; }
        public string StatusIsActive { get; set; }
        public  string  StudentPicPath { get; set; }
        public string countryName { get; set; }
        public string districtName { get; set; }
        public string stateName { get; set; }
        //[NotMapped]
        //  public HttpPostedFileBase UploadImage { get; set; }
        [NotMapped]
        public HttpPostedFileWrapper UploadImage { get; set; }

    }
}