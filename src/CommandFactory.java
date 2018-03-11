import commands.*;
import enums.Commands;
import tools.ProcessingCenter;

import java.util.Scanner;

public class CommandFactory {
    private ProcessingCenter processingCenter;
    private Scanner reader;

    public CommandFactory(ProcessingCenter processingCenter) {
        this.processingCenter = processingCenter;
        reader = new Scanner(System.in);
    }

    public Command createCommand(String command) {
        Commands commands = Commands.valueOf(command.toUpperCase());
        switch(commands) {
            case BLOCK:
                System.out.println("Enter account id :");
                return new BlockAccountCommand(processingCenter,reader.nextInt());

            case CALCULATE:
                System.out.println("Enter client id :");
                return new CalculateClientBalanceCommand(processingCenter, reader.nextInt());

            case SEARCH:
                System.out.println("Enter account id :");
                return new SearchAccountCommand(processingCenter, reader.nextInt());

            case EXIT:
                return new ExitCommand();

             default:
                 return null;
        }
    }
}


