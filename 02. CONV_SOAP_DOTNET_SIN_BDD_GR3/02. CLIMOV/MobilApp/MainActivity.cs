using Android.App;
using Android.OS;
using Android.Widget;
using Android.Content;

// Importa solo lo necesario
using MobilApp.com.edu.monster.controlador;
using MobilApp.com.edu.monster.modelo;
using MobilApp.com.edu.monster.vista;

namespace MobilApp
{
    [Activity(Label = "MobilApp", MainLauncher = true)]
    public class MainActivity : Activity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.Login); // Aseg�rate de que Login.axml est� en Resources/layout

            // Vincula elementos del layout
            var edtUsuario = FindViewById<EditText>(Resource.Id.edtUsuario);
            var edtContrasena = FindViewById<EditText>(Resource.Id.edtContrasena);
            var btnLogin = FindViewById<Button>(Resource.Id.btnLogin);

            btnLogin.Click += (s, e) =>
            {
                var modelo = new LoginModel
                {
                    Usuario = edtUsuario.Text.Trim(),
                    Contrasena = edtContrasena.Text.Trim()
                };

                var loginCtrl = new LoginController();
                if (loginCtrl.ValidarCredenciales(modelo))
                {
                    // Redirige a ConversionActivity correctamente
                    StartActivity(new Intent(this, typeof(ConversionActivity)));
                }
                else
                {
                    Toast.MakeText(this, "Credenciales inv�lidas", ToastLength.Short).Show();
                }
            };
        }
    }
}
