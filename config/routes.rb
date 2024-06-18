Rails.application.routes.draw do

  get("/users", { :controller => "users", :action => "index" })
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
