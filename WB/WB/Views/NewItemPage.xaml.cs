using System;
using System.Collections.Generic;
using System.ComponentModel;
using WB.Models;
using WB.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace WB.Views
{
    public partial class NewItemPage : ContentPage
    {
        public Item Item { get; set; }

        public NewItemPage()
        {
            InitializeComponent();
            BindingContext = new NewItemViewModel();
        }
    }
}