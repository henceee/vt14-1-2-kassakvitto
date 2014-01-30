using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Kassakvitto.Model
{
    public class Reciept
    {
        private double _subtotal;

        public Reciept()
        {
            //tom
        }

        public Reciept(double subtotal)
        {

            Calculate(subtotal);

        }

        public double Subtotal
        {

            get { return _subtotal; }

            private set
            {

                if (value <= 0)
                {

                    throw new ArgumentOutOfRangeException();

                }

                _subtotal = value;
            }
        }

        public double DiscountRate { get; private set; }
        public double MoneyOff { get; private set; }
        public double Total { get; private set; }

        public void Calculate(double subtotal)
        {
            Subtotal = subtotal;

            if (Subtotal < 500)
            {

                DiscountRate = 0;

            }
            else if (Subtotal < 1000)
            {

                DiscountRate = 0.05;
            }

            else if (Subtotal < 5000)
            {

                DiscountRate = 0.1;
            }
            else
            {
                DiscountRate = 0.15;
            }

            MoneyOff = DiscountRate * Subtotal;
            Total = Subtotal - MoneyOff;
        }
    }
}