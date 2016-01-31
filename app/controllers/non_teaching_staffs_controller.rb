class NonTeachingStaffsController < ApplicationController
  before_action :set_non_teaching_staff, only: [:show, :edit, :update, :destroy]
  layout('common')
  # GET /non_teaching_staffs
  # GET /non_teaching_staffs.json
  def index
    @non_teaching_staffs = NonTeachingStaff.all
  end

  # GET /non_teaching_staffs/1
  # GET /non_teaching_staffs/1.json
  def show
  end

  # # GET /non_teaching_staffs/new
  # def new
  #   @non_teaching_staff = NonTeachingStaff.new
  # end
  #
  # # GET /non_teaching_staffs/1/edit
  # def edit
  # end
  #
  # # POST /non_teaching_staffs
  # # POST /non_teaching_staffs.json
  # def create
  #   @non_teaching_staff = NonTeachingStaff.new(non_teaching_staff_params)
  #
  #   respond_to do |format|
  #     if @non_teaching_staff.save
  #       format.html { redirect_to @non_teaching_staff, notice: 'Non teaching staff was successfully created.' }
  #       format.json { render :show, status: :created, location: @non_teaching_staff }
  #     else
  #       format.html { render :new }
  #       format.json { render json: @non_teaching_staff.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # # PATCH/PUT /non_teaching_staffs/1
  # # PATCH/PUT /non_teaching_staffs/1.json
  # def update
  #   respond_to do |format|
  #     if @non_teaching_staff.update(non_teaching_staff_params)
  #       format.html { redirect_to @non_teaching_staff, notice: 'Non teaching staff was successfully updated.' }
  #       format.json { render :show, status: :ok, location: @non_teaching_staff }
  #     else
  #       format.html { render :edit }
  #       format.json { render json: @non_teaching_staff.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end
  #
  # # DELETE /non_teaching_staffs/1
  # # DELETE /non_teaching_staffs/1.json
  # def destroy
  #   @non_teaching_staff.destroy
  #   respond_to do |format|
  #     format.html { redirect_to non_teaching_staffs_url, notice: 'Non teaching staff was successfully destroyed.' }
  #     format.json { head :no_content }
  #   end
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_non_teaching_staff
      @non_teaching_staff = NonTeachingStaff.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def non_teaching_staff_params
      params.require(:non_teaching_staff).permit(:name, :image_path, :designation, :qualification, :joined_in, :is_technical)
    end
end
