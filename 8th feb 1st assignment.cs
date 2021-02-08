using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace firstproject
{
    class _8th_feb_1st_ass
    {
        static void Addition(int x, int y)
        {
            Console.WriteLine("Result of sum is " + (x + y));
        }
        static void Subtraction(int x, int y)
        {
            Console.WriteLine("Result of Subtraction is " + (x - y));
        }

        static void Product(int x, int y)
        {
            Console.WriteLine("Result of Product is " + (x * y));
        }


        static void Division(float x, float y)
        {
            Console.WriteLine("Result of Division is " + (x / y));
        }


        static void Main()
        {
           
            Console.WriteLine("Performing operations using If Else statement ");
            Console.WriteLine("Enter two values and your choice");
            int x = Convert.ToInt32(Console.ReadLine());
            int y = Convert.ToInt32(Console.ReadLine());
            int choice = Convert.ToInt32(Console.ReadLine());
            if (choice == 1)
            {
                Addition(x, y);
            }
            else if (choice == 2)
            {
                Subtraction(x, y);
            }

            else if (choice == 3)
            {
                Product(x, y);
            }
            else if (choice == 4)
            {
                Division(x, y);
            }
            else
                Console.WriteLine("Invalid choice");

            Console.WriteLine("Performing operations using Switch statement ");
            Console.WriteLine("Enter two values and your choice");
            int a = Convert.ToInt32(Console.ReadLine());
            int b = Convert.ToInt32(Console.ReadLine());
            int choice1 = Convert.ToInt32(Console.ReadLine());

            switch (choice1)
            {
                case 1:
                    Addition(a, b);
                    break;
                case 2:
                    Subtraction(a, b);
                    break;
                case 3:
                    Product(a, b);
                    break;
                case 4:
                    Division(a, b);
                    break;
                default:
                    Console.WriteLine("Invalid choice");
                    break;

            }
        }
    }
}
    

