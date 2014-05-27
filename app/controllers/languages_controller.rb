class LanguagesController < ApplicationController
  before_action :set_language, only: [:show, :edit, :update, :destroy]
  before_action :load_language, only: :create
  load_and_authorize_resource

  def index
    @languages = Language.all
  end

  def show
    # raise 'your hands'
    @resources = Resource.where(language_id: params[:id])
  end

  def new
    @language = Language.new
  end

  def edit
  end

  def create

    respond_to do |format|
      if @language.save
        format.html { redirect_to root_path, notice: 'Language was successfully created.' }
        format.json { render action: 'show', status: :created, location: @language }
        # format.html { redirect_to @language, notice: 'Language was successfully created.' }
        # format.json { render action: 'show', status: :created, location: @language }
      else
        format.html { render action: 'new' }
        format.json { render json: @language.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @language.update(language_params)
        format.html { redirect_to @language, notice: 'Language was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @language.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @language.destroy
    respond_to do |format|
      format.html { redirect_to languages_url }
      format.json { head :no_content }
    end
  end

  private
    def set_language
      @language = Language.find(params[:id])
    end

    def language_params
      params.require(:language).permit(:name)
    end

    def load_language
      @language = Language.new(language_params)
    end
end
