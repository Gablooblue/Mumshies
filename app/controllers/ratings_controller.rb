class Rating < ApplicationController
    def show
	@product = Product.find(params[:id])
	if @product.reviews.blank?
	    @rating.value = 0
	else 
	    @products.reviews.each do |review|
		@rating.value = @rating.value + review.rating
	    end
	    @rating.value = @rating.value / @product.reviews.count
	end

	render json: @rating.value
    end
end
