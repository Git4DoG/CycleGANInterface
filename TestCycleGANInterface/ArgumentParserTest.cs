using System;
using System.Collections.Generic;
using System.Text;
using Xunit;
using CycleGANInterface;
using System.IO;
using CycleGANInterface.Model;

namespace TestCycleGANInterface
{
    public class ArgumentParserTest
    {
        [Fact]
        public void FileInputTest ()
        {
            string input = Path.GetFullPath("TestFolder/Input/InputFile.png");
            string output = Path.GetFullPath("TestFolder/Output");

            ArgumentParser parser = new ArgumentParser("-f", input, "-o", output);

            Assert.True(parser.TryGetArgument("-f", out IArgument inputArg));
            Assert.True(parser.TryGetArgument("-o", out IArgument outputArg));

            Assert.IsType<PathArgument>(inputArg);
            Assert.IsType<PathArgument>(outputArg);

            PathArgument inputPathArg = inputArg as PathArgument;
            Assert.Equal(inputPathArg.RawValue, input);
            Assert.Equal(input, Uri.UnescapeDataString(inputPathArg.Value.AbsolutePath).Replace('/', '\\'));
            PathArgument outputPathArg = outputArg as PathArgument;
            Assert.Equal(outputPathArg.RawValue, output);
            Assert.Equal(output, Uri.UnescapeDataString(outputPathArg.Value.AbsolutePath).Replace('/', '\\'));
        }

        [Fact]
        public void FolderInputTest ()
        {
            string input = Path.GetFullPath("TestFolder/Input");
            string output = Path.GetFullPath("TestFolder/Output");

            ArgumentParser parser = new ArgumentParser("-f", input, "-o", output);

            Assert.True(parser.TryGetArgument("-f", out IArgument inputArg));
            Assert.True(parser.TryGetArgument("-o", out IArgument outputArg));

            Assert.IsType<PathArgument>(inputArg);
            Assert.IsType<PathArgument>(outputArg);

            PathArgument inputPathArg = inputArg as PathArgument;
            Assert.Equal(inputPathArg.RawValue, input);
            Assert.Equal(input, Uri.UnescapeDataString(inputPathArg.Value.AbsolutePath).Replace('/', '\\'));

            PathArgument outputPathArg = outputArg as PathArgument;
            Assert.Equal(outputPathArg.RawValue, output);
            Assert.Equal(output, Uri.UnescapeDataString(outputPathArg.Value.AbsolutePath).Replace('/', '\\'));
        }

        [Fact]
        public void FileOutputTest ()
        {
            string input = Path.GetFullPath("TestFolder/Input");
            string output = Path.GetFullPath("TestFolder/OutputFile.png");

            try
            {
                ArgumentParser parser = new ArgumentParser("-f", input, "-o", output);
            } catch (Exception ex)
            {
                Assert.Equal("Invalid output path uri", ex.Message);
            }
        }

        [Fact]
        public void NoOutputTest()
        {
            string input = Path.GetFullPath("TestFolder/Input");

            try
            {
                ArgumentParser parser = new ArgumentParser("-f", input);
            }
            catch (Exception ex)
            {
                Assert.Equal("No all required arguments were received", ex.Message);
            }
        }

        [Fact]
        public void NoArgumentsTest ()
        {
            try
            {
                ArgumentParser parser = new ArgumentParser();
            }
            catch (Exception ex)
            {
                Assert.Equal("No all required arguments were received", ex.Message);
            }
        }

        [Fact]
        public void FileAndFolderInputTest ()
        {
            string inputFolder = Path.GetFullPath("TestFolder/Input");
            string inputFile = Path.GetFullPath("TestFolder/Input/InputFile.png");
            string output = Path.GetFullPath("TestFolder/Output");

            try
            {
                ArgumentParser parser = new ArgumentParser("-f", inputFile, "-f", inputFolder, "-o", output);
            }
            catch (Exception ex)
            {
                Assert.Equal("Multiple folder arguments or a combination of image and folder arguments are not allowed", ex.Message);
            }
        }

        [Fact]
        public void MultipleFoldersInputTest ()
        {
            string inputFolder1 = Path.GetFullPath("TestFolder/Input");
            string inputFolder2 = Path.GetFullPath("TestFolder/Input");
            string output = Path.GetFullPath("TestFolder/Output");

            try
            {
                ArgumentParser parser = new ArgumentParser("-f", inputFolder1, "-f", inputFolder2, "-o", output);
            }
            catch (Exception ex)
            {
                Assert.Equal("Multiple folder arguments or a combination of image and folder arguments are not allowed", ex.Message);
            }
        }

        [Fact]
        public void MultipleFilesInputTest ()
        {
            string inputFile1 = Path.GetFullPath("TestFolder/Input/InputFile.png");
            string inputFile2 = Path.GetFullPath("TestFolder/Input/InputFile.png");
            string output = Path.GetFullPath("TestFolder/Output");

            try
            {
                ArgumentParser parser = new ArgumentParser("-f", inputFile1, "-f", inputFile2, "-o", output);
            }
            catch (Exception ex)
            {
                Assert.Equal("Multiple folder arguments or a combination of image and folder arguments are not allowed", ex.Message);
            }
        }

        [Fact]
        public void InvalidArgumentTest ()
        {
            string inputFile = Path.GetFullPath("TestFolder/Input/InputFile.png");
            string output = Path.GetFullPath("TestFolder/Output");

            try
            {
                ArgumentParser parser = new ArgumentParser("-f", inputFile, "-g", "invalid", "-o", output);
            }
            catch (Exception ex)
            {
                Assert.Equal("Invalid argument -g", ex.Message);
            }
        }

        [Fact]
        public void ArgumentWithoutValueTest ()
        {
            string inputFile = Path.GetFullPath("TestFolder/Input/InputFile.png");

            try
            {
                ArgumentParser parser = new ArgumentParser("-f", inputFile, "-o");
            }
            catch (Exception ex)
            {
                Assert.Equal("You may not give an argument without a value", ex.Message);
            }
        }

        [Fact]
        public void NoInputTest ()
        {
            string output = Path.GetFullPath("TestFolder/Output");

            try
            {
                ArgumentParser parser = new ArgumentParser("-o", output);
            }
            catch (Exception ex)
            {
                Assert.Equal("No all required arguments were received", ex.Message);
            }
        }
    }
}
