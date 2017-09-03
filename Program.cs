using System;
using System.Threading;

class MyCLI
{
    static void Main(string[] args)
    {
        var i = 100;
        do {
            Console.WriteLine($"Hello World! #{i}");
            Thread.Sleep(100);
            i--;
        } while (i > 0);
    }
}
