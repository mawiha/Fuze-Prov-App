class MembersController < ApplicationController

  before_action :set_member, only: [:show, :edit, :update, :destroy]

  def index
    @members = Member.all
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)

    respond_to do |format|

      if @member.save
        format.html { redirect_to members_path(@member.id), notice: 'Member Created' }
        format.json { render :show, status: :created, location: @member}
      else
        format.html {render :new}
        format.json {render json: @member.errors, status: :unprocessable_enitity}
      end
    end
  end

  def show
    respond_to do |format|
      format.html
      format.json {render json: @member}
    end
  end

  def edit
  end

  def update
    respond_to do |format|

      if @member.update(member_params)
        format.html { redirect_to member_path(@member.id), notice: 'Successfully updated member' }
        format.json { render :show, status: :ok, location: member_path(member.id) }
      else
        format.html { render :edit } # show the edit form again
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @member.destroy

    respond_to do |format|
     format.html {redirect_to members_url, notice: "you deleted a member"}
     format.json {head :no_content}
    end
  end



  private

  def set_member
    @member = Member.find(params[:id])
  end

  def member_params
    params.require(:member).permit(:first_name, :last_name, :dept, :location, :uid, :extension, :service, :group)
  end

end
