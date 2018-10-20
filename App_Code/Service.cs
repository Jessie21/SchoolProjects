using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using MySql.Data.MySqlClient;
using System.Data;

[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]

public class Service : System.Web.Services.WebService
{
    private readonly string _conString = "server=localhost;User Id=430group;password=430group;database=jobhoundapp";
    //Used in the login() function
    string result;

    public Service () {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod]
    //This function allows the user to login.
    //If the user is an employer, return "Employer"
    //If the user is a job seeker, return "Seeker"
    //If the user does not exist, return "Failed"
    public string Login(string username, string password) {
        MySqlConnection con = new MySqlConnection(_conString);
        con.Open();
        MySqlCommand com = con.CreateCommand();
        com.CommandText = "select accounttype from users where username=@UserName and password=@Password";
        com.Parameters.AddWithValue("@UserName", username);
        com.Parameters.AddWithValue("@Password", password);
        MySqlDataReader validate = com.ExecuteReader();
        while (validate.Read())
        {
            if (validate.GetString(0) == "Employer")
                result = "Employer";

            else if (validate.GetString(0) == "Job Seeker")
                result = "Seeker";
            else
                result = "Failed";
        }
        con.Close();
        return result;
    }

    [WebMethod]
    public bool Register(string username, string password, string email, string accountType)
    {
        bool takenUser = false;
        MySqlConnection con = new MySqlConnection(_conString);
        con.Open();
        MySqlCommand comm = con.CreateCommand();
        comm.CommandText = "SELECT count(*) FROM users WHERE username = @username";
        comm.Parameters.AddWithValue("@username", username);
        takenUser = Convert.ToInt32(comm.ExecuteScalar()) > 0;
        if (takenUser)
        {
            con.Close();
            return takenUser;
        }
        else
        {
            comm.CommandText = "INSERT INTO users VALUES (@username, @password, @email, @accountype) ";
            comm.Parameters.AddWithValue("@password", password);
            comm.Parameters.AddWithValue("@email", email);
            comm.Parameters.AddWithValue("@accountype", accountType);
            comm.ExecuteNonQuery();
            con.Close();
            return takenUser;
        }
        
    }

    [WebMethod]
    public void AddJob(string jobName, string jobLoc, string jobComp, int jobSalMin, int jobSalMax, string jobHours, string jobPosition, string jobEduLvl, string jobMajor, string jobDesc, string jobReq)
    {
        
        MySqlConnection con = new MySqlConnection(_conString);
        con.Open();
        MySqlCommand comm = con.CreateCommand();
        comm.CommandText = "INSERT INTO jobs  VALUES (0, @jobName, @jobLoc, @jobComp, @jobSalMin, @jobSalMax, @jobHours, @jobPosition, @jobEduLvl, @jobMajor, @jobDesc, @jobReq) ";
        comm.Parameters.AddWithValue("@jobName", jobName);
        comm.Parameters.AddWithValue("@jobLoc", jobLoc);
        comm.Parameters.AddWithValue("@jobComp", jobComp);
        comm.Parameters.AddWithValue("@jobSalMin", jobSalMin);
        comm.Parameters.AddWithValue("@jobSalMax", jobSalMax);
        comm.Parameters.AddWithValue("@jobHours", jobHours);
        comm.Parameters.AddWithValue("@jobPosition", jobPosition);
        comm.Parameters.AddWithValue("@jobEduLvl", jobEduLvl);
        comm.Parameters.AddWithValue("@jobMajor", jobMajor);
        comm.Parameters.AddWithValue("@jobDesc", jobDesc);
        comm.Parameters.AddWithValue("@jobReq", jobReq);
        comm.ExecuteNonQuery();
        con.Close();
    } 

}