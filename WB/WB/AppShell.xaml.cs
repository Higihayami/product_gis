using System;
using System.Collections.Generic;
using WB.ViewModels;
using WB.Views;
using Xamarin.Forms;

namespace WB
{
    public partial class AppShell : Xamarin.Forms.Shell
    {
        public AppShell()
        {
            InitializeComponent();
            Routing.RegisterRoute(nameof(MainTabbedPage), typeof(MainTabbedPage));
        }

        private async void OnMenuItemClicked(object sender, EventArgs e)
        {
            await Shell.Current.GoToAsync("//LoginPage");
        }
    }
}
