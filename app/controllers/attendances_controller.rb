class AttendancesController < ApplicationController
  def index
  end

  def show
  end

  def start_time
    @attendance = Attendance.new
    @attendance.user_id = 1
    @attendance.date = Time.zone.now
    @attendance.start_time_at = Time.zone.now
    @attendance.save!

    redirect_to attendances_index_path
  end

  def end_time
    user_id = 1

    @attendance = Attendance.find_by(user_id: user_id, date: params[:date])
    @attendance.end_time_at = Time.zone.now
    @attendance.save!

    redirect_to attendances_index_path
  end

  def delete
  end
end
