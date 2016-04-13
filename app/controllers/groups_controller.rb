class GroupsController < ApplicationController


  before_action :set_group, only: [:show, :edit, :update, :destroy]

  def index
    @groups = Group.all
  end


  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    respond_to do |format|
      if @group.save
        format.html { redirect_to group_path(@group.id), notice: 'GroupCreated' }
        format.json { render :show, status: :created, location: @group}
      else
        format.html { :new_group }
        format.json {render json: @group.errors, status: :unprocessable_enitity}
      end
    end
  end

  def show
    respond_to do |format|
      format.html
      format.json {render json: @group}
    end
  end


  def edit
  end

  def update
    respond_to do |format|

      if @group.update(group_params)
        format.html { redirect_to group_path(@group.id), notice: 'Successfully updated Group' }
        format.json { render :show, status: :ok, location: group_path(group.id) }
      else
        format.html { render :edit_group } # show the edit form again
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @group.destroy

    respond_to do |format|
     format.html {redirect_to groups_url, notice: "you deleted a group"}
     format.json {head :no_content}
    end
  end


  private

  def set_group
    @group = Group.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:name, :voicemail, :call_record, :caller_id, :out_of_service)
  end

end



