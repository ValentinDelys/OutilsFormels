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

/*        private void test(object sender, RoutedEventArgs e)
        {
            BDD mybdd = new BDD();
            mybdd.AddUser(new User(0,"john","rambo","john.rambo@CpasmasGuerre.com", "$2a$10$N2ySck5.5ud.ys/BLGOWqeZioOamIpIfVinyd6FLpuOaSBASBlzrq", "jrambo"));
        }
*/

        private void test(object sender, RoutedEventArgs e)
        {
            BDD mybdd = new BDD();
            User user = new User();
            mybdd.getUser("jrambo", ref user);

            Console.WriteLine("{0}\t{1}\t{2}", user.userID, user.firstName, user.lastName);

            List<Card> listCards = new List<Card>();
            mybdd.getAllCards(ref user, ref listCards);

            foreach(Card card in listCards)
            {
                Console.WriteLine("{0}\t{1}\t{2}\t{3}", card.cardID, card.number, card.expiration.Month, card.expiration.Year);
            }


        }
    }
}
