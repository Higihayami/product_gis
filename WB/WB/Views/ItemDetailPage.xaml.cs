using System.ComponentModel;
using WB.ViewModels;
using Xamarin.Forms;

namespace WB.Views
{
    public partial class ItemDetailPage : ContentPage
    {
        public ItemDetailPage()
        {
            InitializeComponent();
            BindingContext = new ItemDetailViewModel();
        }
    }
}