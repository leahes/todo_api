class ApiController < ApplicationController
  skip_before_action :verify_authenticity_token

  private

  attr_reader :current_user

  def authenticated?
    authenticate_or_request_with_http_basic do |username, password|
      @current_user = User.find_by(username: username, password: password)
      @current_user.present?
    end
  end
end
