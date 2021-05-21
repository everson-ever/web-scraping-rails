require 'rails_helper'

RSpec.describe Quote, type: :request do
  let!(:user) { create(:user) }
  let(:user_id) { user.id }

  before { login_as(user) }
  before do
    get "/api/v1/quotes/tag"
  end

  describe 'GET quotes' do

    context "successfully request" do
      it "returns 200 status code" do
        expect(response).to have_http_status(200)
      end

      it "returns a array" do
        quotes_response = JSON.parse(response.body)
        expect(quotes_response['quotes']).to be_an_instance_of(Array)
      end

    end

  end

end