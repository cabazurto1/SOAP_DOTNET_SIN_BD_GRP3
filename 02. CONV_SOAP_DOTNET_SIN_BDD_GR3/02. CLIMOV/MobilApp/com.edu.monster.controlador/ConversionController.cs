using System;
using System.Threading.Tasks;
using MobilApp.com.edu.monster.modelo;
using ServiceReference1;

namespace MobilApp.com.edu.monster.controlador
{
    public class ConversionController
    {
        public async Task<ConversionResponse> ConvertirAsync(ConversionRequest modelo)
        {
            try
            {
                var client = new ConversionControladorClient(ConversionControladorClient.EndpointConfiguration.BasicHttpBinding_IConversionControlador);

                var soapRequest = new Request
                {
                    valor = modelo.valor,
                    origen = modelo.origen.Trim().ToUpper(),
                    destino = modelo.destino.Trim().ToUpper()
                };

                var soapResponse = await client.convertirAsync(soapRequest);

                return new ConversionResponse
                {
                    resultado = soapResponse.valorConvertido,
                    mensaje = soapResponse.mensaje
                };
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al consumir el servicio SOAP: " + ex.Message);
                return new ConversionResponse
                {
                    resultado = -999,
                    mensaje = "Error al realizar la conversión"
                };
            }
        }
    }
}
