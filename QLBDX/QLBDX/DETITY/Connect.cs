using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
namespace QLBDX.DETITY
{
        public static class Connect
        {
            public static bool isConnect = false;
            public static SqlConnection myconnect = new SqlConnection(ConnectString.StringConnect);
        }
    }

