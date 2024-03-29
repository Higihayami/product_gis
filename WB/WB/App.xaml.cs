using System;
using WB.Services;
using WB.Views;
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
            MainPage = new NavigationPage(new LoginPage());
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
            MainPage = new AppShell();
        }
    }
}
