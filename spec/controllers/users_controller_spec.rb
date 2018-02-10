require 'rails_helper'

  describe UsersController, type: :controller do
    let(:user) { User.create!(email: "example@gmail.com", password: "123asdf") }
    let(:user2) { User.create!(email: "example2@gmail.com", password: "test123") }

    describe 'Get #show' do
      context 'When a user is logged in' do
        before do
          sign_in user
        end
        get :show
        expect(response).to be_ok
        expect(assigns(:user)).to eq user
      end
      context 'When a user is not logged in' do
        it 'redirects to loggin' do
          get :show, params: { id: user.id }
          expect(response).to redirect_to(new_user_session_path)
        end
      end
    end

  end
