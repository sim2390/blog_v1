class DoctorsController < ApplicationController

  before_action :find_doctor, only: [:show, :edit, :update, :destroy]
#  before_action :authenticate_user!, except: [:index, :show]

  def index
    @doctors = Doctor.all.order("created_at desc")
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new doctor_params

       if @doctor.save
        redirect_to @doctor, notice: "Doktor dodan!"
      else
        render "new", notice: "Napaka - doktor ni bil dodan!"
      end
    end

    def show
    end

    def edit
    end

    def update
      if @doctor.update doctor_params
        redirect_to @doctor, notice: "Posodobitev uspesna!"
      else
        render "edit"
      end
    end

    def destroy
      @doctor.destroy
      redirect_to doctors_path
    end

    private
    def doctor_params
      params.require(:doctor).permit(:name, :surname, :doctor_type, :specialization, :location, :email, :phone_number, :fax_number, :web_site, :optional_info, :avatar, :slug)
    end

    def find_doctor
      @doctor = Doctor.friendly.find(params[:id])
    end

end
