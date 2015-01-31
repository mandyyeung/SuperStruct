class Pco < ActiveRecord::Base
  belongs_to :subcontractor
  belongs_to :status
  has_many :comments
end
