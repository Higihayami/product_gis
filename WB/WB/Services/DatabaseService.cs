using SQLite;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using WB.Models;

namespace WB.Services
{
    public class DatabaseService
    {
        readonly SQLiteAsyncConnection _database;

        public DatabaseService(string dbPath)
        {
            _database = new SQLiteAsyncConnection(dbPath);
            _database.CreateTableAsync<User>().Wait();
        }

        public async Task<bool> CheckUserExists(string username, string password)
        {
            var user = await _database.Table<User>().FirstOrDefaultAsync(u => u.Username == username && u.Password == password);
            return user != null;
        }

        public async Task<int> UpdateUser(User user)
        {
            return await _database.UpdateAsync(user);
        }

        public async Task<Guid> GetUserIdByUsername(string username)
        {
            var user = await _database.Table<User>().FirstOrDefaultAsync(u => u.Username == username);
            return user != null ? user.Id : Guid.Empty;
        }

        public async Task<User> GetUserById(Guid userId)
        {
            return await _database.FindAsync<User>(userId);
        }


        public async Task<int> AddUserAsync(string username, string password)
        {
            var user = new User
            {
                Id = Guid.NewGuid(),
                Username = username,
                Password = password
            };
            return await _database.InsertAsync(user);
        }
    }
}
