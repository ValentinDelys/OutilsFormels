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
        public int type { get; set; }
        public int fk_userID { get; set; }

        public Card(int cardID, string number, DateTime expiration, int type, int fk_userID)
        {
            this.cardID = cardID;
            this.number = number;
            this.expiration = expiration;
            this.type = type;
            this.fk_userID = fk_userID;
        }

        public override string ToString()
        {
            return this.number;
        }
    }
}
