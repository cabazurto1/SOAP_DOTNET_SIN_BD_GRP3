using System;
using _02._CLIMOV.com.edu.monster.vista;
using ServiceReference1;


namespace _02._CLIMOV.com.edu.monster.vista
{
    public partial class ConversionPage : ContentPage
    {
        public ConversionPage()
        {
            InitializeComponent();
        }

        private async void OnConvertirClicked(object sender, EventArgs e)
        {
            try
            {
                if (double.TryParse(entryValor.Text, out double valor) &&
                    pickerOrigen.SelectedItem != null &&
                    pickerDestino.SelectedItem != null)
                {
                    // Validar que las unidades no sean iguales
                    if (pickerOrigen.SelectedItem.ToString() == pickerDestino.SelectedItem.ToString())
                    {
                        await DisplayAlert("Atención", "La unidad de origen y destino no pueden ser iguales.", "OK");
                        return;
                    }

                    var request = new Request
                    {
                        valor = valor,
                        origen = ObtenerCodigoUnidad(pickerOrigen.SelectedItem.ToString()),
                        destino = ObtenerCodigoUnidad(pickerDestino.SelectedItem.ToString())
                    };

                    var client = new ConversionControladorClient(
                        ConversionControladorClient.EndpointConfiguration.BasicHttpBinding_IConversionControlador
                    );

                    var response = await client.convertirAsync(request);

                    lblResultado.Text = $"💡 Resultado:\n\n" +
                                        $"{valor} {pickerOrigen.SelectedItem} = {response.valorConvertido} {pickerDestino.SelectedItem}\n\n" +
                                        $"📝 {valor} {request.origen} son {response.valorConvertido} {request.destino}";
                }
                else
                {
                    await DisplayAlert("Error", "Completa todos los campos correctamente.", "OK");
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Error", $"Excepción: {ex.Message}", "OK");
            }
        }

        private void OnSalirClicked(object sender, EventArgs e)
        {
            Application.Current.MainPage = new LoginPage();
        }

        private string ObtenerCodigoUnidad(string unidadCompleta)
        {
            if (unidadCompleta.Contains("Celsius")) return "C";
            if (unidadCompleta.Contains("Fahrenheit")) return "F";
            if (unidadCompleta.Contains("Kelvin")) return "K";
            return "";
        }
    }
}
