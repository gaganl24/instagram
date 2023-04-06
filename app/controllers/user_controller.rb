class UserController < ApplicationController
	def index
    @users = User.all
    render json: @schools
  end

  def show
    @users = User.find(params[:id])
    render json: @schools
  end

  def create
    
    @users = User.new(user_params)

    if @users.save
      render json: @users
    else
      render :new, status: 200
    end
  end

  def update
    @users = User.find(params[:id])

    if @users.update(user_params)
      render json: @users
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
       @users = User.find (params[:id])
      
      if  @users.destroy
        render json: {errors: "user deleted successfully"} , status: :ok
      else
        render json: @users.errors, status: 404
      end
  end


  private

  def user_params
    params.permit()             
  end
end
