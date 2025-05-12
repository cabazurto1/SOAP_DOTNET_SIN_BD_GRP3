using Android.App;
using Android.OS;
using Android.Widget;
using MobilApp.com.edu.monster.controlador;
using MobilApp.com.edu.monster.modelo;

namespace MobilApp.com.edu.monster.vista
{
    [Activity(Label = "Conversión")]
    public class ConversionActivity : Activity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            SetContentView(Resource.Layout.Conversion);

            var edtValor = FindViewById<EditText>(Resource.Id.edtValor);
            var edtOrigen = FindViewById<EditText>(Resource.Id.edtOrigen);
            var edtDestino = FindViewById<EditText>(Resource.Id.edtDestino);
            var btnConvertir = FindViewById<Button>(Resource.Id.btnConvertir);
            var txtResultado = FindViewById<TextView>(Resource.Id.txtResultado);

            btnConvertir.Click += async (s, e) =>
            {
                if (string.IsNullOrWhiteSpace(edtValor.Text) ||
                    string.IsNullOrWhiteSpace(edtOrigen.Text) ||
                    string.IsNullOrWhiteSpace(edtDestino.Text))
                {
                    Toast.MakeText(this, "Completa todos los campos", ToastLength.Short).Show();
                    return;
                }

                try
                {
                    btnConvertir.Enabled = false;
                    txtResultado.Text = "Convirtiendo...";

                    double valor = double.Parse(edtValor.Text);
                    string origen = edtOrigen.Text.Trim().ToUpper();
                    string destino = edtDestino.Text.Trim().ToUpper();

                    var request = new ConversionRequest
                    {
                        valor = valor,
                        origen = origen,
                        destino = destino
                    };

                    var controlador = new ConversionController();
                    var respuesta = await controlador.ConvertirAsync(request);

                    if (respuesta.resultado == -999)
                    {
                        txtResultado.Text = "Conversión no válida o error en el servicio.";
                    }
                    else
                    {
                        txtResultado.Text = $"Resultado: {respuesta.resultado}";
                    }
                }
                catch (Exception ex)
                {
                    Toast.MakeText(this, "Error: " + ex.Message, ToastLength.Long).Show();
                }
                finally
                {
                    btnConvertir.Enabled = true;
                }
            };
        }
    }
}
