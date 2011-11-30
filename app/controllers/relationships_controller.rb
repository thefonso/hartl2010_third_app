class RelationshipsController < ApplicationController
  before_filter :authenticate
  
  def create
    user = User.find(params[:relationship][:followed_id])
    current_user.follow!(user)
    redirect_to user
  end
  
  def destroy
    relationship = Relationship.find(params[:id]).destroy
    redirect_to relationship.followed
  end
end