class TasksController < ApplicationController

  def index
  	@user  = current_user
    @tasks = @user.tasks.ordered
 
    respond_to do |format|
      format.json  { render :json => @tasks }
    end
  end

  def create
     @task = Task.new(params[:task])
	 @task.user = current_user
	
     respond_to do |format|
		if @task.save
           format.json { render :json => @task }
		end
     end
  end

  def update
     @task = Task.find(params[:id])

     respond_to do |format|
		if @task.update_attributes(params[:task])
  	       @user  = current_user
	       @tasks = @user.tasks.ordered.reload
           format.json { render :json => @tasks }
		end
     end
  end

  def edit
     @task = Task.find(params[:id])
 
     respond_to do |format|
        format.json { render :json => @task } 
     end
  end

  def destroy
     @task = Task.find(params[:id])
     @task.destroy

     respond_to do |format|
        @user  = current_user
        @tasks = @user.tasks.ordered.reload
        format.json { render :json => @tasks } 
     end
  end

  def sort
     @user  = current_user
     @tasks = @user.tasks.all(:order => params[:field] << " " <<  params[:direction])
 
     respond_to do |format|
        format.json { render :json => @tasks }
     end
  end

end
