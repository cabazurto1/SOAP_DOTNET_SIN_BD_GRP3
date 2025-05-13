using _02._CLIMOV.com.edu.monster.vista;

namespace MauiApp1
{
    public partial class App : Application
    {
        public App()
        {
            InitializeComponent();

            // Establece LoginPage como la pantalla inicial
            MainPage = new LoginPage();
        }
    }
}
