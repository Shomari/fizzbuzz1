class Number < ActiveRecord::Base
	validates :value, presence: true

	def is_fizzbuzz(number)
		if number.value == 0
			return nil
		elsif number.value % 15 == 0
			number.fizzbuzz = "FizzBuzz"
			return "FizzBuzz"
		elsif number.value % 3 == 0
			number.fizzbuzz = "Fizz"
			return "Fizz"
		elsif number.value % 5 == 0
			number.fizzbuzz = "Buzz"
			return "Buzz"
		end
	end
end
