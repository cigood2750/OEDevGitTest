using GitTestMauiApp.Models;
using GitTestMauiApp.PageModels;

namespace GitTestMauiApp.Pages
{
    public partial class MainPage : ContentPage
    {
        public MainPage(MainPageModel model)
        {
            InitializeComponent();
            BindingContext = model;
        }
    }
}