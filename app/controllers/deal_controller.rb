class DealController < ApplicationController
	def new
		@deal = Deal.new
	end

	def create
		@deal = Deal.new(params)
	end

	def destroy
		@deal.destroy
	end

end
