import beans.Bank;
import tools.ProcessingCenter;

public class Main {
   /*
    Entry point.
   */
   public static void main(String[] args) {
       Bank bank = new Bank();
       ProcessingCenter processingCenter = new ProcessingCenter(bank);
       CommandFactory commandFactory = new CommandFactory(processingCenter);
   }
}

