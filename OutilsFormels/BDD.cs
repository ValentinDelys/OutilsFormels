using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

// Librairie MySQL ajoutée dans les références.
using MySql.Data.MySqlClient;

namespace OutilsFormels
{
    public class BDD
    {
        private string connectionString = "SERVER=localhost; DATABASE=outils_formels; UID=root; PASSWORD=";
        private MySqlConnection connection;

        public BDD()
        {
            InitConnection();
        }

        /// <summary>
        /// init the connection
        /// </summary>
        private void InitConnection()
        {
            connection = new MySqlConnection(connectionString);
        }

        #region User function
        /// <summary>
        /// Add a User
        /// </summary>
        /// <param name="user"></param>
        public int AddUser(User user)
        {
            try
            {
                // Ouverture de la connexion SQL
                this.connection.Open();

                // Création d'une commande SQL en fonction de l'objet connection
                MySqlCommand cmd = this.connection.CreateCommand();

                // Requête SQL
                cmd.CommandText = "INSERT INTO user ( firstName, lastName, email, password, login) VALUES ( @firstName, @lastName, @email, @password, @login)";

                // utilisation de l'objet contact passé en paramètre
                cmd.Parameters.AddWithValue("@firstName", user.firstName);
                cmd.Parameters.AddWithValue("@lastName", user.lastName);
                cmd.Parameters.AddWithValue("@email", user.email);
                cmd.Parameters.AddWithValue("@password", user.password);
                cmd.Parameters.AddWithValue("@login", user.login);

                // Exécution de la commande SQL
                cmd.ExecuteNonQuery();

                // Fermeture de la connexion
                this.connection.Close();
                return 1;
            }
            catch (Exception e)
            {
                string msg = e.Message;
                
                return -1;
            }
        }



        #endregion
        /// <summary>
        /// Add a card
        /// </summary>
        /// <param name="card"> card class </param>
        public void AddCard(Card card)
        {
            try
            {
                // Ouverture de la connexion SQL
                this.connection.Open();

                // Création d'une commande SQL en fonction de l'objet connection
                MySqlCommand cmd = this.connection.CreateCommand();

                // Requête SQL
                cmd.CommandText = "INSERT INTO card ( number, expiration, cvv, type, fk_userID) VALUES ( @number, @expiration, @cvv, @type, @fk_userID)";

                // utilisation de l'objet contact passé en paramètre
                cmd.Parameters.AddWithValue("@number", card.number);
                cmd.Parameters.AddWithValue("@expiration", card.expiration);
                cmd.Parameters.AddWithValue("@cvv", card.cvv);
                cmd.Parameters.AddWithValue("@type", card.type);
                cmd.Parameters.AddWithValue("@fk_userID", card.fk_userID);

                // Exécution de la commande SQL
                cmd.ExecuteNonQuery();

                // Fermeture de la connexion
                this.connection.Close();
            }
            catch
            {
                // Gestion des erreurs :
                // Possibilité de créer un Logger pour les exceptions SQL reçus
                // Possibilité de créer une méthode avec un booléan en retour pour savoir si le contact à été ajouté correctement.
            }
        }
    }
}
