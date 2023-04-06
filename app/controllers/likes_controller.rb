class LikesController < ApplicationController

	def index
    @likes = Like.all
    render json: @schools
  end

  def show
    @likes = Like.find(params[:id])
    render json: @schools
  end

  def create
    
    @likes = Like.new(like_params)

    if @likes.save
      render json: @likes
    else
      render :new, status: 200
    end
  end

  def update
    @likes = Like.find(params[:id])

    if @likes.update(like_params)
      render json: @likes
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
       @likes = Like.find (params[:id])
      
      if  @likes.destroy
        render json: {errors: "user deleted successfully"} , status: :ok
      else
        render json: @likes.errors, status: 404
      end
  end


  private

  def like_params
    params.permit()             
  end
end



