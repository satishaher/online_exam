class AttemptTestsController < ApplicationController
  
  def show
  	@question = StudentTest.new(test_params[:student_id], test_params[:id]).current_question
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    # def test_params
    #   params.require(:user).permit(:user_name, :first_name, :last_name)
    # end

    def test_params
      params.permit(:id, :student_id)
    end
end
