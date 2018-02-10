require 'rails_helper'

describe SimplePagesController, type: :controller do
  context  'Get #index' do
    it 'render the index template' do
      get :index
      expect(response).to be_ok
      expect(response).to render_template('index')
    end
  end
end
