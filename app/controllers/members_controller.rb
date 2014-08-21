class MembersController < ApplicationController
  # def index
  #   @mmembers = Member.all
  # end

  def show
    @member = Member.find(params[:id])
    @home_teachers = @member.home_teachers
  end


  private

  def member_params
    params.require(:member).permit(:name)
  end

end