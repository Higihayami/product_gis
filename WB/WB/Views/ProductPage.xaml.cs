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

            // Путь к базе данных SQLite
            string dbPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "databaseProducts.db3");

            // Инициализация подключения к базе данных SQLite
            connection = new SQLiteConnection(dbPath);

            // Создание таблицы ProductInfo, если её нет
            connection.CreateTable<ProductInfo>();

            // Создание экземпляра databaseService
            databaseService = new DatabaseService(dbPath);

            // Заполнение данных из объекта ProductInfo
            titleLabel.Text = productInfo.Name;
            descriptionLabel.Text = productInfo.Desription;
            priceLabel.Text = $"Цена: {productInfo.Price}";
            // Дополнительно для отображения изображения товара, если у объекта ProductInfo есть URL картинки
            productImage.Source = ImageSource.FromUri(new Uri(productInfo.Photo));

            favoriteButton.Clicked += (sender, e) =>
            {
                // Сохранение информации о товаре в базу данных SQLite
                connection.Insert(productInfo);
                DisplayAlert("Успех", "Товар добавлен в избранное", "OK");
            };

        }
    }
}