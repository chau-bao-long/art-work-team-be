class UserController < ApplicationController
  skip_before_action :verify_authenticity_token

  def show
    user = User::all
    render json: user
  end

  def delete
    User::delete params[:id]
  end

  def create
    name = params[:name]
    age = params[:age]

    User::create name: name, age: age
  end
end
