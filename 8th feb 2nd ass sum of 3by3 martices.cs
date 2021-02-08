using System;


namespace firstproject
{
    class sum_of_3by3_martices
    {
        static void Main()
        {
            int rows, cols;
            int[,] x = {
                          {1, 2, 3},
                          {4, 5, 6},
                          {7, 8, 11}
                     };
            int[,] y = {
                          {4, 9, 8},
                          {2, 7, 10},
                          {1, 13, 15}
                    };
            rows = x.GetLength(0);
            cols = y.GetLength(1);
            int[,] sum = new int[rows, cols];
            for (int i = 0; i < rows; i++)
            {
                for (int j = 0; j < cols; j++)
                {
                    sum[i, j] = x[i, j] + y[i, j];
                }
            }
            Console.WriteLine("Sum of 3 by 3 matrices: ");
            for (int i = 0; i < rows; i++)
            {
                for (int j = 0; j < cols; j++)
                {
                    Console.Write(sum[i, j] + " ");
                }
                Console.WriteLine();
            }
        }
    }
}
    

