using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace OutilsFormels
{
    /// <summary>
    /// Logique d'interaction pour MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void test(object sender, RoutedEventArgs e)
        {
            BDD mybdd = new BDD();
            mybdd.DeleteUser("john");
            //mybdd.AddUser(new User(0,"john","rambo","john.rambo@CpasmasGuerre.com", "$2a$10$N2ySck5.5ud.ys/BLGOWqeZioOamIpIfVinyd6FLpuOaSBASBlzrq", "jrambo"));
         }
    }
}
