import com.cab.booking.controller.DriverController;
import com.cab.booking.payment.Cash;
import com.cab.booking.payment.CreditCard;
import com.cab.booking.payment.Payment;
import com.cab.booking.payment.UPI;

//TIP To <b>Run</b> code, press <shortcut actionId="Run"/> or
// click the <icon src="AllIcons.Actions.Execute"/> icon in the gutter.
public class CabBookingSystem {
    public static void main(String[] args) {
            DriverController driverController = new DriverController();

            driverController.addDriver("D1", "Rahul", "UP32AB1234", true);
            driverController.addDriver("D2", "Amit", "KA05XY5678", false);

            System.out.println("Available Drivers:");
            driverController.displayAvailableDrivers();

            Payment payment1 = new UPI();
            Payment payment2 = new Cash();
            Payment payment3 = new CreditCard();

            payment1.makePayment(500);
            payment2.makePayment(300);
            payment3.makePayment(1000);
        }
    }
