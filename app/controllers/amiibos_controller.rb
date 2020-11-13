class AmiibosController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  # before_action :check_roles
  before_action :set_amiibo, only: [:show, :edit, :update, :destroy]


  # GET /amiibos
  # GET /amiibos.json
  def index
    @amiibos = Amiibo.all
  end

  # GET /amiibos/1
  # GET /amiibos/1.json
  def show
  end

  # GET /amiibos/new
  def new
    @amiibo = Amiibo.new
  end

  # GET /amiibos/1/edit
  def edit
  end

  # POST /amiibos
  # POST /amiibos.json
  def create
    @amiibo = Amiibo.new(amiibo_params)
    @amiibo.user_id = current_user.id

    respond_to do |format|
      if @amiibo.save
        format.html { redirect_to @amiibo, notice: 'Amiibo was successfully created.' }
        format.json { render :show, status: :created, location: @amiibo }
      else
        format.html { render :new }
        format.json { render json: @amiibo.errors, status: :unprocessable_entity }
      end
    end

  end

  # PATCH/PUT /amiibos/1
  # PATCH/PUT /amiibos/1.json
  def update
    respond_to do |format|
      if @amiibo.update(amiibo_params)
        format.html { redirect_to @amiibo, notice: 'Amiibo was successfully updated.' }
        format.json { render :show, status: :ok, location: @amiibo }
      else
        format.html { render :edit }
        format.json { render json: @amiibo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /amiibos/1
  # DELETE /amiibos/1.json
  def destroy
    @amiibo.destroy
    respond_to do |format|
      format.html { redirect_to amiibos_url, notice: 'Amiibo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_amiibo
      @amiibo = Amiibo.find(params[:id])
    end

    def check_roles
      if !(user_signed_in? && current_user.has_role?(:admin))
        flash[:alert] = "You are not authorized to access that page"
        redirect_to root_path
      end
    end

    # Only allow a list of trusted parameters through.
    def amiibo_params
      params.require(:amiibo).permit(:amibo_name, :amibo_type, :amibo_price, :amibo_game_series, :amibo_condition, :image, :description)
    end
end
