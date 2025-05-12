using System;
using System.Threading.Tasks;
using _02._CLIMOV.com.edu.monster.modelo;
using ServiceReference1;

namespace _02._CLIMOV.com.edu.monster.controlador
{
    public class ConversionController
    {
        public async Task<ConversionResponse> ConvertirAsync(ConversionRequest modelo)
        {
            try
            {
                var client = new ConversionControladorClient(
                    ConversionControladorClient.EndpointConfiguration.BasicHttpBinding_IConversionControlador
                );

                // Crear objeto SOAP con los datos del modelo local
                var soapRequest = new Request
                {
                    valor = modelo.valor,
                    origen = modelo.origen?.Trim().ToUpper(),
                    destino = modelo.destino?.Trim().ToUpper()
                };

                // Llamar al servicio
                Response soapResponse = await client.convertirAsync(soapRequest);

                // Convertir respuesta SOAP a modelo local
                return new ConversionResponse
                {
                    resultado = soapResponse.valorConvertido,
                    mensaje = soapResponse.mensaje
                };
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error al consumir el servicio SOAP: " + ex.Message);
                if (ex.InnerException != null)
                    Console.WriteLine("Inner: " + ex.InnerException.Message);

                return new ConversionResponse
                {
                    resultado = -999,
                    mensaje = "Error al realizar la conversión"
                };
            }
        }
    }
}
