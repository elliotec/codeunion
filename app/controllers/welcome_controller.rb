class WelcomeController < ApplicationController
  before_action :welcomeVote

  def upvote
    @resource = Resource.find(params[:id])
    @user = current_user
    respond_to do |format|
      if @user.voted_for? @resource
        @resource.unliked_by @user
        format.js { render :action => 'removevote' }
      else
        @resource.liked_by @user
        format.js
      end
    end
  end

  def index
    @welcomeVote = Resource.all
  end

  private
    def welcomeVote
      @welcomeVote = Resource.all
    end
end
