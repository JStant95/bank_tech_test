# Bank Tech Test

## Planning 

**Requirements into userstories**

- As a user I would like to make a deposit 
- As a user I would like to make a withdrawal
- As a user I would like to print my bank statment to view all my deposits and withdrawals

I decided to just create the one class (Bank) rather than split deposits & wtihdrawals and printing the statement into two different classes. I felt that two class were overkill for this task, although appreciate the bank class doesn't 100% adhere to the SRP rule. 

|Bank Class|
| ----------- | ----------- |
| Attributes | Methods |
|Balance | deposit |
| Statement| withdraw |
| | print_statement |

**Input Output Examples**

*deposit £1000 on June 10th*

date || credit || debit || balance
10/06/2020 || 1000.00 || || 1000.00

*deposit £2000 on June 12th*

date || credit || debit || balance
13/06/2020 || 2000.00 || || 3000.00
10/06/2020 || 1000.00 || || 1000.00

*withdraw £500 on June 14th*

date || credit || debit || balance
14/06/2020 || || 500.00 || 2500.00
13/06/2020 || 2000.00 || || 3000.00
10/06/2020 || 1000.00 || || 1000.00

Key learnings I took from these input output examples was that the statement was formed of rows ordered from newest to oldest. This is why I decided to store a new row on each deposit and withdrawal which could just be iterated through on print. 

---

## How to run code & tests

**Running code**

1. Start irb on terminal
```
{ 
irb
}
```

2. require bank.rb
```
{ 
require "./lib/bank"
}
```

3. Create instance of bank class
```
{ 
bank = Bank.new
}
```

4. To make a deposit call .deposit and pass the amount as an integer and date (in dd/mm/yyyy format) 
```
{ 
bank.deposit(1000, 15/06/2020)
}
```

5. To make a withdrawal call the withdraw method in the same way as deposit
```
{ 
bank.withdrawal(1000, 15/06/2020)
}
```

6. To print statement call print_statement 
```
{ 
bank.print_statement
}
```

**Running tests** 

1. Run a 'bundle install'
2. Run 'rspec' in root folder




