require "rails_helper"

RSpec.describe Number, :type => :model do

	let(:num){Number.new(value: 3)}
	let(:num1){Number.new(value: 15)}
	let(:num2){Number.new(value: 5)}

	it 'has a value' do

		expect(num.value).not_to be_nil
	end

	describe 'is_fizzbuzz' do
		it 'has no fizzbuzz value if number is not divisable by 3, 5, or 15' do
			num.value = 4
			expect(num.is_fizzbuzz(num)).to be_nil
		end

		it 'sets fizzbuzz value to fizzbuzz if number is divisable by 15' do
			expect(num1.is_fizzbuzz(num1)).to eq "FizzBuzz"
		end

		it 'sets fizzbuzz value to Fizz if number is divisable by 3' do
			expect(num.is_fizzbuzz(num)).to eq "Fizz"
		end

		it 'sets fizzbuzz value to Buzz if number is divisable by 5' do
			expect(num2.is_fizzbuzz(num2)).to eq "Buzz"
		end

	end

end