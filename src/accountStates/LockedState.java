package accountStates;

import beans.Accounts.Account;

import java.math.BigDecimal;

public class LockedState extends AccountState {

    public LockedState(Account account) {
        super(account);
    }

    @Override
    public void increaseBalance(BigDecimal sum) {
      throw new IllegalOperationException("Account is blocked.");
    }

    @Override
    public void decreaseBalance(BigDecimal sum) {
        throw new IllegalOperationException("Account is blocked.");
    }
}
