class Doctor < ActiveRecord::Base
  # associations
  has_many :interns
  has_many :consultations
  has_many :patients, through: :consultations

  # validtaions
  validates :first_name, uniqueness: { scope: :last_name }
  validates :last_name, length: { minimum: 2 } # li wu
end
