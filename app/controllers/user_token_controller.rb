class UserTokenController < Knock::AuthTokenController

  def login
      if user_id = auth_token.payload[:sub]
        if user = User.find(user_id)
          render json: {user: UserSerializer.new(user), jwt: auth_token.token}
        else
          render json: { message: "Error"}
        end
      end
  end
end
