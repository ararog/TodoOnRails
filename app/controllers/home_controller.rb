class HomeController < ApplicationController

  def index
     @tasks = Task.find(:all, :order => "id ASC")
 
     respond_to do |format|
        format.html
     end
  end

end
