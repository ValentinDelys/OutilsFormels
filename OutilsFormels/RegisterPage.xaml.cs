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

using System.Text.RegularExpressions;

namespace OutilsFormels
{
    /// <summary>
    /// Logique d'interaction pour RegisterForm.xaml
    /// </summary>
    public partial class RegisterPage : Window
    {
        public RegisterPage()
        {
            InitializeComponent();
        }

        private void btRegister_Click(object sender, RoutedEventArgs e)
        {

        }

        private bool Validstring(string str)
        {
            System.Text.RegularExpressions.Regex myRegex = new Regex(@"([a-z]{1-12})$");
            //([\w]+) ==> caractère alphanumérique apparaissant une fois ou plus 
            return myRegex.IsMatch(str); // retourne true ou false selon la vérification
        }

    }
}
