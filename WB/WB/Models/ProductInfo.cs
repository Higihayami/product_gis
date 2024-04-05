using System;
using System.Collections.Generic;
using System.Text;

namespace WB.Models
{
    public class ProductInfo
    {
        public string Id { get; set; }
        public string Name { get; set; }
        public string Desription { get; set; }
        public string Price { get; set; }

        public double Latitude { get; set; }    
        public double Longitude { get; set; }
        
        public string Photo { get; set; }

    }
}
