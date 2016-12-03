require_relative 'bank'

RSpec.describe BankAccount do
	it 'checks checking account balance and total' do
		my_account=BankAccount.new
		my_account.deposit('checking',150)
		# expect(my_account.withdraw('checking',155)).to eq ('insufficient funds')
		# # expect(my_account.checking).to eq (125)
		# # expect(my_account.total).to eq ("Total Money is 150.0")

		# expect{BankAccount.accounts}.to raise_error()
	end
end