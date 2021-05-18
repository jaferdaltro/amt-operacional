class DayRecord < ApplicationRecord
  has_many :time_records

  enum work_day: [:present, :absence], default: 0
  enum missed_day: [:no, :yes], default: 0
  enum medical_certificates: [:no, :yes], default: 0
end
