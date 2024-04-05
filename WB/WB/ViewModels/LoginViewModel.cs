using System;
using WB.Services;
using System.IO;
using WB.Views;
using Xamarin.Forms;
using Firebase.Auth;
using Newtonsoft.Json;
using Xamarin.Essentials;

namespace WB.ViewModels
{
    public class LoginViewModel : BaseViewModel
    {
        DatabaseService databaseService;
        private string username;
        public string Username
        {
            get { return username; }
            set { SetProperty(ref username, value); }
        }

        private string password;
        public string Password
        {
            get { return password; }
            set { SetProperty(ref password, value); }
        }

        public Command LoginCommand { get; }
        public Command RegisterCommand { get; }

        public LoginViewModel()
        {
            LoginCommand = new Command(OnLoginClicked);
            RegisterCommand = new Command(OnRegisterCommand);
            string dbPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "database.db3");
            databaseService = new DatabaseService(dbPath);
        }

        private async void OnLoginClicked(object obj)
        {
            if (string.IsNullOrEmpty(Username) || string.IsNullOrEmpty(Password))
            {
                await Application.Current.MainPage.DisplayAlert("Error", "Username and password are required.", "OK");
                return;
            }

            var authProvider = new FirebaseAuthProvider(new FirebaseConfig(Constants.FIREBASE_TOKEN));

            var goodBro = false;

            try
            {
                var auth = await authProvider.SignInWithEmailAndPasswordAsync(Username, Password);
                var content = await auth.GetFreshAuthAsync();
                var serialized = JsonConvert.SerializeObject(content);
                Preferences.Set(Constants.FIREBASE_TOKEN_KEY, serialized);
                goodBro = true;
            }
            catch
            {
                goodBro = false;
            }

            bool isAuthenticated = await databaseService.CheckUserExists(Username, Password);

            if (isAuthenticated)
            {
                ((App)Application.Current).SwitchToAppShell();
            }
            else if (!isAuthenticated && goodBro)
            {
                await databaseService.AddUserAsync(Username, Password);
                ((App)Application.Current).SwitchToAppShell();
            }
            else
            {
                await Application.Current.MainPage.DisplayAlert("Error", "Invalid username or password", "OK");
            }
        }

        private async void OnRegisterCommand(Object obj)
        {
            await App.Current.MainPage.Navigation.PushAsync(new RegistrationPage());
        }
    }
}
