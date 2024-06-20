Rails.application.routes.draw do
# User Routes
# ------------------------------------------------------------------------------------------------------
  get("/users", { :controller => "users", :action => "index" })
  get("users/:path_username", { :controller => "users", :action => "show"})
# Photo Routes
# ------------------------------------------------------------------------------------------------------
  get("/photos", { :controller => "photos", :action => "index"})
  get("/photos/:path_id", { :controller => "photos", :action => "show"})
  get("/delete_photo/:scrapped_id", { :controller => "photos", :action => "destroy"})

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
