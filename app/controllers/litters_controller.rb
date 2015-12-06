class LittersController < ApplicationController
  before_action :set_litter, only: [:show, :edit, :update, :destroy, :get_status]


  # GET /litters
  # GET /litters.json
  def index
    @litters = Litter.all
  end

  # GET /litters/1
  # GET /litters/1.json
  def show
  end

  # GET /litters/new
  def new
    @litter = Litter.new
  end

  # GET /litters/1/edit
  def edit
  end

  # POST /litters
  # POST /litters.json
  def create
    @litter = Litter.new(litter_params)

    respond_to do |format|
      if @litter.save
        format.html { redirect_to @litter, notice: 'Litter was successfully created.' }
        format.json { render :show, status: :created, location: @litter }
      else
        format.html { render :new }
        format.json { render json: @litter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /litters/1
  # PATCH/PUT /litters/1.json
  def update
    respond_to do |format|
      if @litter.update(litter_params)
        format.html { redirect_to @litter, notice: 'Litter was successfully updated.' }
        format.json { render :show, status: :ok, location: @litter }
      else
        format.html { render :edit }
        format.json { render json: @litter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /litters/1
  # DELETE /litters/1.json
  def destroy
    @litter.destroy
    respond_to do |format|
      format.html { redirect_to litters_url, notice: 'Litter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_litter
      @litter = Litter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def litter_params
      params.require(:litter).permit(:title, :body, :image, :status)
    end
end
