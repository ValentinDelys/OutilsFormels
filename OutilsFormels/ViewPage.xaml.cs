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
using System.Windows.Shapes;

namespace OutilsFormels
{
    /// <summary>
    /// Logique d'interaction pour ViewPage.xaml
    /// </summary>
    public partial class ViewPage : Window
    {
        public ViewPage(User user)
        {
            InitializeComponent();

            BDD mybdd = new BDD();
   
            List<Card> listCards = new List<Card>();
            mybdd.getAllCards(ref user, ref listCards);

            lvUsers.ItemsSource = listCards;
        }
    }
}
