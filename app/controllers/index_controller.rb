class IndexController < ApplicationController

	def show
		@booklets = Booklet.all
	end

	def show_products
		if(params[:btn_booklet])
			@booklet = Booklet.find(params[:btn_booklet])
		end
	end
end
