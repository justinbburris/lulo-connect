class FarmsController < InheritedResources::Base
  before_filter do
    locale = params[:locale]
    Carmen.i18n_backend.locale = locale if locale
  end

end
