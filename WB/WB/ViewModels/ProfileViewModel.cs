using System;
using System.IO;
using System.Threading.Tasks;
using WB.Services;
using WB.Views;
using Xamarin.Essentials;
using Xamarin.Forms;

namespace WB.ViewModels
{
    public class ProfileViewModel : BaseViewModel
    {
        DatabaseService databaseService;
        private string email;
        public string Email
        {
            get { return email; }
            set { SetProperty(ref email, value); }
        }

        private string name;
        public string Name
        {
            get { return name; }
            set
            {
                SetProperty(ref name, value);
                OnPropertyChanged(nameof(Name));
            }
        }

        private bool isNameEnabled = true;
        public bool IsNameEnabled
        {
            get { return isNameEnabled; }
            set { SetProperty(ref isNameEnabled, value); }
        }

        private ImageSource imageSource;
        public ImageSource ImageSource
        {
            get { return imageSource; }
            set { SetProperty(ref imageSource, value); }
        }

        public Command TakePhotoCommand { get; }
        public Command GetPhotoCommand { get; }
        public Command SaveCommand { get; }
        public Command SignOut { get; }

        public ProfileViewModel()
        {
            TakePhotoCommand = new Command(async () => await TakePhotoAsync());
            GetPhotoCommand = new Command(async () => await GetPhotoAsync());
            SaveCommand = new Command(async () => await SaveAsync());
            SignOut = new Command(async () => await SignOutAsync());

            string dbPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "database.db3");
            databaseService = new DatabaseService(dbPath);

            InitState();
        }

        private async Task InitState()
        {
            var userId = Preferences.Get("userId", "");
            Guid userGId = Guid.Parse(userId);
            var user = await databaseService.GetUserById(userGId);
            if (user != null)
            {
                Email = user.Username;
                if (!string.IsNullOrEmpty(user.Photo))
                {
                    ImageSource = ImageSource.FromFile(user.Photo);
                }
                if (!string.IsNullOrEmpty(user.SecondName))
                {
                    IsNameEnabled = false;
                    Name = user.SecondName;
                }
            }

        }

        private async Task SignOutAsync()
        {
            try
            {
                Preferences.Set("userId", null);
                Preferences.Set("NavigationPath", null);
                ((App)Application.Current).SwitchToLoginPage();
            }
            catch (Exception ex)
            {
                await Application.Current.MainPage.DisplayAlert("Сообщение об ошибке", ex.Message, "OK");
            }
        }

        private async Task TakePhotoAsync()
        {
            try
            {
                var photo = await MediaPicker.CapturePhotoAsync(new MediaPickerOptions
                {
                    Title = $"xamarin.{DateTime.Now.ToString("dd.MM.yyyy_hh.mm.ss")}.png"
                });

                // для примера сохраняем файл в локальном хранилище
                var newFile = Path.Combine(FileSystem.AppDataDirectory, photo.FileName);
                using (var stream = await photo.OpenReadAsync())
                using (var newStream = File.OpenWrite(newFile))
                    await stream.CopyToAsync(newStream);

                // загружаем в ImageView
                ImageSource = ImageSource.FromFile(photo.FullPath);
                var userId = Preferences.Get("userId", "");
                Guid userGId = Guid.Parse(userId);
                var user = await databaseService.GetUserById(userGId);
                user.Photo = photo.FullPath;
                await databaseService.UpdateUser(user);
            }
            catch (Exception ex)
            {
                await Application.Current.MainPage.DisplayAlert("Сообщение об ошибке", ex.Message, "OK");
            }
        }

        private async Task GetPhotoAsync()
        {
            try
            {
                // выбираем фото
                var photo = await MediaPicker.PickPhotoAsync();
                // загружаем в ImageView
                ImageSource = ImageSource.FromFile(photo.FullPath);
                var userId = Preferences.Get("userId", "");
                Guid userGId = Guid.Parse(userId);
                var user = await databaseService.GetUserById(userGId);
                user.Photo = photo.FullPath;
                await databaseService.UpdateUser(user);
            }
            catch (Exception ex)
            {
                await Application.Current.MainPage.DisplayAlert("Сообщение об ошибке", ex.Message, "OK");
            }
        }

        private async Task SaveAsync()
        {
            var userId = Preferences.Get("userId", "");
            Guid userGId = Guid.Parse(userId);
            var user = await databaseService.GetUserById(userGId);
            user.SecondName = Name;
            isNameEnabled = false;
            await databaseService.UpdateUser(user);
            await Application.Current.MainPage.DisplayAlert("Успешно", "Имя сохранено", "OK");
        }
    }
}
