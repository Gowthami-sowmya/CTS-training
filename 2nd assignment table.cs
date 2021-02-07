using System;


namespace firstproject
{
    class class_table
    {
        public static void Main()
        {
            int j, n;
            Console.WriteLine("Enter the number : ");
            n = Convert.ToInt32(Console.ReadLine());
            for (j = 1; j <= 10; j++)
            {
                Console.Write("{0} X {1} = {2} \n", n, j, n * j);
            }
        }
    }
}
    






//7.WAP to take some numbers from user.
//(Console.ReadLine());

//8.What is System in the program.What is Console? What are Write, WriteLine,readline and tobyte
//System- which contains some functions of program
//write-we get the output in same line
//writeline-we get the output in next line
//console-in which we write the program by using it.
//readline-we can give input through user
//Tobyte-converts to byte

//9.Is it mandatory to have a class in the project
//ans-yes

//10.Why is static added to Main() method?
// ans-It is the entry point of the program and runs without even creating an instance of the class.