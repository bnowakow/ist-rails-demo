class User < ActiveRecord::Base
  validates :name, presence: true
  validates_format_of :email, :with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/
  # validates_format_of :email, {:with => /\A[^@]+@([^@\.]+\.)+[^@\.]+\z/, :message => 'has inproper format'}
end