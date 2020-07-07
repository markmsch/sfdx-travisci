public class AccountTriggerHandler {
    Public static void CreateAccounts(list<Account> Accs){
        //List <Account> accsToSave = new List<Account>();
        for (Account Acc : Accs){
	        Acc.shippingState = Acc.billingState;
        }
    }
    Public static void NewAcc(list<Account> Accs){
      List<Account> NewAccounts = New List<Account>();
        for (Account Acc : Accs){
            Account NewAccount = New Account();
            if (StaticValues.numberOfRuns <= 4){
                NewAccount.Name = Acc.Name + ' sub'; 
                NewAccount.ParentId = Acc.Id;
                NewAccount.Description = NewAccount.Name;
                system.debug('StaticValues.numberOfRuns = ' + StaticValues.numberOfRuns);
                StaticValues.numberOfRuns = StaticValues.numberOfRuns +1;
        
      			NewAccounts.add(NewAccount);
            }
        }
        if (NewAccounts.size() > 0) { 
            insert NewAccounts;
        }
    }
}