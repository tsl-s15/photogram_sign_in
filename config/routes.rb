Rails.application.routes.draw do

  # Routes to CREATE photos
  get "/photos/new",        :controller => "photos", :action => "new", :as => "new_photo"
  post "/photos",     :controller => "photos", :action => "create", :as => "photos"

  # Routes to READ photos
  get "/photos/:id",       :controller => "photos", :action => "show", :as => "photo"
  get "/photos",  :controller => "photos", :action => "index"

  # Routes to UPDATE photos
  get "/photos/:id/edit",        :controller => "photos", :action => "edit", :as => "edit_photo"
  patch "/photos/:id",  :controller => "photos", :action => "update"

  # Routes to DESTROY photos
  delete "/photos/:id", :controller => "photos", :action => "destroy"
end
