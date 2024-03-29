using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WB.Models;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace WB.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class MainPage : ContentPage
    {

        public MainPage()
        {
            InitializeComponent();
            List<ProductInfo> list = new List<ProductInfo>
            {
                new ProductInfo
                {
                    Id = "1",
                    Name = "Елки",
                    Desription = "Green",
                    Price = "100",
                    Photo = "https://4eli.ru/upload/iblock/a45/a451202de427c10bfe96a93b1715f7cc.jpg"
                },
                new ProductInfo
                {
                    Id = "2 ",
                    Name = "Елки",
                    Desription = "Green",
                    Price = "100",
                    Photo = "https://4eli.ru/upload/iblock/a45/a451202de427c10bfe96a93b1715f7cc.jpg"
                },
                new ProductInfo
                {
                    Id = "3",
                    Name = "Елки",
                    Desription = "Green",
                    Price = "100",
                    Photo = "https://4eli.ru/upload/iblock/a45/a451202de427c10bfe96a93b1715f7cc.jpg"
                },
                new ProductInfo
                {
                    Id = "4",
                    Name = "Елки",
                    Desription = "Green",
                    Price = "100",
                    Photo = "https://4eli.ru/upload/iblock/a45/a451202de427c10bfe96a93b1715f7cc.jpg"
                }
            };

           myListView.ItemsSource = list;
        }

        async private void myListView_ItemSelected(object sender, SelectedItemChangedEventArgs e)
        {
            var product = e.SelectedItem as ProductInfo;
            await Navigation.PushAsync(new ProductPage(product));
        }
    }
}