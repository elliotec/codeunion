class ResourcesController < ApplicationController
  before_action :load_resource, only: :create
  before_action :set_resource, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource except: :upvote

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

    @search = Resource.search do
      fulltext params[:search]
    end
    @resources = @search.results

    #@resources = Resource.all
  end

  def show
  end

  def new
    @resource = Resource.new
  end

  def edit
  end

  def create
    @resource = Resource.new(resource_params)
    respond_to do |format|
      if @resource.save
        format.html { redirect_to @resource, notice: 'Resource was successfully created.' }
        format.json { render action: 'show', status: :created, location: @resource }
      else
        format.html { render action: 'new' }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @resource.update(resource_params)
        format.html { redirect_to @resource, notice: 'Resource was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @resource.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @resource.destroy
    respond_to do |format|
      format.html { redirect_to resources_url }
      format.json { head :no_content }
    end
  end

  private

    def set_resource
      @resource = Resource.find(params[:id])
    end

    def resource_params
      params.require(:resource).permit(:name, :body, :language_id, :category_id, :tag_list)
    end

    def load_resource
      @resource = Resource.new(resource_params)
    end
end
