class ApplicationController < ActionController::Base

  before_action :allLanguages
  #before_action :allCategories

  private

    def allLanguages
      @allLanguages = Language.all
    end

    # def allCategories
    #   @allCategories = Category.find(params[:category_id])
    # end


end
