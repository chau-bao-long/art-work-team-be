class LoginController < ApplicationController
  skip_before_action :verify_authenticity_token

  def create 
    name = params[:name]
    password = params[:password]
    user = User.where(name: name).first

    if BCrypt::Password.new(user.encrypted_password) == password
      session[:user_id] = user.id
      render json: {}, status: 201
    else
      render json: {error: 'unauthorized test'}, status: 401
    end
  end
end
