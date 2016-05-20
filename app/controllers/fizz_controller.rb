class FizzController < ApplicationController

def index
	@numbers = []
	100.times.each_with_index do |number, index|
		num = Number.new(value: index)
		num.is_fizzbuzz(num)
		@numbers << num
	end
end


end
