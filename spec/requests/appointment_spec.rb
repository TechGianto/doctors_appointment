require 'rails_helper'

RSpec.describe 'Appointments', type: :request do
  let(:user) { create(:user) }

  describe 'GET /index' do
    pending "add some examples (or delete) #{__FILE__}"
  end

  describe 'POST /appointment' do
    context 'with params' do
      before do
        sign_in user
      end

      let(:valid_params) do
        {
          date: '2023-10-23',
          time: '09:35:06',
          doctor_id: 1,
        }
      end

      it 'create a new appointment' do
        post '/appointment', params: valid_params
        expect(response).to have_http_status(:success)
      end
    end

    context 'without params' do

      it 'fail to create a new appointment' do
        post '/appointment'
        expect(response).to have_http_status(:bad_request)
      end
    end
  end
end
