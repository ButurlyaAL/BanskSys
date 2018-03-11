package beans.Accounts;

import accountStates.AccountState;
import accountStates.UnBlockedState;

import java.math.BigDecimal;

public class Account {

    private static int index = 0;
    private int accountID;
    private int clientID;
    private BigDecimal balance;
    private AccountState accountState;

    public Account(int clientID) {

        this.accountID = index;
        this.clientID= clientID;
        index++;
        accountState = new UnBlockedState(this);
        balance = new BigDecimal(0);
    }

    public Account(int clientID, int accountID) {
        this.accountID = accountID;
        this.clientID = clientID;
        index++;
        accountState = new UnBlockedState(this);
        balance = new BigDecimal(0);
    }

    public Account(int clientID, int accountID, BigDecimal balance) {
        this.accountID = accountID;
        this.clientID = clientID;
        index++;
        accountState = new UnBlockedState(this);
        this.balance = balance;
    }

    public Account(int clientID, BigDecimal balance) {
        this.accountID = index;
        this.clientID= clientID;
        index++;
        accountState = new UnBlockedState(this);
        this.balance = balance;
    }

    public void increaseBalance(BigDecimal sum) {
        balance.add(sum);
    }

    public void decreaseBalance(BigDecimal sum) {

        balance.subtract(sum);
    }

    public int getAccountID() {
        return accountID;
    }

    public int getClientID() {
        return clientID;
    }

    public BigDecimal getBalance() {
        return balance;
    }

    public void setBalance(BigDecimal balance) {
        this.balance = balance;
    }



    public void setClientID(int clientID) {
        this.clientID = clientID;
    }

    public void setAccountState(AccountState accountState) {
        this.accountState = accountState;
    }

    public AccountState getAccountState() {
        return accountState;
    }
}
