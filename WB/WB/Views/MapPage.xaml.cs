using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WB.Models;
using Xamarin.Forms;
using Xamarin.Forms.Maps;
using Xamarin.Forms.Xaml;

namespace WB.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class MapPage : ContentPage
    {
        public MapPage(ProductInfo product)
        {
            InitializeComponent();

            var map = new Map();
            map.IsShowingUser = true;

            var latitude = product.Latitude;
            var longitude = product.Longitude;

            var position = new Position(latitude, longitude);
            var pin = new Pin
            {
                Position = position,
                Label = product.Name,
                Type = PinType.Place 
            };

            map.Pins.Add(pin);

            Content = new StackLayout
            {
                Children = { map }
            };
        }
    }
}