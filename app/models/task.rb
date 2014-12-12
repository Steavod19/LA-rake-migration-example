class Task < ActiveRecord::Base
  belongs_to :users
  belongs_to :projects

# I accidently named it :task not :name
  validates :task, presence: true, length: { maximum: 20 }
end
