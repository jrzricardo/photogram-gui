class UsersController < ApplicationController
  def home
    redirect_to("/users")
  end

  def update
    altered_username = params.fetch("query_edit_user")
    the_id = params.fetch("query_user_id")

    alt_user = User.where({ :id => the_id}).at(0)
    alt_user.username = altered_username
    
    alt_user.save


  
   redirect_to("/users/#{alt_user.username}")
  end

  def index
    matching_users =  User.all

    @list_of_users = matching_users.order({ :username => :asc })
    
    render({ :template => "user_templates/index" })
  end

  def show
    # Parameters: {"path_username"=>"anisa"}
    url_username = params.fetch("username")

    matching_usernames = User.where({ :username => url_username}).at(0)

    @the_user = matching_usernames

    if @the_user == nil
        redirect_to("/404")
    else 
    render({ :template => "user_templates/show" })
    end
  end

  def create
    @new_user = User.new
    @new_user.username = params.fetch("query_username")

      if @new_user.valid?
        @new_user.save
        @username = @new_user.username
        redirect_to("/users/#{@username}")
      else 
        redirect_to("/users")
      end
  end
end
