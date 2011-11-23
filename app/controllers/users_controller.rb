class UsersController < ApplicationController
  #this is where it breaks
  before_filter :authenticate, :only => [:edit]
  #this snippet above and the private method below
  
  def show
    @user = User.find(params[:id])
    @title = @user.name
  end

  def new
    @user = User.new
    @title = "Sign up"
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      sign_in @user
      # Handle a successful save.
      redirect_to @user, :flash => {:success => "Welcome to the Sample App!"}
    else
        @title = "Sign up"
        render 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
    @title = "Edit user"
  end
  
  def update
     @user = User.find(params[:id])
     if @user.update_attributes(params[:user])
       redirect_to @user, :flash => {:success => "Profile updated."}
     else
       @title = "Edit user"
       render 'edit'
     end
   end

  private
  # ton o failures here
    def authenticate
        redirect_to signin_path unless signed_in?
    end

end
