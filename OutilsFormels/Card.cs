using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OutilsFormels
{
    public class Card
    {
        private int cardID { get; set; }
        private string number { get; set; }
        private DateTime expiration { get; set; }
        private int cvv { get; set; }
        private int type { get; set; }
        private int fk_userID { get; set; }

        Card()
        {

        }
    }
}
