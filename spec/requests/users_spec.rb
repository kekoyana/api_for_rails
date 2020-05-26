# frozen_string_literal: true

require 'rails_helper'

describe 'UsersController' do
  include Committee::Rails::Test::Methods

  def committee_options
    schema_path = Rails.root.join('docs/schema/schemata/users.yml').to_s
    @committee_options ||= { schema_path: schema_path }
  end

  describe 'GET /users' do
    it 'works! (now write some real specs)' do
      get users_path
      expect(response).to have_http_status(:ok)
    end

    it 'conform json schema' do
      create(:user)
      get '/users'
      assert_schema_conform
    end
  end
end
