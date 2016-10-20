class FizzController < ApplicationController
  before_filter :check_param

  def index
  end

  def check
    @num = Number.new(value: params[:i].to_i)
    @num.is_fizzbuzz(@num)
    output = {"output" => @num.fizzbuzz}
    respond_to do |format|
      format.html
      format.json {render json: output}
    end
  end

  private

  def check_param
    # tested this check quickly in irb to see what happens if you convert a string to_i
    # There probably is a better way to do this however.
    if params[:i].to_i == 0  
      respond_to do |format|
        format.html
        format.json {render nothing: true, status: 422}
      end
    end
  end

end




