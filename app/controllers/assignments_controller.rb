class AssignmentsController < InheritedResources::Base
  layout 'student'

  def show
    @assignment = Assignment.find(params[:id])
    @user = current_user.id
    # respond_to do |format| 
    # format.html 
    # format.css { render :text => @stylesheet.code, :content_type => "text/css" } 
    # end 
  end


  private

    def assignment_params
      params.require(:assignment).permit(:topic, :content)
    end
end

