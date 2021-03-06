require 'rails_helper'

RSpec.describe "UsersLogins", type: :request do
  describe "GET /users_logins" do
    it "works! (now write some real specs)" do
      get login_path
      expect(response).to have_http_status(200)
    end

    it "Shows the flash error for incorrect input for the appropriate time" do
      get login_path
      assert_template('sessions/new')
      post login_path, params: { session: { email: "", password: "" } }
      assert_template 'sessions/new'
      assert !flash.empty?
      get login_path
      assert flash.empty?
    end
  end
end
