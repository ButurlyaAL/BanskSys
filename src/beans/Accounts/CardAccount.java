package beans.Accounts;

import java.math.BigDecimal;

public class CardAccount extends Account {

    public CardAccount(int clientID) {
        super(clientID);
    }

    public CardAccount(int clientID, int accountID) {
        super(clientID, accountID);
    }

    public CardAccount(int clientID, int accountID, BigDecimal balance) {
        super(clientID, accountID, balance);
    }

    public void transferMoney(BigDecimal sum, CardAccount account) {
        this.decreaseBalance(sum);
        account.increaseBalance(sum);
    }
}
