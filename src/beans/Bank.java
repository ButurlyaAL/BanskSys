package beans;

import beans.Accounts.Account;

import java.util.ArrayList;
import java.util.List;

public class Bank {

    private List<Account> accountList;

    public Bank() {
        accountList = new ArrayList<Account>();
    }

    public List<Account> getAccountList() {
        return accountList;
    }

    public void setAccountList(List<Account> accountList) {
        this.accountList = accountList;
    }
}
