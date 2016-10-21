class Number < ActiveRecord::Base
	validates :value, presence: true

	def is_fizzbuzz
		return nil if self.value == 0
		return "FizzBuzz" if self.value % 15 == 0
		return "Fizz" if self.value % 3 == 0
		return "Buzz" if self.value % 5 == 0
	end
end
