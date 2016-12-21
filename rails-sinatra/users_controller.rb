#had to look at some of my older code to jog my memory on this one

class UsersController < ApplicationController

  def new
    @user = User.new(user_params)
  end
  #GET /users/new

  # create
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      render :new
    end
  end
  #POST /users

  # index
  def index
    @users = User.all
  end
  #GET /users

  # show
  def show
    @user = User.find(params[:id])
    redirect_to @user
  end
  #GET /users/:id

  # edit
  def edit
    @user = User.find(params[:id])
    render :update
  end
  #GET /users/:id/edit

  # update
  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to @user
  end
  #UPDATE /users/:id

  # destroy
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end
  #DELETE /users/:id
end


# Write the controller action as if this was a rails controller
# Write the url that sends a user to the action. I have done the first one for you.
