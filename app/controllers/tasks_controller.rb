class TasksController < ApplicationController

  def create
     @task = Task.new(params[:task])

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
		   @tasks = Task.find(:all, :order => "id")
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

     @tasks = Task.find(:all, :order => "id")
 
     respond_to do |format|
        format.json { render :json => @tasks } 
     end
  end

  def sort
     @tasks = Task.find(:all, :order => params[:field] << " " <<  params[:direction])
 
     respond_to do |format|
        format.json { render :json => @tasks }
     end
  end

end
