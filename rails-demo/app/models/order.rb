class Order < ActiveRecord::Base
  belongs_to :user
  validates :number, presence: true
  validates :user, presence: true
end
