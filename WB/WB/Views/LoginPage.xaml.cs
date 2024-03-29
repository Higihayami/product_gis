using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WB.Services;
using WB.ViewModels;
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

        private async void OnLoginButtonClicked(object sender, EventArgs e)
        {
            string username = usernameEntry.Text;
            string password = passwordEntry.Text;

            bool isAuthenticated = await databaseService.CheckUserExists(username, password);

            if (isAuthenticated)
            {
                await Navigation.PushAsync(new ItemsPage());
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