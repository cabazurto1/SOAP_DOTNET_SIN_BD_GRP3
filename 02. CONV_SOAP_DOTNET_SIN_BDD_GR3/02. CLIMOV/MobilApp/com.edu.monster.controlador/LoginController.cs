using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using _02._CLIMOV.com.edu.monster.modelo;

namespace _02._CLIMOV.com.edu.monster.controlador
{
    public class LoginController
    {
        public bool ValidarCredenciales(LoginModel modelo)
        {
            return modelo.Usuario == "MONSTER" && modelo.Contrasena == "MONSTER";
        }
    }
}
