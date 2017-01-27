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
    /// Logique d'interaction pour LoginPage.xaml
    /// </summary>
    public partial class LoginPage : Window
    {
        public LoginPage()
        {
            InitializeComponent();
        }
        private void ValiderFunction(object sender, RoutedEventArgs e)
        {
            try
            {
                BDD mybdd = new BDD();
                User user = new User();
                if (mybdd.getUser(txtLogin.Text,ref user) != 1)
                {
                    throw new Exception("Login doesn't exist in the database");
                }
                string hashedPassword = user.password;
                bool validPassword = BCrypt.Net.BCrypt.Verify(passwordBox.Password, hashedPassword);
                if (validPassword)
                {

                }
            }
            catch(Exception ex)
            {
                lblErrorMsg.Content = ex.Message;
            }
           
        }
    }
}
