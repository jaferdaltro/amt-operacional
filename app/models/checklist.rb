class Checklist < ApplicationRecord
  belongs_to :car
  belongs_to :job
end
