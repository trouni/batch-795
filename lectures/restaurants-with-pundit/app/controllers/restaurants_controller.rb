class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]

  # GET /restaurants
  def index
    @restaurants = policy_scope(Restaurant).order(created_at: :desc)
  end

  # GET /restaurants/1
  def show
    # authorize @restaurant # performed in the set_restaurant
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
    authorize @restaurant
  end

  # GET /restaurants/1/edit
  def edit
    # authorize @restaurant # performed in the set_restaurant
  end

  # POST /restaurants
  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.user = current_user

    authorize @restaurant
    if @restaurant.save
      redirect_to @restaurant, notice: 'Restaurant was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /restaurants/1
  def update
    # without Pundit:
    # raise 'NotAuthorized' unless current_user == @restaurant.user

    # authorize @restaurant # performed in the set_restaurant
    if @restaurant.update(restaurant_params)
      redirect_to @restaurant, notice: 'Restaurant was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /restaurants/1
  def destroy
    # without Pundit:
    # raise 'NotAuthorized' unless current_user == @restaurant.user

    @restaurant.destroy
    redirect_to restaurants_url, notice: 'Restaurant was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
      authorize @restaurant
    end

    # Only allow a list of trusted parameters through.
    def restaurant_params
      params.require(:restaurant).permit(:name)
    end
end
