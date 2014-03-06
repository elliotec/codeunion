class TopVotedController < ApplicationController
  def index
    @language = Language.where(name: params[:language].downcase).first
    @category = Category.where(name: params[:category].downcase).first
    if @language == nil || @category == nil
      redirect_to root_path
    else
      @resources = Resource.where(language_id: @language.id, category_id: @category.id)
    end
  end

  def language
    @language = Language.where(name: params[:language].downcase).first
    if @language.present?
      @resources = Resource.where(language_id: @language.id)
      render :index
    else
      redirect_to root_path
    end
  end

  def category
    @category = Category.where(name: params[:category].downcase).first
    if @category.present?
      @resources = Resource.where(category_id: @category.id)
      render :index
    else
      redirect_to root_path
    end
  end
end
