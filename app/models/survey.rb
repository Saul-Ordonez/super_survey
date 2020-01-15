class Survey < ApplicationRecord
  has_many :questions, dependent: :destroy
  validates :title, presence: true
  validates_length_of :title, maximum: 100

  before_save(:titleize_survey)

  private
    def titleize_survey
      self.title = self.title.titleize
      self.category = self.category.titleize
    end
end
