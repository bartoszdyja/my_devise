require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  it 'should route to root path' do
    get :index
    expect(response).to be_successful
    expect(response.status).to eq 200
    expect(response).to render_template :index
  end
end
