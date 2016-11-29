class BankAccount

    @@num_accounts = 0


    def initialize
        @@num_accounts = @@num_accounts  + 1

        @checking_balance = 0
        @savings_balance = 0

        SetInterestRate()
        CreateAccountNumber()
    end

    def DisplayAccountNumber

        return @account_number
    end

    def DisplayCheckingBalance

        return @checking_balance
    end

    def DisplaySavingsBalance

        return @savings_balance
    end

    def Balance
        return @checking_balance + @savings_balance
    end

    def Deposit(amount, account_type)

        if account_type == "C"
            @checking_balance = @checking_balance  + amount
        elsif account_type == "S"
            @savings_balance = @savings_balance + amount
        end
    end

    def  Withdrawal(amount, account_type)
        if account_type == "C"
            if (@checking_balance >= amount)
                @checking_balance = @checking_balance  - amount
            else
                return "insufficient funds in checking"
            end
        elsif account_type == "S"
            if (@savings_balance >= amount)
                @savings_balance = @savings_balance  - amount
            else
                return "insufficient funds in savings"
            end
        end

        return ""

    end

    def TotalAccounts
        puts "total account #{@@num_accounts}"
    end

    def AccountInformation
        puts "Account Number: #{@account_number}"
        puts "Total Money: #{Balance()}"
        puts "Checking Balance:  #{@checking_balance}"
        puts "Savings Balance:  #{@savings_balance}"
        puts "Interest Rate: #{@interest_rate}"
    end


    private

        @interest_rate

        def SetInterestRate
            @interest_rate = 5.7
        end

        def CreateAccountNumber
            prng = Random.new
            @account_number = ((1..10).collect{ prng.rand(55...100)}).join
        end

end

######################
# test  the class
#####################

test = BankAccount.new
test2 = BankAccount.new
test3 = BankAccount.new

puts test.DisplayAccountNumber
test.Deposit(100, 'C')
test.Deposit(200,'S')
puts test.DisplayCheckingBalance
puts test.DisplaySavingsBalance
error = test.Withdrawal(200, 'C')

if error != ""
    puts error
end

error = test.Withdrawal(50, 'S')

if error != ""
    puts error
end

puts test.DisplayCheckingBalance
puts test.DisplaySavingsBalance
puts test.Balance
puts test.TotalAccounts
puts test.AccountInformation
