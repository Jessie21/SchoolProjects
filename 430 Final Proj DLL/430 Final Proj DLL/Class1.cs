using System;
using System.Data;
using System.Collections.Generic;
using MySql.Data.MySqlClient;


namespace jobApp
{
    public class Jobs
    {
        //Each corresponds to an attribute of the table in the DB.
        private int _jobID;
        private string _jobName;
        private string _jobLoc;
        private string _jobComp;
        private int _jobSalMin;
        private int _jobSalMax;
        private string _jobHours;
        private string _jobPosition;
        private string _jobEduLvl;
        private string _jobMajor;
        private string _jobDesc;
        private string _jobReq;

        private string _type;
        private string _desc;

        public int jobID
        {
            get { return _jobID; }
            set { _jobID = value; }
        }
        public string jobName
        {
            get { return _jobName; }
            set { _jobName = value; }
        }
        public string jobLoc
        {
            get { return _jobLoc; }
            set { _jobLoc = value; }
        }
        public string jobComp
        {
            get { return _jobComp; }
            set { _jobComp = value; }
        }

        public int jobSalMin
        {
            get { return _jobSalMin; }
            set { _jobSalMin = value; }
        }
        public int jobSalMax
        {
            get { return _jobSalMax; }
            set { _jobSalMax = value; }
        }

        public string jobHours
        {
            get { return _jobHours; }
            set { _jobHours = value; }
        }
        public string jobPosition
        {
            get { return _jobPosition; }
            set { _jobPosition = value; }
        }
        public string jobEduLvl
        {
            get { return _jobEduLvl; }
            set { _jobEduLvl = value; }
        }
        public string jobMajor
        {
            get { return _jobMajor; }
            set { _jobMajor = value; }
        }
        public string jobDesc
        {
            get { return _jobDesc; }
            set { _jobDesc = value; }
        }
        public string jobReq
        {
            get { return _jobReq; }
            set { _jobReq = value; }
        }

        public string type
        {
            get { return _type; }
            set { _type = value; }
        }
        public string desc
        {
            get { return _desc; }
            set { _desc = value; }
        }
        //Selects everything from the table.
        public List<Jobs> GetAll()
        {
            List<Jobs> results = new List<Jobs>();
            MySqlConnection con = new MySqlConnection("server=localhost;User Id=430group;password=430group;database=jobhoundapp");
            MySqlCommand cmd = new MySqlCommand("SELECT jobID, jobName, jobLoc, jobCompany, jobSalMin, jobSalMax, jobHours, jobPosition, jobEduLvl, jobMajor, jobDesc, jobReq FROM jobs", con);
            using (con)
            {
                con.Open();
                MySqlDataReader reader = cmd.ExecuteReader();

                while (reader.Read())
                {
                    Jobs newJob = new Jobs();
                    newJob.jobID = (int)reader["jobID"];
                    newJob.jobName = (string)reader["jobName"];
                    newJob.jobLoc = (string)reader["jobLoc"];
                    newJob.jobComp = (string)reader["jobCompany"];
                    newJob.jobSalMin = (int)reader["jobSalMin"];
                    newJob.jobSalMax = (int)reader["jobSalMax"];
                    newJob.jobHours = (string)reader["jobHours"];
                    newJob.jobPosition = (string)reader["jobPosition"];
                    newJob.jobEduLvl = (string)reader["jobEduLvl"];
                    newJob.jobMajor = (string)reader["jobMajor"];
                    newJob.jobDesc = (string)reader["jobDesc"];
                    newJob.jobReq = (string)reader["jobReq"];
                    results.Add(newJob);
                }
            }
            con.Close();
            return results;
        }


        public List<Jobs> GetSome(string type, string desc)
        {
            //Used when desc is meant to be an int used for salary.
            int? stringToInt = null;
            string SqlString;  
            if (type == "Title")
                type = "jobName";
            if (type == "Location")
                type = "jobLoc";
            if (type == "Minimum Salary")
            {
                type = "jobSalMin";
                stringToInt = Int32.Parse(desc);
            }
            if (type == "Maximum Salary")
            {
                type = "jobSalMax";
                stringToInt = Int32.Parse(desc);
            }
            if (type == "Position")
                type = "jobPosition";
            if (type == "Education Level")
                type = "jobEduLvl";
            if (type == "Major")
                type = "jobMajor";
            List<Jobs> results = new List<Jobs>();
            MySqlConnection con = new MySqlConnection("server=localhost;User Id=430group;password=430group;database=jobhoundapp");
            if (type == "jobSalMin")
                SqlString = "SELECT jobID, jobName, jobLoc, jobCompany, jobSalMin, jobSalMax, jobHours, jobPosition, jobEduLvl, jobMajor, jobDesc, jobReq FROM jobs WHERE {0} > @desc";
            else if (type == "jobSalMax")
                SqlString = "SELECT jobID, jobName, jobLoc, jobCompany, jobSalMin, jobSalMax, jobHours, jobPosition, jobEduLvl, jobMajor, jobDesc, jobReq FROM jobs WHERE {0} < @desc";
            else
                SqlString = "SELECT jobID, jobName, jobLoc, jobCompany, jobSalMin, jobSalMax, jobHours, jobPosition, jobEduLvl, jobMajor, jobDesc, jobReq FROM jobs WHERE {0} = @desc"; 
            SqlString = string.Format(SqlString, type);
            MySqlCommand cmd = new MySqlCommand(SqlString, con);
            using (con)
            {                
                con.Open();
                if (stringToInt.HasValue)
                    cmd.Parameters.AddWithValue("@desc", stringToInt);
                else
                    cmd.Parameters.AddWithValue("@desc", desc);
                MySqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Jobs newJob = new Jobs();
                    newJob.jobID = (int)reader["jobID"];
                    newJob.jobName = (string)reader["jobName"];
                    newJob.jobLoc = (string)reader["jobLoc"];
                    newJob.jobComp = (string)reader["jobCompany"];
                    newJob.jobSalMin = (int)reader["jobSalMin"];
                    newJob.jobSalMax = (int)reader["jobSalMax"];
                    newJob.jobHours = (string)reader["jobHours"];
                    newJob.jobPosition = (string)reader["jobPosition"];
                    newJob.jobEduLvl = (string)reader["jobEduLvl"];
                    newJob.jobMajor = (string)reader["jobMajor"];
                    newJob.jobDesc = (string)reader["jobDesc"];
                    newJob.jobReq = (string)reader["jobReq"];
                    results.Add(newJob);
                }
            }
                con.Close();
                return results;
            
        }

        public List<Jobs> Updatejob(string type, string desc, int nomDeJob)
        {
            //Used when desc is meant to be an int used for salary.
            int? stringToInt = null;
            string SqlString;
            if (type == "Title")
                type = "jobName";
            if (type == "Location")
                type = "jobLoc";
            if (type == "Company")
                type = "jobCompany";
            if (type == "Minimum Salary")
            {
                type = "jobSalMin";
                stringToInt = Int32.Parse(desc);
            }
            if (type == "Maximum Salary")
            {
                type = "jobSalMax";
                stringToInt = Int32.Parse(desc);
            }
            if (type == "Hours")
                type = "jobHours";
            if (type == "Position")
                type = "jobPosition";
            if (type == "Education Level")
                type = "jobEduLvl";
            if (type == "Major")
                type = "jobMajor";
            if (type == "Description")
                type = "jobDesc";
            if (type == "Requirements")
                type = "jobReq";
            List<Jobs> results = new List<Jobs>();
            MySqlConnection con = new MySqlConnection("server=localhost;User Id=430group;password=430group;database=jobhoundapp");
                SqlString = "UPDATE jobs SET {0} = @desc WHERE jobID = @nomDeJob ";
            SqlString = string.Format(SqlString, type);
            MySqlCommand cmd = new MySqlCommand(SqlString, con);
            using (con)
            {
                con.Open();
                cmd.Parameters.AddWithValue("@nomDeJob", nomDeJob);
                if (stringToInt.HasValue)
                    cmd.Parameters.AddWithValue("@desc", stringToInt);
                else
                    cmd.Parameters.AddWithValue("@desc", desc);
                cmd.ExecuteNonQuery();         
            }
            con.Close();
            return results;

        }

    }
   }
    

