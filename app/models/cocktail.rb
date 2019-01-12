class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  mount_uploader :photo, PhotoUploader
  validates :name, presence: true, uniqueness: true

  # include PgSearch
  # pg_search_scope :search_by_title_and_syllabus,
  #   against: [ :title, :syllabus ],
  # using: {
  #   tsearch: { prefix: true }
  # }
end
