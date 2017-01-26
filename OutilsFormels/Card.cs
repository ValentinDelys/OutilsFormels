using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OutilsFormels
{
    public class Card
    {
        public int cardID { get; set; }
        public string number { get; set; }
        public DateTime expiration { get; set; }
        public int cvv { get; set; }
        public int type { get; set; }
        public int fk_userID { get; set; }

        Card()
        {

        }
    }
}
