Rails.application.routes.draw do

  # Routes to CREATE photos
  get("/photos/new",       { :controller => "photos", :action => "new" })
  get("/create_photo",    { :controller => "photos", :action => "create" })

  # Routes to READ photos
  get("/photos/:id",       { :controller => "photos", :action => "show" })
  get("/photos", { :controller => "photos", :action => "index" })

  # Routes to UPDATE photos
  get("/photos/:id/edit",       { :controller => "photos", :action => "edit" })
  get("/update_photo/:id", { :controller => "photos", :action => "update"})

  # Routes to DESTROY photos
  get("/delete_photo/:id", { :controller => "photos", :action => "destroy" })
end
