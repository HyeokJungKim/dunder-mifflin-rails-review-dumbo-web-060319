class EmployeesController < ApplicationController

  def index
    @employees = Employee.order(:first_name)
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
    @dogs = Dog.all
  end

  def create
    @employee = Employee.create(employee_params)
    if @employee.valid?
      redirect_to @employee
    else
      flash[:errors] = @employee.errors.full_messages
      redirect_to new_employee_path
    end
  end

  private

  def employee_params
    params.require(:employee).permit(:first_name,
      :last_name,
      :alias,
      :office,
      :title,
      :img_url,
      :dog_id)
  end









end
