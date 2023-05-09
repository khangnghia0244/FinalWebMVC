using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApplication2.Models;
using System.Data.SqlClient;
namespace WebApplication2.Controllers
{
    public class AccountController : Controller
    {
        SqlConnection con = new SqlConnection();
        SqlCommand com = new SqlCommand();
        SqlDataReader dr;
        //Get: Account
        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }
        void connectionString()
        {
            con.ConnectionString = "data source= DESKTOP-OQFQC4U; database=WDF;integrated security = SSPI;";
;
        }
        [HttpPost]
        public ActionResult Verify(Account acc)
        {
            connectionString();
            con.Open();
            com.Connection = con;
            com.CommandText = "select * from login where username ='" + acc.Name + "' and password ='" + acc.Password + "'";
            dr = com.ExecuteReader();
            if (dr.Read())
            {
                con.Close();    
                return View("creater");
            }
            else
            {
                con.Close();
                return View("error");
            }

                
        }
    }
}