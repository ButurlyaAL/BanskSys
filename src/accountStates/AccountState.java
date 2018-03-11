package accountStates;

import beans.Accounts.Account;

import java.math.BigDecimal;

public abstract class AccountState {
    protected Account account;

    public AccountState(Account account) {
        this.account = account;
    }

    public abstract void increaseBalance(BigDecimal sum);

    public abstract void decreaseBalance(BigDecimal sum);

}
