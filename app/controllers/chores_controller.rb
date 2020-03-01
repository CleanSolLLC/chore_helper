class ChoresController < ApplicationController
  
  def index
    @chores = current_user.chores.all 
  end

  def show
  end

  def new
    @chore = Chore.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
