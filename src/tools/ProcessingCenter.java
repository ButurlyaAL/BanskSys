package tools;

import beans.Accounts.Account;
import beans.Bank;

import java.math.BigDecimal;

public class ProcessingCenter {

    private Bank bank;


    public ProcessingCenter(Bank bank) {
        this.bank = bank;
    }


    public void addAccount(int clientID) {
        bank.getAccountList().add(new Account(clientID));
    }

    public void addAccount(Account account) {
        bank.getAccountList().add(account);
    }

    public Account getAccount(int accountID) {
        for (Account account : bank.getAccountList()) {
            if (account.getAccountID() == accountID) {
                return account;
            }
        }
        throw new IllegalArgumentException("Search returned no results");
    }

    public BigDecimal getBalance(int clientID) {
        BigDecimal result = new BigDecimal(0);
        for (Account account : bank.getAccountList()) {
            if (account.getClientID() == clientID) {
                result.add(account.getBalance());
            }
        }
        return result;
    }
}
