using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using System;
using System.IO;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;
using Xunit;

namespace TestMockFotohokjeSelenium
{
    public class SystemTest : IDisposable
    {
        private readonly IWebDriver _driver;

        public SystemTest ()
        {
            _driver = new ChromeDriver();
        }

        public void Dispose()
        {
            _driver.Close();
            _driver.Dispose();
        }

        [Fact]
        public void SingleTest()
        {
            int beginResults = GetResultsCountBefore();

            string input = Path.GetFullPath("TestFolder/Input/InputFile.png");

            _driver.Navigate()
                .GoToUrl("https://localhost:5001/Upload/Single");
            IWebElement uploader = _driver.FindElement(By.Id("image-input"));
            uploader.SendKeys(input);

            IWebElement preview = _driver.FindElement(By.Id("image-preview"));
            Assert.NotEmpty(preview.GetProperty("src"));

            //Press upload
            IWebElement upload = _driver.FindElement(By.Id("confirm"));
            upload.Click();

            Thread.Sleep(2000);

            Assert.Equal("https://localhost:5001/", _driver.Url);

            _driver.Navigate()
                .GoToUrl("https://localhost:5001/Results");
            IWebElement tableBody = _driver.FindElement(By.Id("results-table")).FindElement(By.TagName("tbody"));
            System.Collections.ObjectModel.ReadOnlyCollection<IWebElement> rows = tableBody.FindElements(By.TagName("tr"));
            Assert.Equal(beginResults + 1, rows.Count);

            //Goto details and get img count
            rows.First().FindElement(By.ClassName("btn-actions")).Click();
            Thread.Sleep(200);
            Assert.Contains("Results/Details", _driver.Url);
            Assert.Single(_driver.FindElements(By.TagName("img")));
        }

        [Fact]
        public void BatchTest()
        {
            int beginResults = GetResultsCountBefore();

            string input = Path.GetFullPath("TestFolder/Input/InputFile.png");
            string input2 = Path.GetFullPath("TestFolder/Input/InputBatchFile.png");

            _driver.Navigate()
                .GoToUrl("https://localhost:5001/Upload/Batch");
            IWebElement uploader = _driver.FindElement(By.Id("batch-input"));
            uploader.SendKeys(input + "\n" + input2);

            //Press upload
            IWebElement upload = _driver.FindElement(By.Id("confirm"));
            upload.Click();

            Thread.Sleep(2000);

            Assert.Equal("https://localhost:5001/", _driver.Url);

            _driver.Navigate()
                .GoToUrl("https://localhost:5001/Results");
            IWebElement tableBody = _driver.FindElement(By.Id("results-table")).FindElement(By.TagName("tbody"));
            System.Collections.ObjectModel.ReadOnlyCollection<IWebElement> rows = tableBody.FindElements(By.TagName("tr"));
            Assert.Equal(beginResults + 1, rows.Count);

            //Goto details and get img count
            rows.First().FindElement(By.ClassName("btn-actions")).Click();
            Thread.Sleep(200);
            Assert.Contains("Results/Details", _driver.Url);
            Assert.Equal(2, _driver.FindElements(By.TagName("img")).Count);
        }

        private int GetResultsCountBefore ()
        {
            _driver.Navigate()
               .GoToUrl("https://localhost:5001/Results");
           return _driver.FindElement(By.Id("results-table")).FindElement(By.TagName("tbody")).FindElements(By.TagName("tr")).Count;
        }
    }
}
