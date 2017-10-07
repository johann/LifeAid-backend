class UsersController < ApplicationController
  def create
    user = User.new(person_params)
    if user.save
      token = Knock::AuthToken.new(payload: {sub: user.id }).token
      render json: { user: UserSerializer.new(user), token: token}
    else
      render json: { status: "error"}
    end
  end


  private
    def person_params
      params.require(:user).permit(:username, :email, :password)
    end
end
