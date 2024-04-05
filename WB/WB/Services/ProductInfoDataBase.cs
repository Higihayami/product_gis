using SQLite;
using System;
using System.Collections.Generic;
using System.Text;
using WB.Models;

namespace WB.Services
{
    public class ProductInfoDatabase
    {
        readonly SQLiteConnection database;

        public ProductInfoDatabase(string dbPath)
        {
            database = new SQLiteConnection(dbPath);
            database.CreateTable<ProductInfo>();
        }

        public List<ProductInfo> GetProducts()
        {
            return database.Table<ProductInfo>().ToList();
        }

        public void SaveProduct(ProductInfo product)
        {
            database.Insert(product);
        }

        public ProductInfo GetProduct(string id)
        {
            return database.Table<ProductInfo>().FirstOrDefault(p => p.Id == id);
        }
    }
}
