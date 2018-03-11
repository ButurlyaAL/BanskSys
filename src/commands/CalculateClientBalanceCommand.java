package commands;


import tools.ProcessingCenter;

public class CalculateClientBalanceCommand implements Command {

    private ProcessingCenter processingCenter;
    private int clientID;

    public CalculateClientBalanceCommand(ProcessingCenter processingCenter, int clientID) {
        this.processingCenter = processingCenter;
        this.clientID = clientID;
    }
    @Override
    public void execute() {
        processingCenter.getBalance(clientID);
    }


}
