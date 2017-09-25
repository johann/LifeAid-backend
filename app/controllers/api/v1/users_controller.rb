class Api::V1::UsersController < ApplicationController
  def create
    user = User.new(person_params)
    if user.save
      render json: user
    else
      render json: { status: "error"}
    end
  end


  private
  def person_params
    params.require(:user).permit(:username, :email, :password)
  end
end
