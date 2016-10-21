require 'rails_helper'

RSpec.describe FizzController do 
  describe "check" do
    it 'returns 422 if sent a bad param' do
      post :check, {"i" => "bad_param"}.to_json
      expect(response.code).to eq("422")
    end
  end
end