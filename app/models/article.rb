class Article < ActiveRecord::Base

  validates :title, presence: true, length: { minimum: 5 }

  has_many :comments, dependent: :destroy

  accepts_nested_attributes_for :comments

  def as_json(options = {})
     super(options.merge(include: :comments))
  end
end
