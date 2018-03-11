package accountStates;

import beans.Accounts.Account;

import java.math.BigDecimal;

public class UnBlockedState extends AccountState {
    public UnBlockedState(Account account) {
        super(account);
    }

    @Override
    public void increaseBalance(BigDecimal sum) {
        account.setBalance(account.getBalance().add(sum));
    }

    @Override
    public void decreaseBalance(BigDecimal sum) {
        account.setBalance(account.getBalance().subtract(sum));
    }
}

