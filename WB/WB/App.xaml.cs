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

        protected override void OnStart()
        {
            base.OnStart();

            string userId = Preferences.Get("userId", "");
            // Восстанавливаем предыдущий путь навигации из Preferences
            string navigationPath = Preferences.Get("NavigationPath", null);
            if (!string.IsNullOrEmpty(userId))
            {
                if (!string.IsNullOrEmpty(navigationPath))
                {
                    SwitchToAppShell();
                    switch (navigationPath)
                    {
                        case "MainPage":
                            ((MainTabbedPage)MainPage).CurrentPage = ((MainTabbedPage)MainPage).Children[0];
                            break;
                        case "FavoritePage":
                            ((MainTabbedPage)MainPage).CurrentPage = ((MainTabbedPage)MainPage).Children[1];
                            break;
                        case "ProfilePage":
                            ((MainTabbedPage)MainPage).CurrentPage = ((MainTabbedPage)MainPage).Children[2];
                            break;
                    }
                }
            }
            else
            {
                MainPage = new NavigationPage(new LoginPage());
            }
        }

        protected override void OnSleep()
        {
            base.OnSleep();
            Preferences.Set("NavigationPath", AppState.CurrentPage);
        }

        protected override void OnResume()
        {
        }

        public void SwitchToAppShell()
        {
            MainPage = new MainTabbedPage();
        }

        public void SwitchToLoginPage()
        {
            MainPage = new LoginPage();
        }
    }
}
