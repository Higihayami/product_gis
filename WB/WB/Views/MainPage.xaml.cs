using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WB.Models;
using WB.Services;
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
            AppState.CurrentPage = "MainPage";
            List<ProductInfo> list = new List<ProductInfo>
            {
                new ProductInfo
                {
                    Id = "1",
                    Name = "Елки",
                    Desription = "Green",
                    Price = "100 руб",
                    Latitude = 55.755634, 
                    Longitude = 49.195273,
                    Photo = "https://4eli.ru/upload/iblock/a45/a451202de427c10bfe96a93b1715f7cc.jpg"
                },
                new ProductInfo
                {
                    Id = "2",
                    Name = "Продукты",
                    Desription = "Набор продуктов",
                    Price = "1000 руб",
                    Latitude = 55.745759, 
                    Longitude = 49.183986,
                    Photo = "https://sect.ru/upload/information_system_4/0/0/2/group_2/group_2.jpg"
                },
                new ProductInfo
                {
                    Id = "3",
                    Name = "Машина",
                    Desription = "911",
                    Price = "1000000 руб",
                    Latitude = 55.817784,
                    Longitude = 49.085128,
                    Photo = "https://avatars.mds.yandex.net/get-vertis-journal/4466156/MANSORY-P9LM-EVO900-Porsche-911-Turbo-S-7-1536x1024.jpg_1689844596057/orig"
                },
                new ProductInfo
                {
                    Id = "4",
                    Name = "Плащ",
                    Desription = "Демисезонный",
                    Price = "10000 руб",
                    Latitude = 55.822520, 
                    Longitude = 49.136884,
                    Photo = "https://imgcdn.loverepublic.ru/upload/images/33595/thumb/600_9999/3359544144_61_4.jpg",

                }
            };

            var dbPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "products.db");
            var database = new ProductInfoDatabase(dbPath);

            foreach (var product in list)
            {
                var existingProduct = database.GetProduct(product.Id);

                if (existingProduct == null)
                {
                    database.SaveProduct(product);
                }
                else
                {
                    
                }
            }

            var products = database.GetProducts();
            myListView.ItemsSource = products;

        }

        async private void myListView_ItemSelected(object sender, SelectedItemChangedEventArgs e)
        {
            var product = e.SelectedItem as ProductInfo;
            await Navigation.PushAsync(new ProductPage(product));
        }
    }
}