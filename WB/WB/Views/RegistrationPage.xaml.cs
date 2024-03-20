using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WB.Services;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace WB.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class RegistrationPage : ContentPage
    {
        Entry usernameEntry, passwordEntry, confirmPasswordEntry;
        Button registerButton;
        DatabaseService databaseService;

        public RegistrationPage()
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
            confirmPasswordEntry = new Entry
            {
                Placeholder = "Confirm Password",
                IsPassword = true
            };
            registerButton = new Button
            {
                Text = "Register"
            };

            // Обработчик события
            registerButton.Clicked += OnRegisterButtonClicked;

            // Создание разметки
            var layout = new StackLayout();
            layout.Children.Add(usernameEntry);
            layout.Children.Add(passwordEntry);
            layout.Children.Add(confirmPasswordEntry);
            layout.Children.Add(registerButton);

            Content = layout;
        }

        async void OnRegisterButtonClicked(object sender, EventArgs e)
        {
            string username = usernameEntry.Text;
            string password = passwordEntry.Text;
            string confirmPassword = confirmPasswordEntry.Text;

            if (password != confirmPassword)
            {
                await DisplayAlert("Error", "Passwords do not match", "OK");
                return;
            }

            int result = await databaseService.AddUserAsync(username, password);
            if (result > 0)
            {
                await DisplayAlert("Success", "Registration successful", "OK");
                await Navigation.PushAsync(new ItemsPage());
                Navigation.RemovePage(this);
            }
            else
            {
                await DisplayAlert("Error", "Registration failed", "OK");
            }
        }
    }
}