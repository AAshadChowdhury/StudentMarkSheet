using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace EvidenceAsp.netdemo
{
    public class ConnectionDB
    {
        public ConnectionStringSettings con1;//web.config
        public SqlConnection connection1;//database connection
        public SqlCommand cmd1;//command--select,insert............
        public void conn1(string a)//a is the query
        {
            con1 = ConfigurationManager.ConnectionStrings["cm_restoConnectionString"];//web.config
            connection1 = new SqlConnection();//sql database connection instantiate
            connection1.ConnectionString = con1.ConnectionString;
            cmd1 = connection1.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = a;
            //cmd1.ExecuteNonQuery=>Insert,delete,update,create
            //cmd1.ExecuteScalar=>single value=count,max,sum
            //cmd1.ExecuteReader=>All select
            connection1.Open();

        }
    }
}