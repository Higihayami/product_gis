using SQLite;
using System;
using System.Collections.Generic;
using System.Text;

namespace WB.Models
{
    public class User
    {
        [PrimaryKey, AutoIncrement]
        public Guid Id { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }

        public string Photo {  get; set; }  
        public string SecondName { get; set; }
    }
}
