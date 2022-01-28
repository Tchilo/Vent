require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET #index' do
    it 'should have a status code of 200 ' do
      get users_path
      expect(response).to have_http_status(200)
    end

    it 'should have a template of show' do
      get users_path
      expect(response).to render_template(:index)
    end

    it 'should have place holder of Users#index' do
      get users_path
      expect(response.body).to include('Users#index')
    end
  end

  describe 'GET #show' do
    before(:example) { get user_path(1) }

    it 'should have correct response status' do
      expect(response).to have_http_status(:ok)
    end

    it 'should render correct template for show' do
      expect(response).to render_template(:show)
    end

    it 'should include show for users placeholder text' do
      expect(response.body).to include('Users/show')
    end
  end
end
