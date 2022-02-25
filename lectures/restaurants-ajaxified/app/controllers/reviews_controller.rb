class ReviewsController < ApplicationController
  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant

    respond_to do |format|
      if @review.save
        format.html { redirect_to restaurant_path(@restaurant) }
        format.json # normal Rails flow, which is to render a views/reviews/create.json.jbuilder
      else
        format.html { render 'restaurants/show' }
        format.json # normal Rails flow, which is to render a views/reviews/create.json.jbuilder
      end
    end
  end

  # def show
  #   @review = Review.find(params[:id])
  #   render :show # render view/reviews/show.html.erb
  # end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
