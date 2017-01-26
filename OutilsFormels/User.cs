using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OutilsFormels
{
    public class User
    {
        public int userID { get; set; }
        public string firstName { get; set; }
        public string lastName { get; set; }
        public string email { get; set; }
        public string password { get; set; }

        User(int userID,string firstName,string lastName,string email,string password)
        {
            this.userID = userID;
            this.firstName = firstName;
            this.lastName = lastName;
            this.email = email;
            this.password = password;
        }
    }
}
