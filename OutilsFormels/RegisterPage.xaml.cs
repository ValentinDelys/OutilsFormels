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
            try
            {
                if (!isValidstring(tbLogin.Text, 1, 30)) { throw new Exception("Login invalid"); }
                if (!isValidPassword(passwordBox1.Password) && passwordBox1.Password== passwordBox2.Password) { throw new Exception("Password invalid"); }
                if (!isValidstring(tbFirstName.Text, 1, 40)) { throw new Exception("FirstName invalid"); }
                if (!isValidstring(tbLastName.Text, 1, 40)) { throw new Exception("LastName invalid"); }
                if (!isValidEmail(tbEmail.Text)) { throw new Exception("Email invalid"); }

                BDD mybdd = new BDD();
                User user = new User();
                if (mybdd.getUser(tbLogin.Text, ref user) == 1)
                {
                    throw new Exception("Login already exist in the database");
                }
                string hashedPassword = BCrypt.Net.BCrypt.HashPassword(passwordBox1.Password);
                user = new User(0, tbFirstName.Text, tbLastName.Text, tbEmail.Text, hashedPassword, tbLogin.Text);
                mybdd.addUser(user);
                this.Close();    
            }
            catch(Exception ex)
            {
                lblErrorMsg.Content = ex.Message;
            }
        }

        private static bool isValidstring(string str,int sizeMin,int sizeMax)
        {
            Regex rg = new Regex(@"^[a-zA-Z0-9\s,]*$");
            if(str.Length< sizeMin || str.Length > sizeMax) { return false; }
            return rg.IsMatch(str);
        }
      
        public static bool isValidEmail(string inputEmail)
        {
            string strRegex = @"^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}" +
                  @"\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\" +
                  @".)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$";
            Regex re = new Regex(strRegex);
            if (re.IsMatch(inputEmail))
                return (true);
            else
                return (false);
        }

        public static bool isValidPassword(string inputPassword)
        {
            var hasNumber = new Regex(@"[0-9]+");
            var hasUpperChar = new Regex(@"[A-Z]+");
            var hasMinimum8Chars = new Regex(@".{8,}");

            return  hasNumber.IsMatch(inputPassword) && hasUpperChar.IsMatch(inputPassword) && hasMinimum8Chars.IsMatch(inputPassword);
        }

    }
}
