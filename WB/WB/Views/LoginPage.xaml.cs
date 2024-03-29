using System;
using System.IO;
using Firebase.Auth;
using Newtonsoft.Json;
using WB.Services;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace WB.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class LoginPage : ContentPage
    {
        Entry usernameEntry, passwordEntry;
        Button loginButton, registerButton;
        DatabaseService databaseService;

        public LoginPage()
        {
            InitializeComponent();

            // Путь к базе данных SQLite
            string dbPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "database.db3");

            // Создание экземпляра databaseService
            databaseService = new DatabaseService(dbPath);

            // Создание элементов управления
            usernameEntry = new Entry
            {
                Placeholder = "Username"
            };
            passwordEntry = new Entry
            {
                Placeholder = "Password",
                IsPassword = true
            };
            loginButton = new Button
            {
                Text = "Login"
            };
            registerButton = new Button
            {
                Text = "Register"
            };

            // Обработчики событий
            loginButton.Clicked += OnLoginButtonClicked;
            registerButton.Clicked += OnRegisterButtonClicked;

            // Создание разметки
            var layout = new StackLayout();
            layout.Children.Add(usernameEntry);
            layout.Children.Add(passwordEntry);
            layout.Children.Add(loginButton);
            layout.Children.Add(registerButton);

            Content = layout;

        
        }

        async void OnLoginButtonClicked(object sender, EventArgs e)
        {
            string refreshToken = Preferences.Get(Constants.FIREBASE_TOKEN_KEY, "");
            await DisplayAlert("Error", "Token:"+refreshToken, "OK");
            string username = usernameEntry.Text;
            string password = passwordEntry.Text;

            var authProvider = new FirebaseAuthProvider(new FirebaseConfig(Constants.FIREBASE_TOKEN));

            var goodBro = false;

            try
            {
                var auth = await authProvider.SignInWithEmailAndPasswordAsync(username, password);
                var content = await auth.GetFreshAuthAsync();
                var serialized = JsonConvert.SerializeObject(content);
                Preferences.Set(Constants.FIREBASE_TOKEN_KEY, serialized);
                goodBro = true;
            }
            catch
            {
                goodBro = false;
            }

            bool isAuthenticated = await databaseService.CheckUserExists(username, password);

            if (isAuthenticated)
            {
                ((App)Application.Current).SwitchToAppShell();
            }
            else if (!isAuthenticated && goodBro)
            {
                await databaseService.AddUserAsync(username, password);
                ((App)Application.Current).SwitchToAppShell();
            }
            else
            {
                await DisplayAlert("Error", "Invalid username or password", "OK");
            }
        }

        async void OnRegisterButtonClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new RegistrationPage());
        }
    }
}