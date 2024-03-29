using System;
using System.IO;
using Firebase.Auth;
using WB.Services;
using Xamarin.Forms;

namespace WB.ViewModels
{
	public class RegistrationPageViewModel : BaseViewModel
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

        private string confirmPassword;
        public string ConfirmPassword
        {
            get { return confirmPassword; }
            set { SetProperty(ref confirmPassword, value); }
        }

        public Command RegisterCommand { get; }
       

        public RegistrationPageViewModel()
		{
            RegisterCommand = new Command(OnRegisterCommand);
            string dbPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "database.db3");
            databaseService = new DatabaseService(dbPath);
        }

        private async void OnRegisterCommand(object obj)
        {
            if (string.IsNullOrEmpty(Username) || string.IsNullOrEmpty(Password) || string.IsNullOrEmpty(ConfirmPassword))
            {
                await Application.Current.MainPage.DisplayAlert("Error", "Username and password are required.", "OK");
                return;
            }
            if (Password != ConfirmPassword)
            {
                await Application.Current.MainPage.DisplayAlert("Error", "Passwords do not match", "OK");
                return;
            }
            var goodBro = false;
            try
            {
                var authProvider = new FirebaseAuthProvider(new FirebaseConfig(Constants.FIREBASE_TOKEN));
                await authProvider.CreateUserWithEmailAndPasswordAsync(username, password);
                goodBro = true;
            }
            catch (Exception ex)
            {
                await App.Current.MainPage.DisplayAlert("Alert", ex.Message, "OK");
                goodBro = false;
            }

            int result = await databaseService.AddUserAsync(username, password);

            if (result > 0 && goodBro)
            {
                await Application.Current.MainPage.DisplayAlert("Success", "Registration successful", "OK");
                await App.Current.MainPage.Navigation.PopAsync();
            }
            else
            {
                await Application.Current.MainPage.DisplayAlert("Error", "Registration failed", "OK");
            }
        }
    }
}

