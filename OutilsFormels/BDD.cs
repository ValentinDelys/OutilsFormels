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

        BDD()
        {
            InitConnection();
        }

        // Init the connection
        private void InitConnection()
        {
            connection = new MySqlConnection(connectionString);
        }

        // Add a user
        public void AddUser(User user)
        {
            try
            {
                // Ouverture de la connexion SQL
                this.connection.Open();

                // Création d'une commande SQL en fonction de l'objet connection
                MySqlCommand cmd = this.connection.CreateCommand();

                // Requête SQL
                cmd.CommandText = "INSERT INTO user (userID, fisrtName, lastName, email, password) VALUES (@id, @fisrtName, @lastName, @email, @password)";

                // utilisation de l'objet contact passé en paramètre


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
