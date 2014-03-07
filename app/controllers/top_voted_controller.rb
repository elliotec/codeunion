class TopVotedController < ApplicationController
  def index
    @language = Language.where(name: params[:language].downcase).first
    @category = Category.where(name: params[:category].downcase).first
    if @language == nil || @category == nil
      redirect_to root_path
    else
      @resources = Resource.select("resources.*, COUNT(votes.id) vote_count").joins("LEFT OUTER JOIN votes ON votes.votable_id = resources.id AND votes.votable_type = 'Resource'").where(language_id: @language.id, category_id: @category.id).group("resources.id").order("vote_count DESC")
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
    @resources = Resource.select("resources.*, COUNT(votes.id) vote_count").joins("LEFT OUTER JOIN votes ON votes.votable_id = resources.id AND votes.votable_type = 'Resource'").where(language_id: @language).group("resources.id").order("vote_count DESC")
    render :index
  end

  def category
    @category = Category.where(name: params[:name].downcase).first
    @resources = Resource.select("resources.*, COUNT(votes.id) vote_count").joins("LEFT OUTER JOIN votes ON votes.votable_id = resources.id AND votes.votable_type = 'Resource'").where(category_id: @category.id).group("resources.id").order("vote_count DESC")
    render :index
  end
end
