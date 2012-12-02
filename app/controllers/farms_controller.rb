class FarmsController < InheritedResources::Base
  before_filter :authenticate_user!, :only => [:new, :create, :destroy]
  before_filter do
    locale = params[:locale]
    Carmen.i18n_backend.locale = locale if locale
  end

  def create
    @farm = Farm.new(params[:project])
    @farm.user = current_user
    create!
  end

end
