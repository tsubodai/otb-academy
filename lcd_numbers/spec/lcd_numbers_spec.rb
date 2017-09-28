require 'lines'
# require 'rspec-core'

RSpec.describe "Create LCD numbers" do

	it "can output any sequence of numbers in LCD format" do

		my_lines = Lines.new		
		# my_lines.number_creator("123456789")
		puts my_lines.number_creator("80085", 6, 6)

		# expect(my_lines.number_creator("1234567890")).to eq( "    _  _     _  _  _  _  _  _ \n  | _| _||_||_ |_   ||_||_|| |\n  ||_  _|  | _||_|  ||_| _||_|")											   
	end	
end