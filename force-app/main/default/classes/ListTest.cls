/**
 * Classes para teste de listas em Apex
 * @author Flávio H. Gavilan
 */

 @isTest
public with sharing class ListTest {

    public static List<Account> setupAccounts(){
        List<Account> accounts = new List<Account>();
        for(Integer i =0; i < 20; i++){
            accounts.add(new Account(
                Name = 'Test ' + i
            ));
        }
        return accounts;
    }

    @isTest
    public static void shouldCreateListCollection(){
        List<Account> accounts = new List<Account>();

        //evitar misturar array e list
        //Account[] clonedAccounts = accounts.deepClone();

        accounts = setupAccounts();

        Assert.areEqual('Test 0' , accounts.get(0).Name, 'Nome Account incorreto');
        Assert.areEqual('Test 0' , accounts[0].Name, 'Nome Account incorreto');
        System.assertEquals(20, accounts.size(), 'Quantidade de Accounts incorreta');
    }

    
    @isTest
    public static void shouldIterateListCollection(){
        List<Account> accounts = setupAccounts();

        for(Account account : accounts){
            account.Name += ' new Test';
        }
        System.assertEquals('Test 0 new Test', accounts.get(0).Name, 'Valor incorreto no começo de Account');
    }
}