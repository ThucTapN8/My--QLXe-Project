using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace QLBDX.ENTITY
{
    class Connect
    {
        public static bool isConnect = false;
        public static SqlConnection myconnect = new SqlConnection(ConnectString.StringConnect);
    }
}
