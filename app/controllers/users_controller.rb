class UsersController < ApplicationController
  def index
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    raise params.inspect
    @user = User.new(user_params)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
