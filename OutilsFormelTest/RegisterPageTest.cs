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
    }
}
