using System;
using WB.Services;
using WB.Views;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace WB
{
    public partial class App : Application
    {

        public App()
        {
            InitializeComponent();

            DependencyService.Register<MockDataStore>();
            string refreshToken = Preferences.Get(Constants.FIREBASE_TOKEN_KEY, "");
            Console.WriteLine("TOKENTOKEN" + refreshToken);
            if (refreshToken != "")
            {
                ((App)Application.Current).SwitchToAppShell();
            }
            else
            {
                MainPage = new NavigationPage(new LoginPage());
            }
            
        }

        protected override void OnStart()
        {
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }

        public void SwitchToAppShell()
        {
            MainPage = new MainTabbedPage();
        }
    }
}
