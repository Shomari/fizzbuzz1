class FizzController < ApplicationController
  before_filter :check_param, :only => :check

  def index
  end

  def check
    @num = Number.new(value: params[:i].to_i)
    result = @num.is_fizzbuzz
    output = {"output" => result}
    render json: output
  end

  private

  def check_param
    head 422 if params[:i].to_i == 0
  end

end




