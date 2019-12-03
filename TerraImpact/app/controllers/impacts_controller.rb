class ImpactsController < ApplicationController
  before_action :set_impact, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]  

  # GET /impacts
  # GET /impacts.json
  def index
      
    if params[:category]
        @impacts = Impact.where('category LIKE ?', "%#{params[:category]}%").order("created_at DESC")
    else
        @impacts = Impact.all.order("created_at DESC")
    end
      
    @users = User.where('admin = ? ', false).order("created_at DESC")
  
    
    @impact = Impact.new
  end

  # GET /impacts/1
  # GET /impacts/1.json
  def show
      @impact = Impact.friendly.find(params[:id]) 
  end

  # GET /impacts/new
  def new
    @impact = current_user.impacts.build
  end

  # GET /impacts/1/edit
  def edit
      @impact = Impact.friendly.find(params[:id]) 
  end

  # POST /impacts
  # POST /impacts.json
  def create
    @impact = current_user.impacts.build(impact_params)

    respond_to do |format|
      if @impact.save
        format.html { redirect_to root_path, notice: 'Impact was successfully created.' }
        format.json { render :show, status: :created, location: @impact }
      else
        format.html { render :new }
        format.json { render json: @impact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /impacts/1
  # PATCH/PUT /impacts/1.json
  def update
    @impact = Impact.friendly.find(params[:id]) 
    respond_to do |format|
      if @impact.update(impact_params)
        format.html { redirect_to @impact, notice: 'Impact was successfully updated.' }
        format.json { render :show, status: :ok, location: @impact }
      else
        format.html { render :edit }
        format.json { render json: @impact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /impacts/1
  # DELETE /impacts/1.json
  def destroy
    @impact = Impact.friendly.find(params[:id]) 
    @impact.destroy
    respond_to do |format|
      format.html { redirect_to impacts_url, notice: 'Impact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_impact
      @impact = Impact.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def impact_params
      params.require(:impact).permit(:impact, :category)
    end
end
