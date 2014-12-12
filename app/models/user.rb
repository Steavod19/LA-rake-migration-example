class User < ActiveRecord::Base
  belongs_to :projects
  has_many :tasks, through: :projects

  validates :name, presence: true, length: { maximum: 10 }
  validates :password, presence: true, length: { in: 6..20 }
  validates :email, presence: true
end
