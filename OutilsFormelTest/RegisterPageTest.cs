using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using OutilsFormels;

namespace OutilsFormelTest
{
    [TestClass]
    public class RegisterPageTest
    {
        [TestMethod]
        public void isValidString_cacahuette37_1_20()
        {
            RegisterPage registerPage = new RegisterPage();
            bool result = registerPage.isValidstring("cacahuette37", 1, 20);
            Assert.AreEqual(true, result);
        }

        [TestMethod]
        public void isValidString_cacahuette37_20_1()
        {
            RegisterPage registerPage = new RegisterPage();
            bool result = registerPage.isValidstring("cacahuette37", 20, 1);
            Assert.AreEqual(false, result);
        }

        [TestMethod]
        public void isValidString_cacahuette_1_20()
        {
            RegisterPage registerPage = new RegisterPage();
            bool result = registerPage.isValidstring("c@c@huette", 1, 20);
            Assert.AreEqual(false, result);
        }

        [TestMethod]
        public void isValidEmail_cacahuetteAchocolatcom()
        {
            RegisterPage registerPage = new RegisterPage();
            bool result = registerPage.isValidEmail("cacahuette@chocolat.com");
            Assert.AreEqual(true, result);
        }
        [TestMethod]
        public void isValidEmail_cacahuettechocolatcom()
        {
            RegisterPage registerPage = new RegisterPage();
            bool result = registerPage.isValidEmail("cacahuettechocolat.com");
            Assert.AreEqual(false, result);
        }
        [TestMethod]
        public void isValidEmail_cacahuettechocolat()
        {
            RegisterPage registerPage = new RegisterPage();
            bool result = registerPage.isValidEmail("cacahuettechocolat");
            Assert.AreEqual(false, result);
        }
        [TestMethod]
        public void isValidEmail_cacahuetteAchocolat()
        {
            RegisterPage registerPage = new RegisterPage();
            bool result = registerPage.isValidEmail("cacahuette@chocolat");
            Assert.AreEqual(false, result);
        }

    }
}
