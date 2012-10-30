class HomeController < ApplicationController

  def index
   	 @user  = current_user
     @tasks = @user.tasks.ordered
 
     respond_to do |format|
        format.html
     end
  end

end
