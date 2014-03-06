class TopVotedController < ApplicationController
  def index
    @user = current_user
    @language = Language.where(name: params[:language].downcase).first
    @category = Category.where(name: params[:category].downcase).first
    if @language == nil || @category == nil
      redirect_to root_path
    else
      @resources = Resource.where(language_id: @language.id, category_id: @category.id)
    end
  end

  def route
    if Language.where(name: params[:name]).present?
      language
    elsif Category.where(name: params[:name]).present?
      category
    else
      raise ActiveRecord::RecordNotFound
    end
  end

  def language
    @language = Language.where(name: params[:name].downcase).first
    @resources = Resource.where(language_id: @language.id)
    render :index
  end

  def category
    @category = Category.where(name: params[:name].downcase).first
    @resources = Resource.where(category_id: @category.id)
    render :index
  end
end
