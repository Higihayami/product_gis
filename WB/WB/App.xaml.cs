using System;
using WB.Services;
using WB.Views;
using Xamarin.Essentials;
using Xamarin.Forms;

namespace WB
{
    public partial class App : Application
    {

        public App()
        {
            InitializeComponent();

            DependencyService.Register<MockDataStore>();
        }

        protected override async void OnStart()
        {

            base.OnStart();

            string refreshToken = Preferences.Get(Constants.FIREBASE_TOKEN_KEY, "");
            // Восстанавливаем предыдущий путь навигации из Preferences
            string navigationPath = Preferences.Get("NavigationPath", null);
            if (!string.IsNullOrEmpty(navigationPath))
            {
                await Shell.Current.GoToAsync(navigationPath);
            }
            else
            {
                if (!string.IsNullOrEmpty(refreshToken))
                {
                    SwitchToAppShell();
                }
                else
                {
                    MainPage = new NavigationPage(new LoginPage());
                }
            }
        }

        protected override void OnSleep()
        {
            base.OnSleep();

            // Сохраняем текущий путь навигации в Preferences
            Preferences.Set("NavigationPath", Shell.Current.CurrentState.Location.ToString());
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
