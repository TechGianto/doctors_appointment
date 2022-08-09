require 'rails_helper'

RSpec.describe 'Patients', type: :request do

  describe 'GET /patient' do
    let(:user) { create(:user) }

    describe 'authentication' do
      context 'when authenticated' do
        before do
          sign_in user
        end


        it 'returns http success' do
          get '/patient'
          expect(response).to have_http_status(:success)
        end
      end

      context 'when not authenticated' do

        it 'redirects user to login page when user is not logged in' do
          get '/patient'

          expect(response).to redirect_to(new_user_session_path)
        end
      end
    end
  end
end
