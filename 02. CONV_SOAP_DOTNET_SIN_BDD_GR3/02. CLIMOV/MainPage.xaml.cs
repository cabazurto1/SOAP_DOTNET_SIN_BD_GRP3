using _02._CLIMOV.com.edu.monster.vista;
namespace MauiApp1
{
    public partial class MainPage : ContentPage
    {
        int count = 0;

        public MainPage()
        {
            InitializeComponent();
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
            Navigation.PushAsync(new LoginPage());
        }
    }

}
