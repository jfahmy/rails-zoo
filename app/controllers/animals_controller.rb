class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
  end

  def show
    id = params[:id].to_i
    @animal = Animal.find_by(id: id)
  end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)
    if @animal.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    id = params[:id].to_i
    @animal = Animal.find_by(id: id)
  end

  def update
    id = params[:id].to_i
    animal = Animal.find_by(id: id)
    animal.update(animal_params)

    redirect_to animal_path(animal.id)
  end

  private

  def animal_params
    return params.require(:animal).permit(:name, :species, :age)
  end

end
