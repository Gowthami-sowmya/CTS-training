using System;


namespace firstproject
{
    class electricity_bill
    {
        static void Main(string[] args)
        {
            int custid, unitcon;
            double amtchg, suramt = 0, perunit, netamt;
            string custname;
            Console.Write("Input Customer ID :");
            custid = Convert.ToInt32(Console.ReadLine());
            Console.Write("Input the name of the customer :");
            custname = Console.ReadLine();
            Console.Write("Input the unit consumed by the customer : ");
            unitcon = Convert.ToInt32(Console.ReadLine());
            if (unitcon < 200)
                amtchg = 1.20;
            else if (unitcon >= 200 && unitcon < 400)
                amtchg = 1.50;
            else if (unitcon >= 400 && unitcon < 600)
                amtchg = 1.80;
            else
                amtchg = 2.00;
            perunit = unitcon * amtchg;
            if (perunit > 300)
                suramt = perunit * 15 / 100.0;
            netamt = perunit + suramt;
            if (netamt < 100)
                netamt = 100;
            Console.Write("\nElectricity Bill\n");
            Console.Write("Customer IDNO                       :{0}\n", custid);
            Console.Write("Customer Name                       :{0}\n", custname);
            Console.Write("unit Consumed                       :{0}\n", unitcon);
            Console.Write("Amount Charges @Rs. {0}  per unit :{1}\n", amtchg, perunit);
            Console.Write("Surchage Amount                     :{0}\n", suramt);
            Console.Write("Net Amount Paid By the Customer     :{0}\n", netamt);
        }
    }
}
    

