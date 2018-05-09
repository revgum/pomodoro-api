class ApplicationController < ActionController::API
  rescue_from StandardError do |exception|
    render json: { :error => exception.message }, :status => 500
  end
end
