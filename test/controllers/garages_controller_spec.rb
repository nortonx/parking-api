require 'rails_helper'

RSpec.describe GaragesController, type: :controller do
  describe 'GET #index' do
    it 'responds successfully' do
      get :index
      expect(response).to be_successful
    end
  end
end
