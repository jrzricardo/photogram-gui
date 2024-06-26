Rails.application.routes.draw do
get("/", { :controller => "users", :action => "home" })


# User Routes
# ------------------------------------------------------------------------------------------------------
  get("/users", { :controller => "users", :action => "index" })
  get("users/:username", { :controller => "users", :action => "show"})
  post("/add_user", { :controller => "users", :action => "create"})
  post("/update_user", { :controller => "users", :action => "update"})

# Photo Routes
# ------------------------------------------------------------------------------------------------------
  get("/photos", { :controller => "photos", :action => "index"})
  get("/photos/:path_id", { :controller => "photos", :action => "show"})
  get("/delete_photo/:scrapped_id", { :controller => "photos", :action => "destroy"})
  get("/insert_photo", { :controller => "photos", :action => "create"})
  post("/update_photo", { :controller => "photos", :action => "update"})
  
  # Comment Routes
  # ------------------------------------------------------------------------------------------------------
  post("/add_comment", { :controller => "comments", :action => "add"})
end


# /users 
# display all the users
# a link to get to detals for wach user
# a form to add a new user

# /users/[USERNAME] should
# display the username of the user
# the photos posted by the user

# /photos should have a form to add a new photo

# /photos/[ID] should
# display the details of a photo
# displays the comments that have been made on the photo
# have a form to add a comment to the photo
