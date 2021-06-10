using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

using Telerik.Windows.Controls;

namespace TelerikWpf
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            var model = new MainViewModel();
            // setting the data into datacontext
            this.DataContext = model;
            model.LoadData();

        }
    }

    public class MainViewModel : ViewModelBase
    {
        private Random r = new Random();

        private ObservableCollection<SeriesModel> interfaces;
        public ObservableCollection<SeriesModel> Interfaces
        {
            get
            {
                return this.interfaces;
            }
            set
            {
                if (this.interfaces != value)
                {
                    this.interfaces = value;
                    OnPropertyChanged("Interfaces");
                }
            }
        }

        //  Method for Load the data.
        public void LoadData()
        {
            this.Interfaces = new ObservableCollection<SeriesModel>();
            var seriesModelTest = new SeriesModel() { DataPoints = new ObservableCollection<Interface>(), DataPoints1  = new ObservableCollection<Interface>()  };
            ObservableCollection<Interface> collection = Interface.GetAll();
            for (int i = 0; i < collection.Count; i++)
            {
                seriesModelTest.DataPoints.Add(collection[i]);
            }
            this.Interfaces.Add(seriesModelTest);
        }
    }

    /// <summary>
    /// SeriesModel created a model class
    /// </summary>
    public class SeriesModel
    {
        public ObservableCollection<Interface> DataPoints { get; set; }
        public ObservableCollection<Interface> DataPoints1 { get; set; }
    }

    public class Interface
    {
        public string Name { get; set; }
        public double Rate { get; set; }
        public DateTime Date { get; set; }

        private static Random r = new Random();

        /// <summary>
        /// Method to insert the data into the class.
        /// </summary>
        /// <returns></returns>
        public static ObservableCollection<Interface> GetAll()
        {
            var result = new ObservableCollection<Interface>();
            for (int j = 0; j < 10; j++)
            {
                result.Add(new Interface()
                {
                    Date = DateTime.Now.AddMonths(j),
                    Name = "Data Point " + j,
                    Rate = r.Next(100, 300),
                });
            }

            return result;
        }

        public static ObservableCollection<Interface> GetAll1()
        {
            var result = new ObservableCollection<Interface>();
            for (int j = 0; j < 10; j++)
            {
                result.Add(new Interface()
                {
                    Date = DateTime.Now.AddMonths(j),
                    Name = "Data Point1 " + j,
                    Rate = r.Next(50, 100),
                });
            }

            return result;
        }
    }
}
