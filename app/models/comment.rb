class Comment < ActiveRecord::Base
  belongs_to :pco
  belongs_to :user
end
