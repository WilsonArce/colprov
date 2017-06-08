class HomeController < ApplicationController
	before_action :set_providers

  def index
  end

  def my_providers
  end

  def providers
  end

  def show_provider
  	@provider = User.find(params[:id]) 
  end

  def select_provider
  	@provider = User.find(params[:id])
  	Deal.create(proveedor: @provider.id, cliente: current_user.id)
  	redirect_to providers_path
  end

  private

  def set_providers
  	@providers ||= []
    @user_providers ||= []
  	@users = User.all
  	@users.each do |user|
  		if Product.find_by_user_id(user.id)
  			@providers.push(user)
  		end
  	end
    if user_signed_in?
      @deals = Deal.all
      @deals.each do |deal|
        puts deal.cliente
        puts current_user.id
        if deal.cliente == current_user.id
          @user_providers.push(User.find_by_id(deal.proveedor))
        end
      end
    end
  end

end
