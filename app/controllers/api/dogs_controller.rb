class Api::DogsController < ApplicationController
  def index
    @dogs = Dog.all
    render "index.json.jb"
  end

  def show
    dog_id = params["id"]
    @dog = Dog.find_by(id: dog_id)
    render "show.json.jb"
  end

  def create
    @dog = Dog.new(
      name = params[:name],
      age = params[:age],
      breed = params[:breed],
    )
    if @dog.save
      render "show.json.jb"
    else
      render json: { errors: @dog.errors.full_messages }, status: 406
    end
    # if current_user
    # else
    #   render json: {"Users must be logged in to create new dogs"}
    # end
  end
end
