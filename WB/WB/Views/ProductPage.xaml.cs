using SQLite;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WB.Models;
using WB.Services;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace WB.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class ProductPage : ContentPage
    {
        private ProductInfo productInfo;
        DatabaseService databaseService;
        private SQLiteConnection connection;

        public ProductPage(ProductInfo productInfo)
        {
            InitializeComponent();
            this.productInfo = productInfo;

            string dbPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "databaseProducts.db3");

            connection = new SQLiteConnection(dbPath);

            connection.CreateTable<ProductInfo>();

            databaseService = new DatabaseService(dbPath);

            titleLabel.Text = productInfo.Name;
            descriptionLabel.Text = productInfo.Desription;
            priceLabel.Text = $"Цена: {productInfo.Price}";
            productImage.Source = ImageSource.FromUri(new Uri(productInfo.Photo));

            favoriteButton.Clicked += (sender, e) =>
            {
                var existingProduct = connection.Table<ProductInfo>().FirstOrDefault(p => p.Id == productInfo.Id);

                if (existingProduct == null)
                {
                    connection.Insert(productInfo);
                    DisplayAlert("Успех", "Товар добавлен в избранное", "OK");
                }
                else
                {
                    DisplayAlert("Предупреждение", "Товар уже существует в избранном", "OK");
                }
            };

            mapButton.Clicked += (sender, e) =>
            {
                if (Device.RuntimePlatform == Device.Android)
                {
                    toMapPage();
                }
            };

        }

        async private void toMapPage()
        {
            await Navigation.PushAsync(new MapPage(productInfo));
        }
    }
}