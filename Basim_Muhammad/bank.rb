class BankAccount
	attr_reader :account_number,:checking,:savings
	@@total_accounts=0
	def initialize
		@interest_rate=1.5
		@checking=0.0
		@savings=0.0
		set_account_number
		@@total_accounts+=1
	end
	def check_balance(account)
		account.downcase!
		case account
		when 'checking'
			puts @checking
		when 'savings'
			puts @savings
		end
	end

	def deposit(account,amount)
		account.downcase!
		case account
		when 'checking'
			@checking+=amount
		when 'savings'
			@savings+=amount
		end
	end

	def withdraw (account,amount)
		account.downcase!
		case account
		when 'checking'
			if @checking<amount
				p 'insufficient funds'
			else 
				@checking-=amount
			end
		when 'savings'
			if @savings<amount
				p 'insufficient funds'
			else 
				@savings-=amount
			end
		end
	end

	def account_info
		puts "Account number is #{@account_number}"
		total=@checking+@savings
		puts "Total money is #{total}"
		puts "Savings total is #{savings}"
		puts "Checking total is #{checking}"
	end

	def total
		total=@checking+@savings
		p "Total Money is #{total}"
	end

	private
	def set_account_number
		(0..11).each{@account_number=rand(0..9).to_s}
	end
end

# a=BankAccount.new
# a.deposit('savings',10000)
# a.withdraw('savings',101)
# a.check_balance('savings')

# a.account_info
