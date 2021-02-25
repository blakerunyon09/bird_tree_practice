class BirdsController < ApplicationController
  #GET /birds => shows all birds
  def index
    @birds = Bird.all

    render json: @birds, include: :tree, status: :ok
  end

  #GET /birds/:id => shows one bird
  def show
    @bird = Bird.find(params[:id])

    render json: @bird, status: :ok
  end

  #POST /birds => creates new bird
  def create
    # byebug
    @tree = Tree.find(params[:tree_id])
    @bird = Bird.create(name: params[:name], tree: @tree)

    render json: @bird, status: :created
  end

  #PUT/PATCH /birds/:id
  def update
    @bird = Bird.find(params[:id])
    @bird.update(name: params[:name])

    render json: @bird, status: :accepted
  end

  #DELETE /birds/:id 
  def destroy
    @bird = Bird.find(params[:id])
    @bird.destroy

    render json: @bird, status: :no_content
  end
end
