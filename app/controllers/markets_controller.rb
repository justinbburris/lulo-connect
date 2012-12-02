class MarketsController < InheritedResources::Base
  before_filter :authenticate_user!, :only => [:new, :create, :destroy]

  before_filter do
    locale = params[:locale]
    Carmen.i18n_backend.locale = locale if locale
  end

  def create
    @market = Market.new(params[:market])
    @market.user = current_user
    create!
  end


end
