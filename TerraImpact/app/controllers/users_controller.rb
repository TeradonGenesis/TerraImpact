class UsersController < ApplicationController
  def index
    @users = User.all.order("id")
    @normal_users = User.where('admin = ? ', false).order("id")
    @admins = User.where('admin = ? ', true).order("id")
    fresh_when etag: @normal_users
    fresh_when etag: @admins
  end
    
  def show
    @user = User.friendly.find(params[:id])
    fresh_when etag: @user
  end
    
  def new
    @user = User.new
  end
    
  def edit
      @user = User.friendly.find(params[:id]) 
  end
    
  def destroy
    @user = User.friendly.find(params[:id]) 
    @user.destroy
    redirect_to users_path, :flash => { :notice => 'User was successfully deleted.' }
  end
    
  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user, :flash => { :notice => 'User was successfully created.' }
    else
      render :action => 'new'
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user = User.friendly.find(params[:id])

    if @user.update_attributes(user_params)
      sign_in(@user, :bypass => true) if @user == current_user
      redirect_to @user, :flash => { :notice => 'User was successfully updated.' }
    else
      render :action => 'edit'
    end
      
    if params[:user][:password].blank?
      params[:user].delete(:password)
      params[:user].delete(:password_confirmation)
    end
  end
    
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :username, :email, :password, :password_confirmation, :avatar, :description, :admin)
    end  
end

