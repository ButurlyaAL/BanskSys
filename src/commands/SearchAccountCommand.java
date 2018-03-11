package commands;

import tools.ProcessingCenter;

public class SearchAccountCommand implements Command {

    private ProcessingCenter processingCenter;
    private int accountID;

    public SearchAccountCommand(ProcessingCenter processingCenter, int accountID) {
        this.processingCenter = processingCenter;
        this.accountID = accountID;
    }

    @Override
    public void execute() {


    }
}
