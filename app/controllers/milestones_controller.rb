class MilestonesController < ApplicationController
  before_action :set_project, only: [:index, :show, :update, :destory, :create]
  before_action :set_milestone, only: [:show, :edit, :update, :destroy]


  def index
  end 
  
  def show
    commontator_thread_show(@milestone)
  end

  def new
    @milestone = Milestone.new
  end

  def edit
  end


  def create
    @milestone = @project.milestones.create(milestone_params)
      redirect_to project_path(@project)
  end

  def update
    respond_to do |format|
      if @milestone.update(milestone_params)
        format.html { redirect_to project_path(@project), notice: 'Milestone was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end


  def destroy
    @milestone = @project.milestones.find(params[:id])
    @milestone.destroy
    respond_to do |format|
      format.html { redirect_to project_path(@project), notice: 'Milestone was successfully destroyed.' }
     end
  end

  private
  
    def set_project
      @project = Project.find(params[:project_id])
    end

    def set_milestone
      @project = Project.find(params[:project_id])
      @milestone = @project.milestones.find(params[:id])
    end


    def milestone_params
      params.require(:milestone).permit(:name, :description, :deadline, :status, :project_id, :attachment)
    end



end
