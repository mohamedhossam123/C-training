using System;
using System.Runtime.CompilerServices;

class Program
{
    //thishereistotestgit
    //more
    static void Main()
    {
        int a, b;
        char oper;
        char keep;
        static void add(int x,int y) { Console.WriteLine($"Result: {x + y}"); }
        static void minus(int x, int y) { Console.WriteLine($"Result: {x - y}"); }
        static void multi(int x, int y) { Console.WriteLine($"Result: {x * y}"); }
        static void divide(int x, int y) { Console.WriteLine($"Result: {x / y}"); }
        while (true)
        {
            try
            {
                Console.Write("Enter your numbers: \n");
                a = int.Parse(Console.ReadLine());
                b = int.Parse(Console.ReadLine());
                Console.Write("Enter the operation (+, -, *, /): ");
                oper = char.Parse(Console.ReadLine());
            }
            catch
            {
                Console.WriteLine("You entered something wrong pal....");
                continue;
            }

            if (oper == '+')
            {
                add(a, b);
            }
            else if (oper == '-')
            {
                minus(a, b);
            }
            else if (oper == '*')
            {
                multi(a, b);
            }
            else if (oper == '/')
            {
                if (b != 0)
                {
                    divide(a,b);
                }
                else
                {
                    Console.WriteLine("Can't divide by zero.");
                }
            }
            else
            {
                Console.WriteLine("You didn't enter a valid operation.");
                continue;
            }
            Console.Write("\nWant to quit? (y/n): ");
            keep = char.Parse(Console.ReadLine());
            if (keep == 'y')
            {
                break;
            }
        }
    }
}