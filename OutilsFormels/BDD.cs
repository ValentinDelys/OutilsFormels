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

        /// <summary>
        /// constructor
        /// </summary>
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


        public int GetUser(string loginUser, ref User user)
        {
            try
            {
                // Ouverture de la connexion SQL
                this.connection.Open();

                // Création d'une commande SQL en fonction de l'objet connection
                MySqlCommand cmd = this.connection.CreateCommand();

                // Requête SQL
                cmd.CommandText = "SELECT * FROM user WHERE login = " + (char)34 + loginUser + (char)34;
                // Exécution de la commande SQL

                using (MySqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        reader.Read();
                        user = new User(reader.GetInt32(0), reader.GetString(1), reader.GetString(2), reader.GetString(3), reader.GetString(4), reader.GetString(5));
                    }

                }

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

        /// <summary>
        /// Delete a user uin the database
        /// </summary>
        /// <param name="loginUser">User delete</param>
        /// <returns></returns>
        public int DeleteUser(string loginUser)
        {
            try
            {
                // Ouverture de la connexion SQL
                this.connection.Open();

                // Création d'une commande SQL en fonction de l'objet connection
                MySqlCommand cmd = this.connection.CreateCommand();

                // Requête SQL
                cmd.CommandText = "DELETE FROM user WHERE login = " + loginUser;
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

        #region Card Function
        /// <summary>
        /// Add a card
        /// </summary>
        /// <param name="card"> card class </param>
        public int AddCard(Card card)
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
                return 1;
            }
            catch(Exception e)
            {
                string msg = e.Message;
                return -1;
            }
        }

        /// <summary>
        /// Delete a card from the database
        /// </summary>
        /// <param name="cardID"> ID of the card which have to be delete</param>
        /// <returns></returns>
        public int DeleteCard(int cardID)
        {
            try
            {
                // Ouverture de la connexion SQL
                this.connection.Open();

                // Création d'une commande SQL en fonction de l'objet connection
                MySqlCommand cmd = this.connection.CreateCommand();

                // Requête SQL
                cmd.CommandText = "DELETE FROM card WHERE card.cardID = " + cardID;
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
    }
}
