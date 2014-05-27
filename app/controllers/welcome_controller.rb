class WelcomeController < ApplicationController
  before_action :welcomeVote

  def index
  end

  private
    def welcomeVote
      @welcomeVote = Resource.all
    end
end
