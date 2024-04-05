using SQLite;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WB.Models;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace WB.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class FavoritePage : ContentPage
    {

        private SQLiteConnection connection;
        public FavoritePage()
        {
            InitializeComponent();
            UpdateFavoriteData();
        }

        // Обработчик события выбора элемента в ListView
        private void myListView_ItemSelected(object sender, SelectedItemChangedEventArgs e)
        {
            if (e.SelectedItem != null)
            {
                ProductInfo selectedProduct = (ProductInfo)e.SelectedItem;
                // Здесь можно добавить логику для обработки выбранного продукта, например, открыть детали продукта
            }
        }
        protected override void OnAppearing()
        {
            base.OnAppearing();
            // Обновите данные из SQL
            UpdateFavoriteData();
        }

            AppState.CurrentPage = "FavoritePage";

        private void UpdateFavoriteData()
        {
            // Путь к базе данных SQLite
            string dbPath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "databaseProducts.db3");

            // Инициализация подключения к базе данных SQLite
            connection = new SQLiteConnection(dbPath);

            // Создание таблицы ProductInfo, если её нет
            connection.CreateTable<ProductInfo>();

            // Получение всех избранных продуктов из базы данных
            List<ProductInfo> favoriteProducts = connection.Table<ProductInfo>().ToList();

            // Привязка списка избранных продуктов к ListView
            myListView.ItemsSource = favoriteProducts;
        }
    }
}