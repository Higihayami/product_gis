using System;
using System.IO;
using Firebase.Auth;
using WB.Services;
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
            string username = usernameEntry.Text;
            string password = passwordEntry.Text;

            try
            {
                

                
            }
            catch (Exception ex)
            {
                await App.Current.MainPage.DisplayAlert("Alert", ex.Message, "OK");
            }

            bool isAuthenticated = await databaseService.CheckUserExists(username, password);

            if (isAuthenticated)
            {
                ((App)Application.Current).SwitchToAppShell();
                Navigation.RemovePage(this);
            }
            else
            {
                // Если пользователь не аутентифицирован, отображаем сообщение об ошибке
                await DisplayAlert("Error", "Invalid username or password", "OK");
            }
        }

        async void OnRegisterButtonClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new RegistrationPage());
        }
    }
}