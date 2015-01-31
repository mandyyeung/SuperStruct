class Pco < ActiveRecord::Base
  belongs_to :subcontractor
  belongs_to :status
end
