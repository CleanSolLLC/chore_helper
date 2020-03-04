class ChoresController < ApplicationController
  def index
  end

  def show
  end

  def new
    @chore = Chore.new
  end

  def create
    chore = Chore.new(chore_params)

    if current_user.chore.save
      byebug
      redirect_to chore_path(@chore)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def chore_params
    params.require(:chore).permit(:chore_type)
  end
end
