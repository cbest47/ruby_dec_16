require_relative 'human'

RSpec.describe Wizard do 
	it 'checks wizard is working properly' do
		wizard=Wizard.new
		wizard2=Wizard.new
		wizard.fireball(wizard2)
		# expect(wizard.class.ancestors).to include (Human)
		# expect(wizard.intelligence).to eq(25)
		expect(wizard2.health).to eq (30)

	end
end