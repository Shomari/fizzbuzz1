class FizzController < ApplicationController

def index
	render nothing: true

end

def numbers
		@numbers = []
	100.times.each_with_index do |number, index|
		num = Number.new(value: index)
		num.is_fizzbuzz(num)
		@numbers << num
	end
	render "fizz"
end


end
