package commands;

import accountStates.LockedState;
import beans.Accounts.Account;
import tools.ProcessingCenter;

public class BlockAccountCommand implements Command {

    private ProcessingCenter processingCenter;
    private int accountID;

    public BlockAccountCommand(ProcessingCenter processingCenter, int accountID) {
        this.processingCenter = processingCenter;
        this.accountID = accountID;
    }

    @Override
    public void execute() {
       Account account = processingCenter.getAccount(accountID);
       account.setAccountState(new LockedState(account));
    }

}
