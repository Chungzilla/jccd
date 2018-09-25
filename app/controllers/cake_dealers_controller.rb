class CakeDealersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cake_dealer, only: [:show, :edit, :update]

  # GET /cake_dealers
  # GET /cake_dealers.json
  def index
    @cake_dealers = CakeDealer.all
  end

  # GET /cake_dealers/1
  # GET /cake_dealers/1.json
  def show
  end

  # GET /cake_dealers/new
  def new
    @cake_dealer = CakeDealer.new
  end

  # GET /cake_dealers/1/edit
  def edit
    @cakedealer = CakeDealer.find(params[:id])
  end

  # POST /cake_dealers
  # POST /cake_dealers.json
  def create
    @cake_dealer = CakeDealer.new
    @cake_dealer.build_user(user_params)

    respond_to do |format|
      if @cake_dealer.save
        format.html { redirect_to @cake_dealer, notice: 'Cake dealer was successfully created.' }
        format.json { render :show, status: :created, location: @cake_dealer }
      else
        format.html { render :new }
        format.json { render json: @cake_dealer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cake_dealers/1
  # PATCH/PUT /cake_dealers/1.json
  def update
    respond_to do |format|
      if @cake_dealer.update(cake_dealer_params)
        format.html { redirect_to @cake_dealer, notice: 'Cake dealer was successfully updated.' }
        format.json { render :show, status: :ok, location: @cake_dealer }
      else
        format.html { render :edit }
        format.json { render json: @cake_dealer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cake_dealers/1
  # DELETE /cake_dealers/1.json
  def destroy
    @cake_dealer.destroy
    respond_to do |format|
      format.html { redirect_to cake_dealers_url, notice: 'Cake dealer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cake_dealer
      @cake_dealer = CakeDealer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    # def cake_dealer_params
    #   params.fetch(:cake_dealer, {})
    # end

    def user_params
      params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :hometown, :profile_photo)
    end
end
