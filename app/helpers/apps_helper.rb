module AppsHelper

  # See http://stackoverflow.com/questions/341143/can-rails-routing-helpers-i-e-mymodel-pathmodel-be-used-in-models
  def get_app_path(app_name)
    app_link = app_name.downcase.pluralize + "_path"
    Rails.application.routes.url_helpers.app_link
  end

end