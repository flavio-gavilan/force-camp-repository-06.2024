Customer customer = new Customer();
customer.setName('Bisso da Silva');
customer.email = 'eduardo.carvalho@devbuilder.com';
customer.type = 'Premium';
customer.isActive = true;
customer.balance = 123213.21;
customer.employees = 879217;
customer.createdDate = Date.today();
//customer.lastModifiedDate = DateTime.now();
customer.lastModifiedDate = DateTime.newInstance(Date.today(), Time.newInstance(20,20,00,00));

//customer.addContact('Josão', 'josao.s.m@gmail.com');
new Customer().addContact('Josão', 'josao.s.m@gmail.com');