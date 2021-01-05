class AttendancesController < ApplicationController
  def index
  end

  def show
  end

  def create
    @attendance = Attendance.new
    @attendance.user_id = 1
    @attendance.date = Time.zone.now
    @attendance.attendance_time_at = Time.zone.now
    @attendance.save!

    redirect_to attendances_index_path
  end

  def edit
    user_id = 1

    @attendance = Attendance.find_by(user_id: user_id, date: params[:date])
    @attendance.leave_time_at = Time.zone.now
    @attendance.save!
  end

  def delete
  end
end
