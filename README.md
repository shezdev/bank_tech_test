# Bank practice tech test

Brief description of what the project is, what it does

## Getting started

`git clone https://github.com/shezdev/bank_tech_test.git`
`command_to_install_dependencies` (e.g. `bundle`)

## Usage
[(1) How to install it (what to clone, what to run to get all dependencies)]

`command_to_start` (e.g. `rackup` or `rails s`)
Navigate to `http://localhost:4567/`

[(2) How to run it (is it a command line tool? Do you have to load it into IRB? Is is a web application? What port needs to be used?)]

## Running tests

`test_command` (e.g. `rspec`)


## Specification

### Requirements

* You should be able to interact with the your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012
**And** a deposit of 2000 on 13-01-2012
**And** a withdrawal of 500 on 14-01-2012
**When** she prints her bank statement
**Then** she would see

```
date       || credit || debit   || balance
14/01/2012 ||        || 500.00  || 2500.00
13/01/2012 || 2000.00||         || 3000.00
10/01/2012 || 1000.00||         || 1000.00
```

## User Stories
```
As a user
So that I can keep my money somewhere safe
I'd like to open a bank account
```
```
As a user
So that I know how much I can spend this month
I'd like to see my account balance
```
```
As a user
So that I can save money for a rainy day
I'd like to deposit some cash in my bank account
```
```
As a user
So that I can pay for my groceries
I'd like to withdraw some cash from my account
```
```
As a user
So that I can see what I've saved and spent this month
I'd like to see my bank account statement with dates for each transaction
```
