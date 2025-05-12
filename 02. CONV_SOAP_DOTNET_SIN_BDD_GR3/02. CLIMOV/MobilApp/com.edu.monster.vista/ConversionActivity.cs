using Android.App;
using Android.OS;
using Android.Widget;
using System;
using _02._CLIMOV.com.edu.monster.controlador;
using _02._CLIMOV.com.edu.monster.modelo;

namespace _02._CLIMOV.com.edu.monster.vista
{
    [Activity(Label = "Conversión")]
    public class ConversionActivity : Activity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.Conversion); // Asegúrate de tener el layout actualizado

            // Referencias UI
            var edtValor = FindViewById<EditText>(Resource.Id.edtValor);
            var spnOrigen = FindViewById<Spinner>(Resource.Id.spnOrigen);
            var spnDestino = FindViewById<Spinner>(Resource.Id.spnDestino);
            var btnConvertir = FindViewById<Button>(Resource.Id.btnConvertir);
            var txtResultado = FindViewById<TextView>(Resource.Id.txtResultado);

            // Llenar los spinners
            string[] unidades = { "C", "F", "K" };
            var adapter = new ArrayAdapter<string>(this, Android.Resource.Layout.SimpleSpinnerItem, unidades);
            adapter.SetDropDownViewResource(Android.Resource.Layout.SimpleSpinnerDropDownItem);
            spnOrigen.Adapter = adapter;
            spnDestino.Adapter = adapter;

            // Evento click del botón
            btnConvertir.Click += async (s, e) =>
            {
                if (string.IsNullOrWhiteSpace(edtValor.Text))
                {
                    Toast.MakeText(this, "Ingresa un valor para convertir", ToastLength.Short).Show();
                    return;
                }

                try
                {
                    btnConvertir.Enabled = false;
                    txtResultado.Text = "Convirtiendo...";

                    if (!double.TryParse(edtValor.Text, out double valor))
                    {
                        Toast.MakeText(this, "Valor no válido", ToastLength.Short).Show();
                        return;
                    }

                    string origen = spnOrigen.SelectedItem.ToString();
                    string destino = spnDestino.SelectedItem.ToString();

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
                        // Calcular localmente si el servidor falla
                        double resultadoLocal = ConvertirLocalmente(valor, origen, destino);
                        txtResultado.Text = $"Resultado: {Math.Round(resultadoLocal, 2)} {destino}";
                    }
                    else
                    {
                        txtResultado.Text = $"Resultado: {Math.Round(respuesta.resultado, 2)} {destino}";
                    }
                }
                catch (Exception ex)
                {
                    // Fallback si ocurre error total
                    if (double.TryParse(edtValor.Text, out double valorFallback))
                    {
                        string origen = spnOrigen.SelectedItem.ToString();
                        string destino = spnDestino.SelectedItem.ToString();
                        double resultadoLocal = ConvertirLocalmente(valorFallback, origen, destino);
                        txtResultado.Text = $"[Fallback] Resultado: {Math.Round(resultadoLocal, 2)} {destino}";
                    }
                    else
                    {
                        Toast.MakeText(this, "Error: " + ex.Message, ToastLength.Long).Show();
                    }
                    System.Diagnostics.Debug.WriteLine("Error: " + ex.ToString());
                }
                finally
                {
                    btnConvertir.Enabled = true;
                }
            };
        }

        private double ConvertirLocalmente(double valor, string origen, string destino)
        {
            if (origen == destino) return valor;

            double celsius = origen switch
            {
                "F" => (valor - 32) * 5.0 / 9.0,
                "K" => valor - 273.15,
                _ => valor // ya está en Celsius
            };

            return destino switch
            {
                "F" => (celsius * 9.0 / 5.0) + 32,
                "K" => celsius + 273.15,
                _ => celsius
            };
        }
    }
}
