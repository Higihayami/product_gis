using System;
using System.IO;
using WB.ViewModels;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace WB.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class ProfilePage : ContentPage
    {
        public ProfilePage()
        {
            InitializeComponent();
            AppState.CurrentPage = "ProfilePage";
            BindingContext = new ProfileViewModel();
        }
    }
}