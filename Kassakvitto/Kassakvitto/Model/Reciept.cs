using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Kassakvitto.Model
{
    public class Reciept
    {
        private double _subtotal;

        public Reciept() {
        //tom
        }

        public Reciept(double subtotal) {
        
            Subtotal = subtotal;
        
        }

        public double Subtotal {

            get { return _subtotal; }
            
            set {

                if(value <= 0){

                    throw new ArgumentOutOfRangeException();

                }

                _subtotal = value;
            }
        }

        public double DiscountRate{get;  set; }
        public double MoneyOff { get; set; }

        public void Calculate(double subtotal) {

            Subtotal = subtotal;

            double discount = 0;
            
            if(subtotal > 499 && subtotal <=999){

                discount = 0.05;

            }
            if (subtotal > 999 && subtotal <= 4999) {

                discount = 0.1;
            }

            if (subtotal >= 5000) {

                discount = 0.15;
            }

            DiscountRate = discount;

            MoneyOff = DiscountRate * subtotal;

            double Paymentdue = Subtotal - MoneyOff;
        }
    }
}