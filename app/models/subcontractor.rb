class Subcontractor < ActiveRecord::Base
  belongs_to :user
  has_many :pcos
end
