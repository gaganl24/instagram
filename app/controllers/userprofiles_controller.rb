class UserprofilesController < ApplicationController
  def index
    @profiles = UserProfile.all
    
  end

  def show
    @profiles = UserProfile.find(params[:id])
  end

  def create
    
    @profiles = UserProfile.new(profile_params)

    if @profiles.save
      
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @profiles = UserProfile.find(params[:id])

    if @profiles.update(user_params)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
       @profiles = UserProfile.find (params[:id])
      
      if  @profiles.destroy
      else
        render :@profiles.errors, status: :unprocessable_entity
     
      end
  end


  private

  def profile_params
    params.permit(:name, :bio ,:add_link)             
  end
end


