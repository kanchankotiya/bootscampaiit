ActiveAdmin.register Student do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :name, :collage, :email, :contact, :course, :branch, :image, :registration_number
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
  index do
    column :id
    column :name
    column :collage
    column :email
    column :contact
    column :course
    column :branch
    column :image
    column :registration_number
    actions
  end

  controller do
    def new
      @student = Student.new
      @user = User.new
    end

    def create
      @student = Student.new(student_params)
      respond_to do |format|
        if @student.save
          User.create(email: @student.email, password: "123456")
          format.html { redirect_to root_path, notice: 'Student was successfully created.' }
          format.json { render :show, status: :created, location: @student }
        else
          format.html { render :new }
          format.json { render json: @student.errors, status: :unprocessable_entity }
        end
      end
    end

    private
    def student_params
      params.require(:student).permit(:name, :collage, :email, :contact, :course, :branch, :image, :registration_number)
    end
  end

end
