using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _02._CLIMOV.com.edu.monster.controlador
{
    public static class LoginController
    {
        public static bool ValidarLogin(string usuario, string contrasena)
        {
            return usuario == "MONSTER" && contrasena == "MONSTER9";
        }
    }
}
