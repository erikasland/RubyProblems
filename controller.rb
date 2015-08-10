require_relative 'view'
require_relative 'model'

class BankFlow
  def signup_signin # Asks a user if they are have an pre-existing account.
    response = Dialog::new_or_old_user

    if response == "yes" 

    elsif response == "no"
      make_an_account

    else
      signup_signin
    end
  end

  def make_an_account # Asks user if they want to make an account.
    answer = Dialog::greeting

    if @answer == "yes"
      @name = Dialog::account_name
      @initbalance = Dialog::account_balance
      @pin = Dialog::enter_pin
      @account = Bank.new 
      @new_user = Customer.new(bank.db, @a_name, @initbalance)
      account_choice

    elsif answer == "no"
      Dialog::goodbye

    else
      make_an_account
    end
  end

  def account_choice # Asks user if they want to deposit/withdraw, view current balance, or end their session.
    action = Dialog::how_can_we_help_you

    if action == "balance"
      @new_user.balance(@name, @pin)
      account_choice

    elsif action == "deposit"
      damount = Dialog::deposit_amount
      @new_user.deposit(@name, @pin, damount)
      @new_user.balance(@pin)
      account_choice

    elsif action == "withdraw"
      wamount = Dialog::withdraw
      @new_user.withdraw(@name, @pin, wamount)
      @new_user.balance(@pin)
      account_choice

    elsif action == "end"
      Dialog::goodbye_cust

    else
      Dialog::wrong_entry
      account_choice
    end
  end
end

BankFlow.new.signup_signin # Starts Ruby Bank





