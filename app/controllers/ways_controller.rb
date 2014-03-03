class WaysController < ApplicationController
  before_action :set_way, only: [:show, :edit, :update, :destroy]

  # GET /ways
  # GET /ways.json
  def index
    @ways = Way.all
  end

  # GET /ways/1
  # GET /ways/1.json
  def show
  end

  # GET /ways/new
  def new
    @way = Way.new
  end

  # GET /ways/1/edit
  def edit
  end

  # POST /ways
  # POST /ways.json
  def create
    @way = Way.new(way_params)

    respond_to do |format|
      if @way.save
        format.html { redirect_to @way, notice: 'Way was successfully created.' }
        format.json { render action: 'show', status: :created, location: @way }
      else
        format.html { render action: 'new' }
        format.json { render json: @way.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ways/1
  # PATCH/PUT /ways/1.json
  def update
    respond_to do |format|
      if @way.update(way_params)
        format.html { redirect_to @way, notice: 'Way was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @way.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ways/1
  # DELETE /ways/1.json
  def destroy
    @way.destroy
    respond_to do |format|
      format.html { redirect_to ways_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_way
      @way = Way.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def way_params
      params.require(:way).permit(:name)
    end
end
