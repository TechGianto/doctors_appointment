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
          no_of_session: 1,
          doctor_id: 1,
          patient_id: 3,
          status: 'pending',
        }
      end

      it 'create a new appointment' do
        post '/appointment', params: valid_params
        expect(response).to have_http_status(:success)
      end
    end
  end
end
