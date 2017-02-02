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
        public User user;

        public ViewPage(User _user)
        {
            InitializeComponent();

            user = _user;

            showUserCards();
        }

        private void btAddCard_Click(object sender, RoutedEventArgs e)
        {
            AddCardView addCardView = new AddCardView(user);
            addCardView.Show();
            this.Close();
        }

        private void showUserCards()
        {
            List<Card> listCards = new List<Card>();
            getUserCards(ref listCards);
            formatCardNumber(ref listCards);

            lvCards.ItemsSource = listCards;
        }

        private void getUserCards(ref List<Card> listCards)
        {
            BDD mybdd = new BDD();
            mybdd.getAllCards(ref user, ref listCards);
        }

        private void formatCardNumber(ref List<Card> listCards)
        {
            foreach (Card card in listCards)
            {
                card.number = StringCipher.Decrypt(card.number, user.login);
                card.number = "############" + card.number.Substring((card.number.Length - 4), 4);
            }
        }

        private void btRemoveCard_Click(object sender, RoutedEventArgs e)
        {
        }

        private void ListViewItem_PreviewMouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            var item = sender as ListViewItem;
            if (item != null && item.IsSelected)
            {
                sender.GetType(); //Do your stuff
            }
        }
    }
}
