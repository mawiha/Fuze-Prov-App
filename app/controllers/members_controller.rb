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
        format.json { render :show, status: :created, location: @member}
      else
        format.html { :new_member }
        format.json {render json: @member.errors, status: :unprocessable_enitity}
      end
  end

  def show
    @member = Member.find(params[:id])
    respond_to do |format|
      format.html
      format.json {render json: @member}
    end
  end

  def edit
    @member = Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])

    respond_to do |format|

      if @member.update(member_params)
        format.html { redirect_to member_path(@movie), notice: 'Successfully updated the movie' }
        format.json { render :show, status: :ok, location: member_path(member.id) }
      else
        format.html { render :edit_member } # show the edit form again
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @member = Member.find(params[:id])
    @member.destroy

    respond_to do |format|
     format.html {redirect_to members_url, notice: "you deleted a member"}
     format.json {head :no_content}
    end
  end

end

  private


    def member_params
      params.require(:member).permit(:first_name, :last_name, :dept, :location,:uid, :extension, :service)
    end
  end

