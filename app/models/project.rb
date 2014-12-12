class Project < ActiveRecord::Base
  has_many :users
  has_many :tasks

  validates :name, presence: true, length: { maximum: 20 }
  validates :text, length: {  minimum: 300, maximum: 400,
    tokenizer: lambda { |str| str.scan(/\w+/) },
    too_short: "must have at least %{count} words",
    too_long: "must have at most %{count} words"
  }

end
