class Book < ApplicationRecord
  belongs_to :author
  validates_uniqueness_of :title, scope: :author_id

  validates :title, presence: true, length: { minimum: 3 }
  validates :pages, presence: true
  validates :publisher, presence: true, length: { minimum: 3 }
  validates :year, presence: true, length: { minimum: 3 }
end
