using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MobilApp.com.edu.monster.modelo;

namespace MobilApp.com.edu.monster.controlador
{
    public class LoginController
    {
        public bool ValidarCredenciales(LoginModel modelo)
        {
            return modelo.Usuario == "MONSTER" && modelo.Contrasena == "MONSTER9";
        }
    }
}
