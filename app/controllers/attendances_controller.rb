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

  def edit
    user_id = 1
    @attendance = Attendance.find_by(user_id: user_id, date: params[:date])
  end

  def update
    user_id = 1
    @attendance = Attendance.find_by(user_id: user_id, date: params["attendance"][:date])

    start_time_at = Time.zone.local(
      params["attendance"]["start_time_at(1i)"],
      params["attendance"]["start_time_at(2i)"],
      params["attendance"]["start_time_at(3i)"],
      params["attendance"]["start_time_at(4i)"],
      params["attendance"]["start_time_at(5i)"]
    )

    end_time_at = Time.zone.local(
      params["attendance"]["end_time_at(1i)"],
      params["attendance"]["end_time_at(2i)"],
      params["attendance"]["end_time_at(3i)"],
      params["attendance"]["end_time_at(4i)"],
      params["attendance"]["end_time_at(5i)"]
    )

    @attendance.start_time_at = start_time_at
    @attendance.end_time_at = end_time_at
    @attendance.note = params["attendance"]["note"]
    @attendance.save!

    redirect_to attendances_index_path
  end

  def delete
  end
end
