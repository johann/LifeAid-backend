class ApplicationController < ActionController::API
  include Knock::Authenticable

  def index
    render json: { message: "Hello World"}
  end
end
