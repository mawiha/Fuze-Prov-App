class MembersController < ApplicationController

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
        format.html { redirect_to member_path(@member.id), notice: 'Member Created' }
        format.json { render :show, status: :created, location: @movie}
      else
        format.html { :new_member }
        format.json {render json: @member.errors, status: :unprocessable_enitity}
      end
  end

  def show
    @member = Member.find(params[:id])
  end
end

  private

    def member_params
      params.require(:member).permit(:first_name, :last_name, :dept, :location,:uid, :extension, :service)
    end
  end

