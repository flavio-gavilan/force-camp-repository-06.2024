/**
 * @author Flávio H. Gavilan - Bootcamp - dev/builder
 */
public class Customer {
    /**
     * Run Sniped in VSCODE:
     * ctrl + shift + P
     * Execute Anonymous Apex
     */

     //final : cannot change de variable value
     /**
      * static : means this variable or method belongs to the class
      * so, all instances of this classe can see and modifie the same variable
      * all instances share the same varible values.
      * like share area between instances.
      */
     public static final String PREMIUM_TYPE = 'Premium';

    //withou declaration goes as private
    String name;

    public String email;
    public String type;
    public String status;
    public Boolean isActive;
    public Decimal balance;
    public Integer employees; 
    public List<CustomerContacts> contacts;

    public Date createdDate;
    public DateTime lastModifieddate;

    public Customer(){
        this.isActive = true;
        this.status = 'Não iniciado';
        this.contacts = new List<CustomerContacts>();
        //initializeVariables();
    }

    public Customer(String name){
        //chama as variaveis inicializadas no primeiro construtor
        //deve ser a primeira instrução no construtor --> this();
        //deve vir antes do super em caso de herança??
        this();

        //Sombreamento
        this.name = name;
        //this.name --> varivel name da classe
        //name --> atributo recebido pelo construtor

        //initializeVariables();
    }

    // private void initializeVariables(){
    //     isActive = true;
    //     status = 'Não iniciado';
    //     contacts = new List<CustomerContacts>();
    // }

    public String getName(){
        return name;
    }

    public void setName(String name){
        this.name = name;
    }

    public void addContact(String name, String email){
        CustomerContacts contact = new CustomerContacts();
        contact.name = name;
        contact.email = email;
        contacts.add(contact);

        System.debug('Adicionado o Nome: ' + contact.name);
        System.debug('Adicionado o Email: ' + contact.email);
        System.debug('Tamanho de contatos: ' + contacts.size());
    }
    
    public void show(){
        System.debug('Show customer into debug log.');
    }
}