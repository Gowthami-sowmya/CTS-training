using System;


namespace firstproject
{
    class sum_and_avg
    {
		static void Main(string[] args)
		{
			int j, sum = 0;
		    float avg;
			for (j = 1;  j<= 20; j++)
			{
				Console.Write("{0} \n", j);
				sum = sum+j;
			}
			avg = (float)sum / 20;
			Console.WriteLine("The sum of 20 natural numbers are : {0}\n The Average is : {1}\n", sum, avg);
		}
	}
}
    

