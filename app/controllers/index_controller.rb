class IndexController < ApplicationController

	def show
		@markets = Market.all
	end

	def show_products
		if(params[:btn_market])
			market = Market.find[paramns[:btn_market]]
		end
	end
end
