# accountBalance = {
#   "Checking" => 2000.00,
#   "Savings" => 5000.00
# }

# def show_balance(balance)
#   puts
#   puts "Account Balance: "
#   balance.each do |key, value|
#     puts "#{key}: $#{'%.2f' % value}".center(50/2).upcase
#   end
# end

# def add_money(accountBalance,balance,amount)
#   if accountBalance.has_key?(balance)
#     accountBalance[balance] += amount
#   else
#     puts "No such account exists"
#   end
#   puts
  # puts "SUCCESS"
# end

# def withdraw_money(accountBalance,balance,amount)
#   if accountBalance.has_key?(balance)
#     if amount > accountBalance[balance]
#       puts "Cannot withdraw that much!"
#     else
#       accountBalance[balance] -= amount
#     end
#   else
#     puts "No such account exists"
#   end
#   puts
#   puts "SUCCESS"
# end

def donate_dollar(accountBalance,balance,amount)
  if accountBalance.has_key?(balance)
    accountBalance[balance] -= amount
  else
    puts "No such account exists"
  end
  puts "Thank you for your generosity!"
end

def ask_pin
  puts "Welcome to the ATM!"
  print "Please enter your PIN: "
  pin = gets.chomp
  counter = 0

  while pin != "8008"

    #attempting to add feature that only allows for 3 PIN attempts
    # if counter == 2
    #   puts "Too many incorrect attempts"
    #   puts "Police are being contacted"
    #   break
    # end

    puts "Incorrect PIN"
    print "Please enter your PIN: "
    pin = gets.chomp
    counter += 1
  end
  puts "PIN accepted."
end

def ending_AccountSummary(balance)
  puts
  puts "Transaction Summary: "
  balance.each do |key, value|
    puts "#{key}: $#{'%.2f' % value}".center(50/2).upcase
  end
  puts
  puts "Thank you for banking with us!"
end

def option_2balanceChoice
  puts
  puts "1. Checking"
  puts "2. Savings"
  print "Which account would you like to deposit to?: "
  balanceChoice = gets.chomp
  return balanceChoice
end

def option_2amount
  print "How much would you like to deposit?: "
  amount = gets.chomp.to_f
  return amount
end

def option_2validaccountcheck(balanceChoice)

  until balanceChoice == "1" || balanceChoice == "2"
    puts "Invalid Account Choice"
    print "Which account would you like to deposit to?: "
    balanceChoice = gets.chomp
  end

  if balanceChoice == "1"
      balanceChoice = "Checking"
  else balanceChoice == "2"
      balanceChoice = "Savings"
  end

  return balanceChoice
end

def option_3balanceChoice
  puts
  puts "1. Checking"
  puts "2. Savings"
  print "Which account would you like to withdraw from?: "
  balanceChoice = gets.chomp
  return balanceChoice
end

def option_3validaccountcheck(balanceChoice)

  until balanceChoice == "1" || balanceChoice == "2"
    puts "Invalid Account Choice"
    print "Which account would you like to withdraw from?: "
    balanceChoice = gets.chomp
  end

  if balanceChoice == "1"
      balanceChoice = "Checking"
  else balanceChoice == "2"
      balanceChoice = "Savings"
  end

  return balanceChoice
end


def option_3amount
  print "How much would you like to withdraw?: "
  amount = gets.chomp.to_f
  return amount
end

def option_4asktodonate
  puts
  puts
  puts "1. Yes"
  puts "2. No"
  print "Would you like to donate $1 to help Megan's Learn to Program Fund?: "
  donateDecision = gets.chomp
  return donateDecision
end

def option_4balanceChoice
  puts
  puts "1. Checking"
  puts "2. Savings"
  print "Which account would you like to donate from?: "
  balanceChoice = gets.chomp
  return balanceChoice
end

def option_4validaccountcheck(balanceChoice)
  if balanceChoice == "1"
      balanceChoice = "Checking"
  elsif balanceChoice == "2"
      balanceChoice = "Savings"
  else
    puts "Invalid Account Choice"
    print "Which account would you like to donate from?: "
    balanceChoice = gets.chomp
  end
  return balanceChoice
end



ask_pin
while true

  puts
  puts "___________________________________"
  puts "1. Check your account balances"
  puts "2. Deposit money to an account"
  puts "3. Withdraw money from an account"
  puts "4. Exit menu"
  puts
  print "Choose an option: "
  choice = gets.chomp
  puts

    case choice

      when "1"
        show_balance(accountBalance)

      when "2"

        balanceChoice = option_2balanceChoice
        balanceChoice = option_2validaccountcheck(balanceChoice)
        amount = option_2amount
        add_money(accountBalance, balanceChoice, amount)

      when "3"

        balanceChoice = option_3balanceChoice
        balanceChoice = option_3validaccountcheck(balanceChoice)
        amount = option_3amount
        withdraw_money(accountBalance, balanceChoice, amount)

      when "4"

        donateDecision = option_4asktodonate
          case donateDecision

            when "1"

              balanceChoice = option_4balanceChoice
              balanceChoice = option_4validaccountcheck(balanceChoice)
              donate_dollar(accountBalance, balanceChoice, 1)
              ending_AccountSummary(accountBalance)
              break

            when "2"

              ending_AccountSummary(accountBalance)
              break

          end

        break

    end

end
Add Comment C