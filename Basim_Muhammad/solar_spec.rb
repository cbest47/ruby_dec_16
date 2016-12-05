require_relative 'solar'

RSpec.describe SolarSystem do
	before do
		@a=SolarSystem.new
		@a.name='Milky Way'

		@planet=Planet.new(@a,'mars','hot',0)
	end
	# it 'checks default name of SolarSystem' do
	# 	@a=SolarSystem.new
	# 	a.name='Milky Way'
	# 	expect(a.name).to eq('Milky Way')
	# end
	# it 'checks if planets are added to solar system' do
		# expect(@a.planets.length).to eq (1)


	# end
	# it do
	# 	expect(@a.planets[0]).to be_a(Planet)
	# end	

	# it 'count # of planets' do
	# 	expect(@a.planets.length).to eq (1)
	# end

	it 'delete all planet' do
		@a.super_nova
		expect(@a.planets.length).to eq (0)
	end
end